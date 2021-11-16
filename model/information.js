const sql = require('./db')

class Tutorial {
  constructor(){}
}

Object.assign(Tutorial.prototype, {
  create(newTutorial, result) {
    sql.query('INSERT INTO web_information SET ?', newTutorial, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("create web_information: ", newTutorial )
      result(null, newTutorial)
    })
  },
  getAll(type, result) {
    sql.query(`SELECT * FROM web_information WHERE type=${type}`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('web_information', res)
      result(null, res[0])
    })
  },
  updateInfo(newTutorial, result) {
    sql.query(`UPDATE web_information SET ? WHERE type=${newTutorial.type}`, newTutorial, (err, res) => {
      if(err){
        console.log("error: ", err)
        result(err, null)
        return
      }
      if (res.affectedRows == 0) {
        // not found Tutorial with the id
        result({ kind: "not_found" }, null);
        return;
      }
      console.log('web_information', newTutorial)
      result(null, newTutorial)
    })
  },
})

module.exports = Tutorial