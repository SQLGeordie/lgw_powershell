IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Individual_Accounts_PriceMonitor_FB_View_1]'))
DROP VIEW [dbo].[Individual_Accounts_PriceMonitor_FB_View_1]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Individual_Accounts_PriceMonitor_FB_View_1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.Individual_Accounts_PriceMonitor_FB_View_1
AS
SELECT     dbo.Policy_PATHID_Information.accountnumber, dbo.Policy_PATHID_Information.accountname, dbo.Policy_PATHID_Information.regioncode, 
                      dbo.Policy_PATHID_Information.regiondesc, dbo.Policy_PATHID_Information.PICProducer, dbo.Policy_PATHID_Information.PrimaryProducer, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PolicySnapshotID, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PolicyNumber, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SourceSystemPolicyKey, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RatingModule, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PriorPolicyNumber, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SnapShotType, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PolicyEffectiveDate, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PolicyExpirationDate, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PolicyState, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.product, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PackageOrMonoline, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SIC, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PrimaryCommissionPct, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PICCommissionPct, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.InsurableID, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PriorInsurableID, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PriorInsurableIDMatchType, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.CoverageCode, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Territory, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Exposure, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Premium, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PremiumState, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Subline, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ClassCode, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Deductible, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.InsurableEffectiveDate, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.InsurableExpirationDate, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LocationAddress1, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LocationAddress2, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LocationCity, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LocationState, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LocationZip, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AQSStateSequence, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AQSLocationSequence, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AQSBuildingSequence, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.CoInsurancePercentage, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Blanket, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ConstructionCode, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ConstructionSymbol, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RatingType, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.GroupIISymbol, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ProtectionClass, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RiskType, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ContentsGroup, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.OccupancyDescription, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PerilDescription, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.WindHailExclusionIndicator, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ClassLimit, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.WindHailDeductibleType, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BCEGTerritory, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ClassPrimaryDescription, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ClassSecondaryDescription, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerritoryDescription, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerritoryCounty, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AQSOccupancySequence, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AQSCoverageSequence, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AQSSubCoverageSequence, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AQSPerilSequence, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.IssuanceDateTime, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PremiumOverride, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PremiumProxy, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ExposureProxy, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SourceSystemKeyValue, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.NonBlanketPremium, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RatingPremPriorToBlanket, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PolicyTerm, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PremiumTerm, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PolicyTermWrittenPremium, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.DedFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.StandardCombinedMod, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ReplacementCostIndicator, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AgreedAmountIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.InflationGuardIndicator, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PropertyType, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TotalEligiblePremium, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FinalCredit, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.InflationGuard, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LocationPerilExposure, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TheftIncludedIndicator, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMERiskType, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEAgreedValueIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEBuildingOrdIncreasedPeriodOfRestIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEDependentPropertyIndicator, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEExtraExpenseIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEElectronicMediaRecIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEExtendedPeriodIDMIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ExtensionOfRecoveryIndicator, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LimitedCoverageIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEOrdinaryPayrollIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEPremiumAdjustmentIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEPowerHeatRefrigerationDeductibleIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMETimePeriodIndicator, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesCommSupplyIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesCommLinesIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesPowerEquipmentIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesPowerTransmissionIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesWaterSupplyIndicator, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMELimitsOnLossPayment, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.MonthlyLimitation, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PeriodOfRestorationExtension, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SubCoverageCode, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EarthquakeTerritory, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BuildingSprinklered, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EarthquakeClass, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EarthquakeGrade, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Tier, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FirmGround, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ConstructionYear, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RoofConstructionYear, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RoofType, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RoofFramingType, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.WindResistanceWindows, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RoofAnchor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RoofCovering, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.NumberOfStories, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.NumberOfStoriesGroup, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.HabitationalClass, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.HabitationalUnits, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ClassRateGroup, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.HabitationalClassRateGroup, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQSprinklerRisk, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQSprinklerLeakageGrade, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ExcludeNBC, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BlanketExposure, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BlanketPremium, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BlanketRate, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BlanketRateMod, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FinalBlanketRate, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ValuesAt100Percent, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Options, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.OneHundredPercentFiledBaseRate, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.OneHundredPercentExposureFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.OneHundredPercentTheftExposure, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ActualBaseRate, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AgreedAmountFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SpecialBaseCoinsurance, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BCEG, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BlanketRateCoinsuranceFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BlanketFinalBaseRate, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BlanketModRate, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TheftBlanketFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BuildersRiskFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.CountyMultiplier, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.CoinsuranceFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ContentsMultiplier, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.DeductibleFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.Departure, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FiledBaseRate, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FireSurcharge, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FireSurchargeVMMExclusion, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FinalBaseRate, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.HB1AFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.InflationGuardFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.IncludedCostOfLoss, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ExperienceMod, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.IRPM, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.IRPM3, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SOPC, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ExpenseMod, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.MiscMod, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LossCostMultiplier, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ModRate, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.NoCoinsuranceFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PeriodOfRest, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PackModFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ProtectionClassFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RelatedExpenseFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.RMF, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ReplacementCostFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.NBCTerrorismFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SinkholeCredit, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SprinklerLeakageExclusion, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SprinklerExclusionMultiplier, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SprinklerPercentageLessThan50, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SubStandardFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerritoryMultiplier, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TheftExposure, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEAgreedValue, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEBuildingOrdIncreasedPeriodOfRest, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEDependentProperty, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEElectronicMediaRec, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEExtendedPeriodIDM, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEExtensionOfRecovery, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEBaseFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEOrdinaryPayroll, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEPremiumAdjustment, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEPowerHeatRefrigerationDeductible, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMETimePeriod, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesCommSupply, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesCommLines, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesPowerEquipment, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesPowerTransmission, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesWaterSupply, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerrorismDaysFirstPeriod, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerrorismDaysSecondPeriod, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerrorismLossCostMultiplier, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerrorismRateFirstPeriod, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerrorismRateSecondPeriod, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerrorismSFPFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerrorismTotalDays, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.VMMExclusionFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.WindstormMitigation, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor1OF, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor2OF, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor3OF, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor4OF, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor5OF, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactorOFF, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.AgreedAmountFactor_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FinalBaseRate_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BCEG_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.DeductibleFactor_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.FiledBaseRate_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.InflationGuardFactor_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.LossCostMultiplier_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.NoCoinsuranceFactor_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PackModFactor_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ReplacementCostFactor_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEBaseFactor_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor1OF_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor2OF_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor3OF_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor4OF_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactor5OF_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TimeFactorOFF_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BlanketFinalBaseRate_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SpecialBaseCoinsurance_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.CoinsuranceFactor_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SprinklerLeakageExclusion_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SprinklerExclusionMultiplier_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SprinklerPercentageLessThan50_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TerritoryMultiplier_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.VMMExclusionFactor_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.BuildersRiskFactor_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.CountyMultiplier_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PeriodOfRest_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.SinkholeCredit_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEAgreedValue_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEBuildingOrdIncreasedPeriodOfRest_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEDependentProperty_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEElectronicMediaRec_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEExtendedPeriodIDM_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEExtensionOfRecovery_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEOrdinaryPayroll_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEPremiumAdjustment_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEPowerHeatRefrigerationDeductible_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMETimePeriod_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesCommSupply_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesCommLines_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesPowerEquipment_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesPowerTransmission_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.TMEUtilitiesWaterSupply_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.ContentsMultiplier_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQNumberOfStoriesFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQFirmGroundFactor, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQBuildingRate, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQSprinklerRate, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQSprinklerLeakageExtensionFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQNumberOfStoriesFactor_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQSprinklerRate_Override, PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQFirmGroundFactor_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQBuildingRate_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQSprinklerLeakageExtensionFactor_Override, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQSprinklerDeductibleFactor, 
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.EQSprinklerDeductibleFactor_Override
FROM         dbo.Policy_PATHID_Information LEFT OUTER JOIN
                      PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP ON 
                      dbo.Policy_PATHID_Information.policynumber = PriceMonitorSystem.dbo.PriceMonitorBaseDataPRP.PolicyNumber INNER JOIN
                      dbo.Individual_Accounts_for_Reports_View_2 ON dbo.Policy_PATHID_Information.accountnumber = dbo.Individual_Accounts_for_Reports_View_2.accountnumber
' 
GO