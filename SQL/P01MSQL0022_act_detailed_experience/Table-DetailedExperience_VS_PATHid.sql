IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetailedExperience_VS_PATHid]') AND type in (N'U'))
DROP TABLE [dbo].[DetailedExperience_VS_PATHid]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetailedExperience_VS_PATHid]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DetailedExperience_VS_PATHid](
	[idnum] [int] NULL,
	[policynumber] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[createdate] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
