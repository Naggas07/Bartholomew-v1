CREATE DATABASE Bartholomew;

USE Bartholomew;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Pruebas'; 

SET GLOBAL max_user_connections=100;

CREATE TABLE IF NOT EXISTS ROL(
	rol_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (rol_id),
    rol_name VARCHAR(10),
    rol_state VARCHAR(10),
    rol_create DATETIME,
    rol_unsuscribe DATETIME
);

CREATE TABLE IF NOT EXISTS USR_STATES(
	state_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (state_id),
    state_name VARCHAR(10),
    state_valid BOOLEAN,
    state_create DATETIME,
    state_unsuscribe DATETIME
);

CREATE TABLE IF NOT EXISTS DEPARTMENTS(
	dep_id INT NOT NULL AUTO_INCREMENT,
		PRIMARY KEY (dep_id),
    dep_name VARCHAR(20),
    dep_create DATETIME,
    dep_ususcribe DATETIME,
    dep_valid BOOLEAN
);

CREATE TABLE IF NOT EXISTS USERS (
    usr_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (usr_id),
    usr_name VARCHAR(15),
    usr_lastname VARCHAR(30),
    usr_email VARCHAR(50),
    usr_password VARCHAR(15),
    usr_nickname VARCHAR(8),
    usr_create DATETIME,
    usr_lastlogin DATETIME,
    usr_lastchange DATETIME,
    rol_id INT,
    state_id INT,
    dep_id INT,
    FOREIGN KEY (rol_id)
        REFERENCES ROL (rol_id),
    FOREIGN KEY (state_id)
        REFERENCES USR_STATES (state_id),
    FOREIGN KEY (dep_id)
        REFERENCES DEPARTMENTS (dep_id)
);


/*DROP DATABASE Bartholomew*/

