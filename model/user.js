const sql = require('./db')

class Tutorial {

}

Object.assign(Tutorial.prototype, {
  getUser(tutorial, result){
    sql.query(`SELECT * FROM web_user WHERE usrname='${tutorial.usrname}'`, (err, res) => {
      if(err){
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("web_usr: ", res[0])
      // if(!res.length){
      //   result(null, {
      //     message: ''
      //   })
      // }
      result(null, res[0])
    })
  },
  // setToken(token, tutorial, result){
  //   sql.query(`UPDATE web_user SET WHERE usrname='${tutorial.usrname}'`, {token: `${token}`}, (err, res) => {
  //     if(err){
  //       console.log("error: ", err)
  //       result(err, null)
  //       return
  //     }
  //     console.log("token: ", token)
  //     result(null, token)
  //   })
  // }
})

module.exports = Tutorial