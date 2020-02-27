DECLARE @tablename nvarchar(200),  @tablevalue nvarchar(1)
SELECT @tablename =CAST(FLOOR(RAND()*(100000-5+1)+5) as nvarchar);
Select @tablevalue='0';
DECLARE   @ExecSQL NVARCHAR(max);
SET @ExecSQL = 'SELECT d.tablename, d.tablevalue INTO mws_ssis_cust_senti_integration'+ @tablename+
+' from  ( select '''+'mws_ssis_cust_senti_integration'+ @tablename + ''' as tablename, ''' + @tablevalue + ''' as tablevalue ) as d ';




EXEC sp_executesql @ExecSQL;

Set @tablename = N'mws_ssis_cust_senti_integration'+cast(@tablename as nvarchar);

Set  @ExecSQL = 'select * from  ' + @tablename;


EXEC sp_executesql @ExecSQL
WITH RESULT SETS
(
 (
 tablename varchar(max), tablevalue varchar(1)
 )
);
