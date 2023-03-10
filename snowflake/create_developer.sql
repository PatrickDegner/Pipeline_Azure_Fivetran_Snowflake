-- use admin role
USE ROLE ACCOUNTADMIN;

-- create role for developer
CREATE ROLE IF NOT EXISTS DEVELOPER;
GRANT ROLE DEVELOPER TO ROLE SYSADMIN;

-- create database
CREATE DATABASE IF NOT EXISTS PATRICKDB;

-- grant developer role access to warehouse
GRANT USAGE ON WAREHOUSE COMPUTE_WH TO ROLE DEVELOPER;

-- grant developer access to database and future schemas/tables (full access)
GRANT CREATE SCHEMA, USAGE ON DATABASE PATRICKDB TO DEVELOPER;
GRANT USAGE ON FUTURE SCHEMAS IN DATABASE PATRICKDB TO ROLE DEVELOPER;
GRANT SELECT ON FUTURE TABLES IN DATABASE PATRICKDB TO ROLE DEVELOPER;

-- give yourself the developer role
GRANT ROLE DEVELOPER TO USER NEFI;

-- use developer role
USE ROLE DEVELOPER;
