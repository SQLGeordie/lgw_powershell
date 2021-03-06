IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Latest_Policy_Information_AE_View_1_table]') AND type in (N'U'))
DROP TABLE [dbo].[Latest_Policy_Information_AE_View_1_table]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Latest_Policy_Information_AE_View_1_table]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Latest_Policy_Information_AE_View_1_table](
	[policynumber] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Idnum] [int] NULL,
	[AE_Limit] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Limit_Type] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Accountant_Type] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Deductible] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Num_of_Accountants] [float] NULL,
	[AE_Revenues] [float] NULL,
	[AE_Prior_Years] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Revenue_Per_Accountant] [float] NULL,
	[AE_Num_of_Accountants_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Years_Prior_to_Retro] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Program_Type] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Revenues_range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Revenue_Per_Accountant_Range] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Limit_Trim] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AE_Limit_Type_Trim] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Latest_Policy_Information_AE_View_1_table]') AND name = N'IX_policynumber')
CREATE NONCLUSTERED INDEX [IX_policynumber] ON [dbo].[Latest_Policy_Information_AE_View_1_table]
(
	[policynumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
