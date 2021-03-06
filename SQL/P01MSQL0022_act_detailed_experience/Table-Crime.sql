IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Crime]') AND type in (N'U'))
DROP TABLE [dbo].[Crime]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Crime]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Crime](
	[statecode] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Coverage_Reporting_group] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productcode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Fiscal_AY_Year] [int] NULL,
	[currentwrittenpremium] [decimal](38, 2) NULL,
	[currentearnedpremium] [decimal](38, 2) NULL,
	[Policy_count_Reporting_Coverage] [float] NULL,
	[Incurred_Loss_ALAE_with_SS_NonCat] [decimal](38, 2) NULL,
	[Capped_Incurred_Loss_ALAE_with_SS_wo_cat] [decimal](38, 2) NULL,
	[Ult_LDF_Incurred_Loss_ALAE_with_SS_NonCat] [decimal](38, 2) NULL,
	[Ult_LDF_Capped_Incurred_Loss_ALAE_with_SS_wo_cat] [decimal](38, 2) NULL,
	[Reported_Claims] [decimal](38, 2) NULL,
	[COL_GLBI_Malpractice_Count] [decimal](38, 2) NULL,
	[COL_GLBI_Malpractice_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_Fraud_Breach_of_Contract_Count] [decimal](38, 2) NULL,
	[COL_GLBI_Fraud_Breach_of_Contract_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_Injury_Count] [decimal](38, 2) NULL,
	[COL_GLBI_Injury_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_Other_Count] [decimal](38, 2) NULL,
	[COL_GLBI_Other_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_Sexual_Assault_Molest_Abuse_Count] [decimal](38, 2) NULL,
	[COL_GLBI_Sexual_Assault_Molest_Abuse_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_PropertyDamage_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_PropertyDamage_Count] [decimal](38, 2) NULL,
	[COL_GLBI_Theft_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_Theft_Count] [decimal](38, 2) NULL,
	[COL_GLBI_SlanderDefamtion_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_SlanderDefamtion_Count] [decimal](38, 2) NULL,
	[COL_GLBI_Discrim_WrongfulTermination_Loss] [decimal](38, 2) NULL,
	[COL_GLBI_Discrim_WrongfulTermination_Count] [decimal](38, 2) NULL,
	[Incurred_Claims] [decimal](38, 2) NULL,
	[Commission_dollars] [float] NULL,
	[Commission_Premiums] [decimal](38, 2) NULL,
	[Price_Monitor_Standard_CovGrp_GL_Monitored_range] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[New_Renew_Tail] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Renew_New_Auto] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Branch_Region] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[program] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Written_Premium_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Coverage_Group] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Product_group] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Primary_Umbrella] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Earned_Buildings] [float] NULL,
	[Earned_Locations] [float] NULL,
	[Earned_TIV] [float] NULL,
	[GL_Dom_Terr_Description] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GL_Dom_Region_in_State] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Primary_Producer] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_count_All_Cov_Combined] [float] NULL,
	[Account_UltLoss_Ratio_Working_Cover_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_RepLoss_Ratio_Working_Cover_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Policy_count_Coverage_Group] [float] NULL,
	[Primary_Producer_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Playground_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Playground_Equip_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pool_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sports_Activities_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tennis_Bubble_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tennis_Courts_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Number_of_Swimming_Pools_Range] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Incurred_Loss_ALAE_with_SS] [decimal](38, 2) NULL,
	[Capped_Incurred_Loss_ALAE_with_SS] [decimal](38, 2) NULL,
	[Ult_LDF_Incurred_Loss_ALAE_with_SS] [decimal](38, 2) NULL,
	[Ult_LDF_Capped_Inc_Loss_ALAE_with_SS] [decimal](38, 2) NULL,
	[GL_Aggregate_Limit] [float] NULL,
	[GL_Deductible] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GLDX_Indicator] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SAM_Form] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SAM_OCC_Limit] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SAM_Agg_Limit] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SAM_Form_Group] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GL_Occurrence_Limit] [float] NULL,
	[Endorsement_GLDX_YN] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[policynumber] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Property_Coverage_Form] [varchar](2550) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Coverage_Form] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FA_Constr_Code_Dominant_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FA_Hail_Dominant] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZIP_Pop_Density_Dominant] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FA_Avg_Bld_Rate_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FA_Avg_Bld_Rate_rd2] [float] NULL,
	[FA_Deductible] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COL_Prop_Wind_Hail_Count] [decimal](38, 2) NULL,
	[COL_Prop_Wind_Hail_Loss] [decimal](38, 2) NULL,
	[COL_Prop_Water_Other_Loss] [decimal](38, 2) NULL,
	[COL_Prop_Water_Other_Count] [decimal](38, 2) NULL,
	[COL_Prop_Water_Sprinkler_Loss] [decimal](38, 2) NULL,
	[COL_Prop_Water_Sprinkler_Count] [decimal](38, 2) NULL,
	[COL_Prop_Theft_Van_Loss] [decimal](38, 2) NULL,
	[COL_Prop_Theft_Van_Count] [decimal](38, 2) NULL,
	[COL_Prop_Fire_Lightning_Explosion_Loss] [decimal](38, 2) NULL,
	[COL_Prop_Fire_Lightning_Explosion_Count] [decimal](38, 2) NULL,
	[COL_Prop_Other_Loss] [decimal](38, 2) NULL,
	[COL_Prop_Other_Count] [decimal](38, 2) NULL,
	[Endorsement_Elite_YN] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_Name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Incurred_Loss_ALAE_with_SS_CatOnly] [decimal](38, 2) NULL,
	[Auto_Vehicle_count_Total_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_PPT_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Buses_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Truck_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_VanPools_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_OtherPublic_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Other_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Coll_No_Ded_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Coll_U1000_Ded_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Coll_1000_Ded_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Coll_O1000_Ded_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_OTC_No_Ded_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_OTC_U1000_Ded_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_OTC_1000_Ded_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_OTC_O1000_Ded_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Dual_Control_Range] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Auto_Vehicle_count_Dual_Control_Percent_Range] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BusinessClassDesc] [varchar](75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DivisionName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[producttype] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Source_Detail_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[First_Policy_Year] [varchar](13) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PIC_Producer] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[underwriter] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Fiscal_AY_Month_Ending] [int] NULL,
	[Last_Reporting_Year] [int] NULL,
	[Last_Reporting_Month] [int] NULL,
	[Price_Monitor_Standard_Cov_Grp_Monitored_range] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_UltLoss_Ratio] [float] NULL,
	[Account_UltLoss_Ratio_NonCat] [float] NULL,
	[Account_RepLoss_Ratio] [float] NULL,
	[programdesc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PICProducer] [varchar](102) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryProducer] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryProducerType] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_Premium_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SLD_BusinessType] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[CL_Deductible_int] [float] NULL,
	[CGL_Coverage_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Complete_Signed_Application_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Independent_Contractors_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Licensed_Professional_Designations_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Standard_Contract_YN] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[effectivedate] [datetime] NULL,
	[expirationdate] [datetime] NULL,
	[Business_Desc] [char](72) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryProducerNumber] [int] NULL,
	[underwriterName] [varchar](102) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[regiondesc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Written_Premium_Range_for_Product] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[accountnumber] [int] NULL
) ON [PRIMARY]
END
GO
