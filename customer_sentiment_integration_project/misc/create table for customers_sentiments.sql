USE [project_abd]
GO

/****** Object:  Table [dbo].[customers_sentiments_tbl]    Script Date: 2/21/2020 8:55:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customers_sentiments_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[sentiment_datetime_fld] [datetime] NULL,
	[positive_fld] [numeric](6, 2) NULL,
	[negative_fld] [numeric](6, 2) NULL,
	[neutral_fld] [numeric](6, 2) NULL,
	[flg_fld] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [project_abd]
GO

/****** Object:  Table [dbo].[sentiment_integration_err_tbl]    Script Date: 2/21/2020 8:56:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sentiment_integration_err_tbl](
	[ID_fld] [int] IDENTITY(1,1) NOT NULL,
	[filename_fld] [varchar](50) NULL,
	[error_datetime_fld] [datetime] NULL,
	[sentiment_datetime_fld] [datetime] NULL,
	[positive_fld] [numeric](3, 2) NULL,
	[negative_fld] [numeric](3, 2) NULL,
	[neutral_fld] [numeric](3, 2) NULL,
	[flg_fld] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_fld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

