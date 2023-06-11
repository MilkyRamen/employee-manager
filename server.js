const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3306;
const app = express();

// express middleware
app.use(express.urlencoded({ extended: false}));
app.use(express.json());

// db connection
const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'luhroot',
        database: 'company_db'
    },
    console.log(`connected to company_db`)
);

db.query('SELECT * FROM departments', function (err, results){
    console.log(results);
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});