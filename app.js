const mysql = require("mysql")
const inquirer = require("inquirer")
const consoleTable = require("console.table")
const cTable = require('console.table');

const connectDB = mysql.createConnection({
    host: "localhost",
    port: 3001,
    user: "root",
    password: "password",
    database: "employee_db"
  });

connectDB.connect(function(err) {
    if (err) throw err
    console.log("Connected as Id" + connectDB.threadId)
});

