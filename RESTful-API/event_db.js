const mysql = require('mysql2')
const express = require('express')
const cors = require('cors')
const app = express()
// Default port number
const port = 3000

app.use(express.json())
// Cross-domain prevention
app.use(cors())

// Configuring database parameters
const connection = mysql.createConnection({
  host: 'localhost', // Database ip
  user: 'root', // Database user name
  password: 'root', // Database password  
  database: 'charityevents_db', // Database Name
})

// Linked database
connection.connect(err => {
  if (err) {
    console.log('数据库连接失败: ' + err.stack)
    return
  }
  console.log('数据库连接成功！')
})