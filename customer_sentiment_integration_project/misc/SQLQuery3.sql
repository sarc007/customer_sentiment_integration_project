
CREATE TABLE [dbo].[Video_List_tbl] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Video_Name_fld] NVARCHAR (50)  NOT NULL,
    [Video_path_fld] NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Employee_tbl] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [Emp_first_name_fld]  NVARCHAR (50) NOT NULL,
    [Emp_middle_name_fld] NVARCHAR (50) NULL,
    [Emp_last_name_fld]   NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Employee_Video_Link_tbl] (
    [Id]       INT NOT NULL,
    [Emp_ID_fld]   INT NOT NULL,
    [Video_ID_fld] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Employee_Video_link_tbl_To_Employee_tbl] FOREIGN KEY ([Emp_ID_fld]) REFERENCES [dbo].[Employee_tbl] ([Id]),
	CONSTRAINT [FK_Employee_Video_link_tbl_To_Video_List_tbl] FOREIGN KEY ([Video_ID_fld]) REFERENCES [dbo].[Video_List_tbl] ([Id])
);



CREATE TABLE [dbo].[Employee_Occurence_tbl] (
    [Id]                 INT NOT NULL,
    [Emp_Video_ID_fld]   INT NOT NULL,
    [Frame_Location_fld] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Employee_Occurence_tbl_To_Employee_Video_Link_tbl] FOREIGN KEY ([Emp_Video_ID_fld]) REFERENCES [dbo].[Employee_Video_Link_tbl] ([Id])
);

