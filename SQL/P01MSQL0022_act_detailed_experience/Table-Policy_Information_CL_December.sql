IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Policy_Information_CL_December]') AND type in (N'U'))
DROP TABLE [dbo].[Policy_Information_CL_December]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Policy_Information_CL_December]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Policy_Information_CL_December](
	[policynumber] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Idnum] [int] NULL,
	[CL_Occ_Limit] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_Agg_Limit] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_Deductible] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_Revenues] [float] NULL,
	[CL_RetroactiveYears] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_ContractsUsage] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_HazardGroup] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_ProgramMod_Factor] [float] NULL,
	[CL_NumOfEmployees] [float] NULL,
	[CL_BusinessType] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_Revenue_Per_Employee] [float] NULL,
	[CL_Mortgage_Broker_Ind] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_NumOfEmployees_range] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_Revenues_range] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_Prior_Years_Range] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_Revenue_Per_Employee_range] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CL_Occ_Limit_int] [float] NULL,
	[CL_Agg_Limit_int] [float] NULL,
	[CL_Deductible_int] [float] NULL
) ON [PRIMARY]
END
GO
