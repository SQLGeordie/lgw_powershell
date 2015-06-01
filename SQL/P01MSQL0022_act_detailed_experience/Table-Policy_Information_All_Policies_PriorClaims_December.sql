IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Policy_Information_All_Policies_PriorClaims_December]') AND type in (N'U'))
DROP TABLE [dbo].[Policy_Information_All_Policies_PriorClaims_December]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Policy_Information_All_Policies_PriorClaims_December]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Policy_Information_All_Policies_PriorClaims_December](
	[Policynumber] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Productcode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[policyEffectivedate] [datetime] NULL,
	[policyexpirationdate] [datetime] NULL,
	[Renew_New_Auto] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prior_Policy_number] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_2] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_3] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_4] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prior_policynumber_5] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Date_90_days_Prior_to_PolicyEffectiveDate] [datetime] NULL,
	[Date_60_days_Prior_to_PolicyEffectiveDate] [datetime] NULL,
	[Date_45_days_Prior_to_PolicyEffectiveDate] [datetime] NULL,
	[Date_0_days_Prior_to_PolicyEffectiveDate] [datetime] NULL,
	[YRMM_90_days_Prior_to_PolicyEffectiveDate] [int] NULL,
	[YRMM_60_days_Prior_to_PolicyEffectiveDate] [int] NULL,
	[YRMM_45_days_Prior_to_PolicyEffectiveDate] [int] NULL,
	[YRMM_0_days_Prior_to_PolicyEffectiveDate] [int] NULL,
	[Date_3_Years_Prior_to_PolicyEffectiveDate] [datetime] NULL,
	[Date_5_Years_Prior_to_PolicyEffectiveDate] [datetime] NULL,
	[Last_Reporting_Year] [int] NULL,
	[Last_Reporting_Month] [int] NULL,
	[Inforce_Policy_Indicator] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EarnedPremium_Prior_Policy] [float] NULL,
	[EarnedPremium_Prior_Policy_2] [float] NULL,
	[EarnedPremium_Prior_Policy_3] [float] NULL,
	[EarnedPremium_Prior_Policy_4] [float] NULL,
	[EarnedPremium_Prior_Policy_5] [float] NULL,
	[EarnedPremium_5PriorRenewals] [float] NULL,
	[EarnedPremium_3PriorRenewals] [float] NULL,
	[Last_Reporting_Date] [datetime] NULL,
	[EarnedPremium_Policy] [float] NULL,
	[WrittenPremium_Policy] [float] NULL,
	[EarnedPremium_Current_and_4PriorRenewals] [float] NULL,
	[Incurred_Loss_ALAE_5PriorRenewals_45DaysPreEffDate] [float] NULL,
	[Case_Reserve_5PriorRenewals_45DaysPreEffDate] [float] NULL,
	[Paid_Loss_ALAE_5PriorRenewals_45DaysPreEffDate] [float] NULL,
	[Reported_Claims_5PriorRenewals_45DaysPreEffDate] [int] NULL,
	[Incurred_Claims_5PriorRenewals_45DaysPreEffDate] [int] NULL,
	[Closed_with_Pay_5PriorRenewals_45DaysPreEffDate] [int] NULL,
	[Open_claims_5PriorRenewals_45DaysPreEffDate] [int] NULL,
	[Incurred_Loss_ALAE_3YrsPrior_90DaysPreEffDate] [float] NULL,
	[Case_Reserve_3YrsPrior_90DaysPreEffDate] [float] NULL,
	[Paid_Loss_ALAE_3YrsPrior_90DaysPreEffDate] [float] NULL,
	[Reported_Claims_3YrsPrior_90DaysPreEffDate] [int] NULL,
	[Incurred_Claims_3YrsPrior_90DaysPreEffDate] [int] NULL,
	[Closed_with_Pay_3YrsPrior_90DaysPreEffDate] [int] NULL,
	[Open_claims_3YrsPrior_90DaysPreEffDate] [int] NULL,
	[Incurred_Loss_ALAE_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [float] NULL,
	[Case_Reserve_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [float] NULL,
	[Paid_Loss_ALAE_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [float] NULL,
	[Reported_Claims_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [int] NULL,
	[Incurred_Claims_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [int] NULL,
	[Closed_with_Pay_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [int] NULL,
	[Open_claims_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [int] NULL,
	[Date_100_days_Prior_to_PolicyExpirationDate] [datetime] NULL,
	[YRMM_100_days_prior_to_PolicyExpirationDate] [int] NULL,
	[Loss_Ratio_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [float] NULL,
	[Loss_Ratio_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate_range] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loss_Ratio_5PriorRenewals_45DaysPreEffDate] [float] NULL,
	[Loss_Ratio_5PriorRenewals_45DaysPreEffDate_range] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loss_Ratio_3YrsPrior_90DaysPreEffDate] [float] NULL,
	[Loss_Ratio_3YrsPrior_90DaysPreEffDate_range] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_Year] [int] NULL,
	[accountnumber] [int] NULL,
	[Account_Loss_Ratio_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [float] NULL,
	[Account_Loss_Ratio_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate_range] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_EarnedPremium_Current_and_4PriorRenewals] [float] NULL,
	[Account_Incurred_Loss_ALAE_CurrentPolicy_and_4PriorRenewals_100DaysPreExpDate] [float] NULL,
	[DivisionName] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Producttypecode] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Producttype] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_EarnedPremium_5PriorRenewals] [float] NULL,
	[Account_Incurred_Loss_ALAE_5PriorRenewals_45DaysPreEffDate] [float] NULL,
	[Account_Loss_Ratio_5PriorRenewals_45DaysPreEffDate] [float] NULL,
	[Account_Loss_Ratio_5PriorRenewals_45DaysPreEffDate_range] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Incurred_Loss_ALAE_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [float] NULL,
	[Case_Reserve_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [float] NULL,
	[Paid_Loss_ALAE_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [float] NULL,
	[Reported_Claims_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [int] NULL,
	[Incurred_Claims_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [int] NULL,
	[Closed_with_Pay_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [int] NULL,
	[Open_claims_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [int] NULL,
	[Account_Incurred_Loss_ALAE_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [float] NULL,
	[Loss_Ratio_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [float] NULL,
	[Loss_Ratio_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate_range] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_Loss_Ratio_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate] [float] NULL,
	[Account_Loss_Ratio_CurrentPolicy_and_4PriorRenewals_LatestEvaluationDate_range] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO