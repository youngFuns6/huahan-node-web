const mysql = require('mysql')

const config = {
  host: 'localhost',
  user: 'root',
  password: 'qunxiang2020',
  port: '3306',
  database: 'web'
}

let connection = mysql.createConnection(config);



exports.queryAll = function(){
  connection = mysql.createConnection(config);
  connection.connect();
  connection.query('SELECT * FROM web', (err, result) => {
    if(err){
      console.log(err.message)
      return
    }
    return result
  })
  connection.end()
}

exports.addInfo = function(obj){
  connection = mysql.createConnection(config);
  connection.connect();
  connection.query('INSERT INTO web SET ?', [obj], (err, result) => {
    if(err) throw err;
    return result
  })
  connection.end()
}