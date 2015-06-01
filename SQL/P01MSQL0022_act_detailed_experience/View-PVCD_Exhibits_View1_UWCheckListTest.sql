IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[PVCD_Exhibits_View1_UWCheckListTest]'))
DROP VIEW [dbo].[PVCD_Exhibits_View1_UWCheckListTest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[PVCD_Exhibits_View1_UWCheckListTest]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.PVCD_Exhibits_View1_UWCheckListTest
AS
SELECT     TOP (100) PERCENT dbo.ALL_POLICIES_15_premium_summary.statecode, dbo.ALL_POLICIES_15_premium_summary.productcode, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.currentwrittenpremium) AS currentwrittenpremium, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.currentearnedpremium) AS currentearnedpremium, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.Incurred_Loss_ALAE_with_SS_NonCat) AS Incurred_Loss_ALAE_with_SS_NonCat, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.Capped_Incurred_Loss_ALAE_with_SS_wo_cat) AS Capped_Incurred_Loss_ALAE_with_SS_wo_cat, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.Ult_LDF_Incurred_Loss_ALAE_with_SS_NonCat) AS Ult_LDF_Incurred_Loss_ALAE_with_SS_NonCat, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.Ult_LDF_Capped_Incurred_Loss_ALAE_with_SS_wo_cat) 
                      AS Ult_LDF_Capped_Incurred_Loss_ALAE_with_SS_wo_cat, dbo.ALL_POLICIES_15_premium_summary.Coverage_Group, 
                      dbo.ALL_POLICIES_15_premium_summary.Last_Reporting_Year, SUM(dbo.ALL_POLICIES_15_premium_summary.Incurred_Loss_ALAE_with_SS) 
                      AS Incurred_Loss_ALAE_with_SS, dbo.ALL_POLICIES_15_premium_summary.Fiscal_AY_Year, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.Policy_count_All_Cov_Combined) AS Policy_count_All_Cov_Combined, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.Reported_Claims) AS Reported_Claims, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_Breach_of_Contract_Loss) AS COL_Breach_of_Contract_Loss, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_Discrimination_Loss) AS COL_Discrimination_Loss, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_Wrongful_Termination_Loss) AS COL_Wrongful_Termination_Loss, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_Harrassment_Loss) AS COL_Harrassment_Loss, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_SLD_All_Other_Count_rptd) AS COL_SLD_All_Other_Count_rptd, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_Breach_of_Contract_Count_rptd) AS COL_Breach_of_Contract_Count_rptd, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_Discrimination_Count_rptd) AS COL_Discrimination_Count_rptd, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_Wrongful_Termination_Count_rptd) AS COL_Wrongful_Termination_Count_rptd, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_SLD_All_Other_Loss) AS COL_SLD_All_Other_Loss, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.COL_Harrassment_Count_rptd) AS COL_Harrassment_Count_rptd, 
                      dbo.Policy_Product_State_Coverage_Data_ALL_POLICIES.Price_Monitor_Standard_Cov_Grp_Monitored_range, 
                      dbo.ALL_POLICIES_15_premium_summary.Loss_Evaluation_Month, dbo.ALL_POLICIES_15_premium_summary.Loss_Evaluation_Year, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVDO_Limit, dbo.Policy_Information_PVCD_C.PVCD_PVDO_Alt_Retention, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVDO_RatingClass, dbo.Policy_Information_PVCD_C.PVCD_PVEPL_Limit, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVEPL_Alt_Retention, dbo.Policy_Information_PVCD_C.PVCD_PVEPL_RatingClass, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVEPL_Num_of_Employees, dbo.Policy_Information_PVCD_C.PVCD_Business_Type, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVEPL_Num_of_Employees_Range, dbo.Policy_Information_PVCD_C.companycode, 
                      dbo.Policy_Information_PVCD_C.Renew_New_Auto, dbo.Policy_Information_PVCD_C.First_Policy_Year, 
                      dbo.Policy_Information_PVCD_C.Branch_Region, dbo.Policy_Information_PVCD_C.Written_Premium_Range, 
                      dbo.Policy_Information_PVCD_C.Primary_Producer, dbo.Policy_Information_PVCD_C.Primary_Producer_type, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.Commission_dollars) AS Commission_dollars, 
                      SUM(dbo.ALL_POLICIES_15_premium_summary.Commission_Premiums) AS Commission_Premiums, 
                      dbo.Policy_Information_PVCD_C.New_Renew_Tail, dbo.Policy_Information_PVCD_C.PVCD_Amendment_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Partnership_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_ProPak_Elite72_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_ProPak_Elite73_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_Circumstance_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Professional_Services_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_BullsEye_ProPak_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Sexual_Abuse_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Amended_Def_of_Employee_Incl_Ind_Contractors_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Amend_of_ExclusionK_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Amend_of_Severability_Provision_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Third_Party_Exclusion_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_Punitive_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Medical_Malpractice_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Insurance_EO_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Full_Securities_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_FAILURE_TO_MAINT_INSUR_EXCLUSION_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Bankruptcy_Exclusion_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_Shareholder_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Past_Acts_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_No_Liab_Retent_Waiver_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Election_ERP_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_Delete_Consent_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Damages_Only_Retention_End_Y_N, 
                      Policy_Information_Underwriting_Check_List_C_1.Board_Experience_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.EEO1_Report_Received_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Employment_Handbook_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Employment_Policies_YN, Policy_Information_Underwriting_Check_List_C_1.Form_5500_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Retro_Date_Applies_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Subsidiaries_Affiliates_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Number_of_Full_Time_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Number_of_Part_Time_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Number_of_Temporary_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Number_of_Total_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Claims_Past_5yrs_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Insider_Shareholder_Percent_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Employee_Salary_GT100k_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Percent_of_Part_Time_and_Temp_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Plan_Assets_Range, Policy_Information_Underwriting_Check_List_C_1.Total_Participants_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Total_Claims_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Clean_Warranty_Letter_Received_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Salary_100K_to_Total_Employees_Range
FROM         dbo.Policy_Product_State_Coverage_Data_ALL_POLICIES RIGHT OUTER JOIN
                      dbo.Policy_Information_Underwriting_Check_List_C AS Policy_Information_Underwriting_Check_List_C_1 INNER JOIN
                      dbo.ALL_POLICIES_15_premium_summary ON 
                      Policy_Information_Underwriting_Check_List_C_1.policynumber = dbo.ALL_POLICIES_15_premium_summary.policynumber ON 
                      dbo.Policy_Product_State_Coverage_Data_ALL_POLICIES.policynumber = dbo.ALL_POLICIES_15_premium_summary.policynumber AND 
                      dbo.Policy_Product_State_Coverage_Data_ALL_POLICIES.Productcode = dbo.ALL_POLICIES_15_premium_summary.productcode AND 
                      dbo.Policy_Product_State_Coverage_Data_ALL_POLICIES.statecode = dbo.ALL_POLICIES_15_premium_summary.statecode AND 
                      dbo.Policy_Product_State_Coverage_Data_ALL_POLICIES.coverage_group = dbo.ALL_POLICIES_15_premium_summary.Coverage_Group LEFT OUTER
                       JOIN
                      dbo.Policy_Information_PVCD_C ON dbo.ALL_POLICIES_15_premium_summary.policynumber = dbo.Policy_Information_PVCD_C.policynumber
GROUP BY dbo.ALL_POLICIES_15_premium_summary.productcode, dbo.ALL_POLICIES_15_premium_summary.statecode, 
                      dbo.ALL_POLICIES_15_premium_summary.Coverage_Group, dbo.ALL_POLICIES_15_premium_summary.Last_Reporting_Year, 
                      dbo.ALL_POLICIES_15_premium_summary.Fiscal_AY_Year, 
                      dbo.Policy_Product_State_Coverage_Data_ALL_POLICIES.Price_Monitor_Standard_Cov_Grp_Monitored_range, 
                      dbo.ALL_POLICIES_15_premium_summary.Loss_Evaluation_Month, dbo.ALL_POLICIES_15_premium_summary.Loss_Evaluation_Year, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVDO_Limit, dbo.Policy_Information_PVCD_C.PVCD_PVDO_Alt_Retention, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVDO_RatingClass, dbo.Policy_Information_PVCD_C.PVCD_PVEPL_Limit, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVEPL_Alt_Retention, dbo.Policy_Information_PVCD_C.PVCD_PVEPL_RatingClass, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVEPL_Num_of_Employees, dbo.Policy_Information_PVCD_C.PVCD_Business_Type, 
                      dbo.Policy_Information_PVCD_C.PVCD_PVEPL_Num_of_Employees_Range, dbo.Policy_Information_PVCD_C.companycode, 
                      dbo.Policy_Information_PVCD_C.Renew_New_Auto, dbo.Policy_Information_PVCD_C.First_Policy_Year, 
                      dbo.Policy_Information_PVCD_C.Branch_Region, dbo.Policy_Information_PVCD_C.Written_Premium_Range, 
                      dbo.Policy_Information_PVCD_C.Primary_Producer, dbo.Policy_Information_PVCD_C.Primary_Producer_type, 
                      dbo.Policy_Information_PVCD_C.New_Renew_Tail, dbo.Policy_Information_PVCD_C.PVCD_Amendment_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Partnership_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_ProPak_Elite72_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_ProPak_Elite73_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_Circumstance_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Professional_Services_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_BullsEye_ProPak_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Sexual_Abuse_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Amended_Def_of_Employee_Incl_Ind_Contractors_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Amend_of_ExclusionK_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Amend_of_Severability_Provision_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Third_Party_Exclusion_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_Punitive_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Medical_Malpractice_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Insurance_EO_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Full_Securities_Exclusion_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_FAILURE_TO_MAINT_INSUR_EXCLUSION_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Bankruptcy_Exclusion_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_Shareholder_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Past_Acts_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_No_Liab_Retent_Waiver_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Election_ERP_End_Y_N, dbo.Policy_Information_PVCD_C.PVCD_Delete_Consent_End_Y_N, 
                      dbo.Policy_Information_PVCD_C.PVCD_Damages_Only_Retention_End_Y_N, 
                      Policy_Information_Underwriting_Check_List_C_1.Board_Experience_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Clean_Warranty_Letter_Received_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.EEO1_Report_Received_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Employment_Handbook_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Employment_Policies_YN, Policy_Information_Underwriting_Check_List_C_1.Form_5500_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Retro_Date_Applies_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Subsidiaries_Affiliates_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Number_of_Full_Time_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Number_of_Part_Time_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Number_of_Temporary_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Number_of_Total_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Claims_Past_5yrs_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Insider_Shareholder_Percent_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Employee_Salary_GT100k_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Percent_of_Part_Time_and_Temp_Employees_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Plan_Assets_Range, Policy_Information_Underwriting_Check_List_C_1.Total_Participants_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Total_Claims_Range, 
                      Policy_Information_Underwriting_Check_List_C_1.Clean_Warranty_Letter_Received_YN, 
                      Policy_Information_Underwriting_Check_List_C_1.Salary_100K_to_Total_Employees_Range
HAVING      (dbo.ALL_POLICIES_15_premium_summary.productcode IN (''PV'', ''CD''))
' 
GO