
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/24/2012 01:53:35
-- Generated from EDMX file: D:\Work\.NET Tests\AsyncEFPerformanceTest\Server\CrmEntities.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CrmEntitiesLarge];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AlertAlertParam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MessageParams_AlertParam] DROP CONSTRAINT [FK_AlertAlertParam];
GO
IF OBJECT_ID(N'[dbo].[FK_AlertParam_inherits_MessageParam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MessageParams_AlertParam] DROP CONSTRAINT [FK_AlertParam_inherits_MessageParam];
GO
IF OBJECT_ID(N'[dbo].[FK_AlertsComputers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Alerts] DROP CONSTRAINT [FK_AlertsComputers];
GO
IF OBJECT_ID(N'[dbo].[FK_AvLogRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AvLogRawDataSet] DROP CONSTRAINT [FK_AvLogRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_AvLogReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AvLogReportDataSet] DROP CONSTRAINT [FK_AvLogReportDataReport];
GO
IF OBJECT_ID(N'[dbo].[FK_AvUpdatesRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AvUpdatesRawDataSet] DROP CONSTRAINT [FK_AvUpdatesRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_CisConfigRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CisConfigRawDataSet] DROP CONSTRAINT [FK_CisConfigRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_CisConfigReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CisConfigReportDataSet] DROP CONSTRAINT [FK_CisConfigReportDataReport];
GO
IF OBJECT_ID(N'[dbo].[FK_ComputerDetailsRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ComputerDetailsRawDataSet] DROP CONSTRAINT [FK_ComputerDetailsRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_ComputerGroupComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Computers] DROP CONSTRAINT [FK_ComputerGroupComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_ComputerProductConnection]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductConnections] DROP CONSTRAINT [FK_ComputerProductConnection];
GO
IF OBJECT_ID(N'[dbo].[FK_ComputerSequenceResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SequenceResults] DROP CONSTRAINT [FK_ComputerSequenceResult];
GO
IF OBJECT_ID(N'[dbo].[FK_DefensePlusLogRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DefensePlusLogRawDataSet] DROP CONSTRAINT [FK_DefensePlusLogRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_DefensePlusLogReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DefensePlusLogReportDataSet] DROP CONSTRAINT [FK_DefensePlusLogReportDataReport];
GO
IF OBJECT_ID(N'[dbo].[FK_DiscoveryDataComputers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DiscoveryDataSet] DROP CONSTRAINT [FK_DiscoveryDataComputers];
GO
IF OBJECT_ID(N'[dbo].[FK_FirewallLogRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FirewallLogRawDataSet] DROP CONSTRAINT [FK_FirewallLogRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_FirewallLogReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FirewallLogReportDataSet] DROP CONSTRAINT [FK_FirewallLogReportDataReport];
GO
IF OBJECT_ID(N'[dbo].[FK_InfectedItemRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InfectedItemRawDataSet] DROP CONSTRAINT [FK_InfectedItemRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_InfectedItemReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InfectedItemReportDataSet] DROP CONSTRAINT [FK_InfectedItemReportDataReport];
GO
IF OBJECT_ID(N'[dbo].[FK_InstalledSoftwareRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InstalledSoftwareRawDataSet] DROP CONSTRAINT [FK_InstalledSoftwareRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_InstalledSoftwareReportDataComputerDetailsReportData]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InstalledSoftwareReportDataSet] DROP CONSTRAINT [FK_InstalledSoftwareReportDataComputerDetailsReportData];
GO
IF OBJECT_ID(N'[dbo].[FK_InternetPolicyComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Computers] DROP CONSTRAINT [FK_InternetPolicyComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_InternetPolicyComputerGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ComputerGroups] DROP CONSTRAINT [FK_InternetPolicyComputerGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_LicenseLicensedProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LicensedProducts] DROP CONSTRAINT [FK_LicenseLicensedProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_LocalPolicyComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Computers] DROP CONSTRAINT [FK_LocalPolicyComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_LocalPolicyComputerGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ComputerGroups] DROP CONSTRAINT [FK_LocalPolicyComputerGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_MalwareStatisticsReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MalwareStatisticsReportDataSet] DROP CONSTRAINT [FK_MalwareStatisticsReportDataReport];
GO
IF OBJECT_ID(N'[dbo].[FK_Notification_inherits_Alert]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Alerts_Notification] DROP CONSTRAINT [FK_Notification_inherits_Alert];
GO
IF OBJECT_ID(N'[dbo].[FK_PolicyDeltaRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PolicyDeltaRawDataSet] DROP CONSTRAINT [FK_PolicyDeltaRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_PolicyDeltaReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PolicyDeltaReportDataSet] DROP CONSTRAINT [FK_PolicyDeltaReportDataReport];
GO
IF OBJECT_ID(N'[dbo].[FK_PolicyPolicyProductInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PolicyProductInfoes] DROP CONSTRAINT [FK_PolicyPolicyProductInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_PolicyProductInfoPolicyComponentInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PolicyComponentInfoes] DROP CONSTRAINT [FK_PolicyProductInfoPolicyComponentInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_QuarantineItemRawDataComputer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuarantineItemRawDataSet] DROP CONSTRAINT [FK_QuarantineItemRawDataComputer];
GO
IF OBJECT_ID(N'[dbo].[FK_QuarantineItemReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuarantineItemReportDataSet] DROP CONSTRAINT [FK_QuarantineItemReportDataReport];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportAvUpdatesReportData]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AvUpdatesReportDataSet] DROP CONSTRAINT [FK_ReportAvUpdatesReportData];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportComputerDetailsReportData]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ComputerDetailsReportDataSet] DROP CONSTRAINT [FK_ReportComputerDetailsReportData];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportPolicyStatusReportData]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PolicyStatusReportDataSet] DROP CONSTRAINT [FK_ReportPolicyStatusReportData];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportReportParameter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReportParameters] DROP CONSTRAINT [FK_ReportReportParameter];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportReportTarget]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReportTargets] DROP CONSTRAINT [FK_ReportReportTarget];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportTypeReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_ReportTypeReport];
GO
IF OBJECT_ID(N'[dbo].[FK_Request_inherits_Alert]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Alerts_Request] DROP CONSTRAINT [FK_Request_inherits_Alert];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestAnswerParam_inherits_MessageParam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MessageParams_RequestAnswerParam] DROP CONSTRAINT [FK_RequestAnswerParam_inherits_MessageParam];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestAnswerRequestAnswerParam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MessageParams_RequestAnswerParam] DROP CONSTRAINT [FK_RequestAnswerRequestAnswerParam];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestRequestAnswer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RequestAnswers] DROP CONSTRAINT [FK_RequestRequestAnswer];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestRequestAnswerResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RequestAnswerResults] DROP CONSTRAINT [FK_RequestRequestAnswerResult];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestRequestOption]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RequestOptions] DROP CONSTRAINT [FK_RequestRequestOption];
GO
IF OBJECT_ID(N'[dbo].[FK_ScanProfileLocations_ScanLocations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ScanProfileLocations] DROP CONSTRAINT [FK_ScanProfileLocations_ScanLocations];
GO
IF OBJECT_ID(N'[dbo].[FK_ScanProfileLocations_ScanProfiles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ScanProfileLocations] DROP CONSTRAINT [FK_ScanProfileLocations_ScanProfiles];
GO
IF OBJECT_ID(N'[dbo].[FK_SequenceActionsSequences]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SequenceActions] DROP CONSTRAINT [FK_SequenceActionsSequences];
GO
IF OBJECT_ID(N'[dbo].[FK_SequenceResultActionResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActionResults] DROP CONSTRAINT [FK_SequenceResultActionResult];
GO
IF OBJECT_ID(N'[dbo].[FK_SequenceSequenceResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SequenceResults] DROP CONSTRAINT [FK_SequenceSequenceResult];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskComputerGroups_ComputerGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskComputerGroups] DROP CONSTRAINT [FK_TaskComputerGroups_ComputerGroups];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskComputerGroups_Tasks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskComputerGroups] DROP CONSTRAINT [FK_TaskComputerGroups_Tasks];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskComputers_Computers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskComputers] DROP CONSTRAINT [FK_TaskComputers_Computers];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskComputers_Tasks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskComputers] DROP CONSTRAINT [FK_TaskComputers_Tasks];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskResultSequenceResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SequenceResults] DROP CONSTRAINT [FK_TaskResultSequenceResult];
GO
IF OBJECT_ID(N'[dbo].[FK_TasksSequences]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks] DROP CONSTRAINT [FK_TasksSequences];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskTaskResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskResults] DROP CONSTRAINT [FK_TaskTaskResult];
GO
IF OBJECT_ID(N'[dbo].[FK_TopTenMalwaresReportDataReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TopTenMalwaresReportDataSet] DROP CONSTRAINT [FK_TopTenMalwaresReportDataReport];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ActionResults]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActionResults];
GO
IF OBJECT_ID(N'[dbo].[Alerts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Alerts];
GO
IF OBJECT_ID(N'[dbo].[Alerts_Notification]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Alerts_Notification];
GO
IF OBJECT_ID(N'[dbo].[Alerts_Request]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Alerts_Request];
GO
IF OBJECT_ID(N'[dbo].[AvLogRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AvLogRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[AvLogReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AvLogReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[AvUpdatesRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AvUpdatesRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[AvUpdatesReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AvUpdatesReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[CisConfigRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CisConfigRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[CisConfigReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CisConfigReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[ComputerDetailsRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ComputerDetailsRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[ComputerDetailsReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ComputerDetailsReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[ComputerGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ComputerGroups];
GO
IF OBJECT_ID(N'[dbo].[Computers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Computers];
GO
IF OBJECT_ID(N'[CrmEntitiesModelStoreContainer].[DbInstallerInfo]', 'U') IS NOT NULL
    DROP TABLE [CrmEntitiesModelStoreContainer].[DbInstallerInfo];
GO
IF OBJECT_ID(N'[dbo].[DefensePlusLogRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DefensePlusLogRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[DefensePlusLogReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DefensePlusLogReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[DiscoveryDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DiscoveryDataSet];
GO
IF OBJECT_ID(N'[dbo].[FirewallLogRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FirewallLogRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[FirewallLogReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FirewallLogReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[InfectedItemRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InfectedItemRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[InfectedItemReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InfectedItemReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[InstalledSoftwareRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InstalledSoftwareRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[InstalledSoftwareReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InstalledSoftwareReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[LicensedProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LicensedProducts];
GO
IF OBJECT_ID(N'[dbo].[Licenses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Licenses];
GO
IF OBJECT_ID(N'[dbo].[MalwareStatisticsReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MalwareStatisticsReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[MessageParams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MessageParams];
GO
IF OBJECT_ID(N'[dbo].[MessageParams_AlertParam]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MessageParams_AlertParam];
GO
IF OBJECT_ID(N'[dbo].[MessageParams_RequestAnswerParam]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MessageParams_RequestAnswerParam];
GO
IF OBJECT_ID(N'[dbo].[Packages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Packages];
GO
IF OBJECT_ID(N'[dbo].[Policies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Policies];
GO
IF OBJECT_ID(N'[dbo].[PolicyComponentInfoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PolicyComponentInfoes];
GO
IF OBJECT_ID(N'[dbo].[PolicyDeltaRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PolicyDeltaRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[PolicyDeltaReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PolicyDeltaReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[PolicyProductInfoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PolicyProductInfoes];
GO
IF OBJECT_ID(N'[dbo].[PolicyStatusReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PolicyStatusReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[ProductConnections]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductConnections];
GO
IF OBJECT_ID(N'[dbo].[QuarantineItemRawDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuarantineItemRawDataSet];
GO
IF OBJECT_ID(N'[dbo].[QuarantineItemReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuarantineItemReportDataSet];
GO
IF OBJECT_ID(N'[dbo].[ReportManagerSettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReportManagerSettings];
GO
IF OBJECT_ID(N'[dbo].[ReportParameters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReportParameters];
GO
IF OBJECT_ID(N'[dbo].[Reports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reports];
GO
IF OBJECT_ID(N'[dbo].[ReportTargets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReportTargets];
GO
IF OBJECT_ID(N'[dbo].[ReportTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReportTypes];
GO
IF OBJECT_ID(N'[dbo].[RequestAnswerResults]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RequestAnswerResults];
GO
IF OBJECT_ID(N'[dbo].[RequestAnswers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RequestAnswers];
GO
IF OBJECT_ID(N'[dbo].[RequestOptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RequestOptions];
GO
IF OBJECT_ID(N'[dbo].[ScanLocations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ScanLocations];
GO
IF OBJECT_ID(N'[dbo].[ScanProfileLocations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ScanProfileLocations];
GO
IF OBJECT_ID(N'[dbo].[ScanProfiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ScanProfiles];
GO
IF OBJECT_ID(N'[dbo].[SequenceActions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SequenceActions];
GO
IF OBJECT_ID(N'[dbo].[SequenceResults]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SequenceResults];
GO
IF OBJECT_ID(N'[dbo].[Sequences]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sequences];
GO
IF OBJECT_ID(N'[dbo].[TaskComputerGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaskComputerGroups];
GO
IF OBJECT_ID(N'[dbo].[TaskComputers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaskComputers];
GO
IF OBJECT_ID(N'[dbo].[TaskResults]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaskResults];
GO
IF OBJECT_ID(N'[dbo].[Tasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks];
GO
IF OBJECT_ID(N'[dbo].[TileConfigurations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TileConfigurations];
GO
IF OBJECT_ID(N'[dbo].[TileLayouts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TileLayouts];
GO
IF OBJECT_ID(N'[dbo].[TopTenMalwaresReportDataSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TopTenMalwaresReportDataSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ActionResults'
CREATE TABLE [dbo].[ActionResults] (
    [Status] smallint  NOT NULL,
    [Started] datetime  NULL,
    [Completed] datetime  NULL,
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FactoryUid] uniqueidentifier  NOT NULL,
    [InputData] varbinary(max)  NULL,
    [ResultData] varbinary(max)  NULL,
    [ResultCode] int  NOT NULL,
    [ErrorMessageAsXml] nvarchar(max)  NULL,
    [OwnerSequenceResultId] bigint  NOT NULL,
    [IsInternal] bit  NOT NULL
);
GO

-- Creating table 'Alerts'
CREATE TABLE [dbo].[Alerts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Uid] uniqueidentifier  NOT NULL,
    [ComputerId] bigint  NULL,
    [CreatedTime] datetime  NOT NULL,
    [ProductName] nvarchar(100)  NOT NULL,
    [ProductVersion] nvarchar(50)  NOT NULL,
    [ReceivedTime] datetime  NOT NULL,
    [TransportType] smallint  NOT NULL,
    [MessageTextAsXml] nvarchar(max)  NOT NULL,
    [MessageType_Uid] uniqueidentifier  NULL,
    [MessageType_NameAsXml] nvarchar(max)  NULL,
    [TimeStamp] binary(8)  NOT NULL
);
GO

-- Creating table 'Alerts_Notification'
CREATE TABLE [dbo].[Alerts_Notification] (
    [IsProcessed] bit  NOT NULL,
    [NotificationLevel] smallint  NOT NULL,
    [Id] bigint  NOT NULL
);
GO

-- Creating table 'Alerts_Request'
CREATE TABLE [dbo].[Alerts_Request] (
    [RequestLevel] smallint  NOT NULL,
    [LifeTime] int  NOT NULL,
    [DefaultAnswerIndex] int  NOT NULL,
    [SelectedAnswerIndex] int  NOT NULL,
    [AnswerSelectedTime] datetime  NULL,
    [ExpireTime] datetime  NULL,
    [Id] bigint  NOT NULL
);
GO

-- Creating table 'AvLogRawDataSets'
CREATE TABLE [dbo].[AvLogRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [MalwareName] nvarchar(max)  NULL,
    [MalwareLocation] nvarchar(max)  NULL,
    [MalwareDate] datetime  NOT NULL,
    [MalwareAction] nvarchar(max)  NULL,
    [MalwareStatus] nvarchar(max)  NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'AvLogReportDataSets'
CREATE TABLE [dbo].[AvLogReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [MalwareName] nvarchar(max)  NULL,
    [MalwareLocation] nvarchar(max)  NULL,
    [MalwareDate] datetime  NULL,
    [MalwareAction] nvarchar(max)  NULL,
    [MalwareStatus] nvarchar(max)  NULL,
    [ComputerId] bigint  NOT NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'AvUpdatesRawDataSets'
CREATE TABLE [dbo].[AvUpdatesRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Version] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Status] smallint  NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'AvUpdatesReportDataSets'
CREATE TABLE [dbo].[AvUpdatesReportDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Version] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Status] smallint  NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'CisConfigRawDataSets'
CREATE TABLE [dbo].[CisConfigRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [ComponentName] nvarchar(max)  NULL,
    [ComponentEnabled] bit  NOT NULL,
    [ComponentInstalled] bit  NOT NULL,
    [CisVersion] nvarchar(max)  NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'CisConfigReportDataSets'
CREATE TABLE [dbo].[CisConfigReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [GroupName] nvarchar(max)  NULL,
    [ComponentName] nvarchar(max)  NULL,
    [ComponentEnabled] bit  NULL,
    [ComponentInstalled] bit  NULL,
    [CisVersion] nvarchar(max)  NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'ComputerDetailsRawDataSets'
CREATE TABLE [dbo].[ComputerDetailsRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OsName] nvarchar(max)  NULL,
    [OsType] nvarchar(max)  NULL,
    [CPU] nvarchar(max)  NULL,
    [RAM] nvarchar(max)  NULL,
    [HDD] nvarchar(max)  NULL,
    [ComputerId] bigint  NOT NULL,
    [Updated] datetime  NOT NULL,
    [OsVersion] nvarchar(max)  NULL
);
GO

-- Creating table 'ComputerDetailsReportDataSets'
CREATE TABLE [dbo].[ComputerDetailsReportDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OsName] nvarchar(max)  NULL,
    [OsType] nvarchar(max)  NULL,
    [CPU] nvarchar(max)  NULL,
    [RAM] nvarchar(max)  NULL,
    [HDD] nvarchar(max)  NULL,
    [ComputerId] bigint  NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerDnsName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [OSVersion] nvarchar(max)  NULL,
    [ComputerCreated] datetime  NOT NULL
);
GO

-- Creating table 'ComputerGroups'
CREATE TABLE [dbo].[ComputerGroups] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Description] nvarchar(100)  NULL,
    [Deleted] bit  NOT NULL,
    [TimeStamp] binary(8)  NOT NULL,
    [LocalPolicyId] bigint  NOT NULL,
    [InternetPolicyId] bigint  NOT NULL
);
GO

-- Creating table 'Computers'
CREATE TABLE [dbo].[Computers] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Sid] nvarchar(4000)  NULL,
    [Uid] uniqueidentifier  NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [DnsName] nvarchar(100)  NULL,
    [Created] datetime  NOT NULL,
    [Modified] datetime  NOT NULL,
    [IsLicensed] bit  NOT NULL,
    [TimeStamp] binary(8)  NOT NULL,
    [Visible] bit  NOT NULL,
    [AgentPackageName] nvarchar(260)  NULL,
    [RejectedConnectionDate] datetime  NULL,
    [MacAddress] varbinary(max)  NULL,
    [IPAddress] varbinary(max)  NULL,
    [WarrantyStatus] smallint  NOT NULL,
    [LocalPolicyId] bigint  NOT NULL,
    [InternetPolicyId] bigint  NOT NULL,
    [PolicyStatus] smallint  NOT NULL,
    [PolicyLastPollDate] datetime  NULL,
    [PolicyNonComplianceDate] datetime  NULL,
    [ComputerGroupId] bigint  NULL,
    [RemoteMode] bit  NOT NULL,
    [ForceRemoteMode] bit  NOT NULL,
    [AvBasesVersion] nvarchar(50)  NOT NULL,
    [AvBasesUpdateTime] datetime  NULL,
    [BeingUninstalled] bit  NOT NULL
);
GO

-- Creating table 'DbInstallerInfoes'
CREATE TABLE [dbo].[DbInstallerInfoes] (
    [InternalVersion] int  NOT NULL
);
GO

-- Creating table 'DefensePlusLogRawDataSets'
CREATE TABLE [dbo].[DefensePlusLogRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [Application] nvarchar(max)  NULL,
    [Target] nvarchar(max)  NULL,
    [Date] datetime  NOT NULL,
    [Action] nvarchar(max)  NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'DefensePlusLogReportDataSets'
CREATE TABLE [dbo].[DefensePlusLogReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [Application] nvarchar(max)  NULL,
    [Target] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Action] nvarchar(max)  NULL,
    [ComputerId] bigint  NOT NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'DiscoveryDataSets'
CREATE TABLE [dbo].[DiscoveryDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProfileUid] uniqueidentifier  NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [Discovered] datetime  NOT NULL,
    [Results] varbinary(max)  NULL,
    [InputData] varbinary(max)  NULL
);
GO

-- Creating table 'FirewallLogRawDataSets'
CREATE TABLE [dbo].[FirewallLogRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [Application] nvarchar(max)  NULL,
    [Date] datetime  NOT NULL,
    [Action] nvarchar(max)  NULL,
    [DestinationIP] nvarchar(max)  NULL,
    [DestinationPort] int  NOT NULL,
    [SourceIP] nvarchar(max)  NULL,
    [SourcePort] int  NOT NULL,
    [Protocol] nvarchar(max)  NULL,
    [Details] nvarchar(max)  NULL,
    [Type] int  NOT NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'FirewallLogReportDataSets'
CREATE TABLE [dbo].[FirewallLogReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [Application] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Action] nvarchar(max)  NULL,
    [DestinationIP] nvarchar(max)  NULL,
    [DestinationPort] int  NOT NULL,
    [SourceIP] nvarchar(max)  NULL,
    [SourcePort] int  NOT NULL,
    [Protocol] nvarchar(max)  NULL,
    [Details] nvarchar(max)  NULL,
    [Type] int  NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'InfectedItemRawDataSets'
CREATE TABLE [dbo].[InfectedItemRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [MalwareName] nvarchar(max)  NULL,
    [MalwareLocation] nvarchar(max)  NULL,
    [MalwareDetected] datetime  NOT NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'InfectedItemReportDataSets'
CREATE TABLE [dbo].[InfectedItemReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [GroupName] nvarchar(max)  NULL,
    [ComputerOnline] bit  NOT NULL,
    [LastDiscoveryDate] datetime  NULL,
    [MalwareName] nvarchar(max)  NULL,
    [MalwareLocation] nvarchar(max)  NULL,
    [MalwareDetected] datetime  NULL
);
GO

-- Creating table 'InstalledSoftwareRawDataSets'
CREATE TABLE [dbo].[InstalledSoftwareRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Version] nvarchar(max)  NULL,
    [Publisher] nvarchar(max)  NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'InstalledSoftwareReportDataSets'
CREATE TABLE [dbo].[InstalledSoftwareReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Version] nvarchar(max)  NULL,
    [Publisher] nvarchar(max)  NULL,
    [ComputerId] bigint  NOT NULL,
    [ComputerDetailsReportDataId] bigint  NOT NULL
);
GO

-- Creating table 'LicensedProducts'
CREATE TABLE [dbo].[LicensedProducts] (
    [Uid] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Limitation] int  NOT NULL,
    [LicenseNumber] uniqueidentifier  NOT NULL,
    [Id] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Licenses'
CREATE TABLE [dbo].[Licenses] (
    [Number] uniqueidentifier  NOT NULL,
    [LicenseStatus] nvarchar(max)  NOT NULL,
    [ProductPrefix] nvarchar(max)  NOT NULL,
    [MachineKey] nvarchar(max)  NULL,
    [ComputersCount] int  NULL,
    [ExpirationDate] datetime  NULL,
    [StartDate] datetime  NULL,
    [Description] nvarchar(max)  NULL,
    [SubscriberId] nvarchar(max)  NOT NULL,
    [UserName] nvarchar(max)  NULL,
    [CompanyName] nvarchar(max)  NULL,
    [VendorName] nvarchar(max)  NULL,
    [VendorPhone] nvarchar(max)  NULL,
    [VendorWebsite] nvarchar(max)  NULL,
    [VendorAddress] nvarchar(max)  NULL,
    [VendorCountry] nvarchar(max)  NULL,
    [WarrantyAvailable] bit  NOT NULL,
    [WarrantyActivationDate] datetime  NULL,
    [ValidationFailures] int  NULL,
    [IsInEffect] bit  NOT NULL,
    [OveruseCount] int  NOT NULL,
    [OveruseExpirationDate] datetime  NULL,
    [OveruseEndpointTicks] bigint  NOT NULL,
    [IsFree] bit  NOT NULL,
    [FreeRenewals] int  NULL,
    [UsedFreeRenewals] int  NULL
);
GO

-- Creating table 'MalwareStatisticsReportDataSets'
CREATE TABLE [dbo].[MalwareStatisticsReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [GroupName] nvarchar(max)  NULL,
    [MalwareName] nvarchar(max)  NULL,
    [MalwareLocation] nvarchar(max)  NULL,
    [MalwareDate] datetime  NULL,
    [MalwareAction] nvarchar(max)  NULL,
    [MalwareStatus] nvarchar(max)  NULL,
    [ComputerId] bigint  NOT NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'MessageParams'
CREATE TABLE [dbo].[MessageParams] (
    [Name] nvarchar(1000)  NOT NULL,
    [DescriptionAsXml] nvarchar(max)  NOT NULL,
    [Value_TypeName] nvarchar(1000)  NOT NULL,
    [Value_ValueAsXml] nvarchar(max)  NOT NULL,
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Alert_Id] bigint  NULL,
    [RequestAnswer_Id] bigint  NULL
);
GO

-- Creating table 'Packages'
CREATE TABLE [dbo].[Packages] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Uid] uniqueidentifier  NOT NULL,
    [Name] nvarchar(260)  NOT NULL,
    [Description] nvarchar(100)  NULL,
    [Size] bigint  NOT NULL,
    [Created] datetime  NOT NULL,
    [StoredPath] nvarchar(260)  NOT NULL,
    [ProductCode] uniqueidentifier  NOT NULL,
    [UpgradeCode] uniqueidentifier  NOT NULL,
    [ProductVersion] nvarchar(100)  NOT NULL,
    [TimeStamp] binary(8)  NOT NULL,
    [Hash] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Policies'
CREATE TABLE [dbo].[Policies] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [IsDefault] bit  NOT NULL,
    [Modified] datetime  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [OverrideDefaultPolicy] bit  NOT NULL,
    [Uid] uniqueidentifier  NOT NULL,
    [AgentInfo_AllowComputerAdmin] bit  NOT NULL,
    [AgentInfo_AllowLocalAdmin] bit  NOT NULL,
    [AgentInfo_InternetServer] nvarchar(max)  NOT NULL,
    [AgentInfo_LocalPassword] nvarchar(max)  NOT NULL,
    [AgentInfo_LocalServer] nvarchar(max)  NOT NULL,
    [AgentInfo_PolicyPollingInterval] int  NOT NULL,
    [AgentInfo_PollingInterval] int  NOT NULL
);
GO

-- Creating table 'PolicyComponentInfoes'
CREATE TABLE [dbo].[PolicyComponentInfoes] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [SettingsAsXml] nvarchar(max)  NOT NULL,
    [PolicyProductInfoId] bigint  NOT NULL
);
GO

-- Creating table 'PolicyDeltaRawDataSets'
CREATE TABLE [dbo].[PolicyDeltaRawDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [Discovered] datetime  NOT NULL,
    [Results] nvarchar(max)  NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'PolicyDeltaReportDataSets'
CREATE TABLE [dbo].[PolicyDeltaReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [GroupName] nvarchar(max)  NULL,
    [GroupId] bigint  NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [LastPollDate] datetime  NULL,
    [NonComplianceDate] datetime  NULL,
    [PolicyName] nvarchar(max)  NULL,
    [ComponentName] nvarchar(max)  NULL,
    [ComponentDescription] nvarchar(max)  NULL,
    [ChangeType] int  NOT NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'PolicyProductInfoes'
CREATE TABLE [dbo].[PolicyProductInfoes] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Uid] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [PolicyId] bigint  NOT NULL
);
GO

-- Creating table 'PolicyStatusReportDataSets'
CREATE TABLE [dbo].[PolicyStatusReportDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddress] nvarchar(max)  NULL,
    [GroupName] nvarchar(max)  NULL,
    [Status] smallint  NOT NULL,
    [CurrentPolicyId] bigint  NOT NULL,
    [LastPollDate] datetime  NULL,
    [NonComplianceDate] datetime  NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [CurrentPolicyName] nvarchar(max)  NULL
);
GO

-- Creating table 'ProductConnections'
CREATE TABLE [dbo].[ProductConnections] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProductUid] uniqueidentifier  NOT NULL,
    [ProductName] nvarchar(150)  NULL,
    [ComputerId] bigint  NOT NULL,
    [ConnectionDate] datetime  NOT NULL,
    [Components] nvarchar(max)  NULL,
    [ProductVersion] nvarchar(100)  NULL
);
GO

-- Creating table 'QuarantineItemRawDataSets'
CREATE TABLE [dbo].[QuarantineItemRawDataSets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [ItemId] nvarchar(max)  NULL,
    [ItemName] nvarchar(max)  NULL,
    [ItemLocation] nvarchar(max)  NULL,
    [ItemDate] datetime  NOT NULL,
    [Updated] datetime  NOT NULL
);
GO

-- Creating table 'QuarantineItemReportDataSets'
CREATE TABLE [dbo].[QuarantineItemReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [GroupName] nvarchar(max)  NULL,
    [ItemId] nvarchar(max)  NULL,
    [ItemName] nvarchar(max)  NULL,
    [ItemLocation] nvarchar(max)  NULL,
    [ItemDate] datetime  NULL,
    [ComputerId] bigint  NOT NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'ReportManagerSettings'
CREATE TABLE [dbo].[ReportManagerSettings] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [RemoveOldReports] bit  NOT NULL,
    [DaysNumber] int  NOT NULL
);
GO

-- Creating table 'ReportParameters'
CREATE TABLE [dbo].[ReportParameters] (
    [IncludeDetails] bit  NULL,
    [GenerateFile] bit  NOT NULL,
    [ExportFileType] smallint  NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [IncludeAffectedOnly] bit  NULL,
    [PeriodStartDate] datetime  NULL,
    [PeriodEndDate] datetime  NULL,
    [PeriodType] int  NULL,
    [TopNumber] int  NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [Id] uniqueidentifier  NOT NULL,
    [Started] datetime  NOT NULL,
    [Finished] datetime  NULL,
    [Status] smallint  NOT NULL,
    [ReportTypeId] int  NOT NULL,
    [ReporFileName] nvarchar(max)  NULL,
    [DataIsReady] bit  NOT NULL,
    [ErrorMessage] nvarchar(max)  NULL
);
GO

-- Creating table 'ReportTargets'
CREATE TABLE [dbo].[ReportTargets] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ComputerId] bigint  NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'ReportTypes'
CREATE TABLE [dbo].[ReportTypes] (
    [Id] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL
);
GO

-- Creating table 'RequestAnswerResults'
CREATE TABLE [dbo].[RequestAnswerResults] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Code] int  NOT NULL,
    [TextAsXml] nvarchar(max)  NULL,
    [Request_Id] bigint  NOT NULL
);
GO

-- Creating table 'RequestAnswers'
CREATE TABLE [dbo].[RequestAnswers] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TextAsXml] nvarchar(max)  NULL,
    [RequestId] bigint  NOT NULL
);
GO

-- Creating table 'RequestOptions'
CREATE TABLE [dbo].[RequestOptions] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TextAsXml] nvarchar(max)  NOT NULL,
    [CheckedByDefault] bit  NOT NULL,
    [CheckedByUser] bit  NOT NULL,
    [ItemIndex] int  NOT NULL,
    [RequestId] bigint  NOT NULL
);
GO

-- Creating table 'ScanLocations'
CREATE TABLE [dbo].[ScanLocations] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Uid] uniqueidentifier  NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [Description] nvarchar(500)  NULL
);
GO

-- Creating table 'ScanProfiles'
CREATE TABLE [dbo].[ScanProfiles] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Uid] uniqueidentifier  NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [Description] nvarchar(500)  NULL,
    [IsPredefined] bit  NOT NULL,
    [TimeStamp] binary(8)  NOT NULL
);
GO

-- Creating table 'SequenceActions'
CREATE TABLE [dbo].[SequenceActions] (
    [SequenceId] bigint  NOT NULL,
    [FactoryUid] uniqueidentifier  NOT NULL,
    [InputData] varbinary(max)  NULL,
    [Id] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'SequenceResults'
CREATE TABLE [dbo].[SequenceResults] (
    [Status] smallint  NOT NULL,
    [Started] datetime  NULL,
    [Completed] datetime  NULL,
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OwnerTaskResultId] bigint  NOT NULL,
    [SequenceId] bigint  NOT NULL,
    [TargetComputerId] bigint  NOT NULL,
    [IsInternal] bit  NOT NULL
);
GO

-- Creating table 'Sequences'
CREATE TABLE [dbo].[Sequences] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(500)  NOT NULL,
    [Description] nvarchar(100)  NULL,
    [Deleted] bit  NOT NULL,
    [TimeStamp] binary(8)  NOT NULL,
    [IsInternal] bit  NOT NULL
);
GO

-- Creating table 'TaskResults'
CREATE TABLE [dbo].[TaskResults] (
    [Status] smallint  NOT NULL,
    [Started] datetime  NULL,
    [Completed] datetime  NULL,
    [ActualTaskName] nvarchar(500)  NULL,
    [IsInternal] bit  NOT NULL,
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TaskId] bigint  NULL
);
GO

-- Creating table 'Tasks'
CREATE TABLE [dbo].[Tasks] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(500)  NOT NULL,
    [Description] nvarchar(100)  NULL,
    [Created] datetime  NOT NULL,
    [Modified] datetime  NOT NULL,
    [Enabled] bit  NOT NULL,
    [StartFrom] datetime  NOT NULL,
    [StartTime] bigint  NOT NULL,
    [FreqType] smallint  NOT NULL,
    [Interval] int  NOT NULL,
    [DomFilter] int  NOT NULL,
    [WomFilter] int  NOT NULL,
    [DowFilter] int  NOT NULL,
    [MoyFilter] int  NOT NULL,
    [SequenceId] bigint  NOT NULL,
    [TargetKind] smallint  NOT NULL,
    [Deleted] bit  NOT NULL,
    [TimeStamp] binary(8)  NOT NULL,
    [IsInternal] bit  NOT NULL
);
GO

-- Creating table 'TileConfigurations'
CREATE TABLE [dbo].[TileConfigurations] (
    [ConfigurationXml] nvarchar(max)  NOT NULL,
    [DataType] nvarchar(max)  NOT NULL,
    [Uid] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TileLayouts'
CREATE TABLE [dbo].[TileLayouts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [LayoutVersion] int  NOT NULL,
    [LayoutXml] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TopTenMalwaresReportDataSets'
CREATE TABLE [dbo].[TopTenMalwaresReportDataSets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportId] uniqueidentifier  NOT NULL,
    [ComputerName] nvarchar(max)  NULL,
    [ComputerIPAddess] nvarchar(max)  NULL,
    [GroupName] nvarchar(max)  NULL,
    [MalwareName] nvarchar(max)  NULL,
    [MalwareLocation] nvarchar(max)  NULL,
    [MalwareDate] datetime  NULL,
    [MalwareAction] nvarchar(max)  NULL,
    [MalwareStatus] nvarchar(max)  NULL,
    [ComputerId] bigint  NOT NULL,
    [HasData] bit  NOT NULL
);
GO

-- Creating table 'ScanProfileLocations'
CREATE TABLE [dbo].[ScanProfileLocations] (
    [ScanLocations_Id] bigint  NOT NULL,
    [ScanProfiles_Id] bigint  NOT NULL
);
GO

-- Creating table 'TaskComputerGroups'
CREATE TABLE [dbo].[TaskComputerGroups] (
    [ComputerGroups_Id] bigint  NOT NULL,
    [Tasks_Id] bigint  NOT NULL
);
GO

-- Creating table 'TaskComputers'
CREATE TABLE [dbo].[TaskComputers] (
    [Computers_Id] bigint  NOT NULL,
    [Tasks_Id] bigint  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ActionResults'
ALTER TABLE [dbo].[ActionResults]
ADD CONSTRAINT [PK_ActionResults]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Alerts'
ALTER TABLE [dbo].[Alerts]
ADD CONSTRAINT [PK_Alerts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Alerts_Notification'
ALTER TABLE [dbo].[Alerts_Notification]
ADD CONSTRAINT [PK_Alerts_Notification]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Alerts_Request'
ALTER TABLE [dbo].[Alerts_Request]
ADD CONSTRAINT [PK_Alerts_Request]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AvLogRawDataSets'
ALTER TABLE [dbo].[AvLogRawDataSets]
ADD CONSTRAINT [PK_AvLogRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AvLogReportDataSets'
ALTER TABLE [dbo].[AvLogReportDataSets]
ADD CONSTRAINT [PK_AvLogReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AvUpdatesRawDataSets'
ALTER TABLE [dbo].[AvUpdatesRawDataSets]
ADD CONSTRAINT [PK_AvUpdatesRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AvUpdatesReportDataSets'
ALTER TABLE [dbo].[AvUpdatesReportDataSets]
ADD CONSTRAINT [PK_AvUpdatesReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CisConfigRawDataSets'
ALTER TABLE [dbo].[CisConfigRawDataSets]
ADD CONSTRAINT [PK_CisConfigRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CisConfigReportDataSets'
ALTER TABLE [dbo].[CisConfigReportDataSets]
ADD CONSTRAINT [PK_CisConfigReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ComputerDetailsRawDataSets'
ALTER TABLE [dbo].[ComputerDetailsRawDataSets]
ADD CONSTRAINT [PK_ComputerDetailsRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ComputerDetailsReportDataSets'
ALTER TABLE [dbo].[ComputerDetailsReportDataSets]
ADD CONSTRAINT [PK_ComputerDetailsReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ComputerGroups'
ALTER TABLE [dbo].[ComputerGroups]
ADD CONSTRAINT [PK_ComputerGroups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Computers'
ALTER TABLE [dbo].[Computers]
ADD CONSTRAINT [PK_Computers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [InternalVersion] in table 'DbInstallerInfoes'
ALTER TABLE [dbo].[DbInstallerInfoes]
ADD CONSTRAINT [PK_DbInstallerInfoes]
    PRIMARY KEY CLUSTERED ([InternalVersion] ASC);
GO

-- Creating primary key on [Id] in table 'DefensePlusLogRawDataSets'
ALTER TABLE [dbo].[DefensePlusLogRawDataSets]
ADD CONSTRAINT [PK_DefensePlusLogRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DefensePlusLogReportDataSets'
ALTER TABLE [dbo].[DefensePlusLogReportDataSets]
ADD CONSTRAINT [PK_DefensePlusLogReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DiscoveryDataSets'
ALTER TABLE [dbo].[DiscoveryDataSets]
ADD CONSTRAINT [PK_DiscoveryDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FirewallLogRawDataSets'
ALTER TABLE [dbo].[FirewallLogRawDataSets]
ADD CONSTRAINT [PK_FirewallLogRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FirewallLogReportDataSets'
ALTER TABLE [dbo].[FirewallLogReportDataSets]
ADD CONSTRAINT [PK_FirewallLogReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InfectedItemRawDataSets'
ALTER TABLE [dbo].[InfectedItemRawDataSets]
ADD CONSTRAINT [PK_InfectedItemRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InfectedItemReportDataSets'
ALTER TABLE [dbo].[InfectedItemReportDataSets]
ADD CONSTRAINT [PK_InfectedItemReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InstalledSoftwareRawDataSets'
ALTER TABLE [dbo].[InstalledSoftwareRawDataSets]
ADD CONSTRAINT [PK_InstalledSoftwareRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InstalledSoftwareReportDataSets'
ALTER TABLE [dbo].[InstalledSoftwareReportDataSets]
ADD CONSTRAINT [PK_InstalledSoftwareReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LicensedProducts'
ALTER TABLE [dbo].[LicensedProducts]
ADD CONSTRAINT [PK_LicensedProducts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Number] in table 'Licenses'
ALTER TABLE [dbo].[Licenses]
ADD CONSTRAINT [PK_Licenses]
    PRIMARY KEY CLUSTERED ([Number] ASC);
GO

-- Creating primary key on [Id] in table 'MalwareStatisticsReportDataSets'
ALTER TABLE [dbo].[MalwareStatisticsReportDataSets]
ADD CONSTRAINT [PK_MalwareStatisticsReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MessageParams'
ALTER TABLE [dbo].[MessageParams]
ADD CONSTRAINT [PK_MessageParams]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Packages'
ALTER TABLE [dbo].[Packages]
ADD CONSTRAINT [PK_Packages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Policies'
ALTER TABLE [dbo].[Policies]
ADD CONSTRAINT [PK_Policies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PolicyComponentInfoes'
ALTER TABLE [dbo].[PolicyComponentInfoes]
ADD CONSTRAINT [PK_PolicyComponentInfoes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PolicyDeltaRawDataSets'
ALTER TABLE [dbo].[PolicyDeltaRawDataSets]
ADD CONSTRAINT [PK_PolicyDeltaRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PolicyDeltaReportDataSets'
ALTER TABLE [dbo].[PolicyDeltaReportDataSets]
ADD CONSTRAINT [PK_PolicyDeltaReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PolicyProductInfoes'
ALTER TABLE [dbo].[PolicyProductInfoes]
ADD CONSTRAINT [PK_PolicyProductInfoes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PolicyStatusReportDataSets'
ALTER TABLE [dbo].[PolicyStatusReportDataSets]
ADD CONSTRAINT [PK_PolicyStatusReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductConnections'
ALTER TABLE [dbo].[ProductConnections]
ADD CONSTRAINT [PK_ProductConnections]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuarantineItemRawDataSets'
ALTER TABLE [dbo].[QuarantineItemRawDataSets]
ADD CONSTRAINT [PK_QuarantineItemRawDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuarantineItemReportDataSets'
ALTER TABLE [dbo].[QuarantineItemReportDataSets]
ADD CONSTRAINT [PK_QuarantineItemReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ReportManagerSettings'
ALTER TABLE [dbo].[ReportManagerSettings]
ADD CONSTRAINT [PK_ReportManagerSettings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ReportId] in table 'ReportParameters'
ALTER TABLE [dbo].[ReportParameters]
ADD CONSTRAINT [PK_ReportParameters]
    PRIMARY KEY CLUSTERED ([ReportId] ASC);
GO

-- Creating primary key on [Id] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [PK_Reports]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ReportTargets'
ALTER TABLE [dbo].[ReportTargets]
ADD CONSTRAINT [PK_ReportTargets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ReportTypes'
ALTER TABLE [dbo].[ReportTypes]
ADD CONSTRAINT [PK_ReportTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RequestAnswerResults'
ALTER TABLE [dbo].[RequestAnswerResults]
ADD CONSTRAINT [PK_RequestAnswerResults]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RequestAnswers'
ALTER TABLE [dbo].[RequestAnswers]
ADD CONSTRAINT [PK_RequestAnswers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RequestOptions'
ALTER TABLE [dbo].[RequestOptions]
ADD CONSTRAINT [PK_RequestOptions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ScanLocations'
ALTER TABLE [dbo].[ScanLocations]
ADD CONSTRAINT [PK_ScanLocations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ScanProfiles'
ALTER TABLE [dbo].[ScanProfiles]
ADD CONSTRAINT [PK_ScanProfiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SequenceActions'
ALTER TABLE [dbo].[SequenceActions]
ADD CONSTRAINT [PK_SequenceActions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SequenceResults'
ALTER TABLE [dbo].[SequenceResults]
ADD CONSTRAINT [PK_SequenceResults]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sequences'
ALTER TABLE [dbo].[Sequences]
ADD CONSTRAINT [PK_Sequences]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TaskResults'
ALTER TABLE [dbo].[TaskResults]
ADD CONSTRAINT [PK_TaskResults]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [PK_Tasks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Uid] in table 'TileConfigurations'
ALTER TABLE [dbo].[TileConfigurations]
ADD CONSTRAINT [PK_TileConfigurations]
    PRIMARY KEY CLUSTERED ([Uid] ASC);
GO

-- Creating primary key on [Id] in table 'TileLayouts'
ALTER TABLE [dbo].[TileLayouts]
ADD CONSTRAINT [PK_TileLayouts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TopTenMalwaresReportDataSets'
ALTER TABLE [dbo].[TopTenMalwaresReportDataSets]
ADD CONSTRAINT [PK_TopTenMalwaresReportDataSets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ScanLocations_Id], [ScanProfiles_Id] in table 'ScanProfileLocations'
ALTER TABLE [dbo].[ScanProfileLocations]
ADD CONSTRAINT [PK_ScanProfileLocations]
    PRIMARY KEY NONCLUSTERED ([ScanLocations_Id], [ScanProfiles_Id] ASC);
GO

-- Creating primary key on [ComputerGroups_Id], [Tasks_Id] in table 'TaskComputerGroups'
ALTER TABLE [dbo].[TaskComputerGroups]
ADD CONSTRAINT [PK_TaskComputerGroups]
    PRIMARY KEY NONCLUSTERED ([ComputerGroups_Id], [Tasks_Id] ASC);
GO

-- Creating primary key on [Computers_Id], [Tasks_Id] in table 'TaskComputers'
ALTER TABLE [dbo].[TaskComputers]
ADD CONSTRAINT [PK_TaskComputers]
    PRIMARY KEY NONCLUSTERED ([Computers_Id], [Tasks_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [OwnerSequenceResultId] in table 'ActionResults'
ALTER TABLE [dbo].[ActionResults]
ADD CONSTRAINT [FK_SequenceResultActionResult]
    FOREIGN KEY ([OwnerSequenceResultId])
    REFERENCES [dbo].[SequenceResults]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SequenceResultActionResult'
CREATE INDEX [IX_FK_SequenceResultActionResult]
ON [dbo].[ActionResults]
    ([OwnerSequenceResultId]);
GO

-- Creating foreign key on [ComputerId] in table 'Alerts'
ALTER TABLE [dbo].[Alerts]
ADD CONSTRAINT [FK_AlertsComputers]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AlertsComputers'
CREATE INDEX [IX_FK_AlertsComputers]
ON [dbo].[Alerts]
    ([ComputerId]);
GO

-- Creating foreign key on [Id] in table 'Alerts_Notification'
ALTER TABLE [dbo].[Alerts_Notification]
ADD CONSTRAINT [FK_Notification_inherits_Alert]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Alerts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Alerts_Request'
ALTER TABLE [dbo].[Alerts_Request]
ADD CONSTRAINT [FK_Request_inherits_Alert]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Alerts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [RequestId] in table 'RequestAnswers'
ALTER TABLE [dbo].[RequestAnswers]
ADD CONSTRAINT [FK_RequestRequestAnswer]
    FOREIGN KEY ([RequestId])
    REFERENCES [dbo].[Alerts_Request]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RequestRequestAnswer'
CREATE INDEX [IX_FK_RequestRequestAnswer]
ON [dbo].[RequestAnswers]
    ([RequestId]);
GO

-- Creating foreign key on [Request_Id] in table 'RequestAnswerResults'
ALTER TABLE [dbo].[RequestAnswerResults]
ADD CONSTRAINT [FK_RequestRequestAnswerResult]
    FOREIGN KEY ([Request_Id])
    REFERENCES [dbo].[Alerts_Request]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RequestRequestAnswerResult'
CREATE INDEX [IX_FK_RequestRequestAnswerResult]
ON [dbo].[RequestAnswerResults]
    ([Request_Id]);
GO

-- Creating foreign key on [RequestId] in table 'RequestOptions'
ALTER TABLE [dbo].[RequestOptions]
ADD CONSTRAINT [FK_RequestRequestOption]
    FOREIGN KEY ([RequestId])
    REFERENCES [dbo].[Alerts_Request]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RequestRequestOption'
CREATE INDEX [IX_FK_RequestRequestOption]
ON [dbo].[RequestOptions]
    ([RequestId]);
GO

-- Creating foreign key on [ComputerId] in table 'AvLogRawDataSets'
ALTER TABLE [dbo].[AvLogRawDataSets]
ADD CONSTRAINT [FK_AvLogRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AvLogRawDataComputer'
CREATE INDEX [IX_FK_AvLogRawDataComputer]
ON [dbo].[AvLogRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ReportId] in table 'AvLogReportDataSets'
ALTER TABLE [dbo].[AvLogReportDataSets]
ADD CONSTRAINT [FK_AvLogReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AvLogReportDataReport'
CREATE INDEX [IX_FK_AvLogReportDataReport]
ON [dbo].[AvLogReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ComputerId] in table 'AvUpdatesRawDataSets'
ALTER TABLE [dbo].[AvUpdatesRawDataSets]
ADD CONSTRAINT [FK_AvUpdatesRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AvUpdatesRawDataComputer'
CREATE INDEX [IX_FK_AvUpdatesRawDataComputer]
ON [dbo].[AvUpdatesRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ReportId] in table 'AvUpdatesReportDataSets'
ALTER TABLE [dbo].[AvUpdatesReportDataSets]
ADD CONSTRAINT [FK_ReportAvUpdatesReportData]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportAvUpdatesReportData'
CREATE INDEX [IX_FK_ReportAvUpdatesReportData]
ON [dbo].[AvUpdatesReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ComputerId] in table 'CisConfigRawDataSets'
ALTER TABLE [dbo].[CisConfigRawDataSets]
ADD CONSTRAINT [FK_CisConfigRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CisConfigRawDataComputer'
CREATE INDEX [IX_FK_CisConfigRawDataComputer]
ON [dbo].[CisConfigRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ReportId] in table 'CisConfigReportDataSets'
ALTER TABLE [dbo].[CisConfigReportDataSets]
ADD CONSTRAINT [FK_CisConfigReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CisConfigReportDataReport'
CREATE INDEX [IX_FK_CisConfigReportDataReport]
ON [dbo].[CisConfigReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ComputerId] in table 'ComputerDetailsRawDataSets'
ALTER TABLE [dbo].[ComputerDetailsRawDataSets]
ADD CONSTRAINT [FK_ComputerDetailsRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ComputerDetailsRawDataComputer'
CREATE INDEX [IX_FK_ComputerDetailsRawDataComputer]
ON [dbo].[ComputerDetailsRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ComputerDetailsReportDataId] in table 'InstalledSoftwareReportDataSets'
ALTER TABLE [dbo].[InstalledSoftwareReportDataSets]
ADD CONSTRAINT [FK_InstalledSoftwareReportDataComputerDetailsReportData]
    FOREIGN KEY ([ComputerDetailsReportDataId])
    REFERENCES [dbo].[ComputerDetailsReportDataSets]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InstalledSoftwareReportDataComputerDetailsReportData'
CREATE INDEX [IX_FK_InstalledSoftwareReportDataComputerDetailsReportData]
ON [dbo].[InstalledSoftwareReportDataSets]
    ([ComputerDetailsReportDataId]);
GO

-- Creating foreign key on [ReportId] in table 'ComputerDetailsReportDataSets'
ALTER TABLE [dbo].[ComputerDetailsReportDataSets]
ADD CONSTRAINT [FK_ReportComputerDetailsReportData]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportComputerDetailsReportData'
CREATE INDEX [IX_FK_ReportComputerDetailsReportData]
ON [dbo].[ComputerDetailsReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ComputerGroupId] in table 'Computers'
ALTER TABLE [dbo].[Computers]
ADD CONSTRAINT [FK_ComputerGroupComputer]
    FOREIGN KEY ([ComputerGroupId])
    REFERENCES [dbo].[ComputerGroups]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ComputerGroupComputer'
CREATE INDEX [IX_FK_ComputerGroupComputer]
ON [dbo].[Computers]
    ([ComputerGroupId]);
GO

-- Creating foreign key on [InternetPolicyId] in table 'ComputerGroups'
ALTER TABLE [dbo].[ComputerGroups]
ADD CONSTRAINT [FK_InternetPolicyComputerGroup]
    FOREIGN KEY ([InternetPolicyId])
    REFERENCES [dbo].[Policies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InternetPolicyComputerGroup'
CREATE INDEX [IX_FK_InternetPolicyComputerGroup]
ON [dbo].[ComputerGroups]
    ([InternetPolicyId]);
GO

-- Creating foreign key on [LocalPolicyId] in table 'ComputerGroups'
ALTER TABLE [dbo].[ComputerGroups]
ADD CONSTRAINT [FK_LocalPolicyComputerGroup]
    FOREIGN KEY ([LocalPolicyId])
    REFERENCES [dbo].[Policies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LocalPolicyComputerGroup'
CREATE INDEX [IX_FK_LocalPolicyComputerGroup]
ON [dbo].[ComputerGroups]
    ([LocalPolicyId]);
GO

-- Creating foreign key on [ComputerId] in table 'ProductConnections'
ALTER TABLE [dbo].[ProductConnections]
ADD CONSTRAINT [FK_ComputerProductConnection]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ComputerProductConnection'
CREATE INDEX [IX_FK_ComputerProductConnection]
ON [dbo].[ProductConnections]
    ([ComputerId]);
GO

-- Creating foreign key on [TargetComputerId] in table 'SequenceResults'
ALTER TABLE [dbo].[SequenceResults]
ADD CONSTRAINT [FK_ComputerSequenceResult]
    FOREIGN KEY ([TargetComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ComputerSequenceResult'
CREATE INDEX [IX_FK_ComputerSequenceResult]
ON [dbo].[SequenceResults]
    ([TargetComputerId]);
GO

-- Creating foreign key on [ComputerId] in table 'DefensePlusLogRawDataSets'
ALTER TABLE [dbo].[DefensePlusLogRawDataSets]
ADD CONSTRAINT [FK_DefensePlusLogRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DefensePlusLogRawDataComputer'
CREATE INDEX [IX_FK_DefensePlusLogRawDataComputer]
ON [dbo].[DefensePlusLogRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ComputerId] in table 'DiscoveryDataSets'
ALTER TABLE [dbo].[DiscoveryDataSets]
ADD CONSTRAINT [FK_DiscoveryDataComputers]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DiscoveryDataComputers'
CREATE INDEX [IX_FK_DiscoveryDataComputers]
ON [dbo].[DiscoveryDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ComputerId] in table 'FirewallLogRawDataSets'
ALTER TABLE [dbo].[FirewallLogRawDataSets]
ADD CONSTRAINT [FK_FirewallLogRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FirewallLogRawDataComputer'
CREATE INDEX [IX_FK_FirewallLogRawDataComputer]
ON [dbo].[FirewallLogRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ComputerId] in table 'InfectedItemRawDataSets'
ALTER TABLE [dbo].[InfectedItemRawDataSets]
ADD CONSTRAINT [FK_InfectedItemRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InfectedItemRawDataComputer'
CREATE INDEX [IX_FK_InfectedItemRawDataComputer]
ON [dbo].[InfectedItemRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ComputerId] in table 'InstalledSoftwareRawDataSets'
ALTER TABLE [dbo].[InstalledSoftwareRawDataSets]
ADD CONSTRAINT [FK_InstalledSoftwareRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InstalledSoftwareRawDataComputer'
CREATE INDEX [IX_FK_InstalledSoftwareRawDataComputer]
ON [dbo].[InstalledSoftwareRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [InternetPolicyId] in table 'Computers'
ALTER TABLE [dbo].[Computers]
ADD CONSTRAINT [FK_InternetPolicyComputer]
    FOREIGN KEY ([InternetPolicyId])
    REFERENCES [dbo].[Policies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InternetPolicyComputer'
CREATE INDEX [IX_FK_InternetPolicyComputer]
ON [dbo].[Computers]
    ([InternetPolicyId]);
GO

-- Creating foreign key on [LocalPolicyId] in table 'Computers'
ALTER TABLE [dbo].[Computers]
ADD CONSTRAINT [FK_LocalPolicyComputer]
    FOREIGN KEY ([LocalPolicyId])
    REFERENCES [dbo].[Policies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LocalPolicyComputer'
CREATE INDEX [IX_FK_LocalPolicyComputer]
ON [dbo].[Computers]
    ([LocalPolicyId]);
GO

-- Creating foreign key on [ComputerId] in table 'PolicyDeltaRawDataSets'
ALTER TABLE [dbo].[PolicyDeltaRawDataSets]
ADD CONSTRAINT [FK_PolicyDeltaRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PolicyDeltaRawDataComputer'
CREATE INDEX [IX_FK_PolicyDeltaRawDataComputer]
ON [dbo].[PolicyDeltaRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ComputerId] in table 'QuarantineItemRawDataSets'
ALTER TABLE [dbo].[QuarantineItemRawDataSets]
ADD CONSTRAINT [FK_QuarantineItemRawDataComputer]
    FOREIGN KEY ([ComputerId])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_QuarantineItemRawDataComputer'
CREATE INDEX [IX_FK_QuarantineItemRawDataComputer]
ON [dbo].[QuarantineItemRawDataSets]
    ([ComputerId]);
GO

-- Creating foreign key on [ReportId] in table 'DefensePlusLogReportDataSets'
ALTER TABLE [dbo].[DefensePlusLogReportDataSets]
ADD CONSTRAINT [FK_DefensePlusLogReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DefensePlusLogReportDataReport'
CREATE INDEX [IX_FK_DefensePlusLogReportDataReport]
ON [dbo].[DefensePlusLogReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ReportId] in table 'FirewallLogReportDataSets'
ALTER TABLE [dbo].[FirewallLogReportDataSets]
ADD CONSTRAINT [FK_FirewallLogReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FirewallLogReportDataReport'
CREATE INDEX [IX_FK_FirewallLogReportDataReport]
ON [dbo].[FirewallLogReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ReportId] in table 'InfectedItemReportDataSets'
ALTER TABLE [dbo].[InfectedItemReportDataSets]
ADD CONSTRAINT [FK_InfectedItemReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InfectedItemReportDataReport'
CREATE INDEX [IX_FK_InfectedItemReportDataReport]
ON [dbo].[InfectedItemReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [LicenseNumber] in table 'LicensedProducts'
ALTER TABLE [dbo].[LicensedProducts]
ADD CONSTRAINT [FK_LicenseLicensedProduct]
    FOREIGN KEY ([LicenseNumber])
    REFERENCES [dbo].[Licenses]
        ([Number])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LicenseLicensedProduct'
CREATE INDEX [IX_FK_LicenseLicensedProduct]
ON [dbo].[LicensedProducts]
    ([LicenseNumber]);
GO

-- Creating foreign key on [ReportId] in table 'MalwareStatisticsReportDataSets'
ALTER TABLE [dbo].[MalwareStatisticsReportDataSets]
ADD CONSTRAINT [FK_MalwareStatisticsReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MalwareStatisticsReportDataReport'
CREATE INDEX [IX_FK_MalwareStatisticsReportDataReport]
ON [dbo].[MalwareStatisticsReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [PolicyId] in table 'PolicyProductInfoes'
ALTER TABLE [dbo].[PolicyProductInfoes]
ADD CONSTRAINT [FK_PolicyPolicyProductInfo]
    FOREIGN KEY ([PolicyId])
    REFERENCES [dbo].[Policies]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PolicyPolicyProductInfo'
CREATE INDEX [IX_FK_PolicyPolicyProductInfo]
ON [dbo].[PolicyProductInfoes]
    ([PolicyId]);
GO

-- Creating foreign key on [PolicyProductInfoId] in table 'PolicyComponentInfoes'
ALTER TABLE [dbo].[PolicyComponentInfoes]
ADD CONSTRAINT [FK_PolicyProductInfoPolicyComponentInfo]
    FOREIGN KEY ([PolicyProductInfoId])
    REFERENCES [dbo].[PolicyProductInfoes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PolicyProductInfoPolicyComponentInfo'
CREATE INDEX [IX_FK_PolicyProductInfoPolicyComponentInfo]
ON [dbo].[PolicyComponentInfoes]
    ([PolicyProductInfoId]);
GO

-- Creating foreign key on [ReportId] in table 'PolicyDeltaReportDataSets'
ALTER TABLE [dbo].[PolicyDeltaReportDataSets]
ADD CONSTRAINT [FK_PolicyDeltaReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PolicyDeltaReportDataReport'
CREATE INDEX [IX_FK_PolicyDeltaReportDataReport]
ON [dbo].[PolicyDeltaReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ReportId] in table 'PolicyStatusReportDataSets'
ALTER TABLE [dbo].[PolicyStatusReportDataSets]
ADD CONSTRAINT [FK_ReportPolicyStatusReportData]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportPolicyStatusReportData'
CREATE INDEX [IX_FK_ReportPolicyStatusReportData]
ON [dbo].[PolicyStatusReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ReportId] in table 'QuarantineItemReportDataSets'
ALTER TABLE [dbo].[QuarantineItemReportDataSets]
ADD CONSTRAINT [FK_QuarantineItemReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_QuarantineItemReportDataReport'
CREATE INDEX [IX_FK_QuarantineItemReportDataReport]
ON [dbo].[QuarantineItemReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [ReportId] in table 'ReportParameters'
ALTER TABLE [dbo].[ReportParameters]
ADD CONSTRAINT [FK_ReportReportParameter]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ReportId] in table 'ReportTargets'
ALTER TABLE [dbo].[ReportTargets]
ADD CONSTRAINT [FK_ReportReportTarget]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportReportTarget'
CREATE INDEX [IX_FK_ReportReportTarget]
ON [dbo].[ReportTargets]
    ([ReportId]);
GO

-- Creating foreign key on [ReportTypeId] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_ReportTypeReport]
    FOREIGN KEY ([ReportTypeId])
    REFERENCES [dbo].[ReportTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportTypeReport'
CREATE INDEX [IX_FK_ReportTypeReport]
ON [dbo].[Reports]
    ([ReportTypeId]);
GO

-- Creating foreign key on [ReportId] in table 'TopTenMalwaresReportDataSets'
ALTER TABLE [dbo].[TopTenMalwaresReportDataSets]
ADD CONSTRAINT [FK_TopTenMalwaresReportDataReport]
    FOREIGN KEY ([ReportId])
    REFERENCES [dbo].[Reports]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TopTenMalwaresReportDataReport'
CREATE INDEX [IX_FK_TopTenMalwaresReportDataReport]
ON [dbo].[TopTenMalwaresReportDataSets]
    ([ReportId]);
GO

-- Creating foreign key on [SequenceId] in table 'SequenceActions'
ALTER TABLE [dbo].[SequenceActions]
ADD CONSTRAINT [FK_SequenceActionsSequences]
    FOREIGN KEY ([SequenceId])
    REFERENCES [dbo].[Sequences]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SequenceActionsSequences'
CREATE INDEX [IX_FK_SequenceActionsSequences]
ON [dbo].[SequenceActions]
    ([SequenceId]);
GO

-- Creating foreign key on [SequenceId] in table 'SequenceResults'
ALTER TABLE [dbo].[SequenceResults]
ADD CONSTRAINT [FK_SequenceSequenceResult]
    FOREIGN KEY ([SequenceId])
    REFERENCES [dbo].[Sequences]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SequenceSequenceResult'
CREATE INDEX [IX_FK_SequenceSequenceResult]
ON [dbo].[SequenceResults]
    ([SequenceId]);
GO

-- Creating foreign key on [OwnerTaskResultId] in table 'SequenceResults'
ALTER TABLE [dbo].[SequenceResults]
ADD CONSTRAINT [FK_TaskResultSequenceResult]
    FOREIGN KEY ([OwnerTaskResultId])
    REFERENCES [dbo].[TaskResults]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskResultSequenceResult'
CREATE INDEX [IX_FK_TaskResultSequenceResult]
ON [dbo].[SequenceResults]
    ([OwnerTaskResultId]);
GO

-- Creating foreign key on [SequenceId] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [FK_TasksSequences]
    FOREIGN KEY ([SequenceId])
    REFERENCES [dbo].[Sequences]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TasksSequences'
CREATE INDEX [IX_FK_TasksSequences]
ON [dbo].[Tasks]
    ([SequenceId]);
GO

-- Creating foreign key on [TaskId] in table 'TaskResults'
ALTER TABLE [dbo].[TaskResults]
ADD CONSTRAINT [FK_TaskTaskResult]
    FOREIGN KEY ([TaskId])
    REFERENCES [dbo].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskTaskResult'
CREATE INDEX [IX_FK_TaskTaskResult]
ON [dbo].[TaskResults]
    ([TaskId]);
GO

-- Creating foreign key on [Alert_Id] in table 'MessageParams'
ALTER TABLE [dbo].[MessageParams]
ADD CONSTRAINT [FK_MessageParams_AlertParam]
    FOREIGN KEY ([Alert_Id])
    REFERENCES [dbo].[Alerts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MessageParams_AlertParam'
CREATE INDEX [IX_FK_MessageParams_AlertParam]
ON [dbo].[MessageParams]
    ([Alert_Id]);
GO

-- Creating foreign key on [RequestAnswer_Id] in table 'MessageParams'
ALTER TABLE [dbo].[MessageParams]
ADD CONSTRAINT [FK_MessageParams_RequestAnswerParam]
    FOREIGN KEY ([RequestAnswer_Id])
    REFERENCES [dbo].[RequestAnswers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MessageParams_RequestAnswerParam'
CREATE INDEX [IX_FK_MessageParams_RequestAnswerParam]
ON [dbo].[MessageParams]
    ([RequestAnswer_Id]);
GO

-- Creating foreign key on [ScanLocations_Id] in table 'ScanProfileLocations'
ALTER TABLE [dbo].[ScanProfileLocations]
ADD CONSTRAINT [FK_ScanProfileLocations_ScanLocations]
    FOREIGN KEY ([ScanLocations_Id])
    REFERENCES [dbo].[ScanLocations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ScanProfiles_Id] in table 'ScanProfileLocations'
ALTER TABLE [dbo].[ScanProfileLocations]
ADD CONSTRAINT [FK_ScanProfileLocations_ScanProfiles]
    FOREIGN KEY ([ScanProfiles_Id])
    REFERENCES [dbo].[ScanProfiles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ScanProfileLocations_ScanProfiles'
CREATE INDEX [IX_FK_ScanProfileLocations_ScanProfiles]
ON [dbo].[ScanProfileLocations]
    ([ScanProfiles_Id]);
GO

-- Creating foreign key on [ComputerGroups_Id] in table 'TaskComputerGroups'
ALTER TABLE [dbo].[TaskComputerGroups]
ADD CONSTRAINT [FK_TaskComputerGroups_ComputerGroups]
    FOREIGN KEY ([ComputerGroups_Id])
    REFERENCES [dbo].[ComputerGroups]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tasks_Id] in table 'TaskComputerGroups'
ALTER TABLE [dbo].[TaskComputerGroups]
ADD CONSTRAINT [FK_TaskComputerGroups_Tasks]
    FOREIGN KEY ([Tasks_Id])
    REFERENCES [dbo].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskComputerGroups_Tasks'
CREATE INDEX [IX_FK_TaskComputerGroups_Tasks]
ON [dbo].[TaskComputerGroups]
    ([Tasks_Id]);
GO

-- Creating foreign key on [Computers_Id] in table 'TaskComputers'
ALTER TABLE [dbo].[TaskComputers]
ADD CONSTRAINT [FK_TaskComputers_Computers]
    FOREIGN KEY ([Computers_Id])
    REFERENCES [dbo].[Computers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tasks_Id] in table 'TaskComputers'
ALTER TABLE [dbo].[TaskComputers]
ADD CONSTRAINT [FK_TaskComputers_Tasks]
    FOREIGN KEY ([Tasks_Id])
    REFERENCES [dbo].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskComputers_Tasks'
CREATE INDEX [IX_FK_TaskComputers_Tasks]
ON [dbo].[TaskComputers]
    ([Tasks_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------