-- setup
use role ACCOUNTADMIN;
use schema PATRICKDB.DWH_DBO;

-- create variables for user / password / role / warehouse / database (needs to be uppercase for objects)
set role_name = 'FIVETRAN_ROLE';
set user_name = 'FIVETRAN_USER';
set user_password = 'Patrick123';
set warehouse_name = 'FIVETRAN';
set database_name = 'PATRICKDB';

-- create a warehouse for fivetran
create warehouse if not exists identifier($warehouse_name)
warehouse_size = xsmall
warehouse_type = standard
auto_suspend = 60
auto_resume = true
initially_suspended = true;

-- create role for fivetran
create role if not exists identifier($role_name);
grant role identifier($role_name) to role SYSADMIN;

-- create a user for fivetran
create user if not exists identifier($user_name)
password = $user_password
default_role = $role_name
default_warehouse = $warehouse_name;

grant role identifier($role_name) to user identifier($user_name);

-- grant fivetran role access to warehouse
grant USAGE
on warehouse identifier($warehouse_name)
to role identifier($role_name);

-- grant fivetran access to database
grant CREATE SCHEMA, MONITOR, USAGE
on database identifier($database_name)
to role identifier($role_name);

-- grant fivetran access to schema
GRANT OWNERSHIP ON SCHEMA DWH_DBO TO ROLE identifier($role_name) REVOKE CURRENT GRANTS;
GRANT OWNERSHIP ON TABLE BANKING_DETAILS TO ROLE identifier($role_name) REVOKE CURRENT GRANTS;
GRANT OWNERSHIP ON TABLE CUSTOMER TO ROLE identifier($role_name) REVOKE CURRENT GRANTS;

use role FIVETRAN_ROLE;
GRANT USAGE ON SCHEMA DWH_DBO TO ROLE DEVELOPER;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE DWH_DBO.BANKING_DETAILS TO ROLE DEVELOPER;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE DWH_DBO.CUSTOMER TO ROLE DEVELOPER;

-- set binary_input_format to BASE64
ALTER USER identifier($user_name) SET BINARY_INPUT_FORMAT = 'BASE64';
  
use role DEVELOPER;
use WAREHOUSE COMPUTE_WH;
