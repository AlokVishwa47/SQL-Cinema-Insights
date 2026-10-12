-- Fictional, disposable SQLite fixture. Run in an empty database.
CREATE TABLE Movies (Id INTEGER PRIMARY KEY, Title TEXT NOT NULL, Rating REAL);
CREATE TABLE Boxoffice (Movie_id INTEGER PRIMARY KEY REFERENCES Movies(Id),
                       Domestic_sales INTEGER NOT NULL, International_sales INTEGER NOT NULL);
CREATE TABLE buildings (building_name TEXT PRIMARY KEY, capacity INTEGER NOT NULL);
CREATE TABLE employees (name TEXT PRIMARY KEY, building TEXT REFERENCES buildings(building_name), role TEXT NOT NULL);
INSERT INTO Movies VALUES (1,'Demo Film A',7.5),(2,'Demo Film B',8.0);
INSERT INTO Boxoffice VALUES (1,100000,50000),(2,80000,120000);
INSERT INTO buildings VALUES ('Office A',50),('Office B',20);
INSERT INTO employees VALUES ('Demo Employee','Office A','Analyst');
