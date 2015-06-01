IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[NPDO_ALL_Lines_View_1_State_WY_Package_Accounts_for_Proposal]'))
DROP VIEW [dbo].[NPDO_ALL_Lines_View_1_State_WY_Package_Accounts_for_Proposal]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[NPDO_ALL_Lines_View_1_State_WY_Package_Accounts_for_Proposal]'))
EXEC dbo.sp_executesql @statement = N'
Create View 
	dbo.NPDO_ALL_Lines_View_1_State_WY_Package_Accounts_for_Proposal 
as

SELECT DISTINCT 
	TOP (100) PERCENT 
		dbo.FLEXI_Policies_for_WY_2013Proposal_1.AccountNumber, 
		dbo.FLEXI_Policies_for_WY_2013Proposal_1.Policy, 
		dbo.Policy_PATHID_Information.producttype, 
		dbo.Policy_PATHID_Information.ProductTypeName, 
		dbo.Policy_PATHID_Information.Account_ProductType_P
FROM         
	dbo.FLEXI_Policies_for_WY_2013Proposal_1 LEFT OUTER JOIN
    dbo.Policy_PATHID_Information 
    ON 
		dbo.FLEXI_Policies_for_WY_2013Proposal_1.AccountNumber = dbo.Policy_PATHID_Information.accountnumber
WHERE     
	(dbo.Policy_PATHID_Information.producttype = ''P'')
ORDER BY 
	dbo.FLEXI_Policies_for_WY_2013Proposal_1.AccountNumber' 
GO