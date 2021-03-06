IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND type in (N'U'))
DROP TABLE [dbo].[Policy_PATHID_Information]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Policy_PATHID_Information](
	[idnum] [int] NULL,
	[leadID] [int] NULL,
	[policynumber] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[expiringpolicynumber] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[statusdesc3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policynumber_or_PATHID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[accountnumber] [int] NULL,
	[accountname] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[regioncode] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[regiondesc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PICProducer] [varchar](102) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryProducer] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryProducerType] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryProducerNumber] [int] NULL,
	[program] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[programdesc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BusinessClassDesc] [varchar](75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Source_Detail_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Source_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PolicyID] [uniqueidentifier] NULL,
	[ratingsourcecode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RatingSystemID] [bigint] NULL,
	[CompanyCode] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[underwriterName] [varchar](102) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AsstUnderwriterName] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AccountExecRepName] [varchar](102) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DivisionName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productline] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productcode] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productdesc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productshortdesc] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[producttype] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductTypeName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prodmixname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[reportmixname] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Product_group] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NewRenewalAuto] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[effectivedate] [datetime] NULL,
	[effectiveMonth] [int] NULL,
	[effectiveYear] [int] NULL,
	[effectiveYearMonth] [int] NULL,
	[expirationdate] [datetime] NULL,
	[expirationMonth] [int] NULL,
	[expirationYear] [int] NULL,
	[expirationYearMonth] [int] NULL,
	[Insd_State] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insd_City] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insd_County] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insd_Zip] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insd_Address1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contactDate] [datetime] NULL,
	[contactpremium] [decimal](18, 2) NULL,
	[createddatetime] [datetime] NULL,
	[submissionDate_min] [datetime] NULL,
	[submissionDate_max] [datetime] NULL,
	[submissionPremium] [decimal](18, 2) NULL,
	[declinedSubmissionDate_min] [datetime] NULL,
	[declinedSubmissionDate_max] [datetime] NULL,
	[declinedSubmissionPremium] [decimal](18, 2) NULL,
	[quoteIssuedDate_min] [datetime] NULL,
	[quoteIssuedDate_max] [datetime] NULL,
	[quotedpremium] [decimal](18, 2) NULL,
	[declinedQuoteDate_min] [datetime] NULL,
	[declinedQuoteDate_max] [datetime] NULL,
	[declinedQuotePremium] [decimal](18, 2) NULL,
	[boundDate_min] [datetime] NULL,
	[boundDate_max] [datetime] NULL,
	[boundPremium] [decimal](15, 2) NULL,
	[FinalAccountingPremium] [decimal](38, 2) NULL,
	[APPS_PS_Currentwrittenpremium] [decimal](38, 2) NULL,
	[prevpolicynumber] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_2] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_3] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_4] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_5] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_6] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_7] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_8] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Number_of_Renewals] [int] NULL,
	[Consecutive_Auto_Renewals] [int] NULL,
	[Number_of_SubsequentRenewals] [int] NULL,
	[SICCode] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SICDesc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SICDivisionDesc] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SICMajorGroupDesc] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SICIndustryDesc] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UnderwriterGroup] [varchar](13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NewRenewalAutoV2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insured_Years] [int] NULL,
	[Policy_Premium_Level_Marketing] [float] NULL,
	[Account_PY_Premium_Level_Marketing] [float] NULL,
	[Policy_Premium_Level] [float] NULL,
	[Account_PY_Premium_Level] [float] NULL,
	[Insured_Years_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Written_Premium_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_Premium_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SLD_BusinessType] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SLD_Occurrence_Limit] [int] NULL,
	[SLD_NumOfEmployees] [int] NULL,
	[Account_ProductType_P] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_ProductType_S] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_ProductType_U] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_ProductType_O] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_ProductType_A] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_ProductType_L] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_ProductType_ALL] [varchar](11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_ProductType_ALL_Desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_FF_Cov_DO] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_FF_Cov_EPL] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_FF_Cov_Fid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_FF_Cov_WPV] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_FF_Cov_Internet] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FF_Cov_ALL] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_PV_Cov_DO] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_PV_Cov_EPL] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_PV_Cov_Fid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_PV_Cov_Other] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PV_Cov_ALL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prevpolicy_premium] [float] NULL,
	[policy_premium_2] [float] NULL,
	[policy_premium_3] [float] NULL,
	[policy_premium_4] [float] NULL,
	[policy_premium_5] [float] NULL,
	[policy_premium_6] [float] NULL,
	[policy_premium_7] [float] NULL,
	[policy_premium_8] [float] NULL,
	[prevpolicy_Effectivedate] [datetime] NULL,
	[policy_Effectivedate_2] [datetime] NULL,
	[policy_Effectivedate_3] [datetime] NULL,
	[policy_Effectivedate_4] [datetime] NULL,
	[policy_Effectivedate_5] [datetime] NULL,
	[policy_Effectivedate_6] [datetime] NULL,
	[policy_Effectivedate_7] [datetime] NULL,
	[policy_Effectivedate_8] [datetime] NULL,
	[prevpolicy_Expirationdate] [datetime] NULL,
	[policy_Expirationdate_2] [datetime] NULL,
	[policy_Expirationdate_3] [datetime] NULL,
	[policy_Expirationdate_4] [datetime] NULL,
	[policy_Expirationdate_5] [datetime] NULL,
	[policy_Expirationdate_6] [datetime] NULL,
	[policy_Expirationdate_7] [datetime] NULL,
	[policy_Expirationdate_8] [datetime] NULL,
	[Yr_MM_30_60_days] [int] NULL,
	[Yr_MM_60_90_days] [int] NULL,
	[Yr_MM_90_120_days] [int] NULL,
	[Loss_max_YRMM] [int] NULL,
	[Accountstatistic_LossRatio] [float] NULL,
	[EarnedPremium_Acct_CurrEval] [float] NULL,
	[Incurred_LossALAE_Acct_CurrEval] [float] NULL,
	[Incurred_LossRatio_Acct_CurrEval] [float] NULL,
	[Incurred_LossRatio_Acct_CurrEval_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_Div_CurrEval] [float] NULL,
	[Incurred_LossALAE_Acct_Div_CurrEval] [float] NULL,
	[Incurred_LossRatio_Acct_Div_CurrEval] [float] NULL,
	[Incurred_LossRatio_Acct_Div_CurrEval_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_Div_Prod_CurrEval] [float] NULL,
	[Incurred_LossALAE_Acct_Div_Prod_CurrEval] [float] NULL,
	[Incurred_LossRatio_Acct_Div_Prod_CurrEval] [float] NULL,
	[Incurred_LossRatio_Acct_Div_Prod_CurrEval_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_60_90] [float] NULL,
	[Incurred_LossALAE_Acct_60_90] [float] NULL,
	[Incurred_LossRatio_Acct_60_90] [float] NULL,
	[Incurred_LossRatio_Acct_60_90_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_Div_60_90] [float] NULL,
	[Incurred_LossALAE_Acct_Div_60_90] [float] NULL,
	[Incurred_LossRatio_Acct_Div_60_90] [float] NULL,
	[Incurred_LossRatio_Acct_Div_60_90_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_Div_Prod_60_90] [float] NULL,
	[Incurred_LossALAE_Acct_Div_Prod_60_90] [float] NULL,
	[Incurred_LossRatio_Acct_Div_Prod_60_90] [float] NULL,
	[Incurred_LossRatio_Acct_Div_Prod_60_90_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_90_120] [float] NULL,
	[Incurred_LossALAE_Acct_90_120] [float] NULL,
	[Incurred_LossRatio_Acct_90_120] [float] NULL,
	[Incurred_LossRatio_Acct_90_120_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_Div_90_120] [float] NULL,
	[Incurred_LossALAE_Acct_Div_90_120] [float] NULL,
	[Incurred_LossRatio_Acct_Div_90_120] [float] NULL,
	[Incurred_LossRatio_Acct_Div_90_120_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_Div_Prod_90_120] [float] NULL,
	[Incurred_LossALAE_Acct_Div_Prod_90_120] [float] NULL,
	[Incurred_LossRatio_Acct_Div_Prod_90_120] [float] NULL,
	[Incurred_LossRatio_Acct_Div_Prod_90_120_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Acct_5UWYr_CurrEval] [float] NULL,
	[Incurred_LossALAE_Acct_5UWYr_CurrEval] [float] NULL,
	[Incurred_LossRatio_Acct_5UWYr_CurrEval] [float] NULL,
	[Incurred_LossRatio_Acct_5UWYr_CurrEval_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Incurred_LossRatio_Acct_5UWYr_CurrEval_Range_PriorPol] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Pol_5Yr_Div_60_90] [float] NULL,
	[Incurred_LossALAE_Pol_5Yr_Div_60_90] [float] NULL,
	[Incurred_LossRatio_Pol_5Yr_Div_60_90] [float] NULL,
	[Incurred_LossRatio_Pol_5Yr_Div_60_90_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Incurred_LossRatio_Pol_5Yr_Div_60_90_Range_PriorPol] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_Judgment_Mod_nonUC] [float] NULL,
	[Policy_Judgment_Mod_UC] [float] NULL,
	[Policy_Judgment_Mod_GL] [float] NULL,
	[Policy_Judgment_Mod_Automobile] [float] NULL,
	[Policy_Percent_Monitored] [float] NULL,
	[AccountDiv_Judgment_Mod_nonUC] [float] NULL,
	[AccountDiv_Judgment_Mod_UC] [float] NULL,
	[AccountDiv_Percent_Monitored] [float] NULL,
	[AccountDiv_Judgment_Mod_NonUC_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AccountDiv_Judgment_Mod_UC_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_Judgment_Mod_GL_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_Judgment_Mod_Automobile_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NationalParentAgencyYN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GroupParentAgencyYN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GroupParentAgencyNumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GroupParentAgencyName] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NationalParentAgencyNumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NationalParentAgencyName] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insd_ZipCode_3] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insd_ZipCode_5] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubProduct] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubProductGroup] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NewRenewalAutoV2ExpressAppInd] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PriorityAccountLevelcurrent] [int] NULL,
	[PriorityAccountLevelExpiration120Prior] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_Account_Premium_Range')
CREATE NONCLUSTERED INDEX [IX_Account_Premium_Range] ON [dbo].[Policy_PATHID_Information]
(
	[Account_Premium_Range] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_AccountExecRepName')
CREATE NONCLUSTERED INDEX [IX_AccountExecRepName] ON [dbo].[Policy_PATHID_Information]
(
	[AccountExecRepName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_accountname')
CREATE NONCLUSTERED INDEX [IX_accountname] ON [dbo].[Policy_PATHID_Information]
(
	[accountname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_accountnumber')
CREATE NONCLUSTERED INDEX [IX_accountnumber] ON [dbo].[Policy_PATHID_Information]
(
	[accountnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_AsstUnderwriterName')
CREATE NONCLUSTERED INDEX [IX_AsstUnderwriterName] ON [dbo].[Policy_PATHID_Information]
(
	[AsstUnderwriterName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_BusinessClassDesc')
CREATE NONCLUSTERED INDEX [IX_BusinessClassDesc] ON [dbo].[Policy_PATHID_Information]
(
	[BusinessClassDesc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_CompanyCode')
CREATE NONCLUSTERED INDEX [IX_CompanyCode] ON [dbo].[Policy_PATHID_Information]
(
	[CompanyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_DivisionName')
CREATE NONCLUSTERED INDEX [IX_DivisionName] ON [dbo].[Policy_PATHID_Information]
(
	[DivisionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_idnum')
CREATE NONCLUSTERED INDEX [IX_idnum] ON [dbo].[Policy_PATHID_Information]
(
	[idnum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_NewRenewalAuto')
CREATE NONCLUSTERED INDEX [IX_NewRenewalAuto] ON [dbo].[Policy_PATHID_Information]
(
	[NewRenewalAuto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_PICProducer')
CREATE NONCLUSTERED INDEX [IX_PICProducer] ON [dbo].[Policy_PATHID_Information]
(
	[PICProducer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_Policynumber')
CREATE NONCLUSTERED INDEX [IX_Policynumber] ON [dbo].[Policy_PATHID_Information]
(
	[policynumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_Policynumber_or_PATHID')
CREATE NONCLUSTERED INDEX [IX_Policynumber_or_PATHID] ON [dbo].[Policy_PATHID_Information]
(
	[Policynumber_or_PATHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_PrimaryProducer')
CREATE NONCLUSTERED INDEX [IX_PrimaryProducer] ON [dbo].[Policy_PATHID_Information]
(
	[PrimaryProducer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_prodmixname')
CREATE NONCLUSTERED INDEX [IX_prodmixname] ON [dbo].[Policy_PATHID_Information]
(
	[prodmixname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_Product_group')
CREATE NONCLUSTERED INDEX [IX_Product_group] ON [dbo].[Policy_PATHID_Information]
(
	[Product_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_productcode')
CREATE NONCLUSTERED INDEX [IX_productcode] ON [dbo].[Policy_PATHID_Information]
(
	[productcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_ProductTypeName')
CREATE NONCLUSTERED INDEX [IX_ProductTypeName] ON [dbo].[Policy_PATHID_Information]
(
	[ProductTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_program')
CREATE NONCLUSTERED INDEX [IX_program] ON [dbo].[Policy_PATHID_Information]
(
	[program] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_regiondesc')
CREATE NONCLUSTERED INDEX [IX_regiondesc] ON [dbo].[Policy_PATHID_Information]
(
	[regiondesc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_reportmixname')
CREATE NONCLUSTERED INDEX [IX_reportmixname] ON [dbo].[Policy_PATHID_Information]
(
	[reportmixname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_Source_Detail_Name')
CREATE NONCLUSTERED INDEX [IX_Source_Detail_Name] ON [dbo].[Policy_PATHID_Information]
(
	[Source_Detail_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_Source_Name')
CREATE NONCLUSTERED INDEX [IX_Source_Name] ON [dbo].[Policy_PATHID_Information]
(
	[Source_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_UnderwriterGroup')
CREATE NONCLUSTERED INDEX [IX_UnderwriterGroup] ON [dbo].[Policy_PATHID_Information]
(
	[UnderwriterGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_underwriterName')
CREATE NONCLUSTERED INDEX [IX_underwriterName] ON [dbo].[Policy_PATHID_Information]
(
	[underwriterName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Policy_PATHID_Information]') AND name = N'IX_Written_Premium_Range')
CREATE NONCLUSTERED INDEX [IX_Written_Premium_Range] ON [dbo].[Policy_PATHID_Information]
(
	[Written_Premium_Range] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
