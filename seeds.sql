INSERT INTO department (name)
VALUES ("Finance"),
       ("Sales"),
       ("Human Resources"),
       ("Engineering"),
       ("Not Applicable"),
       ("Technology");

INSERT INTO roles (name, id)
VALUES ("CEO", 1),
       ("Project Manager", 2),
       ("Chief Marketing Officer", 3),
       ("Vice President", 4),
       ("Secretary", 5),
       ("Account Manager", 6),
       ("CFO", 7),
       ("Programmer", 8),
       ("Engineer", 9),
       ("Sales Assistant", 10),
       ("Financial Assistant", 11),
       ("Resource Worker", 12);

INSERT INTO employees (name, id, department, role, salary, active)
VALUES ("Laure Sanjeet", 1, 1, "Financial Assistant", 50000, true),
       ("Enos Sudenaz", 2, 1, "Financial Assistant", 50000, true),
       ("Sandile Evyatar", 3, 1, "Financial Assistant", 50000, true),
       ("Padma Eriks", 4, 6, "Programmer", 0, false),
       ("Yorgos Parth", 5, 2, "Sales Assistant", 65000, true),
       ("Sadia Mitul", 6, 2, "Sales Assistant", 65000, true),
       ("Edith Yolotzin", 7, 6, "Programmer", 98000, true),
       ("Callisto Bruno", 8, 2, "Sales Assistant", 65000, true),
       ("Maider Ezras", 9, 3, "Resource Worker", 0, false),
       ("Milan Heino", 10, 3, "Resource Worker", 40000, true),
       ("Gabrielle Uttara", 11, 4, "Engineer", 75000, true),
       ("Adeline Liba", 12, 4, "Engineer", 75000, true),
       ("Hilal Viktar", 13, 4, "Engineer", 75000, true),
       ("Alban Bellona", 14, 5, "Account Manager", 0, false),
       ("Mohammed Teresa", 15, 5, "CEO", 980000, true),
       ("Meshach Rafahel", 16, 5, "Chief Marketing Officer", 200000, true),
       ("Branko Eneko", 17, 5, "Vice President", 0, false),
       ("Kaltrina Neon", 18, 5, "Project Manager", 110000, true),
       ("Zhanna Noa", 19, 5, "CFO", 750000, true),
       ("Kimmie Anah", 20, 5, "Secretary", 0, false);

