

--create table tb1 (pkey int, name varchar(16));

/* set column as primary key */
drop table if exists tb2;
create table tb2 (no int PRIMARY KEY, name varchar(16));
\d tb2;

/* set column as auto numbering primary key */
drop table if exists tb3;
create table tb3 (no int AUTO_INCREMENT PRIMARY KEY, name varchar(16));
\d tb3


/*
create schema schema3;

set search_path to schema3;
create table tb1 (pkey int, name varchar(16));

set seaarch_path to public;
drop schema schema3;
*/
