﻿--
-- Script was generated by Devart dbForge Studio 2020 for MySQL, Version 9.0.394.0
-- Product Home Page: http://www.devart.com/dbforge/mysql/studio
-- Script date 8/20/2020 3:23:15 PM
-- Target server version: 8.0.20
-- Target connection string: User Id=su;Host=dbfmysrv;Character Set=utf8
--



SET NAMES 'utf8';
USE sakila;
--
-- Delete data from the table 'country'
--
DELETE FROM country;

--
-- Inserting data into table country
--
INSERT INTO country(country_id, country, last_update) VALUES
(1, 'Bangladesh', '1978-05-22 15:10:59'),
(2, 'Bahrain', '1971-01-01 00:00:07'),
(3, 'Belgium', '1971-01-01 00:00:09'),
(4, 'Mexico', '1971-01-01 00:31:40'),
(5, 'Brazil', '1971-01-01 00:00:01'),
(6, 'Bangladesh', '1987-02-28 08:22:56'),
(7, 'Slovenia', '2010-07-30 01:17:20'),
(8, 'Guyana', '2015-10-13 12:00:58'),
(9, 'Denmark', '1995-04-08 13:40:31'),
(10, 'Slovakia', '1974-01-28 04:45:22');