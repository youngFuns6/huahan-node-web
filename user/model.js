const sql = require('../model/db')

class Tutorial {

}

Object.assign(Tutorial.prototype, {
  getUser(tutorial, result) {
    sql.query(`SELECT * FROM huahan_web_user WHERE username='${tutorial.username}'`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("huahan_web_user: ", res[0])
      // if(!res.length){
      //   result(null, {
      //     message: ''
      //   })
      // }
      result(null, res[0])
    })
  },
  setToken(token, tutorial, result) {
    sql.query(`UPDATE huahan_web_user SET token='${token}' WHERE username='${tutorial.username}'`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("token: ", token)
      result(null, token)
    })
  },
  getToken(token, result) {
    sql.query(`SELECT * FROM huahan_web_user WHERE token='${token}'`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("huahan_web_user_token: ", res[0])
      result(null, res[0])
    })
  },
})

module.exports = Tutorial