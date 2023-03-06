const mysql = require('mysql2')

const options = {
  host: process.env.DB_HOST, // Host name for database connection:
  port: process.env.DB_PORT, // Port number for database connection:
  user: process.env.DB_USER, // Database user:
  password: process.env.DB_PW, // Password for the above database user:
  database: process.env.DB_NAME, // Database name:
  multipleStatements: true
}
// const connection = mysql.createConnection(options)
// connection.connect()
let connection = mysql.createConnection(options);

function handleDisconnect() {
  // connection = mysql.createConnection(options);

  connection.connect(function (err) {
    if (err) {
      console.log("error when connecting to db:", err);
      setTimeout(handleDisconnect, 2000);
    } else {
      console.log("connection is successfull");
    }
  });
  connection.on("error", function (err) {
    console.log("db error", err);
    if (err.code === "PROTOCOL_CONNECTION_LOST") {
      handleDisconnect();
    } else {
      throw err;
    }
  });
}
handleDisconnect();
module.exports = connection
