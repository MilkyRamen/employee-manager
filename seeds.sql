INSERT INTO departments (name, id)
VALUES ("Finance", 1),
       ("Sales", 2),
       ("Human Resources", 3),
       ("Engineering", 4),
       ("Not Applicable", 5),
       ("Technology", 6);

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
VALUES ("Laure Sanjeet", 1, "Finance", "Financial Assistant", true),
       ("Enos Sudenaz", 2, "Finance", "Financial Assistant", true),
       ("Sandile Evyatar", 3, "Finance", "Financial Assistant", true),
       ("Padma Eriks", 4, "Technology", "Programmer", false),
       ("Yorgos Parth", 5, "Sales", "Sales Assistant", true),
       ("Sadia Mitul", 6, "Sales", "Sales Assistant", true),
       ("Edith Yolotzin", 7, "Technology", "Programmer", true),
       ("Callisto Bruno", 8, "Sales", "Sales Assistant", true),
       ("Maider Ezras", 9, "Human Resources", "Resource Worker", false),
       ("Milan Heino", 10, "Human Resources", "Resource Worker", true),
       ("Gabrielle Uttara", 11, "Engineering", "Engineer", true),
       ("Adeline Liba", 12, "Engineering", "Engineer", true),
       ("Hilal Viktar", 13, "Engineering", "Engineer", true),
       ("Alban Bellona", 14, "Not Applicable", "Account Manager", false),
       ("Mohammed Teresa", 15, "Not Applicable", "CEO", true),
       ("Meshach Rafahel", 16, "Not Applicable", "Chief Marketing Officer", true),
       ("Branko Eneko", 17, "Not Applicable", "Vice President", false),
       ("Kaltrina Neon", 18, "Not Applicable", "Project Manager", true),
       ("Zhanna Noa", 19,"Not Applicable", "CFO", true),
       ("Kimmie Anah", 20,"Not Applicable", "Secretary", false);
       
        