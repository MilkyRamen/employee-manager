const express = require('express');
const mysql = require('mysql2');
const inquirer = require('inquirer');

const PORT = process.env.PORT || 4444;
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

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

inquirer
    .prompt([
        {
            type: 'list',
            message: 'what are we doing today',
            name: 'dbChoices',
            choices: [
                {
                    name: 'view all departments',
                    value: 1
                },
                {
                    name: 'view all roles',
                    value: 2
                },
                {
                    name: 'view all employees',
                    value: 3
                },
                {
                    name: 'add a department',
                    value: 4
                },
                {
                    name: 'add a role',
                    value: 5
                },
                {
                    name: 'add a employee',
                    value: 6
                },
                {
                    name: 'update employee role',
                    value: 7
                },
            ]
        }
    ])