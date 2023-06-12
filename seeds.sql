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

INSERT INTO employees (name, id, department, role, active)
VALUES ("Laure Sanjeet", 1, 1, "Financial Assistant", true),
       ("Enos Sudenaz", 2, 1, "Financial Assistant", true),
       ("Sandile Evyatar", 3, 1, "Financial Assistant", true),
       ("Padma Eriks", 4, 6, "Programmer", false),
       ("Yorgos Parth", 5, 2, "Sales Assistant", true),
       ("Sadia Mitul", 6, 2, "Sales Assistant", true),
       ("Edith Yolotzin", 7, 6, "Programmer", true),
       ("Callisto Bruno", 8, 2, "Sales Assistant", true),
       ("Maider Ezras", 9, 3, "Resource Worker", false),
       ("Milan Heino", 10, 3, "Resource Worker", true),
       ("Gabrielle Uttara", 11, 4, "Engineer", true),
       ("Adeline Liba", 12, 4, "Engineer", true),
       ("Hilal Viktar", 13, 4, "Engineer", true),
       ("Alban Bellona", 14, 5, "Account Manager", false),
       ("Mohammed Teresa", 15, 5, "CEO", true),
       ("Meshach Rafahel", 16, 5, "Chief Marketing Officer", true),
       ("Branko Eneko", 17, 5, "Vice President", false),
       ("Kaltrina Neon", 18, 5, "Project Manager", true),
       ("Zhanna Noa", 19, 5, "CFO", true),
       ("Kimmie Anah", 20, 5, "Secretary", false);

