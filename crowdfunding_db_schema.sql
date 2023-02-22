/*Create Database*/
CREATE DATABASE crowdfunding_db;

/*Create Category table*/
CREATE TABLE category (
	category_id VARCHAR(30) NOT NULL PRIMARY KEY,
	category VARCHAR(30) NOT NULL
	);

/*Create Subcategory table*/
CREATE TABLE subcategory (
	subcategory_id VARCHAR(30) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
	);
	
/*Create Contacts table*/
CREATE TABLE contacts (
	contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
	);
	
/*Create Campaign table*/
CREATE TABLE campaign (
	cf_id INTEGER NOT NULL PRIMARY KEY,
	contact_id INTEGER NOT NULL REFERENCES contacts(contact_id),
	company_name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(30) NOT NULL,
	currency VARCHAR(30) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(30) NOT NULL REFERENCES category(category_id),
	subcategory_id VARCHAR(30) NOT NULL REFERENCES subcategory(subcategory_id)
	);

/*Select all tables*/
SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

SELECT * FROM campaign