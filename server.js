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
// database questions
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
        },
    ])
    .then((response) => {
        if (response.dbChoices === 1) {
            db.query('SELECT * FROM department', function (err, results){
                console.log(results);
            });
        } else if (response.dbChoices === 2) {
            db.query('SELECT * FROM roles', function (err, results){
                console.log(results);
            });
        } else if (response.dbChoices === 3) {
            db.query('SELECT * FROM employees', function (err, results){
                console.table(results);
            });
        } else if (response.dbChoices === 4) {
            inquirer
                .prompt([
                    {
                        type: 'input',
                        message: 'what is the department called?',
                        name: 'departmentName',
                    }
                ])
                .then((innerResponse) => {
                    db.query(`INSERT INTO department (name) VALUES ('${innerResponse.departmentName}')`, function(err, innerResult){
                        if (err) {
                            console.error(err);
                            return;
                        }
                        db.query('SELECT * FROM department', function(err, selectResult){
                            if (err) {
                                console.error(err);
                                return;
                            }
                            console.log(selectResult);
                        });
                    });
                });
        } else if (response.dbChoices === 5) {
            inquirer
                .prompt([
                    {
                        type: 'input',
                        message: 'what will the role be called?',
                        name: 'roleName',
                    }
                ])
                .then((innerResponse) => {
                    inquirer
                        .prompt([
                            {
                                type: 'input',
                                message: 'what is the id for the role?',
                                name: 'roleId',
                            }
                        ])
                        .then((deepResponse) => {
                            db.query(`INSERT INTO roles (name, id) VALUES ('${innerResponse.roleName}', '${deepResponse.roleId}')`, function(err, innerResult) {
                                if (err) {
                                    console.error(err);
                                    return;
                                }
                                db.query('SELECT * FROM roles', function(err, selectResult){
                                    if (err) {
                                        console.error(err);
                                        return;
                                    }
                                    console.log(selectResult);
                                });
                        });
                    });   
                });
        } else if (response.dbChoices === 6) {
            inquirer
                .prompt([
                    {
                        type: 'input',
                        message: 'what is the employees name?',
                        name: 'employeeName',
                    }
                ])
                .then((innerResponse) => {
                    inquirer
                        .prompt([
                            {
                                type: 'input',
                                message: 'what is the employees id number?',
                                name: 'employeeId',
                            }
                        ])
                        .then((deepResponse) => {
                            inquirer
                                .prompt([
                                    {
                                        type: 'input',
                                        message: 'what department is the employee in? must be a number',
                                        name: 'employeeDept',
                                    }
                                ])
                                .then((thirdResponse) => {
                                    inquirer
                                        .prompt([
                                            {
                                                type: 'input',
                                                message: 'what is the employees role?',
                                                name: 'employeeRole',
                                            }
                                        ])
                                        .then((fourthResponse) => {
                                            inquirer
                                                .prompt([
                                                    {
                                                        type: 'input',
                                                        message: 'what is the employees salary?',
                                                        name: 'employeePay',
                                                    }
                                                ])
                                                .then((fifthResponse) => {
                                                    db.query(`INSERT INTO employees (name, id, department, role, salary, active) VALUES ('${innerResponse.employeeName}', '${deepResponse.employeeId}', '${thirdResponse.employeeDept}', '${fourthResponse.employeeRole}', '${fifthResponse.employeePay}', 1)`, function(err, results) {
                                                        if (err) {
                                                            console.error(err);
                                                            return;
                                                        }
                                                        db.query('SELECT * FROM employees', function(err, selectResult){
                                                            if (err) {
                                                                console.error(err);
                                                                return;
                                                            }
                                                            console.table(selectResult);
                                                        });
                                                      });
                                            });
                                        });
                                });
                        });
                });
        } else if (response.dbChoices === 7) {
            inquirer
                .prompt([
                    {
                        type: 'input',
                        message: 'what employees role are we updating',
                        name: 'updateRole',
                    }
                ])
                .then ((innerResponse) => {
                    inquirer
                        .prompt([
                            {
                                type: 'input',
                                message: 'what is the employees new role',
                                name: 'newRole',
                            }
                        ])
                        .then ((deepResponse) => {
                            db.query(`UPDATE employees SET role = '${deepResponse.newRole}' WHERE name = '${innerResponse.updateRole}'`, function(err, selectResult){
                                if (err) {
                                    console.error(err);
                                    return;
                                }
                                db.query('SELECT * FROM employees', function(err, selectResult){
                                    if (err) {
                                        console.error(err);
                                        return;
                                    }
                                    console.table(selectResult);
                            });
                        });
                });
            });
        }
    });
        