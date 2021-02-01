const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const mysql = require('mysql');

const app = express();
const port = process.env.PORT || 4000;
app.use(cors());
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

// Mysql Connection
const pool = mysql.createPool({
    connectionLimit : 100,
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'moviedb'
});

// Get all Movies from database

app.get('/movies',(req,res) => {

    pool.getConnection((err, connection)=>{
        if(err)throw err
        console.log('connected as id '+ connection.threadId)

        connection.query('SELECT * from movies', (err,rows)=>{
            connection.release() //return the connection to pool

            if(!err){
                res.send(rows)
            }
            else{
                console.log(err)
            }
        })
    })
})

//GET movies by Title

app.get('/:Title',(req,res) => {

    pool.getConnection((err, connection)=>{
        if(err)throw err
        console.log('connected as id '+ connection.threadId)

        connection.query('SELECT * from movies WHERE Title = ?',[req.params.Title], (err,rows)=>{
            connection.release() //return the connection to pool

            if(!err){
                res.send(rows)
            }
            else{
                console.log(err)
            }
        })
    })
})

//Delete a Movie entry

app.delete('/:Title',(req,res) => {

    pool.getConnection((err, connection)=>{
        if(err)throw err
        console.log('connected as id '+ connection.threadId)

        connection.query('DELETE from movies WHERE Title = ?',[req.params.Title], (err,rows)=>{
            connection.release() //return the connection to pool

            if(!err){
                res.send([req.params.Title] +' Has been deleted')
            }
            else{
                console.log(err)
            }
        })
    })
})

//Create a Movie Entry

app.post('/movieEntry',(req,res) => {

    pool.getConnection((err, connection)=>{
        if(err)throw err
        console.log('connected as id '+ connection.threadId)
        
        const params = req.body

        connection.query('INSERT INTO movies SET ?',params, (err,rows)=>{
            connection.release() //return the connection to pool

            if(!err){
                res.send(params.Title +' Has been added')
            }
            else{
                console.log(err)
            }
        })
        console.log(req.body)
    })
})
// UPADTE Movie entry

app.put('/movies:Id',(req,res) => {

    pool.getConnection((err, connection)=>{
        if(err)throw err
        console.log('connected as id '+ connection.threadId)
        
        const {Id, Title, Description, releaseYear,Genre,dateCreated,DateUpdated } = req.body

        connection.query('UPDATE movies SET Title = ? WHERE Id = ?',[Title,Id], (err,rows)=>{
            connection.release() //return the connection to pool

            if(!err){
                res.send(Title +' Has been updated')
            }
            else{
                console.log(err)
            }
        })
        console.log(req.body)
    })
})




//list on environment port
app.listen(port, ()=> console.log('Listening on Port '+ port))