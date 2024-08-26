use sidearmdb
GO

drop table if exists players
drop table if exists teams 
GO 

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'teams')
BEGIN 
   CREATE TABLE teams (
      id int primary key NOT NULL,
      name VARCHAR(50) NOT NULL,
      conference VARCHAR(50) NOT NULL,
      wins INT NOT NULL,
      losses INT NOT NULL,
   )

    insert into teams (
    id, name, conference, wins, losses
    )
    values
    (101, 'syracuse', 'acc', 11, 2),
    (205, 'johns hopkins', 'big10', 9, 4)
END 
GO 

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'players')
BEGIN 
   CREATE TABLE players (
      id int  primary key NOT NULL,
      name VARCHAR(50) NOT NULL,
      number varchar(3) NOT NULL,
      shots INT NOT NULL,
      goals INT NOT NULL,
      teamid INT foreign key references teams(id) NOT NULL,
   )

    insert into players (
    id, name, number, shots, goals, teamid
    )
    values 
    (1, 'sam', '6', 56, 23, 101),
    (2, 'sarah', '1', 85, 34, 101),
    (3, 'steve', '2', 60, 20, 101),
    (4, 'stone', '13', 33, 10, 101),
    (5, 'sean', '17', 26, 9, 101),
    (6, 'sly', '8', 78, 15, 101),
    (7, 'sol', '9', 52, 20, 101),
    (8, 'shree', '4', 20, 4, 101),
    (9, 'shelly', '15', 10, 2, 101),
    (10, 'swede', '10', 90, 50, 101),
    (11, 'jimmy', '1', 100, 50, 205),
    (12, 'julie', '9', 10, 0, 205),
    (13, 'james', '2', 45, 15, 205),
    (14, 'jane', '15', 82, 46, 205),
    (15, 'jimmy', '16', 42, 30, 205),
    (16, 'julie', '8', 67, 32, 205),
    (17, 'james', '17', 40, 14, 205),
    (18, 'jane', '3', 91, 40, 205),
    (19, 'jimmy', '5', 78, 22, 205),
    (20, 'julie', '22', 83, 19, 205)
END 