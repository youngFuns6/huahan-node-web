const sql = require('../model/db')

class Tutorial {
  constructor(){}
}

Object.assign(Tutorial.prototype, {
  // create(newTutorial, result) {
  //   sql.query('INSERT INTO huahan_web_info SET ?', newTutorial, (err, res) => {
  //     if (err) {
  //       console.log("error: ", err)
  //       result(err, null)
  //       return
  //     }
  //     console.log("create web_info: ", newTutorial )
  //     result(null, newTutorial)
  //   })
  // },
  getAll(result) {
    sql.query(`SELECT * FROM huahan_web_info`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('web_info', res)
      result(null, res[0])
    })
  },
  updateInfo(newTutorial, result) {
    sql.query(`UPDATE huahan_web_info SET ?`, newTutorial, (err, res) => {
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
      console.log('huahan_web_info', newTutorial)
      result(null, newTutorial)
    })
  },
})

module.exports = Tutorial