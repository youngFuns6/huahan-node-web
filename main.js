const mysql = require('mysql')
let connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'qunxiang2020',
  port: '3306',
  database: 'web'
});

connection.connect();

exports.queryAll = function(){
  connection.query('SELECT * FROM web', (err, data) => {
    if(err){
      console.log(err.message)
      return
    }
    console.log(data)
  })
}

connection.end()
