-- drop tables if exist
drop table if exists campaign;
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;

-- create contacts table and set our primary key
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (150)  NOT NULL,
    last_name varchar (150)  NOT NULL,
    email varchar (150)  NOT NULL,
    primary key (contact_id)
);
-- create category table and set our primary key
CREATE TABLE category (
    category_id varchar (150)   NOT NULL,
    category varchar (150)  NOT NULL,
    primary key (category_id)
);
-- create subcategory table and set our primary key
CREATE TABLE subcategory (
    subcategory_id varchar (150)  NOT NULL,
    subcategory varchar (150)  NOT NULL,
    primary key (subcategory_id)
);
-- create campaign table and set our primary key and foreign keys
CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (300)  NOT NULL,
    description varchar (300)  NOT NULL,
    goal int NOT NULL,
    pledged int   NOT NULL,
    outcome varchar (300)  NOT NULL,
    backers_count int   NOT NULL,
    country varchar (300)  NOT NULL,
    currency varchar (300)  NOT NULL,
    launched_date date  NOT NULL,
    end_date date  NOT NULL,
    category_id varchar (300)  NOT NULL,
    subcategory_id varchar (300)  NOT NULL,
    primary key (cf_id),
    foreign key (contact_id) references contacts(contact_id),
    foreign key (category_id) references category(category_id),
    foreign key (subcategory_id) references subcategory(subcategory_id)
);

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;