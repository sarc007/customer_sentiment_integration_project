/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[Emp_first_name_fld]
      ,[Emp_middle_name_fld]
      ,[Emp_last_name_fld]
  FROM [AI_DB].[dbo].[Employee_tbl]

SELECT [Id]
      ,[Video_Name_fld]
      ,[Video_path_fld]
  FROM [dbo].[Video_List_tbl]
GO

