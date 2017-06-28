var mysql = require('mysql');
var con = mysql.createConnection({
  host: "localhost",
  user: "giorgtarkha",
  password: "kuku12345",
  database: "socialproj"
});

con.connect(function(err) {
  if (err) throw err;
    console.log("connection successful");
});
