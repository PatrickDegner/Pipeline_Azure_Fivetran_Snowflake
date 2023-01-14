EXEC sys.sp_cdc_enable_db;
EXEC sys.sp_cdc_enable_table  
@source_schema = [dbo],
@source_name   = [customer],
@role_name     = [patrickadmin];
EXEC sys.sp_cdc_enable_table  
@source_schema = [dbo],
@source_name   = [banking_details],
@role_name     = [patrickadmin];
