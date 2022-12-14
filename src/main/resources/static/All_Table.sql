USE [HRMS2.0]
GO
/****** Object:  Table [dbo].[HR_MST_Appointment]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Appointment](
	[SUSNo] [nvarchar](15) NULL,
	[ApptId] [int] IDENTITY(1,1) NOT NULL,
	[ApptShortCode] [nvarchar](255) NULL,
	[ApptCode] [nvarchar](4) NULL,
	[ApptName] [nvarchar](30) NULL,
	[PersonTypeId] [nvarchar](1) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_Appointment_IsActive]  DEFAULT ((1)),
	[APPTMAPID] [int] NULL,
 CONSTRAINT [PK_HR_MST_Appointment] PRIMARY KEY CLUSTERED 
(
	[ApptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_AssignmentPurpose]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_AssignmentPurpose](
	[PurposeId] [int] IDENTITY(1,1) NOT NULL,
	[Purpose] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_AssignmentPurpose_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_AssignmentPurpose] PRIMARY KEY CLUSTERED 
(
	[PurposeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_AuthofOffcrsJCOsORs]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_AuthofOffcrsJCOsORs](
	[PersType] [varchar](1) NULL,
	[SUSNO] [nvarchar](20) NULL,
	[ArmServiceID] [int] NOT NULL,
	[AuthTypeId] [int] NOT NULL,
	[TradeId] [nvarchar](6) NULL,
	[HierarchyId] [int] NULL,
	[Offcr] [int] NULL,
	[Brig] [int] NULL,
	[Col] [int] NULL,
	[LtCol] [int] NULL,
	[Maj] [int] NULL,
	[Capt] [int] NULL,
	[Lt] [int] NULL,
	[SubMaj] [int] NULL,
	[Sub] [int] NULL,
	[NbSub] [int] NULL,
	[Hav] [int] NULL,
	[LHav] [int] NULL,
	[NK] [int] NULL,
	[LNK] [int] NULL,
	[Sep] [int] NULL,
	[NonSpecified] [int] NULL,
	[Total] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SelectAuth] [bit] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_AuthorizationType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_AuthorizationType](
	[SUS_No] [nvarchar](15) NULL,
	[AuthId] [int] IDENTITY(1,1) NOT NULL,
	[AuthType] [nvarchar](50) NULL,
	[PersonnelType] [nvarchar](1) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_AuthorizationType_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_AuthorizationType] PRIMARY KEY CLUSTERED 
(
	[AuthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_AuthPE_WE]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_AuthPE_WE](
	[AuthId] [int] IDENTITY(1,1) NOT NULL,
	[SUSNO] [nvarchar](20) NULL,
	[ArmServiceID] [int] NOT NULL,
	[AuthTypeId] [int] NOT NULL,
	[PersType] [varchar](1) NULL,
	[RankId] [nvarchar](6) NULL,
	[TradeId] [nvarchar](6) NULL,
	[HierarchyId] [int] NULL,
	[Auth] [int] NULL,
	[SelectAuth] [bit] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_AuthPE_WE_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_AuthPE_WE] PRIMARY KEY CLUSTERED 
(
	[AuthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_Blood_Gp]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Blood_Gp](
	[BlGpId] [int] NOT NULL,
	[BlGpDesc] [nvarchar](50) NULL,
 CONSTRAINT [PK_HR_MST_Blood_Gp] PRIMARY KEY CLUSTERED 
(
	[BlGpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Campaign]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Campaign](
	[CampaignId] [int] IDENTITY(1,1) NOT NULL,
	[CampaignName] [nvarchar](30) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_Campaign] PRIMARY KEY CLUSTERED 
(
	[CampaignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Capsule]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Capsule](
	[CapsuleId] [int] IDENTITY(1,1) NOT NULL,
	[CapsuleCode] [nvarchar](10) NULL,
	[CapsuleDesc] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdateDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_Capsule] PRIMARY KEY CLUSTERED 
(
	[CapsuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_CertificatesPIIJCOOR]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_CertificatesPIIJCOOR](
	[CertiID] [int] NOT NULL,
	[CasualtyID] [int] NULL,
	[Certificate] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_ComissionInstitution]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_ComissionInstitution](
	[CommInsID] [int] IDENTITY(1,1) NOT NULL,
	[ComissionType] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_ComissionInstitution] PRIMARY KEY CLUSTERED 
(
	[CommInsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_ComissionType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_ComissionType](
	[CommID] [int] IDENTITY(1,1) NOT NULL,
	[CommTypeShortCode] [nvarchar](15) NULL,
	[CommTypeName] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_ComissionType] PRIMARY KEY CLUSTERED 
(
	[CommID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Command]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Command](
	[SUSNo] [nvarchar](15) NULL,
	[CommandId] [int] IDENTITY(1,1) NOT NULL,
	[CommandShortCode] [nvarchar](4) NULL,
	[CommandName] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_Command_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_Command] PRIMARY KEY CLUSTERED 
(
	[CommandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_DeductionType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_DeductionType](
	[DeducID] [int] IDENTITY(1,1) NOT NULL,
	[DeducShortCode] [nvarchar](20) NULL,
	[DeducName] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_DeductionType] PRIMARY KEY CLUSTERED 
(
	[DeducID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Distribution]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Distribution](
	[DistributionId] [int] NOT NULL,
	[ReportName] [nvarchar](20) NULL,
	[DistributionName] [nvarchar](500) NULL,
	[Address] [nvarchar](255) NULL,
	[OrderNo] [smallint] NULL,
	[Deleted] [nvarchar](1) NULL,
	[RcdOffId] [smallint] NULL,
	[Selected] [bit] NULL CONSTRAINT [DF_HR_MST_Distribution_Selected]  DEFAULT ((1)),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_Distribution_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_Distribution] PRIMARY KEY CLUSTERED 
(
	[DistributionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Division]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Division](
	[SUSNo] [nvarchar](15) NULL,
	[DivId] [int] IDENTITY(1,1) NOT NULL,
	[DivName] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_Division] PRIMARY KEY CLUSTERED 
(
	[DivId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_FormationType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_FormationType](
	[FormationId] [int] IDENTITY(1,1) NOT NULL,
	[FormationName] [nvarchar](50) NULL,
	[FormationDesc] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_FormationType_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_FormationType] PRIMARY KEY CLUSTERED 
(
	[FormationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_FundPolicy]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_FundPolicy](
	[PolicyId] [int] IDENTITY(1,1) NOT NULL,
	[PolicyName] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_FundPolicy] PRIMARY KEY CLUSTERED 
(
	[PolicyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Grade]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Grade](
	[ID] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_HR_MST_Grade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_InoculationType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_InoculationType](
	[InoculationID] [int] IDENTITY(1,1) NOT NULL,
	[InoculationShortcode] [nvarchar](20) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_InoculationType] PRIMARY KEY CLUSTERED 
(
	[InoculationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_JCOPTO_hrank]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_JCOPTO_hrank](
	[RankDesc] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_LanguageProficiency]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_LanguageProficiency](
	[LangID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageProficiency] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_LanguageProficiency] PRIMARY KEY CLUSTERED 
(
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_LeaveType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_LeaveType](
	[LeaveID] [int] NOT NULL,
	[LeaveShortCode] [nvarchar](10) NULL,
	[LeaveType] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[PersonnelTypeId] [nvarchar](1) NULL,
	[Paraded] [bit] NULL,
 CONSTRAINT [PK_HR_MST_LeaveType] PRIMARY KEY CLUSTERED 
(
	[LeaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_MovementOrderCustomFields]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_MovementOrderCustomFields](
	[FieldId] [int] IDENTITY(1,1) NOT NULL,
	[Discription] [nvarchar](max) NULL,
	[Party] [nvarchar](8) NULL,
	[OffJCO] [nvarchar](8) NULL,
	[Selected] [bit] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_MovementOrderCustomFields_IsActive]  DEFAULT ((1)),
	[ReportName] [nvarchar](50) NULL,
 CONSTRAINT [PK_HR_MST_MovementOrderCustomFields] PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Prefix]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Prefix](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Prefix] [nvarchar](20) NULL,
	[PersonTypeId] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_HR_MST_Prefix] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PromotionExams]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PromotionExams](
	[Id] [int] NOT NULL,
	[PromotionExam_Name] [nvarchar](20) NULL,
 CONSTRAINT [PK_HR_MST_PromotionExams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoChkDuplicate]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoChkDuplicate](
	[CasCode] [int] NOT NULL,
	[CasDescToCheck] [varchar](15) NULL,
	[Flag] [char](1) NULL,
 CONSTRAINT [PK_HR_MST_PtoChkDuplicate] PRIMARY KEY CLUSTERED 
(
	[CasCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOOR_Arpan_Integration]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOOR_Arpan_Integration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Old_Appx_Description] [varchar](20) NOT NULL,
	[New_Appx_Description] [varchar](20) NOT NULL,
	[Gp] [varchar](3) NOT NULL,
	[FmDate] [nvarchar](100) NULL,
	[ToDate] [nvarchar](100) NULL,
	[MNTSPeriod] [nvarchar](100) NULL,
	[DAYSPeriod] [nvarchar](100) NULL,
	[Amt] [nvarchar](100) NULL,
	[SRA] [nvarchar](100) NULL,
	[NRA] [nvarchar](100) NULL,
	[ColA] [nvarchar](100) NULL,
	[ColB] [nvarchar](100) NULL,
	[ColC] [nvarchar](100) NULL,
	[RefPTO] [nvarchar](100) NULL,
	[Rmk1] [nvarchar](100) NULL,
	[Rmk2] [nvarchar](100) NULL,
	[Rmk3] [nvarchar](100) NULL,
	[Rmk4] [nvarchar](100) NULL,
	[Rmk5] [nvarchar](100) NULL,
	[Rmk6] [nvarchar](100) NULL,
	[Rmk7] [nvarchar](100) NULL,
	[Rmk8] [nvarchar](100) NULL,
	[Rmk9] [nvarchar](100) NULL,
	[Rmk10] [nvarchar](100) NULL,
	[Rmk11] [nvarchar](100) NULL,
	[Rmk12] [nvarchar](100) NULL,
	[Rmk13] [nvarchar](100) NULL,
	[Rmk14] [nvarchar](100) NULL,
	[Rmk15] [nvarchar](100) NULL,
	[WhereCondition] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_MST_PtoJCOOR_Arpan_Integration_IsActive]  DEFAULT ('True'),
 CONSTRAINT [PK_HR_MST_PtoJCOOR_Arpan_Integration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOOR_IC_Arpan_Integration]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOOR_IC_Arpan_Integration](
	[id] [int] NOT NULL,
	[Old_Appx_Description] [varchar](30) NOT NULL,
	[New_Appx_Description] [varchar](20) NOT NULL,
	[Gp] [varchar](3) NOT NULL,
	[FatherName] [nvarchar](50) NULL,
	[DOE] [nvarchar](50) NULL,
	[DateofDeparture] [nvarchar](50) NULL,
	[DeparturefromBRO] [nvarchar](50) NULL,
	[TermsofEngagement] [nvarchar](50) NULL,
	[AgeinYrs] [nvarchar](50) NULL,
	[DOB] [nvarchar](50) NULL,
	[DateofArrival] [nvarchar](50) NULL,
	[DateofArrivalAtCenter] [nvarchar](50) NULL,
	[AdvPaidbyBRO] [nvarchar](50) NULL,
	[CatEntry] [nvarchar](50) NULL,
	[ClassCast] [nvarchar](50) NULL,
	[DANoofDaysHrs] [nvarchar](50) NULL,
	[CivEdn] [nvarchar](50) NULL,
	[BRO] [nvarchar](50) NULL,
	[Rmk1] [nvarchar](50) NULL,
	[Rmk2] [nvarchar](50) NULL,
	[WhereCondition] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_MST_PtoJCOOR_IC_Arpan_Integration_IsActive]  DEFAULT ('True'),
 CONSTRAINT [PK_HR_MST_PtoJCOOR_IC_Arpan_Integration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_ACP]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_ACP](
	[Rank_Gp] [int] NULL,
	[Rank_desc] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_Appt]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_Appt](
	[Appt_desc] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_HR_MST_PtoJCOs_Appt] PRIMARY KEY CLUSTERED 
(
	[Appt_desc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_Certificates]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_Certificates](
	[Desc_cd] [numeric](6, 0) NOT NULL,
	[Certificate] [text] NULL,
	[CertificateValues] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NOT NULL CONSTRAINT [DF_HR_MST_PtoJCOCertificates_CreatedBy]  DEFAULT (N'Admin'),
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_HR_MST_PtoJCOCertificates_CreatedDate]  DEFAULT (getdate()),
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_PtoJCOCertificates_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_PtoJCOs_Certificates] PRIMARY KEY CLUSTERED 
(
	[Desc_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_CertificatesDUMY]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_CertificatesDUMY](
	[Desc_cd] [numeric](6, 0) NOT NULL,
	[Certificate] [text] NULL,
	[CertificateValues] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_MACPS]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_MACPS](
	[Rank_Gp] [int] NULL,
	[Rank_desc] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_Notes]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_Notes](
	[Id] [int] NOT NULL,
	[CasualtyId] [numeric](4, 0) NULL,
	[Note] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_Remarks]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_Remarks](
	[RemarkId] [int] IDENTITY(1,1) NOT NULL,
	[Desc_Cd] [numeric](4, 0) NOT NULL,
	[Remark] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NOT NULL CONSTRAINT [DF_HR_MST_PTO_Remarks_OR_CreatedBy]  DEFAULT (N'Admin'),
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_HR_MST_PTO_Remarks_OR_CreatedDate]  DEFAULT (getdate()),
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_PTO_Remarks_OR_IsActive]  DEFAULT ((1)),
	[id] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_HR_MST_PtoJCOs_RemarkId] PRIMARY KEY CLUSTERED 
(
	[RemarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_Remarks_promotAppt]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_Remarks_promotAppt](
	[ApptDesc] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOs_RevertRank]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOs_RevertRank](
	[RankDesc] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOsAllceRate]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOsAllceRate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[allowance_name] [varchar](50) NOT NULL,
	[sub_allowance_name] [varchar](50) NULL,
	[from_date] [date] NOT NULL,
	[to_date] [date] NULL,
	[grade_pay] [float] NULL,
	[city] [varchar](50) NULL,
	[gso_code] [varchar](50) NULL,
	[pay_start_range] [float] NULL,
	[pay_end_range] [float] NULL,
	[rate_percentage] [varchar](50) NULL,
	[rate_amount] [float] NULL,
 CONSTRAINT [PK_HR_MST_PtoJCOsAllceRate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoJCOsAllceRate_Deleted]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoJCOsAllceRate_Deleted](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[allowance_name] [varchar](50) NOT NULL,
	[sub_allowance_name] [varchar](50) NULL,
	[from_date] [date] NOT NULL,
	[to_date] [date] NULL,
	[grade_pay] [float] NULL,
	[city] [varchar](50) NULL,
	[gso_code] [varchar](50) NULL,
	[pay_start_range] [float] NULL,
	[pay_end_range] [float] NULL,
	[rate_percentage] [varchar](50) NULL,
	[rate_amount] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoOffQualification]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffQualification](
	[QualificationId] [int] IDENTITY(1,1) NOT NULL,
	[Qualification] [nvarchar](250) NOT NULL,
	[QualificationCode] [int] NOT NULL,
 CONSTRAINT [PK_HR_MST_PtoOffQualification] PRIMARY KEY CLUSTERED 
(
	[QualificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffr_FFSSPP]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffr_FFSSPP](
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[Nm] [nvarchar](50) NULL,
	[Vl] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffr_GTDHCA]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffr_GTDHCA](
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[StationName] [nvarchar](500) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_PtoOffr_GTDHCA_Active]  DEFAULT ((1))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffr_GTDHRA_XYZ]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffr_GTDHRA_XYZ](
	[Sno] [int] NULL,
	[Text] [nvarchar](500) NULL,
	[Value] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffr_LveType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffr_LveType](
	[LveId] [smallint] IDENTITY(1,1) NOT NULL,
	[LveType] [varchar](50) NOT NULL,
	[CasCode] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoOffr_SPLINCR]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffr_SPLINCR](
	[Sno] [int] NULL,
	[Text] [nvarchar](500) NULL,
	[Value] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_Authority]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_Authority](
	[Desc_cd] [int] NULL,
	[Authority] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_Certificates]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_Certificates](
	[Desc_cd] [int] NOT NULL,
	[CertificateId] [int] IDENTITY(1,1) NOT NULL,
	[CertificateLineNo] [tinyint] NULL,
	[Certificate] [nvarchar](max) NOT NULL,
	[CertificateValues] [nvarchar](max) NULL,
	[Mandatory] [bit] NULL CONSTRAINT [DF_HR_MST_PtoOffrs_Certificates_Mandatory]  DEFAULT ((1)),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_MST_PtoOffrs_Certificates_IsActive]  DEFAULT ((1)),
	[RankCode] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_CertificatesOLD]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_CertificatesOLD](
	[Desc_cd] [int] NOT NULL,
	[CertificateId] [int] IDENTITY(1,1) NOT NULL,
	[CertificateLineNo] [tinyint] NULL,
	[Certificate] [nvarchar](max) NOT NULL,
	[Mandatory] [bit] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_Controls]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_Controls](
	[Ctl_cd] [int] IDENTITY(1,1) NOT NULL,
	[Desc_cd] [int] NOT NULL,
	[lbl_Name_Pto] [varchar](100) NOT NULL,
	[Ctl_Id] [nvarchar](30) NOT NULL,
	[Ctl_Type] [varchar](20) NOT NULL,
	[Ctl_Value] [varchar](max) NULL,
	[Ctl_Value_Where] [nvarchar](300) NULL,
	[Ctl_Len] [numeric](3, 0) NULL,
	[Ctl_DB_Fd] [varchar](50) NOT NULL,
	[Ctl_Validation] [char](1) NULL,
	[Ctl_ToolTip] [varchar](200) NULL,
	[Mandatory] [char](1) NOT NULL,
	[IsReadOnly] [char](1) NOT NULL,
	[IsPostBack] [char](1) NULL,
	[CssClass] [nvarchar](20) NULL,
	[PopupWindow] [nvarchar](250) NULL,
	[Ctl_Seq] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_CorpsCode]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_CorpsCode](
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[Corps] [nvarchar](500) NULL,
	[Corps_Code] [nvarchar](100) NULL,
	[Arms_Service_Cd] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_CourseHR]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_CourseHR](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseDesc] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_Master]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_Master](
	[Book_Ser_No] [nvarchar](100) NULL,
	[Desc_cd] [numeric](6, 0) IDENTITY(1,1) NOT NULL,
	[Description] [varchar](15) NOT NULL,
	[Full_Name] [varchar](200) NOT NULL,
	[Gp] [varchar](3) NOT NULL,
	[Category] [varchar](100) NOT NULL,
	[Certificate] [char](1) NULL,
	[Enclousre] [char](1) NULL,
	[Desc_Start_dt] [datetime] NULL,
	[Desc_Stop_dt] [datetime] NULL,
	[Desc_Gp] [varchar](150) NULL,
	[Unjoined_Desc_cd] [nvarchar](max) NULL,
	[Desc_Stop_Msg] [varchar](250) NULL,
	[Alert] [nvarchar](500) NULL,
	[Status] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_Notes]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_Notes](
	[NotesID] [int] NOT NULL,
	[CasualtyId] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Mas_Notes_PII_Off_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_Mas_Notes_PII_Off] PRIMARY KEY CLUSTERED 
(
	[NotesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_Remarks]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_Remarks](
	[RemarksID] [int] IDENTITY(1,1) NOT NULL,
	[Desc_cd] [int] NULL,
	[Remark] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_MAS_Remarks_PII_Off_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_Remarks_PII_Off] PRIMARY KEY CLUSTERED 
(
	[RemarksID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOffrs_Validations]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOffrs_Validations](
	[Desc_cd] [numeric](6, 0) NOT NULL,
	[ValidatorType] [nvarchar](2) NULL,
	[CtlToValidate] [nvarchar](30) NOT NULL,
	[Optr] [nvarchar](2) NULL,
	[CmprCtl] [nvarchar](50) NULL,
	[CtlToValidateClientEvent] [nvarchar](20) NULL,
	[CmprCtlValueClient] [nvarchar](max) NULL,
	[CmprCtlValueServer] [nvarchar](max) NULL,
	[CmprCtlValueWhere] [nvarchar](max) NULL,
	[ValidateFunction] [nvarchar](30) NULL,
	[ErrMsg] [nvarchar](150) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoOldAppxJMapping]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoOldAppxJMapping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](20) NOT NULL,
	[Gp] [varchar](3) NOT NULL,
	[ColA] [varchar](5) NULL,
	[ColB] [varchar](5) NULL,
	[ColC] [varchar](5) NULL,
	[Rmk1] [varchar](5) NULL,
	[Rmk2] [varchar](5) NULL,
	[Rmk3] [varchar](5) NULL,
	[Rmk4] [varchar](5) NULL,
	[Rmk5] [varchar](5) NULL,
	[Rmk6] [varchar](5) NULL,
	[Rmk7] [varchar](5) NULL,
	[Rmk8] [varchar](5) NULL,
	[Rmk9] [varchar](5) NULL,
	[Rmk10] [varchar](5) NULL,
	[Rmk11] [varchar](5) NULL,
	[Rmk12] [varchar](5) NULL,
	[Rmk13] [varchar](5) NULL,
	[Rmk14] [varchar](5) NULL,
	[Rmk15] [varchar](5) NULL,
	[FlagUpdated] [bit] NULL,
 CONSTRAINT [PK_HR_MST_PtoOldAppxJMapping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoPersInfoTbls]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoPersInfoTbls](
	[PtoPerInfoId] [int] IDENTITY(1,1) NOT NULL,
	[PtoType] [nchar](1) NOT NULL CONSTRAINT [DF_HR_MST_PtoPersInfoTbls_PtoType]  DEFAULT (N'F'),
	[PtoTblId] [int] NOT NULL,
	[CasCode] [int] NOT NULL,
	[SourceTbl] [nvarchar](100) NOT NULL,
	[DestiTbl] [nvarchar](100) NOT NULL,
	[TransType] [varchar](10) NULL CONSTRAINT [DF_HR_MST_PtoPersInfoTblsDetails_TransType]  DEFAULT ('Insert'),
	[TblWhere] [nvarchar](300) NULL,
 CONSTRAINT [PK_HR_MST_PtoPersInfoTbls_PtoPerInfoId] PRIMARY KEY CLUSTERED 
(
	[PtoPerInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoPersInfoTblsJoins]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoPersInfoTblsJoins](
	[PtoPersInfoJoinId] [int] IDENTITY(1,1) NOT NULL,
	[PtoTblId] [int] NOT NULL,
	[JoinTbl1] [nvarchar](100) NOT NULL,
	[JoinTbl2] [nvarchar](100) NOT NULL,
	[JoinCondition] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_HR_MST_PtoPersInfoTblsJoins] PRIMARY KEY CLUSTERED 
(
	[PtoPersInfoJoinId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoRefCasualties]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoRefCasualties](
	[PtoRefCasId] [int] IDENTITY(1,1) NOT NULL,
	[Desc_cd] [int] NOT NULL,
	[Description] [varchar](10) NOT NULL,
	[DraftRef] [bit] NULL,
 CONSTRAINT [PK_HR_MST_PtoRefCasualties] PRIMARY KEY CLUSTERED 
(
	[PtoRefCasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoServerSideValidations]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoServerSideValidations](
	[PtoValId] [int] IDENTITY(1,1) NOT NULL,
	[CasCode] [int] NOT NULL,
	[PostBackCtlId] [nvarchar](50) NOT NULL,
	[PostBackCtlValue] [nvarchar](50) NOT NULL,
	[ActionTaken] [varchar](20) NOT NULL,
	[EffectedCtlId] [nvarchar](50) NOT NULL,
	[EffectedCtlValue] [nvarchar](50) NULL,
	[EffectedCtlWhere] [nvarchar](300) NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_HR_MST_PtoServerSideValidations_PtoValId] PRIMARY KEY CLUSTERED 
(
	[PtoValId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoStrengthGenPTOs]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoStrengthGenPTOs](
	[PtoStrGenId] [int] IDENTITY(1,1) NOT NULL,
	[PtoStrTblId] [int] NOT NULL,
	[SourceFld] [nvarchar](500) NOT NULL,
	[DestiFld] [nvarchar](150) NOT NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_HR_MST_PtoStrengthGenPTOs_PtoStrGenId] PRIMARY KEY CLUSTERED 
(
	[PtoStrGenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoStrengthTbls]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_PtoStrengthTbls](
	[PtoStrTblId] [int] IDENTITY(1,1) NOT NULL,
	[PtoType] [nvarchar](4) NOT NULL,
	[StrengthOption] [nvarchar](15) NOT NULL,
	[Gp] [varchar](3) NULL,
	[SourceTbl] [nvarchar](200) NOT NULL,
	[SourceTblsMulti] [nvarchar](200) NOT NULL,
	[DestiTbl] [nvarchar](100) NOT NULL,
	[TransType] [varchar](10) NOT NULL CONSTRAINT [DF_HR_MST_PtoStrengthTbls_TransType]  DEFAULT ('Insert'),
	[TblWhere] [nvarchar](300) NULL,
 CONSTRAINT [PK_HR_MST_PtoStrengthTbls] PRIMARY KEY CLUSTERED 
(
	[PtoStrTblId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_PtoStrengthTblsJoins]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoStrengthTblsJoins](
	[PtoStrTblJoinId] [int] IDENTITY(1,1) NOT NULL,
	[PtoStrTblId] [int] NOT NULL,
	[JoinTbl1] [nvarchar](100) NOT NULL,
	[JoinCondition] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_HR_MST_PtoStrengthTblsJoins_PtoStrTblJoinId] PRIMARY KEY CLUSTERED 
(
	[PtoStrTblJoinId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_PtoUpdatePersInfo]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_PtoUpdatePersInfo](
	[PtoUpdatePersInfoId] [int] IDENTITY(1,1) NOT NULL,
	[PtoTblId] [int] NOT NULL,
	[SourceFld] [nvarchar](150) NOT NULL,
	[DestiFld] [nvarchar](150) NOT NULL,
	[CheckDuplicate] [bit] NULL CONSTRAINT [DF_HR_MST_PtoUpdatePersInfo_CheckDuplicate]  DEFAULT ((0)),
 CONSTRAINT [PK_HR_MST_PtoUpdatePersInfo__PtoUpdatePersInfoId] PRIMARY KEY CLUSTERED 
(
	[PtoUpdatePersInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_RankOfficers]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_RankOfficers](
	[RankCode] [nvarchar](3) NOT NULL,
	[RankDesc] [nvarchar](20) NULL,
	[RankFullDesc] [nvarchar](50) NULL,
	[RankType] [nvarchar](1) NULL,
	[RankCodePTO] [nvarchar](4) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[next_higher_rank_cd] [nvarchar](50) NULL,
	[next_lower_rank_cd] [nvarchar](50) NULL,
	[seq] [int] NULL,
 CONSTRAINT [PK_HR_MST_RankOfficers] PRIMARY KEY CLUSTERED 
(
	[RankCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Signatories]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Signatories](
	[SigId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Ranks] [nvarchar](50) NULL,
	[Appointment] [nvarchar](50) NULL,
	[For1] [nvarchar](50) NULL,
	[Offsetting] [bit] NULL,
	[For2] [bit] NULL,
	[Sig1] [nvarchar](50) NULL,
	[Sig2] [nvarchar](50) NULL,
	[Sig3] [nvarchar](50) NULL,
	[Sig4] [nvarchar](50) NULL,
	[Sig5] [nvarchar](50) NULL,
	[Sig6] [nvarchar](50) NULL,
	[ReportType] [nvarchar](50) NULL,
	[Id] [int] NULL,
	[ArmyNo] [nvarchar](15) NULL,
 CONSTRAINT [PK_HR_MST_Signatories] PRIMARY KEY CLUSTERED 
(
	[SigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Trade]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Trade](
	[TradeId] [int] IDENTITY(1,1) NOT NULL,
	[TradeShortCode] [nvarchar](20) NULL,
	[TradeDesc] [nvarchar](50) NULL,
	[ArmsServiceID] [int] NULL,
	[PayGroup] [nvarchar](20) NULL,
	[Seniority3009] [int] NULL,
	[CorpRoster] [nvarchar](1) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_Trade] PRIMARY KEY CLUSTERED 
(
	[TradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_TrainingEstablishment]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_TrainingEstablishment](
	[TrnEstbId] [int] IDENTITY(1,1) NOT NULL,
	[TrnEstbName] [nvarchar](50) NULL,
	[TrnEstbLocation] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_MST_TrainingEstablishment_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_TrainingEstablishment] PRIMARY KEY CLUSTERED 
(
	[TrnEstbId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_UnitDetails]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_MST_UnitDetails](
	[SUSNo] [nvarchar](15) NOT NULL,
	[UnitName] [nvarchar](max) NOT NULL,
	[UnitCode] [nvarchar](50) NULL,
	[UnitMotto] [nvarchar](max) NULL,
	[Unitnickname] [nvarchar](max) NULL,
	[UnitCrest] [varbinary](max) NULL,
	[EstablishmentNo] [nvarchar](50) NULL,
	[RegistrationNo] [nvarchar](50) NULL,
	[DateOfRising] [datetime] NULL,
	[ArmServiceId] [int] NOT NULL,
	[NearestRlyStn] [nvarchar](50) NULL,
	[We_Pe_ModLetterNo] [nvarchar](30) NULL,
	[WePeModLetterNo] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[FormationTypeId] [int] NOT NULL,
	[CommandId] [int] NOT NULL,
	[Telephone] [nvarchar](15) NULL,
	[BrigadeSubArea] [nvarchar](50) NULL,
	[DivAreaId] [int] NULL,
	[CorpsId] [int] NULL,
	[Station] [nvarchar](50) NULL,
	[UnitTypeId] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[ThemeId] [int] NOT NULL CONSTRAINT [DF__tmp_ms_xx__Theme__451B7642]  DEFAULT ((0)),
	[armytype] [nvarchar](50) NULL,
	[UNoFrom] [int] NULL,
	[UNoUpto] [int] NULL,
	[PAOUnitNo] [nvarchar](25) NULL,
	[PCDAUnitNo] [nvarchar](25) NULL,
	[DivAreaDescr] [nvarchar](150) NULL,
	[CorporationDesc] [nvarchar](150) NULL,
	[CaseFileNo3009] [nvarchar](100) NULL,
	[Auth3008] [nvarchar](100) NULL,
	[HRMSverNo] [nvarchar](50) NULL CONSTRAINT [DF_HR_MST_UnitDetails_HRMSverNo]  DEFAULT ((2.0)),
	[HRMSverUpdOn] [datetime] NULL,
 CONSTRAINT [PK_HR_MST_UnitDetails] PRIMARY KEY CLUSTERED 
(
	[SUSNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_MST_UnitHierarchyTemplates]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_UnitHierarchyTemplates](
	[HierarchyId] [int] IDENTITY(1,1) NOT NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyName] [nvarchar](50) NOT NULL,
	[level0] [int] NULL,
	[level1] [int] NULL,
	[level2] [int] NULL,
	[level3] [int] NULL,
	[level4] [int] NULL,
	[level5] [int] NULL,
	[level6] [int] NULL,
	[level7] [int] NULL,
	[ChildNodes] [int] NULL,
	[AuthOffr] [int] NULL,
	[AuthJCO] [int] NULL,
	[AuthOR] [int] NULL,
	[Detatch] [bit] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_UnitHierarchyTemplates_test] PRIMARY KEY CLUSTERED 
(
	[HierarchyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_UnitHierarchyTemplates_R&D]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_UnitHierarchyTemplates_R&D](
	[HierarchyId] [int] IDENTITY(1,1) NOT NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyName] [nvarchar](50) NOT NULL,
	[level0] [int] NULL,
	[level1] [int] NULL,
	[level2] [int] NULL,
	[level3] [int] NULL,
	[level4] [int] NULL,
	[level5] [int] NULL,
	[level6] [int] NULL,
	[level7] [int] NULL,
	[ChildNodes] [int] NULL,
	[AuthOffr] [int] NULL,
	[AuthJCO] [int] NULL,
	[AuthOR] [int] NULL,
	[Detatch] [bit] NULL CONSTRAINT [DF_HR_MST_UnitHierarchyTemplates_Detatch]  DEFAULT ((0)),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_Mst_UnitHierarchyTemplates_IsActive]  DEFAULT ((1))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_UnitHierarchyTemplates_Till-10Dec-2013]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_UnitHierarchyTemplates_Till-10Dec-2013](
	[HierarchyId] [int] IDENTITY(1,1) NOT NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyName] [nvarchar](50) NOT NULL,
	[level0] [int] NULL,
	[level1] [int] NULL,
	[level2] [int] NULL,
	[level3] [int] NULL,
	[level4] [int] NULL,
	[level5] [int] NULL,
	[level6] [int] NULL,
	[level7] [int] NULL,
	[ChildNodes] [int] NULL,
	[AuthOffr] [int] NULL,
	[AuthJCO] [int] NULL,
	[AuthOR] [int] NULL,
	[Detatch] [bit] NOT NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_UnitType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_UnitType](
	[UnitTypeId] [int] IDENTITY(1,1) NOT NULL,
	[UnitTypeName] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_UnitType] PRIMARY KEY CLUSTERED 
(
	[UnitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_Weapons]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_Weapons](
	[WeaponId] [smallint] IDENTITY(1,1) NOT NULL,
	[WeaponName] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_MST_Weapons_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_MST_Weapons] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_MST_WEPEAuthType]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MST_WEPEAuthType](
	[AuthID] [int] IDENTITY(1,1) NOT NULL,
	[AuthType] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_MST_WEPEAuthType] PRIMARY KEY CLUSTERED 
(
	[AuthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_PnsDocs_PendingLeave]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_PnsDocs_PendingLeave](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](100) NULL,
	[NatureLeave] [nvarchar](100) NULL,
	[YearOfDays] [nvarchar](50) NULL,
	[NoOFDays] [nvarchar](50) NULL,
	[PTONO] [nvarchar](250) NULL,
	[PTODate] [datetime] NULL,
	[LeaveRemarks] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_PnsDocs_PendingPartII]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_PnsDocs_PendingPartII](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](50) NULL,
	[Cascode] [numeric](6, 0) NULL,
	[CasualtyName] [varchar](100) NULL,
	[Period] [nvarchar](250) NULL,
	[PTONO] [nvarchar](250) NULL,
	[PTODate] [datetime] NULL,
	[Remarks] [nvarchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_PnsDocsArmyDetail]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_PnsDocsArmyDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](50) NOT NULL,
	[SosDate] [datetime] NULL,
	[Departuretime] [varchar](50) NULL,
	[Station] [nvarchar](50) NULL,
	[SignDate] [datetime] NULL,
	[ROStation] [nvarchar](50) NULL,
	[RODate] [datetime] NULL,
	[POAName] [nvarchar](50) NULL,
	[POARegt] [nvarchar](50) NULL,
	[POAPlace] [nvarchar](50) NULL,
	[LengthService] [nvarchar](50) NULL,
	[DischargeDate] [datetime] NULL,
	[DisPtoNo] [nvarchar](50) NULL,
	[DisPtoDate] [datetime] NULL,
	[RecoveryAmount] [decimal](18, 0) NULL,
	[FPAccno] [nvarchar](50) NULL,
	[SPLTechnQuali] [nvarchar](50) NULL,
	[NonJunior] [varchar](50) NULL,
	[DurMonth] [int] NULL,
	[DurYears] [int] NULL,
	[NearUnit] [nvarchar](100) NULL,
	[NearZilaSainBoard] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ArmyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_PnsDocsArmyDetails]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_PnsDocsArmyDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](50) NULL,
	[Ranks] [nvarchar](50) NULL,
	[PersonnelName] [nvarchar](100) NULL,
	[RegiUnitName] [nvarchar](100) NULL,
	[DateOfDeath] [nvarchar](100) NULL,
	[PPONo] [nvarchar](100) NULL,
	[MemberName] [nvarchar](50) NULL,
	[MemberID] [nvarchar](50) NULL,
	[Member_relation] [nvarchar](50) NULL,
	[Member_BankName] [nvarchar](50) NULL,
	[Member_IFSC] [nvarchar](20) NULL,
	[Member_AccountNo] [nvarchar](20) NULL,
	[MemberId_Page2] [nvarchar](50) NULL,
	[Member_relation_Page2] [nvarchar](50) NULL,
	[Self_AdharNo] [nvarchar](50) NULL,
	[IT_Page2] [int] NULL,
	[Adhaarno_YesNo_Page2] [int] NULL,
	[UIDIA_YesNo_Page2] [int] NULL,
	[PCDA_YesNo_Page2] [int] NULL,
	[ConsntRecve_YesNo_Page2] [int] NULL,
	[SparsePort_YesNo_Page2] [int] NULL,
	[DtODis_Page3] [nvarchar](100) NULL,
	[AppX_Page3] [nvarchar](50) NULL,
	[CoPara_Page3] [nvarchar](50) NULL,
	[PtnPnsn_Page3] [nvarchar](50) NULL,
	[CasePending_Page3] [nvarchar](50) NULL,
	[AdharNo_Page3] [nvarchar](50) NULL,
	[EmailID_Page3] [nvarchar](50) NULL,
	[Pan_Page3] [nvarchar](50) NULL,
	[MobileNoSelf_Page3] [nvarchar](50) NULL,
	[MobWife_Page3] [nvarchar](50) NULL,
	[BankName_Page3] [nvarchar](50) NULL,
	[Ifsc_Page3] [nvarchar](50) NULL,
	[AccountNo_Page3] [nvarchar](50) NULL,
	[TypeAccount_Page3] [nvarchar](50) NULL,
	[MemberID_Page4] [nvarchar](50) NULL,
	[MemberName_Page4] [nvarchar](50) NULL,
	[Member_relation_Page4] [nvarchar](50) NULL,
	[commute_Serpnsn_Page4] [nvarchar](50) NULL,
	[Rdb_deductYesNo_Page4] [int] NULL,
	[Rdb_aadharnoYesNo_Page4] [int] NULL,
	[Rdb_NIC_YesNo_Page4] [int] NULL,
	[Rdb_PCDAYesNo_Page4] [int] NULL,
	[Rdb_consntNotifYesNo_Page4] [int] NULL,
	[Rdb_VerficationYesNo_Page4] [int] NULL,
	[aadharno_Page4] [nvarchar](50) NULL,
	[mobileNo_Page4] [nvarchar](50) NULL,
	[Email_Page4] [nvarchar](150) NULL,
	[Spouseno_page4] [nvarchar](50) NULL,
	[Station_Page4] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_Pto_Rule]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Pto_Rule](
	[Cas_Code] [nvarchar](15) NULL,
	[Gp] [nvarchar](3) NULL,
	[Other_detailA] [nvarchar](1) NULL,
	[Other_detailB] [nvarchar](1) NULL,
	[Other_detailC] [nvarchar](1) NULL,
	[Ref_part2] [nvarchar](1) NULL,
	[Pto_rmk1_status] [nvarchar](1) NULL,
	[Pto_rmk2_status] [nvarchar](1) NULL,
	[Pto_rmk3_status] [nvarchar](1) NULL,
	[Pto_rmk4_status] [nvarchar](1) NULL,
	[Pto_rmk5_status] [nvarchar](1) NULL,
	[Pto_rmk6_status] [nvarchar](1) NULL,
	[Pto_rmk7_status] [nvarchar](1) NULL,
	[Pto_rmk8_status] [nvarchar](1) NULL,
	[Pto_rmk9_status] [nvarchar](1) NULL,
	[Pto_rmk10_status] [nvarchar](1) NULL,
	[Pto_rmk1_val] [nvarchar](50) NULL,
	[Pto_rmk2_val] [nvarchar](50) NULL,
	[Pto_rmk3_val] [nvarchar](50) NULL,
	[Pto_rmk4_val] [nvarchar](50) NULL,
	[Pto_rmk5_val] [nvarchar](50) NULL,
	[Pto_rmk6_val] [nvarchar](50) NULL,
	[Pto_rmk7_val] [nvarchar](50) NULL,
	[Pto_rmk8_val] [nvarchar](50) NULL,
	[Pto_rmk9_val] [nvarchar](50) NULL,
	[Pto_rmk10_val] [nvarchar](50) NULL,
	[Pto_Col5a_caption] [nvarchar](100) NULL,
	[Pto_Col5b_caption] [nvarchar](100) NULL,
	[Pto_Col5c_caption] [nvarchar](100) NULL,
	[Pto_Col5a_val] [nvarchar](255) NULL,
	[Pto_Col5b_val] [nvarchar](255) NULL,
	[Pto_Col5c_val] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TEMP_CASUALITIES]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TEMP_CASUALITIES](
	[srl_no] [float] NULL,
	[srno_cat] [float] NULL,
	[casualty_c] [nvarchar](255) NULL,
	[casualty_d] [nvarchar](255) NULL,
	[casualty_t] [nvarchar](255) NULL,
	[from_dt_re] [nvarchar](255) NULL,
	[to_dt_reqd] [nvarchar](255) NULL,
	[data1_reqd] [nvarchar](255) NULL,
	[data1_type] [nvarchar](255) NULL,
	[data2_reqd] [nvarchar](255) NULL,
	[data2_type] [nvarchar](255) NULL,
	[data3_reqd] [nvarchar](255) NULL,
	[data3_type] [nvarchar](255) NULL,
	[data4_reqd] [nvarchar](255) NULL,
	[data4_type] [nvarchar](255) NULL,
	[certificat] [nvarchar](255) NULL,
	[enclosures] [nvarchar](255) NULL,
	[delete_fla] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TEMP_CertificateJCO]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TEMP_CertificateJCO](
	[DescCode] [nvarchar](255) NULL,
	[Certificate] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TEMP_CERTIFICATES]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TEMP_CERTIFICATES](
	[cert_srlno] [float] NULL,
	[cas_srlno] [float] NULL,
	[cert_desc] [nvarchar](255) NULL,
	[cas_rejcod] [nvarchar](255) NULL,
	[cert_flag] [nvarchar](255) NULL,
	[cert_delfl] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TMP_CourseNomineeCount]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TMP_CourseNomineeCount](
	[SerialID] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[NominationCount] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TMP_CourseNominees]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TMP_CourseNominees](
	[SerialID] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[NomineeArmyNo] [nvarchar](12) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TR_Ration]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TR_Ration](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Ration] [nvarchar](14) NOT NULL,
	[RationType] [nvarchar](10) NULL,
	[Aata_Eater] [bit] NULL,
	[Rice_Eater] [bit] NULL,
	[VegNonVeg] [nvarchar](10) NULL,
	[Egg] [bit] NULL,
	[RationMoney] [nvarchar](6) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TR_Ration_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TR_Ration_EntryFlag]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_3008Details]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_3008Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HID] [int] NOT NULL,
	[FlagID] [int] NULL,
	[AuthAppt] [nvarchar](100) NULL,
	[Rank] [nvarchar](100) NULL,
	[RankId] [int] NULL,
	[PresentRank] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[CDAACNo] [nvarchar](100) NULL,
	[Arms_service_name] [nvarchar](100) NULL,
	[MedCat] [nvarchar](50) NULL,
	[TOS] [datetime] NULL,
	[DOB] [datetime] NULL,
	[FirstCommisionDate] [datetime] NULL,
	[Seniority] [datetime] NULL,
	[PresentAppt] [datetime] NULL,
	[SOS] [datetime] NULL,
	[Remarks] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_HR_TRN_3008Details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_3008Header]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_3008Header](
	[HID] [int] IDENTITY(1,1) NOT NULL,
	[StrnRtnType] [int] NOT NULL,
	[SUSNo] [nvarchar](15) NOT NULL,
	[PreMonthLDate] [datetime] NULL,
	[PresentRtnNo] [int] NULL,
	[CurMonthFDate] [datetime] NULL,
	[LastRtnNo] [int] NULL,
	[PreMonthFDate] [datetime] NULL,
	[LastPTONo] [nvarchar](50) NULL,
	[LastPTODate] [datetime] NULL,
	[UnitName] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[ServingIn] [nvarchar](500) NULL,
	[Distribution] [nvarchar](100) NULL,
	[Authority] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_HR_TRN_3008Header] PRIMARY KEY CLUSTERED 
(
	[HID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Absence]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Absence](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[AbsenceType] [nvarchar](50) NOT NULL,
	[Date_Of_Absence] [datetime] NOT NULL,
	[Time_Of_Absence] [nvarchar](50) NULL,
	[Date_Of_Rejoining] [datetime] NOT NULL,
	[NoOfDay] [int] NOT NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_ACR]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_ACR](
	[PersACR_Id] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[ACRNature] [int] NULL,
	[ACRType] [int] NULL,
	[Unit] [nvarchar](50) NULL,
	[ACRInitiationDate] [datetime] NULL,
	[ACRReviewedDate] [datetime] NULL,
	[ACRForwardedDate] [datetime] NULL,
	[ACRYear] [int] NULL,
	[From_Date] [datetime] NULL,
	[To_Date] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_ACR_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_ACR_EntryFlag]  DEFAULT ((0)),
 CONSTRAINT [PK_HR_TRN_ACR] PRIMARY KEY CLUSTERED 
(
	[PersACR_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Address]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_Address](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[AddressType] [nvarchar](1) NOT NULL,
	[CustomAddress] [nvarchar](250) NULL,
	[HouseNoVillage] [nvarchar](50) NULL,
	[VillCityTown] [nvarchar](50) NULL,
	[Tehsil] [nvarchar](50) NULL,
	[PostOffice] [nvarchar](51) NULL,
	[Telegraph_Office] [nvarchar](50) NULL,
	[NMH] [nvarchar](50) NULL,
	[NRS] [nvarchar](50) NULL,
	[NRS_Distance] [int] NULL CONSTRAINT [DF_HR_TRN_Address_NRS_Distance]  DEFAULT ((0)),
	[DistrictId] [varchar](4) NULL,
	[StateId] [int] NULL,
	[PinCode] [nvarchar](12) NULL,
	[CountryId] [int] NULL,
	[TelephoneNo] [nvarchar](15) NULL,
	[Phone] [nvarchar](15) NULL,
	[NMS] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_Address_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_Address_EntryFlag]  DEFAULT ((0)),
	[AccType] [nvarchar](50) NULL,
	[tt] [nvarchar](30) NULL,
	[TelNoNOK] [nvarchar](20) NULL,
	[MobNoNok] [nvarchar](20) NULL,
	[EmailIndv] [nvarchar](100) NULL,
	[EmailNOk] [nvarchar](100) NULL,
	[PoliceStation] [nvarchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_APPOINTMENTS]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_APPOINTMENTS](
	[PersApp_Id] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Appointment_Id] [int] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[PersType] [nvarchar](50) NULL,
	[CurrentAppt] [int] NULL,
	[Unit_Name] [nvarchar](50) NULL,
	[Part2OrderNumber] [nvarchar](30) NULL,
	[Appt_Type] [nvarchar](1) NULL,
	[ActingAppointment] [int] NULL,
	[Place] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_APPOINTMENTS_IsActive]  DEFAULT ((1)),
	[History] [nvarchar](1) NOT NULL CONSTRAINT [DF_HR_TRN_APPOINTMENTS_History]  DEFAULT ('H'),
	[CurrentApptDesc] [nvarchar](50) NULL,
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_APPOINTMENTS_EntryFlag]  DEFAULT ((0)),
	[Area_FDPeace] [nvarchar](50) NULL,
 CONSTRAINT [PK_HR_TRN_APPOINTMENTS] PRIMARY KEY CLUSTERED 
(
	[PersApp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Appt]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Appt](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Rank_appt] [nvarchar](200) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_ArmyCourses]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_ArmyCourses](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [nvarchar](50) NOT NULL,
	[SchoolId] [nvarchar](400) NULL,
	[Grade] [nvarchar](20) NULL,
	[FromDt] [datetime] NOT NULL,
	[ToDt] [datetime] NULL,
	[InstructorGrading] [bit] NULL,
	[PTO] [nvarchar](20) NULL,
	[PTODate] [datetime] NULL,
	[TORS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[MOGenerated] [int] NULL,
	[CreatedBy] [nvarchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_ArmyCourses_IsActive]  DEFAULT ((1)),
	[TrngEstabId] [nvarchar](500) NULL,
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_ArmyCourses_EntryFlag]  DEFAULT ((0)),
	[CourseRemarks] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_ArmyPersDetails]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_ArmyPersDetails](
	[PersId] [int] IDENTITY(1,1) NOT NULL,
	[SUSNo] [nvarchar](15) NOT NULL,
	[PersonnelTypeId] [nvarchar](4) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[JCONO] [nvarchar](20) NULL,
	[PersonnelName] [nvarchar](250) NOT NULL,
	[TradeId] [nvarchar](6) NULL,
	[CorpsId] [nvarchar](8) NULL,
	[RecOffId] [decimal](2, 0) NULL,
	[AuthTypeId] [int] NULL,
	[EntryType] [int] NULL,
	[ArmServiceId] [int] NOT NULL,
	[FirstCommisionDate] [datetime] NULL,
	[CommId] [int] NULL,
	[CDAACNo] [nvarchar](25) NULL,
	[Class] [int] NULL,
	[Trade] [int] NULL,
	[Nextofkin] [int] NULL,
	[SubstantiveRankId] [int] NOT NULL,
	[SubstantiveRankDate] [datetime] NULL,
	[ActingRankId] [int] NULL,
	[ActingRankDate] [datetime] NULL,
	[ParentArmRank] [int] NULL,
	[SeniorityDate] [datetime] NULL,
	[Level2Id] [int] NOT NULL,
	[PersImgPath] [nvarchar](200) NULL,
	[PhotoPresent] [nvarchar](5) NULL,
	[AWLOSL] [nvarchar](5) NULL,
	[Detached] [nvarchar](5) NULL,
	[Exercise] [nvarchar](5) NULL,
	[OFFJCO] [nvarchar](5) NULL,
	[Sex] [nvarchar](5) NULL,
	[DOB] [datetime] NULL,
	[DistrictIdbirth] [nvarchar](5) NULL,
	[PlaceOfbirth] [nvarchar](60) NULL,
	[StateIdbirth] [numeric](2, 0) NULL,
	[CountryIdbirth] [int] NULL,
	[ReligionId] [int] NULL,
	[CasteStatus] [nvarchar](255) NULL,
	[OriginClassId] [nvarchar](15) NULL,
	[MotherTongue] [nvarchar](20) NULL,
	[DomicileDistrict] [nvarchar](20) NULL,
	[DomicileState] [numeric](2, 0) NULL,
	[DomicileCountry] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[NOKName] [nvarchar](250) NULL,
	[MaritalStatus] [int] NULL,
	[DateOfEnrolment] [datetime] NULL,
	[PresentWithUnit] [bit] NULL,
	[AECExam] [bit] NULL,
	[ACEExam] [bit] NULL,
	[MRExam] [bit] NULL,
	[FamilyPlanning] [bit] NULL,
	[CasualtyNoFamPlng] [int] NULL,
	[DoPart2famplnDate] [datetime] NULL,
	[DoPart2fampln] [nvarchar](50) NULL,
	[RegimentOrCorpsName] [nvarchar](100) NULL,
	[Paraded] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_Paraded]  DEFAULT ((0)),
	[Picture] [varbinary](max) NULL,
	[NOKAddressId] [int] NULL,
	[LastP2OrderNo] [nvarchar](35) NULL,
	[LastP2OrderDate] [datetime] NULL,
	[AuthAL] [smallint] NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_AuthAL]  DEFAULT ((60)),
	[AuthCL] [smallint] NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_AuthCL]  DEFAULT ((30)),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_IsActive]  DEFAULT ((1)),
	[AvailAL] [smallint] NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_AvailAL]  DEFAULT ((0)),
	[AvailCL] [smallint] NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_AvailCL]  DEFAULT ((0)),
	[AvailLeaveYear] [int] NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_AvailLeaveYear]  DEFAULT (datepart(year,getdate())),
	[AvailedLvUpdatedby] [nvarchar](50) NULL,
	[AvailedLvUpdatedDate] [datetime] NULL,
	[AuthFurloughLv] [smallint] NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_AuthFurloughLv]  DEFAULT ((60)),
	[AvailFurloughLv] [smallint] NULL,
	[AuthAAL] [smallint] NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_AuthAAL]  DEFAULT ((30)),
	[AvailAAL] [smallint] NULL,
	[MedCat] [nvarchar](30) NULL,
	[EntryFlag] [int] NULL CONSTRAINT [DF_HR_TRN_ArmyPersDetails_EntryFlag]  DEFAULT ((0)),
	[CurrentAppt] [int] NULL,
	[DesignID] [smallint] NULL,
	[BasicDetail] [nvarchar](10) NULL,
	[GradePay] [nvarchar](50) NULL,
	[PreviousOccupation] [nvarchar](100) NULL,
	[BorderArea] [nvarchar](100) NULL,
 CONSTRAINT [PK_HR_TRN_ArmyPersDetails_1] PRIMARY KEY CLUSTERED 
(
	[ArmyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_ArmyPersDetails3nov]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_ArmyPersDetails3nov](
	[SUSNo] [nvarchar](15) NULL,
	[PersonnelTypeId] [nvarchar](1) NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[JCONO] [nvarchar](12) NULL,
	[ParadedStatusId] [int] NULL,
	[PersonnelName] [nvarchar](100) NULL,
	[TradeId] [nvarchar](5) NULL,
	[CorpsId] [nvarchar](4) NULL,
	[RecOffId] [int] NULL,
	[AuthTypeId] [int] NULL,
	[EntryType] [int] NULL,
	[ArmServiceId] [int] NULL,
	[FirstCommisionDate] [datetime] NULL,
	[CommId] [int] NULL,
	[CDAACNo] [nvarchar](20) NULL,
	[Class] [int] NULL,
	[Trade] [int] NULL,
	[Nextofkin] [int] NULL,
	[SubstantiveRankId] [nvarchar](3) NOT NULL,
	[SubstantiveRankDate] [datetime] NULL,
	[ActingRankId] [nvarchar](3) NULL,
	[ActingRankDate] [datetime] NULL,
	[ParentArmRank] [int] NULL,
	[SeniorityDate] [datetime] NULL,
	[Level2Id] [int] NULL,
	[Level3Id] [int] NULL,
	[Level4Id] [int] NULL,
	[Level5Id] [int] NULL,
	[PersImgPath] [nvarchar](100) NULL,
	[PhotoPresent] [nvarchar](1) NULL,
	[AWLOSL] [nvarchar](1) NULL,
	[Detached] [nvarchar](1) NULL,
	[Exercise] [nvarchar](1) NULL,
	[OFFJCO] [nvarchar](1) NULL,
	[Sex] [nvarchar](1) NULL,
	[DOB] [datetime] NULL,
	[DistrictIdbirth] [nvarchar](4) NULL,
	[PlaceOfbirth] [nvarchar](50) NULL,
	[StateIdbirth] [numeric](2, 0) NULL,
	[CountryIdbirth] [int] NULL,
	[ReligionId] [int] NULL,
	[CasteStatus] [nvarchar](255) NULL,
	[OriginClassId] [int] NULL,
	[MotherTongue] [nvarchar](3) NULL,
	[DomicileDistrict] [nvarchar](4) NULL,
	[DomicileState] [numeric](2, 0) NULL,
	[DomicileCountry] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[NOKName] [nvarchar](100) NULL,
	[MaritalStatus] [int] NULL,
	[DateOfEnrolment] [datetime] NULL,
	[PresentWithUnit] [bit] NULL,
	[AECExam] [bit] NULL,
	[ACEExam] [bit] NULL,
	[MRExam] [bit] NULL,
	[FamilyPlanning] [bit] NULL,
	[CasualtyNoFamPlng] [int] NULL,
	[DoPart2famplnDate] [datetime] NULL,
	[DoPart2fampln] [nvarchar](20) NULL,
	[RegimentOrCorpsName] [nvarchar](50) NULL,
	[Paraded] [bit] NULL,
	[Picture] [varbinary](max) NULL,
	[NOKAddressId] [int] NULL,
	[LastP2OrderNo] [nvarchar](15) NULL,
	[LastP2OrderDate] [datetime] NULL,
	[AuthAL] [smallint] NULL,
	[AuthCL] [smallint] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[AvailAL] [smallint] NULL,
	[AvailCL] [smallint] NULL,
	[AuthFurloughLv] [smallint] NULL,
	[AvailFurloughLv] [smallint] NULL,
	[AuthAAL] [smallint] NULL,
	[AvailAAL] [smallint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_ArmyPersDetailsPostingOut]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_ArmyPersDetailsPostingOut](
	[PersId] [int] IDENTITY(1,1) NOT NULL,
	[SUSNo] [nvarchar](15) NOT NULL,
	[PersonnelTypeId] [nvarchar](4) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[JCONO] [nvarchar](20) NULL,
	[PersonnelName] [nvarchar](250) NOT NULL,
	[TradeId] [nvarchar](6) NULL,
	[CorpsId] [nvarchar](8) NULL,
	[RecOffId] [decimal](2, 0) NULL,
	[AuthTypeId] [int] NULL,
	[EntryType] [int] NULL,
	[ArmServiceId] [int] NOT NULL,
	[FirstCommisionDate] [datetime] NULL,
	[CommId] [int] NULL,
	[CDAACNo] [nvarchar](25) NULL,
	[Class] [int] NULL,
	[Trade] [int] NULL,
	[Nextofkin] [int] NULL,
	[SubstantiveRankId] [int] NOT NULL,
	[SubstantiveRankDate] [datetime] NULL,
	[ActingRankId] [int] NULL,
	[ActingRankDate] [datetime] NULL,
	[ParentArmRank] [int] NULL,
	[SeniorityDate] [datetime] NULL,
	[Level2Id] [int] NOT NULL,
	[PersImgPath] [nvarchar](200) NULL,
	[PhotoPresent] [nvarchar](5) NULL,
	[AWLOSL] [nvarchar](5) NULL,
	[Detached] [nvarchar](5) NULL,
	[Exercise] [nvarchar](5) NULL,
	[OFFJCO] [nvarchar](5) NULL,
	[Sex] [nvarchar](5) NULL,
	[DOB] [datetime] NULL,
	[DistrictIdbirth] [nvarchar](5) NULL,
	[PlaceOfbirth] [nvarchar](60) NULL,
	[StateIdbirth] [numeric](2, 0) NULL,
	[CountryIdbirth] [int] NULL,
	[ReligionId] [int] NULL,
	[CasteStatus] [nvarchar](255) NULL,
	[OriginClassId] [nvarchar](15) NULL,
	[MotherTongue] [nvarchar](20) NULL,
	[DomicileDistrict] [nvarchar](20) NULL,
	[DomicileState] [numeric](2, 0) NULL,
	[DomicileCountry] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[NOKName] [nvarchar](250) NULL,
	[MaritalStatus] [int] NULL,
	[DateOfEnrolment] [datetime] NULL,
	[PresentWithUnit] [bit] NULL,
	[AECExam] [bit] NULL,
	[ACEExam] [bit] NULL,
	[MRExam] [bit] NULL,
	[FamilyPlanning] [bit] NULL,
	[CasualtyNoFamPlng] [int] NULL,
	[DoPart2famplnDate] [datetime] NULL,
	[DoPart2fampln] [nvarchar](50) NULL,
	[RegimentOrCorpsName] [nvarchar](100) NULL,
	[Paraded] [bit] NOT NULL,
	[Picture] [varbinary](max) NULL,
	[NOKAddressId] [int] NULL,
	[LastP2OrderNo] [nvarchar](35) NULL,
	[LastP2OrderDate] [datetime] NULL,
	[AuthAL] [smallint] NULL,
	[AuthCL] [smallint] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[AvailAL] [smallint] NULL,
	[AvailCL] [smallint] NULL,
	[AvailLeaveYear] [int] NULL,
	[AvailedLvUpdatedby] [nvarchar](50) NULL,
	[AvailedLvUpdatedDate] [datetime] NULL,
	[AuthFurloughLv] [smallint] NULL,
	[AvailFurloughLv] [smallint] NULL,
	[AuthAAL] [smallint] NULL,
	[AvailAAL] [smallint] NULL,
	[MedCat] [nvarchar](30) NULL,
	[EntryFlag] [int] NULL,
	[CurrentAppt] [int] NULL,
	[DesignID] [smallint] NULL,
	[BasicDetail] [nvarchar](10) NULL,
	[GradePay] [nvarchar](50) NULL,
	[PreviousOccupation] [nvarchar](100) NULL,
	[BorderArea] [nvarchar](100) NULL,
	[SOS_SORS] [datetime] NULL,
	[StrOptionName] [nvarchar](70) NULL,
 CONSTRAINT [PK_HR_TRN_ArmyPersDetails_11] PRIMARY KEY CLUSTERED 
(
	[ArmyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_ArmyPersnlMedExam]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_ArmyPersnlMedExam](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[MedExamId] [int] IDENTITY(1,1) NOT NULL,
	[MedExamType] [nvarchar](20) NULL,
	[Location] [nvarchar](50) NULL,
	[DateOfApprove] [datetime] NOT NULL,
	[Category] [nvarchar](30) NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_AMEPMEExam_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_ArmyPersnlMedExam_EntryFlag]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Attestation]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Attestation](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Attested_Date] [datetime] NOT NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_AUT_CIVILIANS]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_AUT_CIVILIANS](
	[WEPEAuthId] [smallint] NULL,
	[AutGazettedEst] [int] NULL,
	[PostGazettedEst] [int] NULL,
	[AutNonGazettedNIEst] [int] NULL,
	[PostNonGazettedNIEst] [int] NULL,
	[AutNonGazettedIEst] [int] NULL,
	[PostNonGazettedIEst] [int] NULL,
	[AutGazettedCmbts] [int] NULL,
	[PostGazettedCmbts] [int] NULL,
	[AutNonGazettedNICmbts] [int] NULL,
	[PostNonGazettedNICmbts] [int] NULL,
	[AutNonGazettedICmbts] [int] NULL,
	[PostNonGazettedICmbts] [int] NULL,
	[AutNCsE] [int] NULL,
	[PostNCsE] [int] NULL,
	[AutCivonRegEst] [int] NULL,
	[PostCivOnRegEst] [int] NULL,
	[AutIndustrial] [int] NULL,
	[PostIndustrial] [int] NULL,
	[AutOthers] [int] NULL,
	[PostOthers] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_AUT_JCO]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_AUT_JCO](
	[AuthId] [smallint] NULL,
	[SUSNo] [nvarchar](20) NULL,
	[ArmServiceId] [smallint] NULL,
	[TradeId] [smallint] NULL,
	[NoOfNbSub] [int] NULL,
	[NoOfSub] [int] NULL,
	[NoOfSubMaj] [int] NULL,
	[NoOfNonSpecifiedJCO] [int] NULL,
	[NoOfJCO] [int] NULL,
	[RemarksJCO3009] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_AUT_Offrs]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_AUT_Offrs](
	[AuthId] [smallint] NULL,
	[SUSNo] [nvarchar](20) NULL,
	[ArmServiceId] [smallint] NULL,
	[NoOfLt] [int] NULL,
	[NoOfCapt] [int] NULL,
	[NoOfMaj] [int] NULL,
	[NoOfLtCol] [int] NULL,
	[NoOfCol] [int] NULL,
	[NoOfBrig] [int] NULL,
	[TotalOffrs] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_AUT_OR]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_AUT_OR](
	[AuthId] [smallint] NULL,
	[SUSNo] [nvarchar](20) NULL,
	[ArmServiceId] [smallint] NULL,
	[TradeId] [smallint] NULL,
	[NoOfNonSpec] [int] NULL,
	[NoOfSep] [int] NULL,
	[NoOfLnk] [int] NULL,
	[NoOfNK] [int] NULL,
	[NoOfLHAV] [int] NULL,
	[NoOfHAV] [int] NULL,
	[NoOfORs] [int] NULL,
	[RemarksOR3009] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_AUT_PE_WE]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_AUT_PE_WE](
	[AuthId] [smallint] NOT NULL,
	[SUSNo] [nvarchar](20) NOT NULL,
	[NoOfOfficers] [smallint] NULL,
	[NoOfMNS] [int] NULL,
	[NoOfANS] [int] NULL,
	[NoOfJCO] [int] NULL,
	[NoOfOR] [int] NULL,
	[NoOfCorpsRoster] [int] NULL,
	[NoOfHAV] [int] NULL,
	[NoOfNK] [int] NULL,
	[Remarks] [nvarchar](255) NULL,
	[TraineesOff] [int] NULL,
	[TraineesJCO] [int] NULL,
	[TraineesOR] [int] NULL,
	[Recruits] [int] NULL,
	[Cadets] [int] NULL,
	[Students] [int] NULL,
	[Transients] [int] NULL,
	[show3009NoOfOfficers] [bit] NOT NULL,
	[show3009NoOfNursing] [bit] NOT NULL,
	[show3009NoOfJCO] [bit] NOT NULL,
	[show3009NoOfHAVNKOR] [bit] NOT NULL,
	[show3009Recruits] [bit] NOT NULL,
	[show3009Cadets] [bit] NOT NULL,
	[show3009Students] [bit] NOT NULL,
	[show3009Transients] [bit] NOT NULL,
	[show3009TraineesOR] [bit] NOT NULL,
	[show3009TraineesJCO] [bit] NOT NULL,
	[show3009TraineesOff] [bit] NOT NULL,
	[TotalOR] [int] NULL,
	[show3009Total_OR] [bit] NOT NULL,
	[show3009JCOCorpsRoster] [bit] NOT NULL,
	[NCSE] [int] NULL,
	[show3009NCSE] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_AuthorizedAppt]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_AuthorizedAppt](
	[Id] [int] NOT NULL,
	[Seniority] [int] NULL,
	[AppointmentId] [int] NULL,
	[AuthorizedRankId] [int] NULL,
	[AuthorizedNos] [int] NULL,
	[PersonnelTypeId] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_BankDetail]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_BankDetail](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[BankAccType] [nvarchar](25) NULL,
	[BankAccNo] [nvarchar](25) NULL,
	[BankersName] [nvarchar](25) NULL,
	[BankersCode] [nvarchar](25) NULL,
	[NatureOfAccount] [nvarchar](50) NULL,
	[ParmanentAccNo] [nvarchar](25) NULL,
	[PlaceLocated] [nvarchar](100) NULL,
	[JointAcctHolderId] [int] NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[MICRNo] [int] NULL CONSTRAINT [DF_HR_TRN_BankDetail_MICRNo]  DEFAULT ((0)),
	[IFSCNo] [nvarchar](20) NULL CONSTRAINT [DF_HR_TRN_BankDetail_IFSCNo]  DEFAULT ((0)),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_BankDetail_IsActive]  DEFAULT ((1)),
	[District] [nvarchar](4) NULL,
	[State] [numeric](5, 2) NULL,
	[Country] [int] NULL,
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_BankDetail_EntryFlag]  DEFAULT ((0)),
	[PinCode] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Cadres]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Cadres](
	[CadreCode] [int] IDENTITY(1,1) NOT NULL,
	[CadreName] [nvarchar](255) NULL,
	[CadreAbbrv] [nvarchar](255) NULL,
	[QualReqd] [nvarchar](255) NULL,
	[Institute] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_TRN_Cadres] PRIMARY KEY CLUSTERED 
(
	[CadreCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_CadreTrngEstab]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_CadreTrngEstab](
	[Cadre_Id] [int] NULL,
	[Trng_Estab_Id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_CIVILQUAL]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_CIVILQUAL](
	[PersCivilQualId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[CivilQualId] [nvarchar](5) NULL,
	[Institute] [nvarchar](500) NULL,
	[CivilQual_Year] [int] NULL,
	[DivOrClass] [nvarchar](50) NULL,
	[QualType] [int] NULL,
	[AECExam] [bit] NULL,
	[ACEExam] [bit] NULL,
	[MRExam] [bit] NULL,
	[schoolcd] [nvarchar](4) NULL,
	[Profession] [nvarchar](250) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_CIVILQUAL_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_CIVILQUAL_EntryFlag]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_CommissionOffrs]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_CommissionOffrs](
	[ArmyNo] [nvarchar](15) NULL,
	[CommId] [int] NULL,
	[TrngEstabId] [int] NULL,
	[CommCourseNo] [nvarchar](20) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CommDate] [datetime] NULL,
	[GazNotificationDate] [datetime] NULL,
	[PrevOccupation] [nvarchar](100) NULL,
	[GazNotificationNo] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Course_Cadre]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Course_Cadre](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[CadreDtl] [nvarchar](50) NOT NULL,
	[Event_Date] [datetime] NOT NULL,
	[Unit] [nvarchar](70) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Grading] [nvarchar](50) NULL,
	[CadreDoneAt] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_CourseLetterDetails]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_CourseLetterDetails](
	[SerialID] [int] IDENTITY(1,1) NOT NULL,
	[CatId] [int] NULL,
	[CadOrCapCode] [nvarchar](10) NULL,
	[SerialNo] [nvarchar](10) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Vacancies] [int] NULL,
	[DetLetterNo] [nvarchar](20) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsFinal] [bit] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Courses]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_Courses](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[CourseId] [nvarchar](3) NOT NULL,
	[TrngEstabId] [int] NULL,
	[Grade] [nvarchar](2000) NULL,
	[FromDate] [datetime] NULL,
	[CourseStartDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[InstructorGrading] [bit] NULL,
	[TORS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[Purpose] [nvarchar](50) NULL,
	[Remark] [nvarchar](100) NULL,
	[MOGeneratedFlag] [bit] NULL CONSTRAINT [DF_HR_TRN_Courses_MOGeneratedFlag]  DEFAULT ((0)),
	[MONo] [int] NULL,
	[OrderlyNCOFlag] [smallint] NULL CONSTRAINT [DF_HR_TRN_Courses_OrderlyNCOFlag]  DEFAULT ((0)),
	[PTONo] [nvarchar](20) NULL,
	[PTODate] [datetime] NULL,
	[History] [nvarchar](1) NULL CONSTRAINT [DF_HR_TRN_Courses_History]  DEFAULT (N'C'),
	[DepTime] [varchar](2) NULL,
	[WtDtlId] [int] NULL,
	[CreatedBy] [nvarchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_Courses_IsActive]  DEFAULT ((1)),
	[Parade_date] [datetime] NULL DEFAULT (NULL)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_Decoration]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Decoration](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Comman_Date] [datetime] NOT NULL,
	[Comman_Name] [nvarchar](50) NOT NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_DischargeOrder]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_DischargeOrder](
	[DischargeOrderId] [int] IDENTITY(1,1) NOT NULL,
	[Army_No] [nvarchar](15) NOT NULL,
	[Discharge_ord_no] [nvarchar](100) NULL,
	[Discharge_ord_dt] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_HR_TRN_DischargeOrder] PRIMARY KEY CLUSTERED 
(
	[DischargeOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_DuesInPersonnel]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_DuesInPersonnel](
	[SusNo] [nvarchar](20) NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[JCNo] [nvarchar](15) NULL,
	[PostingOrderNo] [nvarchar](20) NULL,
	[PostingOrderDate] [datetime] NULL,
	[IssueAuthority] [nvarchar](100) NULL,
	[PreviousUnit] [nvarchar](100) NULL,
	[Duedate] [datetime] NULL,
	[Paraded] [bit] NULL,
	[Name] [nvarchar](100) NOT NULL,
	[AuthTypeId] [int] NULL,
	[RecOffId] [decimal](2, 0) NULL,
	[FirstCommisionDate] [datetime] NULL,
	[SeniorityDate] [datetime] NULL,
	[TradeId] [nvarchar](5) NULL,
	[ArmserviceId] [int] NOT NULL,
	[PersonTypeId] [nvarchar](1) NULL,
	[RankId] [nvarchar](10) NOT NULL,
	[ApptId] [int] NULL,
	[RelieverPersNo] [nvarchar](50) NULL,
	[RelieverName] [nvarchar](50) NULL,
	[RelieverRankId] [nvarchar](3) NULL,
	[RelieverArmServiceId] [int] NULL,
	[RelieverUnitName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[MORecieved] [bit] NULL,
	[ImportedonDateTime] [datetime] NULL,
	[TypeOfPosting] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[StrnInc] [bit] NULL,
	[ReprtingType_code] [int] NULL,
 CONSTRAINT [PK_HR_TRN_DuesInPersonnel] PRIMARY KEY CLUSTERED 
(
	[ArmyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_DuesOutPersonnel]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_DuesOutPersonnel](
	[SUSNo] [nvarchar](15) NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[PostingOrderNo] [nvarchar](20) NULL,
	[PostingOrderDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Authority] [nvarchar](100) NULL,
	[SOS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[PostedToUnit] [nvarchar](50) NULL,
	[PostedFromUnit] [nvarchar](50) NULL,
	[RelieverPersonnelNo] [nvarchar](12) NULL,
	[PersonTypeId] [nvarchar](1) NOT NULL,
	[Paraded] [int] NULL CONSTRAINT [DF_HR_TRN_DuesOutPersonnel_Paraded]  DEFAULT ((0)),
	[Remarks] [nvarchar](100) NULL,
	[MOGeneratedFlag] [bit] NULL CONSTRAINT [DF_HR_TRN_DuesOutPersonnel_MOGeneratedFlag]  DEFAULT ((0)),
	[MONo] [int] NULL,
	[ImportedOnDateTime] [datetime] NULL,
	[RelieverName] [nvarchar](50) NULL,
	[RelieverUnitName] [nvarchar](50) NULL,
	[DateOfReporting] [datetime] NULL,
	[NRS] [nvarchar](50) NULL,
	[trade_cd] [nvarchar](5) NULL,
	[rank_cd] [nvarchar](3) NULL,
	[WtDtlId] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_DuesOutPersonnel_IsActive]  DEFAULT ((1)),
	[OrderlyNCOFlag] [bit] NULL CONSTRAINT [DF_HR_TRN_DuesOutPersonnel_OrderlyNCOFlag]  DEFAULT ((0)),
	[TypeOfPosting] [nvarchar](50) NULL,
	[UniqueId] [int] IDENTITY(1,1) NOT NULL,
	[ReliverArmyNo] [nvarchar](15) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_ERE]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_ERE](
	[SUSNo] [nvarchar](15) NULL,
	[UniqueId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[EREOrderNo] [nvarchar](20) NULL,
	[IssDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Authority] [nvarchar](50) NULL,
	[SOS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[TOS] [datetime] NULL,
	[TORS] [datetime] NULL,
	[DestinationUnit] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[RelieverPersonnelNo] [nvarchar](12) NULL,
	[PersType] [nvarchar](1) NULL,
	[StrIncDecID] [int] NULL,
	[Purpose] [nchar](100) NULL,
	[FromRemarks] [nvarchar](100) NULL,
	[Remarks] [nvarchar](100) NULL,
	[TypeOfERE] [nvarchar](12) NULL,
	[RelieverArmyNo] [nvarchar](12) NULL,
	[PostedFromUnit] [nvarchar](50) NULL,
	[DateOfReporting] [datetime] NULL,
	[MOGeneratedFlag] [bit] NULL,
	[MONo] [int] NULL,
	[OrderlyNCOFlag] [smallint] NULL,
	[History] [nchar](1) NOT NULL,
	[DepTime] [varchar](2) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Parade_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_Family]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Family](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [smallint] NOT NULL,
	[NOK] [bit] NULL CONSTRAINT [DF_HR_TRN_Family_NOK]  DEFAULT ((0)),
	[ArmyNo] [nvarchar](15) NOT NULL,
	[MemberName] [nvarchar](70) NOT NULL,
	[RelationCd] [nvarchar](2) NOT NULL,
	[EventDate] [datetime] NOT NULL,
	[DOB] [datetime] NULL,
	[BirthPlace] [nvarchar](50) NULL,
	[Sex] [nvarchar](10) NULL,
	[AddressTypeId] [nvarchar](50) NULL,
	[Dependent] [bit] NULL,
	[DomicileState] [int] NULL,
	[DomicileCity] [nvarchar](50) NULL,
	[DomicileDistrict] [int] NULL,
	[Marriagerites] [nvarchar](50) NULL,
	[MarriagePlace] [nvarchar](50) NULL,
	[SpouseFatherName] [nvarchar](50) NULL,
	[SpouseMotherName] [nvarchar](50) NULL,
	[SustanenceAllowance] [int] NULL,
	[DemiseDt] [datetime] NULL,
	[DemisePtoNo] [nvarchar](20) NULL,
	[DemisePtoDate] [datetime] NULL,
	[DivorceDt] [datetime] NULL,
	[DivorcePtoNo] [nvarchar](20) NULL,
	[DivorcePtoDate] [datetime] NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [bit] NULL CONSTRAINT [DF_HR_TRN_Family_Remarks]  DEFAULT ((0)),
	[CreatedBy] [nvarchar](16) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_Family_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_Family_EntryFlag]  DEFAULT ((0)),
 CONSTRAINT [PK_HR_TRN_Family_MemberId] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_Trn_Family_Pensioner]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_Trn_Family_Pensioner](
	[Mem_ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[MemberName] [varchar](70) NULL,
	[Relation_Desc] [varchar](70) NULL,
	[ArmyNo] [nvarchar](50) NULL,
	[DOB] [nvarchar](50) NULL,
	[MaritalStatus] [varchar](50) NULL,
	[Mem_Handicap] [varchar](50) NULL,
	[Mem_Remarks] [varchar](250) NULL,
	[Page_no] [varchar](50) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[EmailId] [nvarchar](100) NULL,
	[AadharNo] [nvarchar](50) NULL,
	[PanNo] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_FieldService]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_FieldService](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Event_Date] [datetime] NOT NULL,
	[Entered_Left] [nvarchar](20) NOT NULL,
	[Oper_Theatre] [nvarchar](30) NULL,
	[Area_Type] [nvarchar](30) NOT NULL,
	[Country] [nvarchar](20) NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_FOREIGNVISIT]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_FOREIGNVISIT](
	[PersForVisit_Id] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Country_Id] [int] NULL,
	[AssignmentPurpose_Id] [int] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_TRN_FOREIGNVISIT] PRIMARY KEY CLUSTERED 
(
	[PersForVisit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_FORMERSERVICE]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_FORMERSERVICE](
	[PersFormerSrv_Id] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[OldPersonnel_No] [nvarchar](20) NULL,
	[Rank_Id] [int] NULL,
	[ArmsServices_Id] [int] NULL,
	[PayDrawalAuthority] [nvarchar](50) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[CasualtyId] [int] NULL,
	[Part2OrderNo] [nvarchar](30) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[EntryFlag] [int] NOT NULL,
 CONSTRAINT [PK_HR_TRN_FORMERSERVICE] PRIMARY KEY CLUSTERED 
(
	[PersFormerSrv_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_FundPolicy]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_FundPolicy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FundPolicyId] [nvarchar](20) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[MemberId] [int] NULL CONSTRAINT [DF_HR_TRN_FundPolicy_MemberId]  DEFAULT ((0)),
	[ExecutionDate] [datetime] NULL CONSTRAINT [DF_HR_TRN_FundPolicy_ExecutionDate]  DEFAULT ((0)),
	[Auth] [nvarchar](20) NULL,
	[WillRegnNo] [nvarchar](20) NULL,
	[PolicyNo] [nvarchar](15) NULL,
	[PolicySumInsured] [int] NULL,
	[PolicyPaymentMode] [nvarchar](12) NULL,
	[PercentageNomination] [smallint] NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_FundPolicy_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_FundPolicy_EntryFlag]  DEFAULT ((0)),
	[LoanType_ID] [int] NULL CONSTRAINT [DF_HR_TRN_FundPolicy_LoanType_ID]  DEFAULT ((0)),
	[LoanFromWhomtaken_ID] [int] NULL CONSTRAINT [DF_HR_TRN_FundPolicy_LoanFromWhomtaken_ID]  DEFAULT ((0)),
	[AmountTaken] [int] NULL CONSTRAINT [DF_HR_TRN_FundPolicy_AmountTaken]  DEFAULT ((0)),
	[LoanDateRelease] [datetime] NULL,
	[EMI] [int] NULL CONSTRAINT [DF_HR_TRN_FundPolicy_EMI]  DEFAULT ((0)),
 CONSTRAINT [PK_HR_TRN_FundPolicy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_GSPay]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_GSPay](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[GSPayRate] [int] NOT NULL,
	[GS_Pay_Dt] [datetime] NOT NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Hospital]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Hospital](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[HospName] [nvarchar](100) NULL,
	[Diagnosis] [nvarchar](255) NULL,
	[AdmissionDate] [datetime] NOT NULL,
	[DischargeDate] [datetime] NULL,
	[Remarks] [nvarchar](100) NULL,
	[TORS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[OrderlyNCOFlag] [smallint] NULL CONSTRAINT [DF_HR_TRN_Hospital_OrderlyNCOFlag]  DEFAULT ((0)),
	[PTONo] [nvarchar](20) NULL,
	[PTODate] [datetime] NULL,
	[History] [nvarchar](1) NOT NULL CONSTRAINT [DF_HR_TRN_Hospital_History]  DEFAULT (N'C'),
	[Inserted By] [nvarchar](1) NOT NULL CONSTRAINT [DF_HR_TRN_Hospital_Inserted By]  DEFAULT (N'P'),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_Hospital_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_Hospital_EntryFlag]  DEFAULT ((0)),
	[HospId] [int] IDENTITY(1,1) NOT NULL,
	[DepartureTime] [nvarchar](4) NULL,
	[ReliverArmyNo] [nvarchar](15) NULL,
	[Parade_date] [datetime] NULL DEFAULT (NULL)
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Identity_Details]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Identity_Details](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[IdMark1] [nvarchar](500) NULL,
	[IdMark2] [nvarchar](500) NULL,
	[CountryId] [int] NULL,
	[ICardAuth] [nvarchar](50) NULL,
	[ICardNo] [nvarchar](15) NULL,
	[ICardIssueDate] [datetime] NULL,
	[BloodGroupId] [int] NULL,
	[Sex] [nvarchar](1) NULL,
	[Blooddonor] [bit] NULL,
	[BlooddonationDate] [datetime] NULL,
	[HairColour] [nvarchar](15) NULL,
	[Height] [nvarchar](10) NULL,
	[EyeColour] [nvarchar](15) NULL,
	[Place] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_Identity_Details_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_Identity_Details_EntryFlag]  DEFAULT ((0)),
	[AdharId] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Injuries]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Injuries](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Event_Date] [datetime] NOT NULL,
	[Attr_NoAttribute] [nvarchar](50) NULL,
	[Peace_Field] [nvarchar](50) NOT NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_InstituteConductingCourse]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_InstituteConductingCourse](
	[SerialId] [int] NOT NULL,
	[InstituteId] [int] NOT NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_IntakeDetails]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_IntakeDetails](
	[PersIntakeId] [int] NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[EnrolledTradeId] [varchar](5) NULL,
	[TermsOfEngagement] [nvarchar](10) NULL,
	[EnrolledAs] [nvarchar](50) NULL,
	[BelongingBorderArea] [bit] NOT NULL,
	[BroIroName] [nvarchar](50) NULL,
	[TrainingCourseNo] [nvarchar](50) NULL,
	[DOE] [datetime] NULL,
	[DOA] [datetime] NULL,
	[SpecialQual] [nvarchar](50) NULL,
	[MaintenancePAO] [nvarchar](50) NULL,
	[UnitName] [nvarchar](50) NULL,
	[StayingWithFamily] [bit] NOT NULL,
	[CasualtyId] [int] NULL,
	[Part2OrderNo] [nvarchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_IntraUnitMove]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_IntraUnitMove](
	[UniqueId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[PODateorFromDt] [datetime] NULL,
	[IssDateorToDt] [datetime] NULL,
	[HierarchyIDTo] [int] NULL,
	[SORS] [datetime] NULL,
	[MOGeneratedFlag] [bit] NULL CONSTRAINT [DF_HR_TRN_IntraUnitMove_MOGeneratedFlag]  DEFAULT ((0)),
	[MONo] [int] NULL,
	[MOrequired] [tinyint] NULL,
	[Remarks] [nvarchar](100) NULL,
	[History] [nvarchar](1) NULL CONSTRAINT [DF_HR_TRN_IntraUnit_History]  DEFAULT (N'C'),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_IntraUnit_IsActive]  DEFAULT ((1)),
	[Inter_Id] [int] NULL,
	[OrderlyNCOFlag] [smallint] NULL CONSTRAINT [DF_HR_TRN_IntraUnitMove_OrderlyNCOFlag]  DEFAULT ((0)),
	[DepartureTime] [nvarchar](4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Languages]    Script Date: 27-07-2022 10:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Languages](
	[ArmyNo] [nvarchar](15) NULL,
	[LangNo] [int] IDENTITY(1,1) NOT NULL,
	[LangId] [nvarchar](3) NULL,
	[LangNameId] [int] NULL,
	[Reads] [bit] NULL,
	[Write] [bit] NULL,
	[Speak] [bit] NULL,
	[LangType] [tinyint] NULL,
	[ExamPassed] [nvarchar](50) NULL,
	[ExamPassedDate] [datetime] NULL,
	[ForeignLangName] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_Languages_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_Languages_EntryFlag]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LeaveAccumulation]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LeaveAccumulation](
	[SUSNo] [nvarchar](15) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[LAYear] [int] NOT NULL,
	[DaysAccumulated] [int] NULL,
	[TotalDaysAccumulated] [int] NULL,
	[PtoDate] [datetime] NULL,
	[P2OrderNo] [nvarchar](30) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LeaveApplication]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_LeaveApplication](
	[LvCertiId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[LeaveTypeId] [int] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[SuffixDays] [int] NULL,
	[PrefixDays] [int] NULL,
	[TotalLeaveDays] [int] NULL,
	[TimeOfDeparture] [int] NULL,
	[TimeOfArrival] [int] NULL,
	[DepDt] [datetime] NULL,
	[ArrivalDt] [datetime] NULL,
	[BasicPay] [nvarchar](100) NULL,
	[LeaveReason] [nvarchar](200) NULL,
	[PersonnelTypeId] [nvarchar](1) NULL,
	[StatusId] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_LeaveApplication_StatusId]  DEFAULT ((0)),
	[LeaveYear] [int] NULL,
	[ContactNo] [nvarchar](12) NULL,
	[NMS] [nvarchar](30) NULL,
	[SignatoryId] [nvarchar](12) NULL,
	[PaidUpto] [nvarchar](15) NULL,
	[LvCertiStatus] [nvarchar](1) NULL CONSTRAINT [DF__HR_TRN_Le__LvCer__4AB8E647]  DEFAULT ('N'),
	[FromDNo] [nvarchar](30) NULL,
	[TORS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[OrderlyNCOFlag] [int] NULL CONSTRAINT [DF_HR_TRN_LeaveApplication_OrderlyNCOFlag]  DEFAULT ((0)),
	[Remark14] [nvarchar](max) NULL,
	[Remark15] [nvarchar](max) NULL,
	[TransitCamp] [bit] NULL CONSTRAINT [DF_HR_TRN_LeaveApplication_TransitCamp]  DEFAULT ((0)),
	[TransitCampDays] [int] NULL,
	[OSL] [bit] NULL CONSTRAINT [DF_HR_TRN_LeaveApplication_OSL]  DEFAULT ((0)),
	[PTONo] [nvarchar](15) NULL,
	[PTODate] [datetime] NULL,
	[History] [varchar](1) NOT NULL CONSTRAINT [DF_HR_TRN_LeaveApplication_History]  DEFAULT ('C'),
	[WtDtlId] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_LeaveApplication_IsActive]  DEFAULT ((1)),
	[TJRA] [int] NULL,
	[MobNo] [nvarchar](12) NULL,
	[LeaveAdd] [nvarchar](100) NULL,
	[NoofDays] [smallint] NULL,
	[RoutingStatus] [numeric](18, 2) NULL CONSTRAINT [DF_HR_TRN_LeaveApplication_RoutingStatus]  DEFAULT ((1.00)),
	[PendingatAuthId] [smallint] NULL CONSTRAINT [DF_HR_TRN_LeaveApplication_PendingatAuthId]  DEFAULT ((2)),
	[NoOfRemainingOff] [int] NULL,
	[Rlywrt] [int] NULL,
	[FromStn] [nvarchar](200) NULL,
	[ToStn] [nvarchar](200) NULL,
	[RlywrtType] [nvarchar](10) NULL,
	[WrtBack] [bit] NULL,
	[PermanentAdd] [nvarchar](10) NULL,
	[ReliverArmyNo] [nvarchar](15) NULL,
	[FileNo] [nvarchar](50) NULL,
	[Parade_date] [datetime] NULL DEFAULT (NULL)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_LeaveConfiguration]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LeaveConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Certi1] [nvarchar](100) NULL,
	[Certi2] [nvarchar](100) NULL,
	[Certi3] [nvarchar](100) NULL,
	[Certi4] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LeavePlan]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LeavePlan](
	[SUSNo] [nvarchar](15) NULL,
	[PersonnelNo] [nvarchar](12) NULL,
	[FromDay1] [int] NULL,
	[Month1] [nvarchar](4) NULL,
	[NoOfDays1] [int] NULL,
	[FromDay2] [int] NULL,
	[Month2] [nvarchar](4) NULL,
	[NoOfDays2] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Remarks] [nvarchar](500) NULL,
	[Status] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LeavePlan_HR]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LeavePlan_HR](
	[LvePlanID] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[FromDt] [datetime] NULL,
	[ToDt] [datetime] NULL,
	[AuthAL] [int] NULL,
	[LveYr] [int] NULL,
	[PlannedAL] [int] NULL,
	[Encash] [int] NULL,
	[Days] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_LeavePlan_User_IsActive]  DEFAULT ((1)),
	[StatusId] [int] NULL CONSTRAINT [DF_HR_TRN_LeavePlan_HR_StatusId]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LeaveRouting]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LeaveRouting](
	[LeaveRoutingId] [int] IDENTITY(1,1) NOT NULL,
	[RoutingType] [nvarchar](15) NOT NULL CONSTRAINT [DF_HR_TRN_LeaveRouting_RoutingType]  DEFAULT (N'Leave'),
	[LveAppId] [int] NULL,
	[AuthArmyNo] [nvarchar](15) NULL,
	[Authid] [int] NULL,
	[LevelID] [numeric](18, 2) NULL,
	[DateTimeStamp] [datetime] NULL,
	[Remarks] [nvarchar](200) NULL,
	[Status] [bit] NULL CONSTRAINT [DF_HR_TRN_LeaveRouting_Status]  DEFAULT (NULL),
	[ApptID] [int] NULL,
 CONSTRAINT [PK_HR_TRN_LeaveRouting] PRIMARY KEY CLUSTERED 
(
	[LeaveRoutingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LICPolicy]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LICPolicy](
	[LICId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[PolicyNo] [nvarchar](15) NOT NULL,
	[MemberId] [int] NULL,
	[MaturityDate] [datetime] NULL,
	[DateTaken] [datetime] NULL,
	[SumInsured] [int] NULL,
	[Nominee] [nvarchar](10) NULL,
	[PaymentMode] [nvarchar](12) NULL,
	[Instalment_Premium] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LvCertiRlyWrt]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LvCertiRlyWrt](
	[RlyWrtId] [int] IDENTITY(1,1) NOT NULL,
	[LvCertiId] [int] NOT NULL,
	[FromStn] [nvarchar](50) NOT NULL,
	[ToStn] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[RlyWrtType] [nvarchar](1) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[WrtNo] [nvarchar](50) NULL,
	[IssueDt] [datetime] NULL,
 CONSTRAINT [PK__HR_TRN_L__71BF9040525A080F] PRIMARY KEY CLUSTERED 
(
	[RlyWrtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LveDtl]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LveDtl](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Lve_Desc] [nvarchar](20) NOT NULL,
	[Year] [int] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[SRA] [int] NULL,
	[NRA] [int] NULL,
	[TotalDays] [int] NOT NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_LveEncash]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_LveEncash](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Year] [int] NOT NULL,
	[NoOfDay] [int] NOT NULL,
	[TotLveAcc] [int] NOT NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_MACP]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_MACP](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[ACP_MACP_Rate] [nvarchar](50) NOT NULL,
	[ACP_MACP_Date] [datetime] NOT NULL,
	[ACP_MACP_Grade] [nvarchar](50) NOT NULL,
	[Curr_Promotion_Date] [datetime] NULL,
	[Entry_Grade] [nvarchar](50) NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_MedalsandDecorations]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_MedalsandDecorations](
	[PersMDId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[medalcd] [nvarchar](3) NULL,
	[UnitWhereAwarded] [nvarchar](50) NULL,
	[CasualtyId] [int] NULL,
	[PtoDate] [datetime] NULL,
	[Part2OrderNo] [nvarchar](40) NULL,
	[Authority] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](16) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_MedalsandDecorations_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_MedalsandDecorations_EntryFlag]  DEFAULT ((0)),
	[AwdedDt] [datetime] NULL,
 CONSTRAINT [PK_HR_TRN_MedalsandDecorations] PRIMARY KEY CLUSTERED 
(
	[PersMDId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_MedCatDetails]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_MedCatDetails](
	[ArmyNo] [nvarchar](15) NULL,
	[MedCatId] [int] IDENTITY(1,1) NOT NULL,
	[MedCatType] [nvarchar](20) NULL,
	[HospName] [nvarchar](100) NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[ReviewDueDate] [datetime] NULL,
	[Disorder] [nvarchar](20) NULL,
	[Diagnosis1] [nvarchar](255) NULL,
	[Diagnosis2] [nvarchar](255) NULL,
	[Diagnosis3] [nvarchar](255) NULL,
	[Attributable] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[OrderlyNCOFlag] [smallint] NULL CONSTRAINT [DF_HR_TRN_MedCatDetails_OrderlyNCOFlag]  DEFAULT ((0)),
	[PTONo] [nvarchar](20) NULL,
	[PTODate] [datetime] NULL,
	[History] [nvarchar](1) NOT NULL CONSTRAINT [DF_HR_TRN_MedCatDetails_History]  DEFAULT (N'H'),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_MedCatDetails_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_MedCatDetails_EntryFlag]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Missing]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Missing](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Event_Date] [datetime] NOT NULL,
	[Rank] [nvarchar](20) NULL,
	[Nature_Of_Occurance] [nvarchar](50) NOT NULL,
	[Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_MovementOrder]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_MovementOrder](
	[ArmyNo] [nvarchar](15) NULL,
	[MONo] [int] IDENTITY(1,1) NOT NULL,
	[FileNo] [nvarchar](50) NULL,
	[Attachphoto] [bit] NULL,
	[DestinationUnit] [nvarchar](50) NULL,
	[DepartureDate] [datetime] NULL,
	[DepartureTime] [char](2) NULL,
	[SOS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[Authority] [nvarchar](150) NULL,
	[Route] [nvarchar](10) NULL,
	[ArmsDetail] [nvarchar](50) NULL,
	[ArmsRegdNo] [varchar](50) NULL,
	[AddressId] [int] NULL,
	[Distribution] [varchar](50) NULL,
	[CustomFields] [varchar](50) NULL,
	[LeaveTypeId] [int] NULL,
	[Days] [int] NULL,
	[ALAvail] [int] NULL,
	[CLAvail] [int] NULL,
	[ParaIds] [nvarchar](30) NULL,
	[StrIncDecId] [int] NULL,
	[MOStatus] [nvarchar](1) NULL,
	[MOTemplate] [nvarchar](1) NULL,
	[LeaveDetailId] [int] NULL,
	[CILQ] [varchar](20) NULL,
	[CEA] [varchar](20) NULL,
	[NRS] [nvarchar](100) NULL,
	[LeaveEncashment] [nvarchar](20) NULL,
	[FormD] [nvarchar](20) NULL,
	[BasicPay] [int] NULL,
	[ACR] [datetime] NULL,
	[WarrentNo1] [nvarchar](15) NULL,
	[From1] [nvarchar](50) NULL,
	[To1] [nvarchar](150) NULL,
	[WarrentNo2] [nvarchar](15) NULL,
	[From2] [nvarchar](50) NULL,
	[To2] [nvarchar](50) NULL,
	[WrtSerNo] [nvarchar](20) NULL,
	[WrtIssueDate] [datetime] NULL,
	[MODate] [datetime] NULL,
	[JoiningTime] [int] NULL,
	[Conveyance] [nvarchar](10) NULL,
	[MOType] [nvarchar](50) NULL,
	[IsPartyMO] [nvarchar](1) NOT NULL,
	[AndBack] [bit] NULL CONSTRAINT [DF_HR_TRN_MovementOrder_AndBack]  DEFAULT ((0)),
	[Foroffr] [nvarchar](20) NULL,
	[Course] [nvarchar](100) NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_MovementOrder_IsActive]  DEFAULT ((1))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_MovementOrderParty]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_MovementOrderParty](
	[MONo] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[LeaveTypeId] [int] NULL,
	[Days] [int] NULL,
	[ArmsDetails] [nvarchar](150) NULL,
	[ArmsRegdNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_NominatedPers]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_NominatedPers](
	[SerialID] [int] NULL,
	[DetailedArmyNo] [nvarchar](12) NULL,
	[ReservedArmyNo] [nvarchar](12) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_OFFENCE]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_OFFENCE](
	[PersOffence_Id] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[OffenceName] [nvarchar](100) NULL,
	[OffenceDate] [datetime] NULL,
	[UnitName] [nvarchar](50) NULL,
	[Level2_Id] [int] NULL,
	[Level3_Id] [int] NULL,
	[Level4_Id] [int] NULL,
	[Level5_Id] [int] NULL,
	[CasualtyId] [int] NULL,
	[Offence_Place] [nvarchar](100) NULL,
	[Offence_AA] [nvarchar](100) NULL,
	[Punishment_Awarded] [nvarchar](100) NULL,
	[Awarded_Date] [datetime] NULL,
	[Awarded_By] [nvarchar](100) NULL,
	[Confirmation_Date] [datetime] NULL,
	[Part2No] [nvarchar](50) NULL,
	[Part2Date] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_OFFENCE_IsActive]  DEFAULT ((1)),
	[InkType] [int] NOT NULL CONSTRAINT [DF_HR_TRN_OFFENCE_InkType]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_OFFENCE_EntryFlag]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_OtherPersonnel]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_OtherPersonnel](
	[PersonnelNo] [nvarchar](12) NULL,
	[Name] [nvarchar](100) NULL,
	[AuthTypeId] [int] NOT NULL,
	[RankId] [int] NULL,
	[TradeId] [int] NULL,
	[ArmServiceId] [int] NULL,
	[SubunitId] [int] NULL,
	[PersonTypeId] [int] NULL,
	[ReasonForAttachment] [nvarchar](255) NULL,
	[Present] [bit] NOT NULL,
	[IssueAuthority] [nvarchar](100) NULL,
	[AuthorityLetterNo] [nvarchar](100) NULL,
	[AuthorityDate] [datetime] NULL,
	[Remarks] [nvarchar](100) NULL,
	[TORS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[SISDOptionId] [int] NULL,
	[Paraded] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Parade_State]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_Parade_State](
	[SusNo] [nvarchar](15) NOT NULL,
	[ParadeDate] [datetime] NOT NULL,
	[HierarchyId] [int] NOT NULL,
	[PersType] [varchar](1) NOT NULL,
	[Auth] [int] NULL,
	[Posted] [int] NULL,
	[Att] [int] NULL,
	[Total] [int] NULL,
	[AL] [int] NULL,
	[OL] [int] NULL,
	[CL] [int] NULL,
	[TD] [int] NULL,
	[Adm] [int] NULL,
	[Stn] [int] NULL,
	[Course] [int] NULL,
	[Hosp] [int] NULL,
	[AWLOSL] [int] NULL,
	[Detached] [int] NULL,
	[Ex] [int] NULL,
	[ERE] [int] NULL,
	[TotalOut] [int] NULL,
	[PresentStrength] [int] NULL,
	[Remark] [nvarchar](50) NULL,
	[ToShow] [bit] NULL,
	[Opt1] [int] NULL,
	[Opt2] [int] NULL,
	[Opt3] [int] NULL,
	[Opt4] [int] NULL,
	[Opt5] [int] NULL,
	[Opt6] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_Parade_State_IsActive]  DEFAULT ((1)),
	[CCL] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_Parade_State_RankTradeWise]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Parade_State_RankTradeWise](
	[SusNo] [nvarchar](15) NOT NULL,
	[ParadeDate] [datetime] NOT NULL,
	[HierarchyId] [int] NOT NULL,
	[SubsRank] [nvarchar](20) NULL,
	[Trade] [nvarchar](20) NULL,
	[Auth] [int] NULL,
	[Posted] [int] NULL,
	[Total] [int] NULL,
	[AL] [int] NULL,
	[OL] [int] NULL,
	[CL] [int] NULL,
	[TD] [int] NULL,
	[Adm] [int] NULL,
	[Course] [int] NULL,
	[Hosp] [int] NULL,
	[AWLOSL] [int] NULL,
	[Detached] [int] NULL,
	[Ex] [int] NULL,
	[ERE] [int] NULL,
	[TotalOut] [int] NULL,
	[PresentStrength] [int] NULL,
	[Remark] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Personal_Detail_Temporary]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Personal_Detail_Temporary](
	[SUSNo] [nvarchar](15) NULL,
	[PersonnelTypeId] [nvarchar](1) NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Paraded_status_id] [int] NULL,
	[PersonnelName] [nvarchar](100) NULL,
	[TradeId] [nvarchar](5) NULL,
	[TradeIdOR] [nvarchar](5) NULL,
	[CorpsId] [nvarchar](4) NULL,
	[AuthTypeId] [int] NULL,
	[Arm_Service_id] [int] NULL,
	[Sub_Rank_id] [nvarchar](3) NULL,
	[Acting_Rank_Id] [nvarchar](3) NULL,
	[Sub_Rank_date] [datetime] NULL,
	[Acting_Rank_date] [datetime] NULL,
	[Seniority_Date] [datetime] NULL,
	[Marital_status_id] [int] NULL,
	[photo_present] [nvarchar](10) NULL,
	[CDA_Ac_No] [nvarchar](20) NULL,
	[DateOfComm] [datetime] NULL,
	[ClassId] [nvarchar](2) NULL,
	[AECStatusId] [int] NULL,
	[ACEStatusId] [int] NULL,
	[MRStatusId] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Personal_Detail1]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Personal_Detail1](
	[SUSNo] [nvarchar](15) NULL,
	[PersonnelTypeId] [nvarchar](1) NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[JCONO] [nvarchar](12) NULL,
	[Paraded_status_id] [int] NULL,
	[PersonnelName] [nvarchar](100) NULL,
	[TradeId] [nvarchar](5) NULL,
	[TradeIdOR] [nvarchar](5) NULL,
	[CorpsId] [int] NULL,
	[AuthTypeId] [int] NULL,
	[ArmServiceid] [int] NULL,
	[SubRankid] [nvarchar](3) NULL,
	[ActingRankId] [nvarchar](3) NULL,
	[SubRankdate] [datetime] NOT NULL,
	[ActingRankdate] [datetime] NOT NULL,
	[SeniorityDate] [datetime] NOT NULL,
	[Maritalstatusid] [int] NOT NULL,
	[photopresent] [nvarchar](10) NOT NULL,
	[CDAAcNo] [nvarchar](20) NULL,
	[DateOfComm] [datetime] NULL,
	[ClassId] [int] NULL,
	[AECStatusId] [int] NULL,
	[ACEStatusId] [int] NULL,
	[MRStatusId] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_PostingDetails]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_PostingDetails](
	[PostingID] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Postedfrom] [nvarchar](100) NULL,
	[PostedTo] [nvarchar](100) NULL,
	[AppointmentId] [int] NULL,
	[Appointment] [nvarchar](50) NULL,
	[Place] [nvarchar](50) NULL,
	[FmDt] [datetime] NULL,
	[ToDt] [datetime] NULL,
	[TotalPeriod] [int] NULL,
	[EntryFlag] [int] NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoItemNo] [nvarchar](4) NULL,
	[PtoDate] [date] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_PostingDetails_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_HR_TRN_PostingDetails] PRIMARY KEY CLUSTERED 
(
	[PostingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_PROMOTIONEXAM]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_PROMOTIONEXAM](
	[PersPExam_Id] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[ExamPassed_Id] [int] NULL,
	[AuthorityOfPassing] [nvarchar](50) NULL,
	[YearOfPassing] [int] NULL,
	[DueDate] [datetime] NULL,
	[Distinction] [bit] NULL,
	[Chances_Remaining] [nvarchar](200) NULL,
	[DateOfPassing] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_PROMOTIONEXAM_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_PROMOTIONEXAM_EntryFlag]  DEFAULT ((0)),
 CONSTRAINT [PK_HR_TRN_PROMOTIONEXAM] PRIMARY KEY CLUSTERED 
(
	[PersPExam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Pto_CorpsNotification]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Pto_CorpsNotification](
	[CorpsNotificationId] [int] IDENTITY(1,1) NOT NULL,
	[Notiification_No] [nvarchar](50) NULL,
	[Notification_Date] [datetime] NULL,
	[SNo] [nvarchar](max) NULL,
	[Type_Of_Allce] [nvarchar](50) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Created_By] [nvarchar](50) NULL,
	[Updated_By] [nvarchar](500) NULL,
	[Updated_Date] [datetime] NULL,
	[Created_Date] [datetime] NULL,
	[IntActive_Date] [datetime] NULL,
	[IntActive] [nvarchar](50) NULL,
	[Corps] [nvarchar](100) NULL,
	[Unit] [nvarchar](500) NULL,
	[StnArea] [nvarchar](500) NULL,
	[Height] [nvarchar](500) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Pto_RecordOffice]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Pto_RecordOffice](
	[RecOffId] [int] IDENTITY(1,1) NOT NULL,
	[SUSNo] [nvarchar](15) NOT NULL,
	[ROCd] [smallint] NOT NULL,
	[DefaultRecOff] [nvarchar](1) NOT NULL CONSTRAINT [DF_HR_TRN_PTO_RecordOffice_DefaultRecOff]  DEFAULT (N'Y'),
	[LastPTONo] [nvarchar](15) NOT NULL,
	[LastPTODate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_PTO_RecordOffice_IsActive]  DEFAULT ((1))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Pto_RecordOffice_ArpanData]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Pto_RecordOffice_ArpanData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PtoNo] [nvarchar](15) NOT NULL,
	[PtoDate] [datetime] NOT NULL,
	[Gp] [nvarchar](3) NOT NULL,
	[RecOffId] [int] NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[Amt] [nvarchar](10) NULL,
	[FmDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[SRA] [nvarchar](4) NULL,
	[NRA] [nvarchar](4) NULL,
	[Cola] [nvarchar](50) NULL,
	[Colb] [nvarchar](50) NULL,
	[Colc] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_HR_TRN_Pto_RecordOffice_ArpanData_CreatedDate]  DEFAULT (getdate())
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_PTOCertificate]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_PTOCertificate](
	[PtoId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_PtoIA]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIA](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[Amt] [nvarchar](10) NULL,
	[FmDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[SRA] [nvarchar](4) NULL,
	[NRA] [nvarchar](4) NULL,
	[Col7a] [nvarchar](50) NULL,
	[Col7b] [nvarchar](50) NULL,
	[Col7c] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Cancel] [char](1) NULL CONSTRAINT [DF_HR_TRN_PtoIA_Cancel]  DEFAULT ('N'),
	[Completed_Date] [datetime] NULL,
	[Completed] [bit] NULL CONSTRAINT [DF_HR_TRN_PtoIA_Stopped]  DEFAULT ((0)),
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](20) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](16) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_P2_Casualties_JCO_IA_IsActive]  DEFAULT ((1)),
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIA_Imported]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIA_Imported](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[Amt] [nvarchar](10) NULL,
	[FmDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[SRA] [nvarchar](4) NULL,
	[NRA] [nvarchar](4) NULL,
	[Col7a] [nvarchar](50) NULL,
	[Col7b] [nvarchar](50) NULL,
	[Col7c] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Cancel] [char](1) NULL,
	[Completed_Date] [datetime] NULL,
	[Completed] [bit] NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](20) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](16) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIB]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIB](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](50) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[OCCM] [nvarchar](2) NULL,
	[FmDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[MNTSPeriod] [nvarchar](5) NULL,
	[DAYSPeriod] [nvarchar](5) NULL,
	[Col7a] [nvarchar](50) NULL,
	[Col7b] [nvarchar](50) NULL,
	[Col7c] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[Cancel] [char](1) NULL CONSTRAINT [DF_HR_TRN_PtoIB_Cancel]  DEFAULT ('N'),
	[ExtraRemark] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Completed] [bit] NULL,
	[Completed_Date] [datetime] NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](20) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_PtoIB_IsActive]  DEFAULT ((1)),
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIB_Imported]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIB_Imported](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](50) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[OCCM] [nvarchar](2) NULL,
	[FmDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[MNTSPeriod] [smallint] NULL,
	[DAYSPeriod] [smallint] NULL,
	[Col7a] [nvarchar](50) NULL,
	[Col7b] [nvarchar](50) NULL,
	[Col7c] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[Cancel] [char](1) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Completed] [bit] NULL,
	[Completed_Date] [datetime] NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](20) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIC]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIC](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NULL,
	[CasCode] [numeric](6, 0) NULL,
	[FatherName] [nvarchar](70) NULL,
	[FmDate] [datetime] NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Completed] [bit] NULL,
	[Completed_Date] [datetime] NULL,
	[Remark] [nvarchar](max) NULL,
	[Cancel] [char](1) NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](10) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](16) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIC_Imported]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIC_Imported](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NULL,
	[CasCode] [numeric](6, 0) NULL,
	[FatherName] [nvarchar](70) NULL,
	[FmDate] [datetime] NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Completed] [bit] NULL,
	[Completed_Date] [datetime] NULL,
	[Remark] [nvarchar](max) NULL,
	[Cancel] [char](1) NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](10) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](16) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIIA]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIIA](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[FmDate] [datetime] NULL,
	[Col5a] [nvarchar](50) NULL,
	[Col5b] [nvarchar](50) NULL,
	[Col5c] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Cancel] [char](1) NULL CONSTRAINT [DF_HR_TRN_PtoIIA_Cancel]  DEFAULT ('N'),
	[Completed] [bit] NULL,
	[Completed_Date] [datetime] NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](10) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_PtoIIA_IsActive]  DEFAULT ((1)),
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIIA_Imported]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIIA_Imported](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[FmDate] [datetime] NULL,
	[Col5a] [nvarchar](50) NULL,
	[Col5b] [nvarchar](50) NULL,
	[Col5c] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Cancel] [char](1) NULL,
	[Completed] [bit] NULL,
	[Completed_Date] [datetime] NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](10) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIIB]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIIB](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[FmDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Col5a] [nvarchar](50) NULL,
	[Col5b] [nvarchar](100) NULL,
	[Col5c] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Cancel] [char](1) NULL CONSTRAINT [DF_HR_TRN_PtoIIB_Cancel]  DEFAULT ('N'),
	[Completed_Date] [datetime] NULL,
	[Completed] [bit] NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](10) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](16) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_PtoIIB_IsActive]  DEFAULT ((1)),
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoIIB_Imported]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoIIB_Imported](
	[PtoId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[Rank] [nvarchar](30) NULL,
	[Trade] [nvarchar](30) NULL,
	[PersonnelName] [nvarchar](250) NULL,
	[CasSeqNo] [nvarchar](4) NOT NULL,
	[CasCode] [numeric](6, 0) NOT NULL,
	[FmDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Col5a] [nvarchar](50) NULL,
	[Col5b] [nvarchar](50) NULL,
	[Col5c] [nvarchar](50) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Rmk1] [nvarchar](250) NULL,
	[Rmk2] [nvarchar](250) NULL,
	[Rmk3] [nvarchar](250) NULL,
	[Rmk4] [nvarchar](250) NULL,
	[Rmk5] [nvarchar](250) NULL,
	[Rmk6] [nvarchar](250) NULL,
	[Rmk7] [nvarchar](250) NULL,
	[Rmk8] [nvarchar](250) NULL,
	[Rmk9] [nvarchar](250) NULL,
	[Rmk10] [nvarchar](250) NULL,
	[Rmk11] [nvarchar](250) NULL,
	[Rmk12] [nvarchar](250) NULL,
	[Rmk13] [nvarchar](250) NULL,
	[Rmk14] [nvarchar](250) NULL,
	[Rmk15] [nvarchar](250) NULL,
	[Rmk16] [nvarchar](250) NULL,
	[Rmk17] [nvarchar](250) NULL,
	[Rmk18] [nvarchar](250) NULL,
	[Rmk19] [nvarchar](250) NULL,
	[Rmk20] [nvarchar](250) NULL,
	[Rmk21] [nvarchar](250) NULL,
	[Rmk22] [nvarchar](250) NULL,
	[Rmk23] [nvarchar](250) NULL,
	[Rmk24] [nvarchar](250) NULL,
	[Rmk25] [nvarchar](250) NULL,
	[ExtraRemark] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Cancel] [char](1) NULL,
	[Completed_Date] [datetime] NULL,
	[Completed] [bit] NULL,
	[TxnId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CFASancReceived] [varchar](3) NULL,
	[CFAsancletterno] [varchar](10) NULL,
	[CFAsancdt] [datetime] NULL,
	[Delayed] [varchar](3) NULL,
	[CreatedBy] [nvarchar](16) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Obsn_item] [nvarchar](max) NULL,
	[RankId] [int] NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoJcos_Attachments]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoJcos_Attachments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](25) NULL,
	[PtoId] [int] NOT NULL,
	[CasSeqNo] [varchar](4) NULL,
	[CasCode] [nvarchar](20) NULL,
	[AttachmentFileName] [varchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[TxnId] [numeric](18, 0) NULL DEFAULT (NULL)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoJCOs_Certificates]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoJCOs_Certificates](
	[PtoID] [int] NOT NULL,
	[Desc_cd] [nvarchar](50) NULL,
	[Certificate] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_PtoJCOsHeader]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoJCOsHeader](
	[PtoId] [int] IDENTITY(1,1) NOT NULL,
	[PtoNo] [nvarchar](15) NOT NULL,
	[PtoDate] [datetime] NOT NULL,
	[Gp] [nvarchar](3) NOT NULL,
	[Draft] [char](10) NOT NULL CONSTRAINT [DF_P2_Orders_JCO_Draft]  DEFAULT (N'Y'),
	[Cancel] [char](10) NOT NULL CONSTRAINT [DF_P2_Orders_JCO_Cancel]  DEFAULT (N'N'),
	[LastPtoNo] [nvarchar](15) NULL,
	[LastPtoDate] [datetime] NULL,
	[SignatoryId] [nvarchar](15) NULL,
	[DistributionIds] [nvarchar](50) NULL,
	[ImportType] [nvarchar](1) NULL,
	[RecOffId] [int] NOT NULL,
	[HRSuitRecOffId] [int] NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyId] [nvarchar](max) NULL,
	[TotalCasualties] [int] NULL CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_TotalCasualties]  DEFAULT ((0)),
	[ReportType] [varchar](5) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_P2_Orders_JCO_IsActive]  DEFAULT ((1)),
	[Remark] [nvarchar](50) NULL,
	[Verify] [int] NOT NULL CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_Verify]  DEFAULT ((0)),
	[VerifiedObsn] [nvarchar](100) NULL,
	[Migrated] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_IsMigrated]  DEFAULT ((0)),
	[BarCode] [nvarchar](250) NULL,
	[BarCodeBinary] [varbinary](max) NULL,
	[XMLFileName] [nvarchar](70) NULL,
	[CRC32] [nvarchar](30) NULL,
	[PkId] [int] NULL,
	[LastVerifiedByAuth1] [nvarchar](15) NULL,
	[LastVerifiedByAuth1Date] [datetime] NULL,
	[LastVerifiedByAuth2] [nvarchar](15) NULL,
	[LastVerifiedByAuth2Date] [datetime] NULL,
	[PublishedBy] [nvarchar](15) NULL,
	[PublishedByDate] [datetime] NULL,
	[IsSigned] [bit] NOT NULL CONSTRAINT [DF__HR_TRN_Pt__IsSig__50FA6A9E]  DEFAULT ((0)),
 CONSTRAINT [PK_HR_TRN_PtoJCOsHeader] PRIMARY KEY CLUSTERED 
(
	[PtoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoJCOsHeader_Imported]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoJCOsHeader_Imported](
	[PtoId] [int] IDENTITY(1,1) NOT NULL,
	[PtoNo] [nvarchar](15) NOT NULL,
	[PtoDate] [datetime] NOT NULL,
	[Gp] [nvarchar](3) NOT NULL,
	[Draft] [char](10) NOT NULL,
	[Cancel] [char](10) NOT NULL,
	[LastPtoNo] [nvarchar](15) NULL,
	[LastPtoDate] [datetime] NULL,
	[SignatoryId] [nvarchar](15) NULL,
	[DistributionIds] [nvarchar](50) NULL,
	[ImportType] [nvarchar](1) NULL,
	[RecOffId] [int] NOT NULL,
	[HRSuitRecOffId] [int] NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyId] [nvarchar](max) NULL,
	[TotalCasualties] [int] NULL,
	[ReportType] [varchar](5) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Remark] [nvarchar](50) NULL,
	[Verify] [int] NULL,
	[Migrated] [bit] NULL,
	[BarCode] [nvarchar](250) NULL,
	[BarCodeBinary] [varbinary](max) NULL,
	[PkId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoNRAHistory]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoNRAHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecOffId] [int] NULL,
	[MonthC] [smallint] NULL,
	[YearC] [smallint] NULL,
	[PtoId] [int] NULL,
	[IsActive] [smallint] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_PtoOffrHeader]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoOffrHeader](
	[PtoId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[PtoNo] [nvarchar](15) NOT NULL,
	[PtoDate] [datetime] NOT NULL,
	[Gp] [nvarchar](3) NULL,
	[Draft] [char](1) NOT NULL CONSTRAINT [DF_HR_TRN_PtoOffrHeader_Draft]  DEFAULT ('Y'),
	[Cancel] [char](1) NOT NULL CONSTRAINT [DF_HR_TRN_PtoOffrHeader_Cancel]  DEFAULT ('N'),
	[LastPtoNo] [nvarchar](15) NULL,
	[LastPtoDate] [datetime] NULL,
	[OffrLastPtoNo] [nvarchar](15) NULL,
	[OffrLastPtoDate] [datetime] NULL,
	[SignatoryId] [nvarchar](15) NULL,
	[DistributionIds] [nvarchar](200) NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyId] [int] NULL,
	[TotalCasualties] [int] NULL CONSTRAINT [DF_HR_TRN_PtoOffrHeader_TotalCasualties]  DEFAULT ((0)),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_HR_TRN_PtoOffrHeader_CreatedDate]  DEFAULT (getdate()),
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_PtoOffrHeader_IsActive]  DEFAULT ((1)),
	[Verify] [int] NULL CONSTRAINT [DF_HR_TRN_PtoOffrHeader_Verify]  DEFAULT ((0)),
	[BarCode] [nvarchar](250) NULL,
	[BarCodeBinary] [varbinary](max) NULL,
	[UnitDetails_OBSN] [nvarchar](max) NULL,
	[UnitName_OBSN] [nvarchar](100) NULL,
	[Address_OBSN] [nvarchar](100) NULL,
	[ServingIn_OBSN] [nvarchar](100) NULL,
	[BrigadeSubArea_OBSN] [nvarchar](100) NULL,
	[DivArea_OBSN] [nvarchar](100) NULL,
	[Corps_OBSN] [nvarchar](100) NULL,
	[Part2Details_OBSN] [nvarchar](max) NULL,
	[OfficerDetails_OBSN] [nvarchar](max) NULL,
	[Rank_OBSN] [nvarchar](100) NULL,
	[Name_OBSN] [nvarchar](100) NULL,
	[ArmService_OBSN] [nvarchar](100) NULL,
	[RankCode_OBSN] [nvarchar](100) NULL,
	[CDAACNo_OBSN] [nvarchar](100) NULL,
	[MigratedFmPreUnit] [bit] NULL DEFAULT ((0)),
	[MigratedFmPreUnitDate] [datetime] NULL DEFAULT (getdate()),
	[SubsRankId] [int] NULL,
	[SubsRank] [nvarchar](60) NULL,
	[ActRankId] [int] NULL,
	[ActRank] [nvarchar](60) NULL,
	[LastVerifiedByAuth1_ArmyNo] [nvarchar](15) NULL,
	[LastVerifiedByAuth1_Date] [datetime] NULL,
	[LastVerifiedByAuth2_ArmyNo] [nvarchar](15) NULL,
	[LastVerifiedByAuth2_Date] [datetime] NULL,
	[PublishedBy_ArmyNo] [nvarchar](15) NULL,
	[PublishedBy_Date] [datetime] NULL,
	[CRC] [nvarchar](max) NULL,
	[IsSigned] [bit] NOT NULL CONSTRAINT [DF__HR_TRN_Pt__IsSig__51EE8ED7]  DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoOffrHeader_Temp]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoOffrHeader_Temp](
	[PtoId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[PtoNo] [nvarchar](15) NOT NULL,
	[PtoDate] [datetime] NOT NULL,
	[Gp] [nvarchar](3) NULL,
	[Draft] [char](1) NOT NULL,
	[Cancel] [char](1) NOT NULL,
	[LastPtoNo] [nvarchar](15) NULL,
	[LastPtoDate] [datetime] NULL,
	[OffrLastPtoNo] [nvarchar](15) NULL,
	[OffrLastPtoDate] [datetime] NULL,
	[SignatoryId] [nvarchar](15) NULL,
	[DistributionIds] [nvarchar](200) NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyId] [int] NULL,
	[TotalCasualties] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Verify] [int] NULL,
	[BarCode] [nvarchar](250) NULL,
	[BarCodeBinary] [varbinary](max) NULL,
	[UnitDetails_OBSN] [nvarchar](max) NULL,
	[UnitName_OBSN] [nvarchar](100) NULL,
	[Address_OBSN] [nvarchar](100) NULL,
	[ServingIn_OBSN] [nvarchar](100) NULL,
	[BrigadeSubArea_OBSN] [nvarchar](100) NULL,
	[DivArea_OBSN] [nvarchar](100) NULL,
	[Corps_OBSN] [nvarchar](100) NULL,
	[Part2Details_OBSN] [nvarchar](max) NULL,
	[OfficerDetails_OBSN] [nvarchar](max) NULL,
	[Rank_OBSN] [nvarchar](100) NULL,
	[Name_OBSN] [nvarchar](100) NULL,
	[ArmService_OBSN] [nvarchar](100) NULL,
	[RankCode_OBSN] [nvarchar](100) NULL,
	[CDAACNo_OBSN] [nvarchar](100) NULL,
	[MigratedFmPreUnit] [bit] NULL,
	[MigratedFmPreUnitDate] [datetime] NULL,
	[SubsRankId] [int] NULL,
	[SubsRank] [nvarchar](60) NULL,
	[ActRankId] [int] NULL,
	[ActRank] [nvarchar](60) NULL,
	[LastVerifiedByAuth1_ArmyNo] [nvarchar](15) NULL,
	[LastVerifiedByAuth1_Date] [datetime] NULL,
	[LastVerifiedByAuth2_ArmyNo] [nvarchar](15) NULL,
	[LastVerifiedByAuth2_Date] [datetime] NULL,
	[PublishedBy_ArmyNo] [nvarchar](15) NULL,
	[PublishedBy_Date] [datetime] NULL,
	[CRC] [nvarchar](max) NULL,
	[IsSigned] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoOffrs]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoOffrs](
	[PtoId] [int] NOT NULL,
	[CasSeqNo] [nvarchar](4) NOT NULL,
	[CasCode] [nvarchar](20) NOT NULL,
	[FmDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Data1] [nvarchar](max) NULL,
	[Data2] [nvarchar](max) NULL,
	[Data3] [nvarchar](max) NULL,
	[Data4] [nvarchar](max) NULL,
	[Rmk1] [nvarchar](max) NULL,
	[Rmk2] [nvarchar](max) NULL,
	[Rmk3] [nvarchar](max) NULL,
	[Rmk4] [nvarchar](max) NULL,
	[Rmk5] [nvarchar](max) NULL,
	[Rmk6] [nvarchar](max) NULL,
	[Rmk7] [nvarchar](max) NULL,
	[Rmk8] [nvarchar](max) NULL,
	[Rmk9] [nvarchar](max) NULL,
	[Rmk10] [nvarchar](max) NULL,
	[Certificate] [nvarchar](max) NULL,
	[Authority] [nvarchar](max) NULL,
	[Enclosure] [nvarchar](max) NULL,
	[RefPto] [nvarchar](20) NULL,
	[Remark] [nvarchar](max) NULL,
	[CFASancReceived] [varchar](10) NULL,
	[CFAsancletterno] [varchar](10) NULL,
	[CFAsancdt] [varchar](10) NULL,
	[Delayed] [varchar](3) NULL,
	[Observation] [char](1) NULL,
	[Cancelled] [bit] NULL CONSTRAINT [DF_HR_TRN_PtoOffrs_Cancelled]  DEFAULT ((0)),
	[Stopped] [int] NULL CONSTRAINT [DF_HR_TRN_PtoOffrs_Stopped]  DEFAULT ((0)),
	[StoppedDate] [datetime] NULL,
	[ParentTxnNo] [bigint] NULL,
	[TxnNo] [bigint] IDENTITY(1,1) NOT NULL,
	[Obsn_Item] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_PtoOffrs_IsActive]  DEFAULT ((1))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoOffrs_Attachments]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoOffrs_Attachments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](25) NULL,
	[PtoId] [int] NOT NULL,
	[CasSeqNo] [varchar](4) NULL,
	[CasCode] [nvarchar](20) NULL,
	[AttachmentFileName] [varchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_PtoOffrs_Certificates]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_PtoOffrs_Certificates](
	[PtoId] [int] NOT NULL,
	[CasSeqNo] [varchar](4) NULL,
	[Desc_cd] [numeric](6, 0) NOT NULL,
	[CertificateId] [int] NULL,
	[CertificateLineNo] [tinyint] NULL,
	[Certificate] [nvarchar](max) NOT NULL,
	[PtoTransactionID] [int] NULL,
	[RankCode] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_QSA]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_QSA](
	[QsaID] [int] IDENTITY(1,1) NOT NULL,
	[FolderName] [nvarchar](50) NULL,
	[MonthId] [int] NULL,
	[Year] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Qualification]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Qualification](
	[ArmyNo] [nvarchar](15) NULL,
	[Qual_Type] [nvarchar](50) NOT NULL,
	[Qual_cd] [nvarchar](50) NULL,
	[event_dt] [datetime] NULL,
	[Institute_Name] [nvarchar](250) NULL,
	[Passing_Year] [nvarchar](10) NULL,
	[Grade] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[EntryFlag] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_QualificationRequired]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_QualificationRequired](
	[CatId] [int] NOT NULL,
	[CadOrCapCode] [nvarchar](10) NOT NULL,
	[QualificationId] [nvarchar](max) NULL,
	[YrofExp] [int] NULL,
	[AdditionalQRs] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_TRN_QualificationRequired] PRIMARY KEY CLUSTERED 
(
	[CatId] ASC,
	[CadOrCapCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_RationState]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_RationState](
	[SusNo] [nvarchar](15) NOT NULL,
	[ParadeDate] [datetime] NOT NULL,
	[HierarchyId] [int] NOT NULL,
	[MAtta] [int] NULL,
	[MRice] [int] NULL,
	[MVeg] [int] NULL,
	[MNonVeg] [int] NULL,
	[MEgg] [int] NULL,
	[FAtta] [int] NULL,
	[FRice] [int] NULL,
	[FVeg] [int] NULL,
	[FNonVeg] [int] NULL,
	[FEgg] [int] NULL,
	[SRA] [int] NULL,
	[HRA] [int] NULL,
	[NRA] [int] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Remust]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Remust](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Category] [nvarchar](50) NULL,
	[Rem_Group] [nvarchar](50) NULL,
	[Class] [nvarchar](50) NULL,
	[Event_Date] [datetime] NOT NULL,
	[Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Report3009]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Report3009](
	[StrRetnId] [int] IDENTITY(1,1) NOT NULL,
	[StrMonth] [nvarchar](3) NOT NULL,
	[StrYear] [int] NOT NULL,
	[StrPositionAsOn] [datetime] NULL,
	[CaseFileNo] [nvarchar](50) NULL,
	[StrengthRetnDate] [datetime] NULL,
	[Distribution] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_TRN_Report3009] PRIMARY KEY CLUSTERED 
(
	[StrRetnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Report3009Data]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Report3009Data](
	[StrRetnId] [int] NOT NULL,
	[StrSection] [nvarchar](50) NOT NULL,
	[StrType] [nvarchar](200) NULL,
	[StrAuthCat] [nvarchar](10) NULL,
	[Col_1] [nvarchar](100) NULL,
	[Col_2] [nvarchar](50) NULL,
	[Col_3] [nvarchar](5) NULL,
	[Col_4] [nvarchar](5) NULL,
	[Col_5] [nvarchar](5) NULL,
	[Col_6] [nvarchar](5) NULL,
	[Col_7] [nvarchar](5) NULL,
	[Col_8] [nvarchar](5) NULL,
	[Col_9] [nvarchar](5) NULL,
	[Col_10] [nvarchar](5) NULL,
	[Col_11] [nvarchar](5) NULL,
	[Col_12] [nvarchar](5) NULL,
	[Col_13] [nvarchar](5) NULL,
	[Col_14] [nvarchar](5) NULL,
	[Col_15] [nvarchar](5) NULL,
	[Col_16] [nvarchar](5) NULL,
	[Col_17] [nvarchar](5) NULL,
	[Col_18] [nvarchar](5) NULL,
	[Col_19] [nvarchar](5) NULL,
	[Col_20] [nvarchar](5) NULL,
	[Col_21] [nvarchar](5) NULL,
	[Col_22] [nvarchar](5) NULL,
	[Col_23] [nvarchar](5) NULL,
	[Col_24] [nvarchar](5) NULL,
	[Col_25] [nvarchar](5) NULL,
	[Col_26] [nvarchar](5) NULL,
	[Col_27] [nvarchar](5) NULL,
	[Col_28] [nvarchar](5) NULL,
	[Col_29] [nvarchar](5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Report3009ReligionData]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Report3009ReligionData](
	[StrRetnId] [int] NOT NULL,
	[Religion] [nvarchar](50) NULL,
	[StrJCOs] [int] NULL,
	[StrOR] [int] NULL,
	[StrRect] [int] NULL,
	[StrTotal] [int] NULL,
	[StrAuthJCOs] [int] NULL,
	[StrPostedComt] [int] NULL,
	[StrPostedCiv] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_ROUTINEPROMOTION]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_ROUTINEPROMOTION](
	[PersPromExamId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[RankTypeID] [int] NULL,
	[PromotedRankId] [nvarchar](15) NULL,
	[DateOfPromotion] [datetime] NULL,
	[SeniorityDate] [datetime] NULL,
	[Unit] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_ROUTINEPROMOTION_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NOT NULL CONSTRAINT [DF_HR_TRN_ROUTINEPROMOTION_EntryFlag]  DEFAULT ((0)),
	[PtoDate] [datetime] NULL,
	[Part2OrderNo] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Serlization]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Serlization](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[SterName] [nvarchar](50) NOT NULL,
	[Relationship] [nvarchar](50) NOT NULL,
	[Event_Date] [datetime] NOT NULL,
	[Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Signature_ApptLog]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Signature_ApptLog](
	[Signature_ApptLogID] [int] IDENTITY(1,1) NOT NULL,
	[SignatureId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Valid_From] [datetime] NOT NULL,
	[Valid_To] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ReportType] [nvarchar](15) NOT NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Signature_Registration]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Signature_Registration](
	[SignatureId] [int] IDENTITY(1,1) NOT NULL,
	[PersId] [int] NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[CN_Name] [nvarchar](250) NOT NULL,
	[Thumbprint] [nvarchar](max) NOT NULL,
	[PublicCert] [nvarchar](max) NOT NULL,
	[Valid_From] [datetime] NOT NULL,
	[Valid_To] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[DeletedBy] [nvarchar](15) NULL,
	[DeletedDate] [datetime] NULL,
	[Remark] [nvarchar](100) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF__HR_TRN_Si__IsAct__61EFEC76]  DEFAULT ((0)),
	[IsTokenPermitted] [bit] NOT NULL CONSTRAINT [DF__HR_TRN_Si__IsTok__52ADA8E6]  DEFAULT ((0)),
	[ActivatedDate] [datetime] NULL,
 CONSTRAINT [PK_HR_TRN_Signature_Registration] PRIMARY KEY CLUSTERED 
(
	[SignatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Signature_TokenLog]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Signature_TokenLog](
	[TokenLogID] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NOT NULL,
	[CN_Name] [nvarchar](15) NOT NULL,
	[Token_In] [datetime] NOT NULL,
	[Token_Out] [datetime] NULL,
	[Valid_From] [datetime] NULL,
	[Valid_To] [datetime] NULL,
	[LogPlaceStatus] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_SPORTS]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_SPORTS](
	[PersSportId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[SportsId] [nvarchar](4) NULL,
	[SportsLevelId] [decimal](3, 0) NULL,
	[PTONo] [nvarchar](20) NULL,
	[PTODate] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_SPORTS_IsActive]  DEFAULT ((1)),
	[EntryFlag] [int] NULL CONSTRAINT [DF_HR_TRN_SPORTS_EntryFlag]  DEFAULT ((0)),
	[Medal] [nvarchar](50) NULL,
	[EventDt] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Strength]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Strength](
	[ArmyNo] [nvarchar](15) NULL,
	[PONo] [nvarchar](20) NULL,
	[IssDateorToDt] [datetime] NULL,
	[DueDateorFromDt] [datetime] NULL,
	[Authority] [nvarchar](50) NULL,
	[SOS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[TOS] [datetime] NULL,
	[TORS] [datetime] NULL,
	[Unit] [nvarchar](50) NULL,
	[OrderlyNCOFlag] [smallint] NULL CONSTRAINT [DF_HR_TRN_Strength_OrderlyNCOFlag]  DEFAULT ((0)),
	[Remarks] [nvarchar](100) NULL,
	[Purpose] [nvarchar](100) NULL,
	[WithLastLRC] [bit] NULL,
	[Paraded] [bit] NULL CONSTRAINT [DF_HR_TRN_Strength_Paraded]  DEFAULT ((0)),
	[StrIncDecID] [int] NULL,
	[WtDtlId] [int] NULL,
	[History] [nvarchar](1) NULL CONSTRAINT [DF_HR_TRN_Strength_History]  DEFAULT (N'C'),
	[MOGeneratedFlag] [bit] NULL,
	[MORequired] [tinyint] NULL,
	[MONo] [int] NULL,
	[DepartureTime] [nvarchar](4) NULL,
	[AuthorizationType] [nvarchar](50) NULL,
	[TypeOfPosting] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_Strength_IsActive]  DEFAULT ((1)),
	[ReliverArmyNo] [nvarchar](15) NULL,
	[Parade_date] [datetime] NULL DEFAULT (NULL)
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_StrengthOtherthanUnit]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_StrengthOtherthanUnit](
	[SUSNo] [nvarchar](15) NULL CONSTRAINT [DF_HR_TRN_StrengthOtherthanUnit_SUSNo]  DEFAULT ((1)),
	[PersonnelTypeId] [nvarchar](1) NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[JCONO] [nvarchar](12) NULL,
	[Name] [nvarchar](100) NULL,
	[Unit] [nvarchar](100) NULL,
	[AuthTypeId] [int] NULL,
	[RankId] [nvarchar](6) NULL,
	[TradeId] [nvarchar](6) NULL,
	[ArmServiceId] [int] NULL,
	[SubunitId] [int] NULL,
	[ReasonForAttachment] [nvarchar](255) NULL,
	[IssueAuth] [nvarchar](100) NULL,
	[AuthLetterNo] [nvarchar](100) NULL,
	[AuthLetterDate] [datetime] NULL,
	[ReportingDate] [datetime] NULL,
	[MONo] [nvarchar](100) NULL,
	[MODate] [datetime] NULL,
	[Remarks] [nvarchar](100) NULL,
	[TORS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[Level2Id] [int] NULL,
	[SISDOptionId] [int] NULL,
	[LRCflag] [int] NULL,
	[MOGeneratedNo] [int] NULL,
	[MOGeneratedFlag] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_StrengthOtherthanUnit_MOGeneratedFlag]  DEFAULT ((0)),
	[OrderlyNCOFlag] [smallint] NOT NULL CONSTRAINT [DF_HR_TRN_StrengthOtherthanUnit_OrderlyNCOFlag]  DEFAULT ((1)),
	[History] [nvarchar](1) NOT NULL CONSTRAINT [DF_HR_TRN_StrengthOtherthanUnit_History]  DEFAULT (N'C'),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_StrengthOtherthanUnit_IsActive]  DEFAULT ((1)),
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[RecOffId] [decimal](2, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_TempArmyPersDetails]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_TempArmyPersDetails](
	[SUSNo] [nvarchar](15) NULL,
	[PersonnelTypeId] [nvarchar](1) NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[JCONO] [nvarchar](12) NULL,
	[ParadedStatusId] [int] NULL,
	[PersonnelName] [nvarchar](100) NULL,
	[TradeId] [nvarchar](5) NULL,
	[CorpsId] [nvarchar](4) NULL,
	[AuthTypeId] [int] NULL,
	[EntryType] [int] NULL,
	[ArmServiceId] [int] NULL,
	[FirstCommisionDate] [datetime] NULL,
	[CommId] [int] NULL,
	[CDAACNo] [nvarchar](20) NULL,
	[Class] [int] NULL,
	[Trade] [int] NULL,
	[Nextofkin] [int] NULL,
	[SubstantiveRankId] [nvarchar](3) NULL,
	[SubstantiveRankDate] [datetime] NULL,
	[ActingRankId] [nvarchar](3) NULL,
	[ActingRankDate] [datetime] NULL,
	[ParentArmRank] [int] NULL,
	[SeniorityDate] [datetime] NULL,
	[Level2Id] [int] NULL,
	[Level3Id] [int] NULL,
	[Level4Id] [int] NULL,
	[Level5Id] [int] NULL,
	[PhotoPresent] [nvarchar](1) NULL,
	[AWLOSL] [nvarchar](1) NULL,
	[Detached] [nvarchar](1) NULL,
	[Exercise] [nvarchar](1) NULL,
	[OFFJCO] [nvarchar](1) NULL,
	[DOB] [datetime] NULL,
	[DistrictIdbirth] [nvarchar](4) NULL,
	[PlaceOfbirth] [nvarchar](50) NULL,
	[StateIdbirth] [numeric](2, 0) NULL,
	[CountryIdbirth] [int] NULL,
	[ReligionId] [int] NULL,
	[CasteStatus] [int] NULL,
	[OriginClassId] [int] NULL,
	[MotherTongue] [int] NULL,
	[DomicileDistrict] [nvarchar](4) NULL,
	[DomicileState] [numeric](2, 0) NULL,
	[DomicileCountry] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[NOKName] [nvarchar](100) NULL,
	[MaritalStatus] [int] NULL,
	[DateOfEnrolment] [datetime] NULL,
	[PresentWithUnit] [bit] NULL,
	[AECExam] [bit] NULL,
	[ACEExam] [bit] NULL,
	[MRExam] [bit] NULL,
	[FamilyPlanning] [bit] NULL,
	[CasualtyNoFamPlng] [int] NULL,
	[DoPart2famplnDate] [datetime] NULL,
	[DoPart2fampln] [nvarchar](20) NULL,
	[RegimentOrCorpsName] [nvarchar](50) NULL,
	[Paraded] [int] NULL,
	[Picture] [image] NULL,
	[NOKAddress] [int] NULL,
	[LastP2OrderNo] [nvarchar](15) NULL,
	[LastP2OrderDate] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_TempDuty]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_TRN_TempDuty](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[TDNature] [nvarchar](50) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NULL,
	[NRS] [nvarchar](50) NULL,
	[TORS] [datetime] NULL,
	[SORS] [datetime] NULL,
	[MONo] [int] NULL,
	[MOGeneratedFlag] [bit] NULL CONSTRAINT [DF_HR_TRN_TempDuty_MOGeneratedFlag]  DEFAULT ((0)),
	[OrderlyNCOFlag] [smallint] NULL CONSTRAINT [DF_HR_TRN_TempDuty_OrderlyNCOFlag]  DEFAULT ((0)),
	[WtDtlId] [int] NULL,
	[History] [nvarchar](1) NOT NULL CONSTRAINT [DF_HR_TRN_TempDuty_History]  DEFAULT (N'C'),
	[Remarks] [nvarchar](50) NULL,
	[DepTime] [varchar](2) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HR_TRN_TempDuty_IsActive]  DEFAULT ((1)),
	[ReliverArmyNo] [nvarchar](15) NULL,
	[Parade_date] [datetime] NULL DEFAULT (NULL)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_TRN_TempOffrData]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_TempOffrData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OFFICER_ID] [nvarchar](100) NULL,
	[PERSONNEL_NO] [nvarchar](100) NULL,
	[ACTING_RANK] [nvarchar](100) NULL,
	[NAME] [nvarchar](100) NULL,
	[SUS_NO] [nvarchar](100) NULL,
	[UNIT_NAME] [nvarchar](100) NULL,
	[PARENT_ARM] [nvarchar](100) NULL,
	[USER_ARM] [nvarchar](100) NULL,
	[REGIMENT] [nvarchar](100) NULL,
	[COMM_TYPE] [nvarchar](100) NULL,
	[DT_COMM_GRANT] [nvarchar](100) NULL,
	[COMM_LTTR_DATE] [nvarchar](100) NULL,
	[SUB_RANK] [nvarchar](100) NULL,
	[SUB_DATE] [nvarchar](100) NULL,
	[APPOINTMENT] [nvarchar](100) NULL,
	[DATE_APPOINTMENT] [nvarchar](100) NULL,
	[DATE_TOS] [nvarchar](100) NULL,
	[TRAINING_INST_NAME] [nvarchar](100) NULL,
	[ENTRY_TYPE] [nvarchar](100) NULL,
	[OFF_STATE] [nvarchar](100) NULL,
	[OFF_DISTRICT] [nvarchar](100) NULL,
	[SEX] [nvarchar](100) NULL,
	[DT_PERM_COMM_GRANT] [nvarchar](100) NULL,
	[PRE_COMM_STATUS] [nvarchar](100) NULL,
	[RELIGION] [nvarchar](100) NULL,
	[MARITAL_STATUS] [nvarchar](100) NULL,
	[MOTHER_TONGUE] [nvarchar](100) NULL,
	[DATE_SENIORITY] [nvarchar](100) NULL,
	[COMM_REMARKS] [nvarchar](100) NULL,
	[DATE_RANK] [nvarchar](100) NULL,
	[DOB] [nvarchar](100) NULL,
	[MED_CATEGORY] [nvarchar](100) NULL,
	[REGT] [nvarchar](100) NULL,
	[NE_DATE] [nvarchar](100) NULL,
	[NE_CAUSE] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_TermsOfEng]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_TermsOfEng](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[TOE_Desc] [nvarchar](50) NULL,
	[TOE_Rank] [nvarchar](20) NOT NULL,
	[Colr_Service] [int] NOT NULL,
	[Res_Liab] [int] NULL,
	[Pub_Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_TrgARC]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_TrgARC](
	[ArmyNo] [nvarchar](15) NULL,
	[EventId] [int] NOT NULL,
	[Attended] [bit] NULL,
	[WeaponId] [int] NULL,
	[GradeId] [int] NULL,
	[Remarks] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[MedCat] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_TrgBPET]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_TrgBPET](
	[ArmyNo] [nvarchar](15) NULL,
	[Age] [int] NULL,
	[EventId] [int] NOT NULL,
	[Attended] [bit] NULL,
	[Ditch] [smallint] NULL,
	[Vertical_rope] [smallint] NULL,
	[Horizontal_rope] [smallint] NULL,
	[Sprint60m] [smallint] NULL,
	[Run5km] [smallint] NULL,
	[OverallGrade] [smallint] NULL,
	[Remarks] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_TrgBPET_IsActive]  DEFAULT ((1)),
	[MedCat] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_TrgEvents]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_TrgEvents](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[EventShortCode] [nvarchar](15) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quater] [tinyint] NOT NULL,
	[Formation] [nvarchar](50) NULL,
	[TrainingYear] [nvarchar](10) NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Part1OrderNo] [nvarchar](50) NULL,
	[Part1OrderDate] [datetime] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_TrgEvents_IsActive]  DEFAULT ((1)),
	[HierID] [int] NULL,
	[Offr] [nvarchar](1) NULL,
	[JCO] [nvarchar](1) NULL,
	[ORs] [nvarchar](1) NULL,
	[Finalize] [bit] NULL CONSTRAINT [DF_HR_TRN_TrgEvents_Finalize]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_TrgOperation]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_TrgOperation](
	[ArmyNo] [nvarchar](15) NULL,
	[EventId] [int] NOT NULL,
	[Attended] [bit] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Remarks] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[RankId] [nvarchar](3) NULL,
	[Unit] [nvarchar](100) NULL,
	[OptionId] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_TrgPPET]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_TrgPPET](
	[ArmyNo] [nvarchar](15) NULL,
	[Age] [int] NULL,
	[EventId] [int] NOT NULL,
	[Attended] [bit] NULL,
	[Run] [int] NULL,
	[Shuttle] [int] NULL,
	[PushUps] [int] NULL,
	[SitUps] [int] NULL,
	[Beam] [int] NULL,
	[Sprint100m] [int] NULL,
	[Swim] [int] NULL,
	[Chinup] [int] NULL,
	[OverallGrade] [smallint] NULL,
	[Remarks] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_TrgPPET_IsActive]  DEFAULT ((1)),
	[MedCat] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_UnitHierarchySubUnits]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_UnitHierarchySubUnits](
	[HierarchyId] [int] NULL,
	[HierarchyName] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_UnitHierarchyTemplates]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_UnitHierarchyTemplates](
	[HierarchyId] [int] IDENTITY(1,1) NOT NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyName] [nvarchar](50) NOT NULL,
	[level0] [int] NULL,
	[level1] [int] NULL,
	[level2] [int] NULL,
	[level3] [int] NULL,
	[level4] [int] NULL,
	[level5] [int] NULL,
	[level6] [int] NULL,
	[level7] [int] NULL,
	[ChildNodes] [int] NULL CONSTRAINT [DF_HR_TRN_UnitHierarchyTemplates_ChildNodes]  DEFAULT ((0)),
	[AuthOffr] [int] NULL,
	[AuthJCO] [int] NULL,
	[AuthOR] [int] NULL,
	[Detatch] [bit] NOT NULL CONSTRAINT [DF_HR_TRN_UnitHierarchyTemplates1_Detatch]  DEFAULT ((0)),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HR_TRN_UnitHierarchyTemplates] PRIMARY KEY CLUSTERED 
(
	[HierarchyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_UnitHierarchyTemplates old]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_UnitHierarchyTemplates old](
	[HierarchyId] [int] IDENTITY(1,1) NOT NULL,
	[SusNo] [nvarchar](15) NOT NULL,
	[HierarchyName] [nvarchar](50) NOT NULL,
	[level0] [int] NULL,
	[level1] [int] NULL,
	[level2] [int] NULL,
	[level3] [int] NULL,
	[level4] [int] NULL,
	[level5] [int] NULL,
	[level6] [int] NULL,
	[level7] [int] NULL,
	[AuthOffr] [int] NULL,
	[AuthJCO] [int] NULL,
	[AuthOR] [int] NULL,
	[Detatch] [bit] NOT NULL,
	[CreatedBy] [nvarchar](12) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](12) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](12) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Upclass]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Upclass](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Rect_Trn_Sol] [nvarchar](50) NULL,
	[Pay_Desc] [nvarchar](50) NOT NULL,
	[Pay_Class] [nvarchar](50) NOT NULL,
	[Pay_cls_Dt] [datetime] NOT NULL,
	[Unit] [nvarchar](50) NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_Verification]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_Verification](
	[ArmyNo] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Verification_Date] [datetime] NOT NULL,
	[PtoNo] [nvarchar](20) NULL,
	[PtoDate] [datetime] NULL,
	[Remarks] [nvarchar](70) NULL,
	[CreatedBy] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WarningOrder]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WarningOrder](
	[WarningOrderId] [int] IDENTITY(1,1) NOT NULL,
	[Army_No] [nvarchar](15) NULL,
	[Warning_ord_no] [nvarchar](500) NULL,
	[Warning_ord_dt] [datetime] NULL,
	[Screen_Dtls] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_HR_TRN_WarningOrder] PRIMARY KEY CLUSTERED 
(
	[WarningOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WillDetails]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WillDetails](
	[ArmyNo] [nvarchar](15) NULL,
	[WillStatus] [nvarchar](15) NULL,
	[WillRegnNo] [nvarchar](50) NULL,
	[ExeDate] [datetime] NULL,
	[MemberId] [int] NULL,
	[AddressId] [int] NULL,
	[Location] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WtAllFamilyDetail]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WtAllFamilyDetail](
	[WtDtlId] [int] NULL,
	[AllFamilyId] [nvarchar](50) NULL,
	[BitField] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WtCanceledManually]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WtCanceledManually](
	[CancelId] [int] IDENTITY(1,1) NOT NULL,
	[WtDtlId] [int] NULL,
	[WtJourneyId] [int] NULL,
	[Warrant_SrNo] [nvarchar](50) NULL,
	[Warrant_Date] [datetime] NULL,
	[Cancel_Reason] [nvarchar](250) NULL,
	[Amount] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WtConfiguration]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WtConfiguration](
	[AuthId] [int] IDENTITY(1,1) NOT NULL,
	[PID] [nvarchar](50) NULL,
	[MoveId] [int] NULL,
	[WtId] [int] NULL,
	[Authority] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WtDetails]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WtDetails](
	[WtDtlId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyNo] [nvarchar](15) NULL,
	[WtId] [smallint] NULL,
	[MoveId] [smallint] NULL,
	[ReturnJourney] [bit] NULL,
	[NoOfReq] [int] NULL,
	[IsActive] [bit] NULL,
	[SelfChk] [bit] NULL CONSTRAINT [DF_HR_TRN_WtDetails_SelfChk]  DEFAULT ((0)),
	[Approved] [bit] NULL CONSTRAINT [DF_HR_TRN_WtDetails_Approved]  DEFAULT ((0)),
	[WtGenerator] [bit] NULL CONSTRAINT [DF_HR_TRN_WtDetails_WtGenerator]  DEFAULT ((0)),
	[CDA] [nvarchar](50) NULL,
 CONSTRAINT [PK_HR_TRN_WtDetails] PRIMARY KEY CLUSTERED 
(
	[WtDtlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WtDuesInPreviousWtAvail]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WtDuesInPreviousWtAvail](
	[AuthId] [int] IDENTITY(1,1) NOT NULL,
	[PID] [nvarchar](50) NULL,
	[MoveId] [int] NULL,
	[WtId] [int] NULL,
	[Authority] [nvarchar](50) NULL,
	[ArmyNo] [nvarchar](20) NULL,
	[SerNo] [int] NULL,
	[CurrentDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WtFamilyDetails]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WtFamilyDetails](
	[WtDtlId] [int] NULL,
	[FamilyId] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR_TRN_WtJourneyDetails]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_TRN_WtJourneyDetails](
	[WtJourneyId] [int] IDENTITY(1,1) NOT NULL,
	[WtDtlId] [int] NULL,
	[FromStation] [nvarchar](50) NULL,
	[ToStation] [nvarchar](50) NULL,
	[DateOfOnward] [datetime] NULL,
	[DateOfReturn] [datetime] NULL,
	[PartyNOs] [int] NULL CONSTRAINT [DF_HR_TRN_WtJourneyDetails_PartyNOs]  DEFAULT ((2)),
	[CreatedBy] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](15) NULL,
	[UpdatedDate] [datetime] NULL,
	[ActInctBy] [nvarchar](15) NULL,
	[ActInctDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Warrant_SrNo] [nvarchar](50) NULL,
	[Warrant_Date] [datetime] NULL,
	[Cancelled] [bit] NULL CONSTRAINT [DF_HR_TRN_WtJourneyDetails_Cancelled]  DEFAULT ((0)),
	[Cancel_Reason] [nvarchar](250) NULL,
	[Amount] [int] NULL,
	[Wt_SrId] [int] NULL,
 CONSTRAINT [PK_HR_TRN_WtJourneyDetails] PRIMARY KEY CLUSTERED 
(
	[WtJourneyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mACP_Scale]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mACP_Scale](
	[scale_cd] [numeric](2, 0) NOT NULL,
	[scale_desc] [varchar](50) NOT NULL,
	[rank_cd] [varchar](3) NULL,
	[status] [char](1) NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[edit_id] [varchar](10) NULL,
	[edit_dt] [datetime] NULL,
	[val_id] [varchar](10) NULL,
	[val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[del_id] [varchar](10) NULL,
	[del_dt] [datetime] NULL,
 CONSTRAINT [PK_mACP_Scale] PRIMARY KEY CLUSTERED 
(
	[scale_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mAppt_APTMT]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mAppt_APTMT](
	[ApptID] [int] IDENTITY(1,1) NOT NULL,
	[ApptName] [nvarchar](100) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mArea_Type]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mArea_Type](
	[area_type_cd] [varchar](2) NOT NULL,
	[area_type_name] [varchar](25) NOT NULL,
	[area_type_long_name] [varchar](50) NULL,
	[field_peace] [char](1) NULL,
	[HA_FA] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mArea_Type] PRIMARY KEY CLUSTERED 
(
	[area_type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mArmsServices]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mArmsServices](
	[Arms_service_cd] [int] NOT NULL,
	[Arms_service_name] [nvarchar](255) NULL,
	[Arms_service_code] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[entry_id] [nvarchar](255) NULL,
	[entry_dt] [datetime] NULL,
	[auth_id] [nvarchar](255) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mArmsServices] PRIMARY KEY CLUSTERED 
(
	[Arms_service_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mArmy_Act]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mArmy_Act](
	[Armyact_cd] [varchar](5) NOT NULL,
	[Armyact_desc] [varchar](50) NOT NULL,
	[JCO_OR] [char](1) NOT NULL,
	[Section] [varchar](20) NULL,
	[Sub_Section] [varchar](20) NULL,
	[Prom_Stop] [numeric](2, 0) NULL,
	[Life_debar] [char](1) NULL,
	[Type] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[Entry_id] [varchar](10) NOT NULL,
	[Entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mArmy_Act_1] PRIMARY KEY CLUSTERED 
(
	[Armyact_cd] ASC,
	[JCO_OR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mArmy_Rule]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mArmy_Rule](
	[army_rule_no] [numeric](4, 0) NOT NULL,
	[army_rule] [varchar](50) NOT NULL,
	[rule_no_lpc] [char](2) NULL,
	[reg_ta] [char](1) NOT NULL,
	[Disch_cause] [varchar](80) NULL,
	[Rank_Group] [varchar](3) NULL,
	[display] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mArmy_Rule] PRIMARY KEY CLUSTERED 
(
	[army_rule_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mAro]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mAro](
	[ARO_cd] [varchar](4) NOT NULL,
	[ARO_name] [varchar](50) NOT NULL,
	[ZRO_name] [varchar](100) NOT NULL,
	[SUS_No] [varchar](50) NULL,
	[ARO_type] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Entry_id] [varchar](10) NOT NULL,
	[Entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mAro] PRIMARY KEY CLUSTERED 
(
	[ARO_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAS_Assignment_Purpose]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Assignment_Purpose](
	[Id] [int] NOT NULL,
	[Purpose] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MAS_Location_Formation_Type]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Location_Formation_Type](
	[Id] [int] NOT NULL,
	[Fmn_Type] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MAS_PromotionExams]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_PromotionExams](
	[Id] [int] NOT NULL,
	[PromotionExam_Name] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MAS_Ranks]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Ranks](
	[ID] [int] NOT NULL,
	[Short_Code] [nvarchar](50) NULL,
	[Rank_Full] [nvarchar](100) NULL,
	[Rank_Type] [nvarchar](50) NULL,
	[Rank_Code] [nvarchar](10) NULL,
	[Seniority] [smallint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MAS_TRADE]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_TRADE](
	[Trade_Id] [int] NOT NULL,
	[Short_Code] [nvarchar](20) NULL,
	[Description] [nvarchar](100) NULL,
	[Arms_Service_ID] [int] NULL,
	[Pay_Group] [nvarchar](20) NULL,
	[Seniority_3009] [int] NULL,
	[CorpRoster] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MAS_UNIT_TYPE]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_UNIT_TYPE](
	[ID] [int] NOT NULL,
	[Unit_Type] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mBank]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mBank](
	[bank_cd] [varchar](3) NOT NULL,
	[bank_name] [varchar](100) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mBank] PRIMARY KEY CLUSTERED 
(
	[bank_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mBank_Branch]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mBank_Branch](
	[branch_cd] [varchar](4) NOT NULL,
	[link_bank_cd] [numeric](6, 0) NOT NULL,
	[branch_name] [varchar](50) NOT NULL,
	[branch_bsr_cd] [varchar](7) NULL,
	[MICR] [varchar](10) NULL,
	[IFSC] [varchar](11) NULL,
	[station] [varchar](50) NULL,
	[status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[edit_id] [varchar](10) NULL,
	[edit_dt] [datetime] NULL,
	[del_id] [varchar](10) NULL,
	[del_dt] [datetime] NULL,
	[val_id] [varchar](10) NULL,
	[val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mBank_Branch] PRIMARY KEY CLUSTERED 
(
	[branch_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mBlood_Group]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mBlood_Group](
	[Blood_cd] [numeric](2, 0) NOT NULL,
	[Blood_desc] [varchar](5) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mBlood_Group] PRIMARY KEY CLUSTERED 
(
	[Blood_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mbro]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mbro](
	[brocorp_cd] [nvarchar](255) NOT NULL,
	[broname] [nvarchar](255) NULL,
	[bronumber] [decimal](9, 0) NULL,
	[brotype] [nvarchar](255) NULL,
	[sus_no] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[entry_id] [nvarchar](255) NULL,
	[entry_dt] [datetime] NOT NULL,
	[auth_id] [nvarchar](255) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mbro] PRIMARY KEY CLUSTERED 
(
	[brocorp_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mCadre]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCadre](
	[cadre_cd] [varchar](2) NOT NULL,
	[cadre_desc] [varchar](50) NOT NULL,
	[rank_cd] [varchar](3) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mCadre] PRIMARY KEY CLUSTERED 
(
	[cadre_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCea_Class]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCea_Class](
	[Cea_cd] [varchar](2) NOT NULL,
	[Cea_desc] [varchar](30) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCharacter]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCharacter](
	[Char_cd] [numeric](1, 0) NOT NULL,
	[Character_Name] [varchar](30) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Entry_id] [varchar](10) NOT NULL,
	[Entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mCharacter] PRIMARY KEY CLUSTERED 
(
	[Char_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mChildClass]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mChildClass](
	[Class_Id] [int] NOT NULL,
	[Class_desc] [nvarchar](255) NULL,
 CONSTRAINT [PK_mChildClass] PRIMARY KEY CLUSTERED 
(
	[Class_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mCity]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCity](
	[City_cd] [numeric](6, 0) NOT NULL,
	[City_name] [varchar](50) NOT NULL,
	[Distric_cd] [varchar](4) NULL,
	[Status] [char](1) NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[City_Type] [char](1) NULL,
 CONSTRAINT [PK_mCity] PRIMARY KEY CLUSTERED 
(
	[City_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCivil_Act]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[mCivil_Act](
	[civilact_cd] [numeric](5, 0) NOT NULL,
	[civilact_desc] [varchar](200) NOT NULL,
	[Section] [varchar](20) NULL,
	[sub_section] [varchar](20) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mCivil_Act] PRIMARY KEY CLUSTERED 
(
	[civilact_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCivil_Edu]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCivil_Edu](
	[civil_edu_cd] [varchar](5) NOT NULL,
	[civil_edu_desc] [varchar](35) NOT NULL,
	[edu_level] [numeric](2, 0) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mCivil_Edu] PRIMARY KEY CLUSTERED 
(
	[civil_edu_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mClass]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mClass](
	[class_cd] [varchar](5) NOT NULL,
	[class_desc] [varchar](30) NOT NULL,
	[SC_ST] [char](2) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mClass] PRIMARY KEY CLUSTERED 
(
	[class_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCommand]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCommand](
	[command_cd] [numeric](2, 0) NOT NULL,
	[command_desc] [varchar](50) NOT NULL,
	[HA_Comm_Desc] [varchar](20) NULL,
	[command_zone_cd] [varchar](4) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mCommand] PRIMARY KEY CLUSTERED 
(
	[command_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCommand_Zone]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCommand_Zone](
	[command_zone_cd] [varchar](4) NOT NULL,
	[command_zone_desc] [varchar](50) NOT NULL,
	[Priority] [numeric](1, 0) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mCommand_Zone] PRIMARY KEY CLUSTERED 
(
	[command_zone_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCommision_Type]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCommision_Type](
	[Comn_cd] [numeric](2, 0) NOT NULL,
	[Comn_desc] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mCommision_Type] PRIMARY KEY CLUSTERED 
(
	[Comn_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mcommission_type]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mcommission_type](
	[Comn_cd] [numeric](2, 0) NOT NULL,
	[Comn_desc] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mcommission_type_3] PRIMARY KEY CLUSTERED 
(
	[Comn_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCorps]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCorps](
	[corp_cd] [varchar](4) NOT NULL,
	[corp_name] [varchar](50) NOT NULL,
	[Abbreviation] [varchar](50) NULL,
	[ro_cd] [numeric](2, 0) NULL,
	[arm_serv] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCountry]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCountry](
	[country_cd] [numeric](3, 0) NOT NULL,
	[country_desc] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mCountry] PRIMARY KEY CLUSTERED 
(
	[country_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCourse]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCourse](
	[course_cd] [varchar](3) NOT NULL,
	[course_desc] [varchar](100) NOT NULL,
	[Type] [char](1) NULL,
	[Course_Gp] [varchar](20) NULL,
	[Current_ro] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mCourse] PRIMARY KEY CLUSTERED 
(
	[course_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mCourse_Grade]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mCourse_Grade](
	[course_cd] [nvarchar](255) NOT NULL,
	[grade_cd] [nvarchar](255) NULL,
	[pts_promotion] [decimal](4, 2) NULL,
	[status] [nvarchar](255) NULL,
	[entry_id] [nvarchar](255) NULL,
	[entry_dt] [datetime] NULL,
	[auth_id] [nvarchar](255) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mCourse_Grade] PRIMARY KEY CLUSTERED 
(
	[course_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mCourseOfficer]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mCourseOfficer](
	[course_cd] [varchar](3) NOT NULL,
	[course_desc] [varchar](50) NOT NULL,
	[Type] [char](1) NULL,
	[Course_Gp] [varchar](20) NULL,
	[Current_ro] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mCourseOfficer] PRIMARY KEY CLUSTERED 
(
	[course_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mDiagnosis]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mDiagnosis](
	[diag_Id] [int] IDENTITY(1,1) NOT NULL,
	[diag_cd] [varchar](10) NOT NULL,
	[diag_desc] [varchar](250) NULL,
	[diag_gp] [varchar](10) NULL,
	[Status] [char](1) NULL,
	[Entry_id] [varchar](10) NULL,
	[Entry_dt] [datetime] NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mDiagnosis] PRIMARY KEY CLUSTERED 
(
	[diag_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mDiagnosis_Group]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mDiagnosis_Group](
	[Diag_gp] [varchar](5) NOT NULL,
	[Diag_gp_name] [varchar](250) NULL,
	[Status] [char](1) NOT NULL,
	[Entry_id] [varchar](10) NOT NULL,
	[Entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mDisch_Cause]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mDisch_Cause](
	[cause_cd] [numeric](2, 0) NOT NULL,
	[cause_desc] [varchar](100) NOT NULL,
	[disch_cd] [numeric](2, 0) NOT NULL,
	[army_rule_no] [numeric](4, 0) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mDisch_Cause] PRIMARY KEY CLUSTERED 
(
	[cause_cd] ASC,
	[disch_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mDischarge]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mDischarge](
	[disch_cd] [numeric](2, 0) NOT NULL,
	[disch_cause] [varchar](50) NOT NULL,
	[Eli_for_Resrv] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mDistrict]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mDistrict](
	[district_cd] [varchar](4) NOT NULL,
	[district_desc] [varchar](50) NOT NULL,
	[state_cd] [numeric](2, 0) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mDistrict] PRIMARY KEY CLUSTERED 
(
	[district_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[medu_class]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medu_class](
	[Class_desc] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_medu_class] PRIMARY KEY CLUSTERED 
(
	[Class_desc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mEquipment]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mEquipment](
	[Equip_cd] [numeric](3, 0) NOT NULL,
	[Equip_name] [varchar](50) NULL,
	[Trade_cd] [varchar](5) NOT NULL,
	[Sus_No] [varchar](7) NOT NULL,
	[Auth_SS] [numeric](2, 0) NULL,
	[Auth_K] [numeric](2, 0) NULL,
	[Status] [char](1) NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mEquipment] PRIMARY KEY CLUSTERED 
(
	[Equip_cd] ASC,
	[Trade_cd] ASC,
	[Sus_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mField_Area]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mField_Area](
	[area_code] [varchar](4) NOT NULL,
	[area_name] [varchar](50) NOT NULL,
	[area_type_cd] [varchar](4) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mField_Area] PRIMARY KEY CLUSTERED 
(
	[area_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mform_of_marriage]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mform_of_marriage](
	[form_cd] [varchar](2) NOT NULL,
	[form_of_marriage] [varchar](30) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mform_of_marriage] PRIMARY KEY CLUSTERED 
(
	[form_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mGallantryAward]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mGallantryAward](
	[SNo] [int] IDENTITY(1,1) NOT NULL,
	[GallantryAward] [nvarchar](500) NULL,
	[Abbreviation] [nvarchar](100) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_mGallantryAward] PRIMARY KEY CLUSTERED 
(
	[SNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mGrade]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mGrade](
	[grade_cd] [numeric](2, 0) NOT NULL,
	[grade_desc] [varchar](30) NOT NULL,
	[next_higher_grade_cd] [numeric](2, 0) NULL,
	[instructor_grade] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mHospital]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mHospital](
	[hosp_cd] [varchar](4) NOT NULL,
	[hosp_desc] [varchar](50) NOT NULL,
	[location] [varchar](50) NULL,
	[sus_no] [varchar](7) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mHospital] PRIMARY KEY CLUSTERED 
(
	[hosp_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[minjury]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[minjury](
	[injury_cd] [decimal](2, 0) NOT NULL,
	[injury_desc] [nvarchar](30) NOT NULL,
	[pts_honhav] [decimal](4, 2) NULL,
	[status] [nvarchar](1) NOT NULL,
	[entry_id] [nvarchar](8) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[auth_id] [nvarchar](8) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_minjury] PRIMARY KEY CLUSTERED 
(
	[injury_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mInsurance]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mInsurance](
	[Company_cd] [numeric](2, 0) NOT NULL,
	[Company_name] [varchar](50) NOT NULL,
	[Policy_name] [varchar](100) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mInsurance_Company_1] PRIMARY KEY CLUSTERED 
(
	[Company_cd] ASC,
	[Policy_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mIntake]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mIntake](
	[Intake_cd] [numeric](2, 0) NOT NULL,
	[Intake_desc] [varchar](15) NOT NULL,
	[Rank_cd] [varchar](3) NULL,
	[Rank_cd_lpc] [varchar](2) NULL,
	[Enrol_age_min] [numeric](4, 2) NULL,
	[Enrol_age_max] [numeric](4, 2) NULL,
	[Allot_type] [char](1) NULL,
	[current_ro] [char](1) NULL,
	[colour_service] [numeric](2, 0) NULL,
	[reserve_liab] [numeric](2, 0) NULL,
	[Status] [char](1) NOT NULL,
	[Entry_id] [varchar](10) NOT NULL,
	[Entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mIntake] PRIMARY KEY CLUSTERED 
(
	[Intake_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mIsland]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mIsland](
	[Island_cd] [numeric](2, 0) NOT NULL,
	[Island_desc] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Entry_id] [varchar](10) NOT NULL,
	[Entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mIsland] PRIMARY KEY CLUSTERED 
(
	[Island_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mLanguage]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mLanguage](
	[lang_cd] [varchar](3) NOT NULL,
	[lang_desc] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mLanguage] PRIMARY KEY CLUSTERED 
(
	[lang_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mLanguageOfficer]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mLanguageOfficer](
	[lang_cd] [varchar](3) NOT NULL,
	[lang_desc] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mLanguageOfficer] PRIMARY KEY CLUSTERED 
(
	[lang_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mMarital_Status]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mMarital_Status](
	[marital_cd] [varchar](2) NOT NULL,
	[marital_desc] [varchar](20) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mMarital_Status] PRIMARY KEY CLUSTERED 
(
	[marital_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mMarriage]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mMarriage](
	[form_cd] [varchar](2) NOT NULL,
	[form_of_marriage] [varchar](30) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mform_of_marriage1] PRIMARY KEY CLUSTERED 
(
	[form_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mMed_Cat]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mMed_Cat](
	[med_cat_cd] [varchar](3) NOT NULL,
	[med_cat_desc] [varchar](50) NOT NULL,
	[nature] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mMed_Cat] PRIMARY KEY CLUSTERED 
(
	[med_cat_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mMedal]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mMedal](
	[medal_cd] [varchar](3) NOT NULL,
	[medal_desc] [varchar](100) NOT NULL,
	[medal_abberivation] [varchar](10) NULL,
	[medal_type] [char](1) NULL,
	[HA_Sub_Code] [varchar](6) NULL,
	[Decoration] [char](1) NULL,
	[medal_roll] [char](1) NULL,
	[clasp_bar] [char](1) NULL,
	[ref_medal_cd] [varchar](3) NULL,
	[pts_imtrat] [numeric](4, 2) NULL,
	[pts_overseas] [numeric](4, 2) NULL,
	[pts_promotion] [numeric](4, 2) NULL,
	[pts_honhav] [numeric](4, 2) NULL,
	[pts_msm] [numeric](4, 2) NULL,
	[Pts_UNMSN] [numeric](4, 2) NULL,
	[pts_lsgcm] [numeric](4, 2) NULL,
	[Pts_DSC] [numeric](4, 2) NULL,
	[Pts_DPC] [numeric](4, 2) NULL,
	[Pts_reemploy] [numeric](4, 2) NULL,
	[Medal_Metal] [char](1) NULL,
	[pao_cd] [varchar](10) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mMedal] PRIMARY KEY CLUSTERED 
(
	[medal_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mMedal_Type]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mMedal_Type](
	[medal_type_cd] [varchar](2) NOT NULL,
	[medal_type_desc] [varchar](50) NULL,
	[status] [char](1) NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[edit_id] [varchar](10) NULL,
	[edit_dt] [datetime] NULL,
	[val_id] [varchar](10) NULL,
	[val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[del_id] [varchar](10) NULL,
	[del_dt] [datetime] NULL,
 CONSTRAINT [PK_mMedal_Type] PRIMARY KEY CLUSTERED 
(
	[medal_type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mmedical_category]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mmedical_category](
	[med_cat_cd] [nvarchar](3) NOT NULL,
	[med_cat_desc] [nvarchar](20) NOT NULL,
	[nature] [nvarchar](1) NULL,
	[cat] [nvarchar](2) NULL,
	[status] [nvarchar](1) NOT NULL,
	[entry_id] [nvarchar](8) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[auth_id] [nvarchar](8) NULL,
	[auth_dt] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mMil_Edu]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mMil_Edu](
	[mil_edu_cd] [varchar](2) NOT NULL,
	[mil_edu_group] [char](1) NOT NULL,
	[mil_edu_desc] [varchar](30) NULL,
	[class] [numeric](1, 0) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mMil_Edu] PRIMARY KEY CLUSTERED 
(
	[mil_edu_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mmil_education]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mmil_education](
	[mil_edu_cd] [varchar](2) NOT NULL,
	[mil_edu_group] [char](1) NOT NULL,
	[mil_edu_desc] [varchar](30) NULL,
	[class] [numeric](1, 0) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mmil_education] PRIMARY KEY CLUSTERED 
(
	[mil_edu_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mNationality]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mNationality](
	[Nationality_cd] [numeric](2, 0) NOT NULL,
	[Nationality_desc] [varchar](50) NOT NULL,
	[country_cd] [numeric](3, 0) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mNationality] PRIMARY KEY CLUSTERED 
(
	[Nationality_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mObservation]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mObservation](
	[obsn_cd] [numeric](6, 0) NOT NULL,
	[obsn_desc] [varchar](200) NOT NULL,
	[RO_gp] [varchar](3) NULL,
	[RO_sub_gp] [varchar](4) NULL,
	[RO_func] [varchar](5) NULL,
	[cfa_sanction_req] [char](1) NULL,
	[Mandatory] [char](1) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mObservation] PRIMARY KEY CLUSTERED 
(
	[obsn_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mOperation]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mOperation](
	[op_cd] [varchar](3) NOT NULL,
	[op_name] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mOperation] PRIMARY KEY CLUSTERED 
(
	[op_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPay_Class]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPay_Class](
	[pay_class_cd] [numeric](1, 0) NOT NULL,
	[pay_class_desc] [varchar](15) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mPay_Class] PRIMARY KEY CLUSTERED 
(
	[pay_class_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPay_Group]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPay_Group](
	[pay_group_cd] [char](1) NOT NULL,
	[pay_group_desc] [varchar](20) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mPay_Group] PRIMARY KEY CLUSTERED 
(
	[pay_group_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPost_Office]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPost_Office](
	[Post_cd] [numeric](5, 0) NOT NULL,
	[Post_name] [varchar](100) NOT NULL,
	[State_cd] [numeric](2, 0) NULL,
	[District_cd] [varchar](4) NULL,
	[Pin_code] [numeric](8, 0) NULL,
	[Status] [char](1) NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mPost_Office_Post_cd] PRIMARY KEY CLUSTERED 
(
	[Post_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPost_Type]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPost_Type](
	[Post_type_cd] [varchar](2) NOT NULL,
	[Post_type_desc] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mPost_Type] PRIMARY KEY CLUSTERED 
(
	[Post_type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPTO_Appt]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPTO_Appt](
	[Appt_id] [int] IDENTITY(1,1) NOT NULL,
	[PAO_Rank] [nvarchar](100) NULL,
	[Status] [char](1) NULL,
	[Promo_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_mPTO_Appt] PRIMARY KEY CLUSTERED 
(
	[Appt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPTO_Cert]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPTO_Cert](
	[Desc_cd] [numeric](4, 0) NOT NULL,
	[Cert_1] [varchar](500) NOT NULL,
	[Cert_2] [varchar](500) NULL,
	[Cert_3] [varchar](500) NULL,
	[Authority] [varchar](100) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
	[Rank_style] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPTO_Controls]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPTO_Controls](
	[Ctl_cd] [int] IDENTITY(1,1) NOT NULL,
	[Desc_cd] [numeric](6, 0) NOT NULL,
	[lbl_Name_Pto] [varchar](100) NOT NULL,
	[lbl_Name_SR] [varchar](100) NOT NULL,
	[Ctl_Id] [nvarchar](30) NOT NULL,
	[Ctl_Type] [varchar](20) NOT NULL,
	[Ctl_Value] [varchar](300) NULL,
	[Ctl_Value_Where] [nvarchar](300) NULL,
	[Ctl_Default_Value] [nvarchar](200) NULL,
	[Ctl_Len] [numeric](3, 0) NULL,
	[Ctl_DB_Fd] [varchar](50) NOT NULL,
	[Ctl_Validation] [char](1) NULL,
	[Ctl_ToolTip] [varchar](200) NULL,
	[Mandatory] [char](1) NOT NULL,
	[IsReadOnly] [char](1) NOT NULL CONSTRAINT [DF_mPTO_Controls_ReadOnly]  DEFAULT ('N'),
	[IsPostBack] [char](1) NOT NULL CONSTRAINT [DF_mPTO_Controls_IsPostBack]  DEFAULT ('N'),
	[CssClass] [nvarchar](30) NULL,
	[PopupWindow] [nvarchar](250) NULL,
	[Ctl_Seq] [float] NULL,
 CONSTRAINT [PK_mPTO_Controls_Ctl_cd] PRIMARY KEY CLUSTERED 
(
	[Ctl_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPTO_Master]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPTO_Master](
	[Desc_cd] [numeric](6, 0) NOT NULL,
	[Unjoined_Desc_cd] [nvarchar](500) NULL,
	[Description] [nvarchar](40) NULL,
	[PTO_Group] [varchar](3) NOT NULL,
	[SheetRoll_Page] [varchar](3) NOT NULL,
	[NRE] [char](1) NULL,
	[Full_Name] [varchar](150) NULL,
	[Catgeory] [nvarchar](150) NULL,
	[Financial] [char](1) NULL,
	[Record_Pto] [char](1) NULL,
	[Auto_Event] [char](1) NULL,
	[Pto_Section] [char](2) NULL,
	[Status] [char](1) NOT NULL,
	[Status_Remark] [char](1) NULL,
	[Desc_SeqNo] [float] NOT NULL,
	[Desc_Group] [nvarchar](100) NULL,
	[Ref_Desc_Group] [nvarchar](50) NULL,
	[Desc_Start_dt] [datetime] NULL,
	[Desc_Stop_dt] [datetime] NULL,
	[Desc_Stop_Msg] [nvarchar](250) NULL,
	[IsStoppedBy_Ref] [bit] NULL CONSTRAINT [DF_mPTO_Master_IsStoppedBy_Ref]  DEFAULT ((0)),
	[IsAdmissibleToRect] [bit] NULL CONSTRAINT [DF_mPTO_Master_IsAllowence]  DEFAULT ((0)),
	[IsCertificateReqd] [bit] NULL,
	[IsAllowance] [bit] NULL CONSTRAINT [DF_mPTO_Master_IsAllowance]  DEFAULT ((0)),
	[IsAllcReqdToStop] [bit] NULL CONSTRAINT [DF_mPTO_Master_IsAllowance1]  DEFAULT ((0)),
 CONSTRAINT [PK_mPTO_Master_Desc_cd] PRIMARY KEY CLUSTERED 
(
	[Desc_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPTO_OPTFIX]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPTO_OPTFIX](
	[Rank_id] [int] IDENTITY(1,1) NOT NULL,
	[PAO_Rank] [nvarchar](100) NULL,
	[Status] [char](1) NULL,
	[Promo_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_mPTO_OPTFIX] PRIMARY KEY CLUSTERED 
(
	[Rank_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mPto_RUMCIG]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mPto_RUMCIG](
	[Area] [nvarchar](15) NOT NULL,
	[Amt] [int] NULL,
 CONSTRAINT [PK_mPto_RUMCIG] PRIMARY KEY CLUSTERED 
(
	[Area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mPTO_Validations]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mPTO_Validations](
	[Desc_cd] [numeric](6, 0) NOT NULL,
	[ValidatorType] [nvarchar](2) NOT NULL,
	[CtlToValidate] [nvarchar](30) NULL,
	[Optr] [nvarchar](2) NULL,
	[CmprCtl] [nvarchar](50) NULL,
	[CtlToValidateClientEvent] [nvarchar](20) NULL,
	[CmprCtlValueClient] [nvarchar](max) NULL,
	[CmprCtlValueServer] [nvarchar](250) NULL,
	[CmprCtlTblNameServer] [nvarchar](100) NULL,
	[CmprCtlValueWhere] [nvarchar](300) NULL,
	[ValidateFunction] [nvarchar](30) NULL,
	[ErrMsg] [nvarchar](150) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mPunish]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mPunish](
	[punish_cd] [varchar](2) NOT NULL,
	[PTO_Desc_cd] [numeric](4, 0) NULL,
	[Pto_Description] [nvarchar](20) NULL,
	[punish_desc] [varchar](50) NOT NULL,
	[Punish_Type] [char](1) NULL,
	[Punish_Auth] [varchar](15) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mPunish_punish_cd] PRIMARY KEY CLUSTERED 
(
	[punish_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mRank]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mRank](
	[rank_cd] [int] IDENTITY(1,1) NOT NULL,
	[rank_cd_Arpan] [varchar](3) NOT NULL,
	[ro_cd] [int] NOT NULL,
	[arm_service_cd] [smallint] NOT NULL,
	[Type_cd] [char](4) NOT NULL,
	[rank_desc] [varchar](30) NOT NULL,
	[rank_full_desc] [varchar](50) NULL,
	[Hindi_Name] [varchar](50) NULL,
	[jco_or] [char](1) NULL,
	[rank_group] [varchar](3) NULL,
	[grade_appnt] [char](2) NULL,
	[next_higher_rank_cd] [varchar](3) NULL,
	[rank_cd_lpc] [varchar](2) NULL,
	[PAO_Rank] [varchar](30) NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mRank_rank_cd] PRIMARY KEY CLUSTERED 
(
	[rank_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrecord_office]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrecord_office](
	[ro_cd] [decimal](2, 0) NOT NULL,
	[ro_cd_lpc] [decimal](2, 0) NULL,
	[ro_name] [varchar](50) NOT NULL,
	[corp_cd] [nvarchar](4) NULL,
	[Arm_service_cd] [int] NULL,
	[rank_style] [nvarchar](4) NULL,
	[current_site] [nvarchar](1) NULL,
	[current_ro] [nvarchar](1) NULL,
	[location] [nvarchar](20) NULL,
	[sus_no] [nvarchar](7) NULL,
	[address] [nvarchar](50) NULL,
	[telephone] [decimal](20, 0) NULL,
	[CO_name] [nvarchar](20) NULL,
	[ass_pao_sus_no] [nvarchar](7) NULL,
	[letter_ref] [nvarchar](15) NULL,
	[dg_letter_ref] [nvarchar](15) NULL,
	[livedbname] [nvarchar](20) NULL,
	[backlogdbname] [nvarchar](20) NULL,
	[nedbname] [nvarchar](20) NULL,
	[UNIFYdbname] [nvarchar](20) NULL,
	[status] [nvarchar](1) NOT NULL,
	[entry_id] [nvarchar](8) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[auth_id] [nvarchar](8) NULL,
	[auth_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mRelation]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mRelation](
	[relation_cd] [varchar](2) NOT NULL,
	[relation_desc] [varchar](20) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mRelation] PRIMARY KEY CLUSTERED 
(
	[relation_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mReligion]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mReligion](
	[religion_cd] [varchar](2) NOT NULL,
	[religion_desc] [varchar](25) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mReligion] PRIMARY KEY CLUSTERED 
(
	[religion_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mschool]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mschool](
	[school_cd] [nvarchar](4) NOT NULL,
	[school_desc] [nvarchar](20) NOT NULL,
	[location] [nvarchar](20) NULL,
	[status] [nvarchar](1) NOT NULL,
	[entry_id] [nvarchar](8) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[auth_id] [nvarchar](8) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_mschool_school_cd] PRIMARY KEY CLUSTERED 
(
	[school_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mschool_institute]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mschool_institute](
	[si_cd] [varchar](50) NULL,
	[si_desc] [nvarchar](255) NULL,
	[si_type] [nvarchar](255) NULL,
	[Cat_type] [nvarchar](255) NULL,
	[location] [nvarchar](255) NULL,
	[district_cd] [float] NULL,
	[state_cd] [float] NULL,
	[country_cd] [float] NULL,
	[Status] [nvarchar](255) NULL,
	[entry_id] [nvarchar](255) NULL,
	[entry_dt] [datetime] NULL,
	[Edit_id] [nvarchar](255) NULL,
	[Edit_dt] [nvarchar](255) NULL,
	[Val_id] [nvarchar](255) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [nvarchar](255) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [nvarchar](255) NULL,
	[Del_dt] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mSport]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mSport](
	[sport_cd] [varchar](4) NOT NULL,
	[sport_desc] [varchar](30) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mSport] PRIMARY KEY CLUSTERED 
(
	[sport_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mSport_Level]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mSport_Level](
	[sport_level_cd] [numeric](3, 0) NOT NULL,
	[sport_level_desc] [varchar](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mSport_Level] PRIMARY KEY CLUSTERED 
(
	[sport_level_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mState]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mState](
	[state_cd] [numeric](2, 0) NOT NULL,
	[state_desc] [varchar](30) NOT NULL,
	[state_cd_lpc] [varchar](2) NULL,
	[country_cd] [numeric](3, 0) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mState] PRIMARY KEY CLUSTERED 
(
	[state_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mSub_Class]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mSub_Class](
	[subclass_cd] [varchar](15) NOT NULL,
	[class_cd] [varchar](5) NULL,
	[subclass_desc] [varchar](25) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mSub_Class_1] PRIMARY KEY CLUSTERED 
(
	[subclass_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[msubject]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[msubject](
	[subject_cd] [nvarchar](5) NOT NULL,
	[description] [nvarchar](250) NULL,
	[sub_gp] [varchar](5) NULL,
	[status] [nvarchar](1) NOT NULL,
	[entry_id] [nvarchar](8) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[auth_id] [nvarchar](8) NULL,
	[auth_dt] [datetime] NULL,
 CONSTRAINT [PK_msubject_subject_cd] PRIMARY KEY CLUSTERED 
(
	[subject_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mTerms]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mTerms](
	[Rank_cd] [varchar](3) NOT NULL,
	[Willing] [char](1) NOT NULL,
	[Category] [char](1) NOT NULL,
	[Age] [numeric](2, 0) NULL,
	[Service] [numeric](2, 0) NULL,
	[Reserve_liab] [numeric](2, 0) NULL,
	[Reserve_liab_age] [numeric](2, 0) NULL,
	[Tenure] [numeric](2, 0) NULL,
	[Status] [char](1) NOT NULL,
	[Entry_id] [varchar](10) NOT NULL,
	[Entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mTerms] PRIMARY KEY CLUSTERED 
(
	[Rank_cd] ASC,
	[Willing] ASC,
	[Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mTheatre_of_Ops]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mTheatre_of_Ops](
	[op_theatre_cd] [numeric](3, 0) NOT NULL,
	[ops_theatre_desc] [varchar](30) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mTheatre_of_Ops] PRIMARY KEY CLUSTERED 
(
	[op_theatre_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mtrade]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mtrade](
	[trade_cd] [int] IDENTITY(1,1) NOT NULL,
	[trade_cd_Arpan] [nvarchar](5) NOT NULL,
	[trade_desc] [nvarchar](15) NOT NULL,
	[full_desc] [nvarchar](100) NULL,
	[current_ro] [nvarchar](1) NULL,
	[arms_service_cd] [int] NULL,
	[category] [nvarchar](1) NULL,
	[trade_group] [nvarchar](4) NULL,
	[trng_in_wk] [decimal](3, 0) NULL,
	[trng_in_mth] [decimal](2, 0) NULL,
	[pts_honhav] [decimal](4, 2) NULL,
	[lowest_class] [decimal](1, 0) NULL,
	[status] [nvarchar](1) NOT NULL,
	[entry_id] [nvarchar](8) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[auth_id] [nvarchar](8) NULL,
	[auth_dt] [datetime] NULL,
	[rank_style] [nvarchar](4) NULL,
	[trade_desc_marged] [varchar](15) NULL,
 CONSTRAINT [PK_mtrade_trade_cd] PRIMARY KEY CLUSTERED 
(
	[trade_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mTrade_Category]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mTrade_Category](
	[trade_cd] [varchar](5) NOT NULL,
	[group_name] [varchar](20) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mTrade_Category] PRIMARY KEY CLUSTERED 
(
	[trade_cd] ASC,
	[group_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mTrgAmount]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mTrgAmount](
	[Amt_Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NULL,
	[Trg_Est] [varchar](50) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_mTrgAmount] PRIMARY KEY CLUSTERED 
(
	[Amt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mUnit]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mUnit](
	[Sus_no] [varchar](7) NOT NULL,
	[Suffix] [char](1) NOT NULL,
	[Unit_desc] [varchar](100) NOT NULL,
	[ArmSvc_cd] [numeric](2, 0) NULL,
	[Unit_cat_cd] [varchar](2) NULL,
	[UnitType_cd] [numeric](5, 0) NULL,
	[Current_ro] [char](1) NULL,
	[Command_cd] [numeric](2, 0) NULL,
	[Command_zone_cd] [varchar](4) NULL,
	[ERE] [char](1) NULL,
	[RO_cd] [numeric](2, 0) NULL,
	[Formation_HQ] [varchar](7) NULL,
	[Next_formation_HQ] [varchar](7) NULL,
	[Corp_cd] [numeric](3, 0) NULL,
	[Location] [varchar](50) NULL,
	[NRS] [varchar](50) NULL,
	[Area_type_cd] [varchar](2) NULL,
	[PE_WE] [char](2) NULL,
	[Role_cd] [numeric](2, 0) NULL,
	[CTU] [numeric](1, 0) NULL,
	[Max_tenure] [numeric](2, 0) NULL,
	[Establish_dt] [datetime] NULL,
	[Establish_Place] [varchar](50) NULL,
	[Disbandment_dt] [datetime] NULL,
	[CO_Name] [varchar](50) NULL,
	[PAO_LG_No] [varchar](20) NULL,
	[Grp_cd] [numeric](5, 0) NULL,
	[Subgrp_name] [varchar](10) NULL,
	[Seniority] [numeric](5, 0) NULL,
	[PAO_cd] [varchar](10) NULL,
	[Mod_type] [numeric](1, 0) NULL,
	[Postal_Address] [varchar](100) NULL,
	[Army_PIN] [numeric](6, 0) NULL,
	[APO_Name] [varchar](10) NULL,
	[Move_dt] [datetime] NULL,
	[Act_Func] [char](1) NULL,
	[Status] [char](1) NULL,
	[Entry_id] [varchar](10) NULL,
	[Entry_dt] [datetime] NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[Auth_id] [varchar](10) NULL,
	[Auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mUnit_All] PRIMARY KEY CLUSTERED 
(
	[Sus_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mupclass]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mupclass](
	[trade_cd] [nvarchar](5) NOT NULL,
	[class_to] [decimal](1, 0) NOT NULL,
	[service] [decimal](3, 0) NULL,
	[lower_class_service] [decimal](2, 0) NULL,
	[ace] [decimal](1, 0) NULL,
	[aec] [decimal](1, 0) NULL,
	[TT] [decimal](18, 0) NULL,
	[status] [nvarchar](1) NOT NULL,
	[entry_id] [nvarchar](8) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[auth_id] [nvarchar](8) NULL,
	[auth_dt] [datetime] NULL,
	[OTT] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mXlist]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mXlist](
	[Xlist_cd] [numeric](2, 0) NOT NULL,
	[Xlist_name] [varchar](30) NOT NULL,
	[Xlist_desc] [varchar](100) NULL,
	[Status] [char](1) NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mXlist] PRIMARY KEY CLUSTERED 
(
	[Xlist_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mZila_Sainik_Board]    Script Date: 27-07-2022 10:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mZila_Sainik_Board](
	[Zila_cd] [numeric](3, 0) NOT NULL,
	[Zila_name] [varchar](50) NOT NULL,
	[Address] [varchar](100) NULL,
	[State_cd] [numeric](2, 0) NOT NULL,
	[District_cd] [varchar](4) NOT NULL,
	[Status] [char](1) NOT NULL,
	[entry_id] [varchar](10) NOT NULL,
	[entry_dt] [datetime] NOT NULL,
	[Edit_id] [varchar](10) NULL,
	[Edit_dt] [datetime] NULL,
	[Val_id] [varchar](10) NULL,
	[Val_dt] [datetime] NULL,
	[auth_id] [varchar](10) NULL,
	[auth_dt] [datetime] NULL,
	[Del_id] [varchar](10) NULL,
	[Del_dt] [datetime] NULL,
 CONSTRAINT [PK_mZila_Sainik_Board] PRIMARY KEY CLUSTERED 
(
	[Zila_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[HR_MST_AuthofOffcrsJCOsORs] ADD  CONSTRAINT [DF_HR_MST_AuthofOffcrsJCOsORs_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_MST_Campaign] ADD  CONSTRAINT [DF_HR_MST_Campaign_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_MST_Capsule] ADD  CONSTRAINT [DF_HR_MST_Capsule_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_MST_WEPEAuthType] ADD  CONSTRAINT [DF_HR_MST_WEPEAuthType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [IT_Page2]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [Adhaarno_YesNo_Page2]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [UIDIA_YesNo_Page2]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [PCDA_YesNo_Page2]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [ConsntRecve_YesNo_Page2]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [SparsePort_YesNo_Page2]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [Rdb_deductYesNo_Page4]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [Rdb_aadharnoYesNo_Page4]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [Rdb_NIC_YesNo_Page4]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [Rdb_PCDAYesNo_Page4]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [Rdb_consntNotifYesNo_Page4]
GO
ALTER TABLE [dbo].[HR_PnsDocsArmyDetails] ADD  DEFAULT ((0)) FOR [Rdb_VerficationYesNo_Page4]
GO
ALTER TABLE [dbo].[HR_TRN_Absence] ADD  CONSTRAINT [DF_HR_TRN_Absence_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Appt] ADD  CONSTRAINT [DF_HR_TRN_Appt_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Attestation] ADD  CONSTRAINT [DF_HR_TRN_Attestation_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Cadres] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_CommissionOffrs] ADD  CONSTRAINT [DF_HR_TRN_CommissionOffrs_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Course_Cadre] ADD  CONSTRAINT [DF_HR_TRN_Course_Cadre_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_CourseLetterDetails] ADD  CONSTRAINT [DF_HR_TRN_CourseLetterDetails_IsFinal]  DEFAULT ((0)) FOR [IsFinal]
GO
ALTER TABLE [dbo].[HR_TRN_CourseLetterDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Decoration] ADD  CONSTRAINT [DF_HR_TRN_Decoration_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_DischargeOrder] ADD  CONSTRAINT [DF_HR_TRN_DischargeOrder_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_DuesInPersonnel] ADD  CONSTRAINT [DF_HR_TRN_DuesInPersonnel_Paraded]  DEFAULT ((1)) FOR [Paraded]
GO
ALTER TABLE [dbo].[HR_TRN_DuesInPersonnel] ADD  CONSTRAINT [DF_HR_TRN_DuesInPersonnel_MORecieved]  DEFAULT ((0)) FOR [MORecieved]
GO
ALTER TABLE [dbo].[HR_TRN_DuesInPersonnel] ADD  CONSTRAINT [DF_HR_TRN_DuesInPersonnel_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_DuesInPersonnel] ADD  CONSTRAINT [DF_HR_TRN_DuesInPersonnel_StrnInc]  DEFAULT ((0)) FOR [StrnInc]
GO
ALTER TABLE [dbo].[HR_TRN_ERE] ADD  CONSTRAINT [DF_HR_TRN_ERE_MOGeneratedFlag]  DEFAULT ((0)) FOR [MOGeneratedFlag]
GO
ALTER TABLE [dbo].[HR_TRN_ERE] ADD  CONSTRAINT [DF_HR_TRN_ERE_OrderlyNCOFlag]  DEFAULT ((0)) FOR [OrderlyNCOFlag]
GO
ALTER TABLE [dbo].[HR_TRN_ERE] ADD  CONSTRAINT [DF_HR_TRN_ERE_History]  DEFAULT ('C') FOR [History]
GO
ALTER TABLE [dbo].[HR_TRN_ERE] ADD  CONSTRAINT [DF_HR_TRN_ERE_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_ERE] ADD  DEFAULT (NULL) FOR [Parade_date]
GO
ALTER TABLE [dbo].[HR_TRN_FieldService] ADD  CONSTRAINT [DF_HR_TRN_FieldService_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_FOREIGNVISIT] ADD  CONSTRAINT [DF_HR_TRN_FOREIGNVISIT_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_FORMERSERVICE] ADD  CONSTRAINT [DF_HR_TRN_FORMERSERVICE_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_FORMERSERVICE] ADD  CONSTRAINT [DF_HR_TRN_FORMERSERVICE_EntryFlag]  DEFAULT ((0)) FOR [EntryFlag]
GO
ALTER TABLE [dbo].[HR_TRN_GSPay] ADD  CONSTRAINT [DF_HR_TRN_GSPay_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Injuries] ADD  CONSTRAINT [DF_HR_TRN_Injuries_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_InstituteConductingCourse] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_LeaveConfiguration] ADD  CONSTRAINT [DF_HR_TRN_LeaveConfiguration_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_LeavePlan] ADD  CONSTRAINT [DF_HR_TRN_LeavePlan_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[HR_TRN_LICPolicy] ADD  CONSTRAINT [DF_HR_TRN_LICPolicy_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_LvCertiRlyWrt] ADD  CONSTRAINT [DF__HR_TRN_Lv__IsAct__54425081]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_LveDtl] ADD  CONSTRAINT [DF_HR_TRN_LveDtl_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_LveEncash] ADD  CONSTRAINT [DF_HR_TRN_LveEncash_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_MACP] ADD  CONSTRAINT [DF_HR_TRN_MACP_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Missing] ADD  CONSTRAINT [DF_HR_TRN_Missing_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_NominatedPers] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIA_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIA_Impoted_Cancel]  DEFAULT ('N') FOR [Cancel]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIA_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIA_Impoted_Completed]  DEFAULT ((0)) FOR [Completed]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIA_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIA_Impoted_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIA_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIA_Impoted_Obsn_item]  DEFAULT ('') FOR [Obsn_item]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIB_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIB_Imported_Cancel]  DEFAULT ('N') FOR [Cancel]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIB_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIB_Imported_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIB_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIB_Imported_Obsn_item]  DEFAULT ('') FOR [Obsn_item]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIC] ADD  CONSTRAINT [DF_HR_TRN_PtoIC_Cancel]  DEFAULT ('N') FOR [Cancel]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIC] ADD  CONSTRAINT [DF_HR_TRN_PtoIC_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIC_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIC_Imported_Cancel]  DEFAULT ('N') FOR [Cancel]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIC_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIC_Imported_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIC_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIC_Imported_Obsn_item]  DEFAULT ('') FOR [Obsn_item]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIIA_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIIA_Imported_Cancel]  DEFAULT ('N') FOR [Cancel]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIIA_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIIA_Imported_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIIA_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIIA_Imported_Obsn_item]  DEFAULT ('') FOR [Obsn_item]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIIB_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIIB_Imported_Cancel]  DEFAULT ('N') FOR [Cancel]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIIB_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIIB_Imported_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoIIB_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoIIB_Imported_Obsn_item]  DEFAULT ('') FOR [Obsn_item]
GO
ALTER TABLE [dbo].[HR_TRN_PtoJCOsHeader_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_Imported_Draft]  DEFAULT (N'Y') FOR [Draft]
GO
ALTER TABLE [dbo].[HR_TRN_PtoJCOsHeader_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_Imported_Cancel]  DEFAULT (N'N') FOR [Cancel]
GO
ALTER TABLE [dbo].[HR_TRN_PtoJCOsHeader_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_Imported_TotalCasualties]  DEFAULT ((0)) FOR [TotalCasualties]
GO
ALTER TABLE [dbo].[HR_TRN_PtoJCOsHeader_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_Imported_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoJCOsHeader_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_Imported_Verify]  DEFAULT ((0)) FOR [Verify]
GO
ALTER TABLE [dbo].[HR_TRN_PtoJCOsHeader_Imported] ADD  CONSTRAINT [DF_HR_TRN_PtoJCOsHeader_Imported_Migrated]  DEFAULT ((0)) FOR [Migrated]
GO
ALTER TABLE [dbo].[HR_TRN_PtoNRAHistory] ADD  CONSTRAINT [DF_HR_TRN_PtoNRAHistory_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_PtoNRAHistory] ADD  CONSTRAINT [DF_HR_TRN_PtoNRAHistory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[HR_TRN_Qualification] ADD  CONSTRAINT [DF_HR_TRN_Qualification_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Qualification] ADD  CONSTRAINT [DF_HR_TRN_Qualification_EntryFlag]  DEFAULT ((0)) FOR [EntryFlag]
GO
ALTER TABLE [dbo].[HR_TRN_QualificationRequired] ADD  CONSTRAINT [DF_HR_TRN_QualificationRequired_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_RationState] ADD  CONSTRAINT [DF_HR_TRN_RationState_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Remust] ADD  CONSTRAINT [DF_HR_TRN_Remust_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Serlization] ADD  CONSTRAINT [DF_HR_TRN_Sterlization_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Signature_ApptLog] ADD  CONSTRAINT [DF__HR_TRN_Si__IsAct__3334FD8D]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_TempArmyPersDetails] ADD  CONSTRAINT [DF_HR_TRN_TempArmyPersDetails_Paraded]  DEFAULT ((0)) FOR [Paraded]
GO
ALTER TABLE [dbo].[HR_TRN_TempArmyPersDetails] ADD  CONSTRAINT [DF_HR_TRN_TempArmyPersDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_TermsOfEng] ADD  CONSTRAINT [DF_HR_TRN_TermsOfEng_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_TrgARC] ADD  CONSTRAINT [DF_HR_TRN_TrgARC_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_TrgOperation] ADD  CONSTRAINT [DF_HR_TRN_TrgOperation_Attended]  DEFAULT ((0)) FOR [Attended]
GO
ALTER TABLE [dbo].[HR_TRN_TrgOperation] ADD  CONSTRAINT [DF_HR_TRN_TrgOperation_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_UnitHierarchyTemplates old] ADD  CONSTRAINT [DF_HR_TRN_UnitHierarchyTemplates_Detatch]  DEFAULT ((0)) FOR [Detatch]
GO
ALTER TABLE [dbo].[HR_TRN_Upclass] ADD  CONSTRAINT [DF_HR_TRN_Upclass_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_Verification] ADD  CONSTRAINT [DF_HR_TRN_Verification_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_WarningOrder] ADD  CONSTRAINT [DF_HR_TRN_WarningOrder_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_WillDetails] ADD  CONSTRAINT [DF_HR_TRN_WillDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HR_TRN_3008Details]  WITH CHECK ADD  CONSTRAINT [FK_HR_TRN_3008Details_HR_TRN_3008Header1] FOREIGN KEY([HID])
REFERENCES [dbo].[HR_TRN_3008Header] ([HID])
GO
ALTER TABLE [dbo].[HR_TRN_3008Details] CHECK CONSTRAINT [FK_HR_TRN_3008Details_HR_TRN_3008Header1]
GO
ALTER TABLE [dbo].[HR_TRN_ArmyPersDetails]  WITH CHECK ADD  CONSTRAINT [FK_HR_TRN_ArmyPersDetails_HR_TRN_ArmyPersDetails] FOREIGN KEY([ArmyNo])
REFERENCES [dbo].[HR_TRN_ArmyPersDetails] ([ArmyNo])
GO
ALTER TABLE [dbo].[HR_TRN_ArmyPersDetails] CHECK CONSTRAINT [FK_HR_TRN_ArmyPersDetails_HR_TRN_ArmyPersDetails]
GO
ALTER TABLE [dbo].[HR_TRN_OFFENCE]  WITH CHECK ADD  CONSTRAINT [FK_HR_TRN_OFFENCE_LS_LKP_InkType] FOREIGN KEY([InkType])
REFERENCES [dbo].[LS_LKP_InkType] ([InkType])
GO
ALTER TABLE [dbo].[HR_TRN_OFFENCE] CHECK CONSTRAINT [FK_HR_TRN_OFFENCE_LS_LKP_InkType]
GO
ALTER TABLE [dbo].[HR_TRN_WtDetails]  WITH CHECK ADD  CONSTRAINT [FK_HR_TRN_WtDetails_HR_LKP_WtNatureOfMove] FOREIGN KEY([MoveId])
REFERENCES [dbo].[HR_LKP_WtNatureOfMove] ([MoveId])
GO
ALTER TABLE [dbo].[HR_TRN_WtDetails] CHECK CONSTRAINT [FK_HR_TRN_WtDetails_HR_LKP_WtNatureOfMove]
GO
ALTER TABLE [dbo].[HR_TRN_WtFamilyDetails]  WITH CHECK ADD  CONSTRAINT [FK_HR_TRN_WtFamilyDetails_HR_TRN_WtDetails] FOREIGN KEY([WtDtlId])
REFERENCES [dbo].[HR_TRN_WtDetails] ([WtDtlId])
GO
ALTER TABLE [dbo].[HR_TRN_WtFamilyDetails] CHECK CONSTRAINT [FK_HR_TRN_WtFamilyDetails_HR_TRN_WtDetails]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Not in use' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_Appointment', @level2type=N'COLUMN',@level2name=N'ApptId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S for only once published.M for multiple published.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoChkDuplicate', @level2type=N'COLUMN',@level2name=N'Flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'THIS FLAG IS MANNUALLY SET TO 1 AND MAPPING TO SAME COLUMN. THIS NEED TO MANNUALLY UPDATED USING HR SUIT APPJ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoOldAppxJMapping', @level2type=N'COLUMN',@level2name=N'FlagUpdated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Casualty Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoRefCasualties', @level2type=N'COLUMN',@level2name=N'Desc_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Casualty Description.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoRefCasualties', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 - Not for Draft,1- Draft' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoRefCasualties', @level2type=N'COLUMN',@level2name=N'DraftRef'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Casualty code where postback is required.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoServerSideValidations', @level2type=N'COLUMN',@level2name=N'CasCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Control Id on which postback is required.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoServerSideValidations', @level2type=N'COLUMN',@level2name=N'PostBackCtlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'type all items/options seperated by comma(,) on which postback action will be taken.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoServerSideValidations', @level2type=N'COLUMN',@level2name=N'PostBackCtlValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mandatory, NotMandatory,DDL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoServerSideValidations', @level2type=N'COLUMN',@level2name=N'ActionTaken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The control id which will get effected by postback.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoServerSideValidations', @level2type=N'COLUMN',@level2name=N'EffectedCtlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'To set any value for Effected control.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoServerSideValidations', @level2type=N'COLUMN',@level2name=N'EffectedCtlValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'On postback, if value is required to be fetched from database then following statement will be used : Enter table.fieldName (table dot field name) in EffectedCtlValue column and where condition in EffectedCtlWhere column.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoServerSideValidations', @level2type=N'COLUMN',@level2name=N'EffectedCtlWhere'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'temporary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MST_PtoServerSideValidations', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MESS Member- Pers living taking MES ration, Family Member-Pers living taking Family ration' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TR_Ration', @level2type=N'COLUMN',@level2name=N'Ration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Aata_Eater- 0 means pers is not AataEater,1 means pers is Aata_Eater' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TR_Ration', @level2type=N'COLUMN',@level2name=N'Aata_Eater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rice_Eater- 0 means pers is not taking Rice, 1 means pers is taking Rice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TR_Ration', @level2type=N'COLUMN',@level2name=N'Rice_Eater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VegNonVeg- means pers can have an option of Pure Veg,veg,EggVeg or Nonveg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TR_Ration', @level2type=N'COLUMN',@level2name=N'VegNonVeg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Egg- 0 means pers is not taking Egg, 1 means pers is taking Egg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TR_Ration', @level2type=N'COLUMN',@level2name=N'Egg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ration Money- Includes HRA,SRA,NRA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TR_Ration', @level2type=N'COLUMN',@level2name=N'RationMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HR_LKP_Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'AddressType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'CustomAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'HouseNoVillage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'Tehsil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'PostOffice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'Telegraph_Office'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'NRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DistrictId-mDistrict' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'DistrictId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StateId-mState' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'StateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'PinCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CountryId-mCountry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'CountryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'TelephoneNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Address', @level2type=N'COLUMN',@level2name=N'NMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sus Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'SUSNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'PersonnelName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RecOffId- mrecord_office,RecoffId will occur only in case of JCO/ORs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'RecOffId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AuthTypeId- HR_MST_AuthorizationType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'AuthTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ArmServiceId- mArmsServices' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'ArmServiceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CommId- it will occur only in case of Officers (HR_MST_ComissionType)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'CommId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Class - mpay_class' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'Class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trade- V_ArmServiceTrade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SubstantiveRankId- V_Rank' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'SubstantiveRankId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ActingRankId-  ActingRankId will occur only in case of Officers and JCOs, for officers data will come from V_Rank and for JCOs data will come from HR_MST_Appointment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'ActingRankId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sex- Sex will occur only in case of Officers,M fro Male and F for Female' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReligionId- mreligion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'ReligionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CasteStatus- mclass' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'CasteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MotherTongue- mLanguage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_ArmyPersDetails', @level2type=N'COLUMN',@level2name=N'MotherTongue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BankAccType- Pers can have two types of A/C ie Single and Joint A/C''' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'BankAccType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'BankAccNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'BankersName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'BankersCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'ParmanentAccNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'PlaceLocated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JointAccHolderId-Includes the name of member with whom joint acc is opened(HR_TRN_Family)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'JointAcctHolderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'District- mdistrict' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'District'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State- mstate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country- mcountry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_BankDetail', @level2type=N'COLUMN',@level2name=N'Country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WtDtlId(Warrant Detail ID) is the foreign key of table HR_TRN_WtDetails' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Courses', @level2type=N'COLUMN',@level2name=N'WtDtlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WtDtlId(Warrant Detail ID) is the foreign key of table HR_TRN_WtDetails' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_DuesOutPersonnel', @level2type=N'COLUMN',@level2name=N'WtDtlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Normal or OnRelief' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_DuesOutPersonnel', @level2type=N'COLUMN',@level2name=N'TypeOfPosting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EventId-HR_LKP_Event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Family', @level2type=N'COLUMN',@level2name=N'EventId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOK-0 means NOK is not declared,1 means NOK is declared' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Family', @level2type=N'COLUMN',@level2name=N'NOK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RelationCd- mrelation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Family', @level2type=N'COLUMN',@level2name=N'RelationCd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AddressTypeId- P includes the permanent address of Pers, C includes the custom Address (HR_TRN_Address)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Family', @level2type=N'COLUMN',@level2name=N'AddressTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Marriagerites- mform_of_marriage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Family', @level2type=N'COLUMN',@level2name=N'Marriagerites'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FundPolicyId-Pers living may have Will A/C, AGI,AFPP,DCRG,DSOP Funds or LIC policy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_FundPolicy', @level2type=N'COLUMN',@level2name=N'FundPolicyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MemberId- Name of the member for whom  WILL/FUNDS/LIC are taken(HR_TRN_Family)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_FundPolicy', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PolicyPaymentMode-Default and DSOP Fund will occur only in case of LIC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_FundPolicy', @level2type=N'COLUMN',@level2name=N'PolicyPaymentMode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BloodGroupId-HR_MST_Blood_Gp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Identity_Details', @level2type=N'COLUMN',@level2name=N'BloodGroupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sex-Includes the gender of the Pers M for Male and F for Female' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Identity_Details', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1- Yes, 2- No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_IntraUnitMove', @level2type=N'COLUMN',@level2name=N'MOrequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'N- Not Applied For , P - Pending , C- Complete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_LeaveApplication', @level2type=N'COLUMN',@level2name=N'LvCertiStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WtDtlId(Warrant Detail ID) is the foreign key of table HR_TRN_WtDetails' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_LeaveApplication', @level2type=N'COLUMN',@level2name=N'WtDtlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MedCatType- It includes Pers Med Type P for Permanent, T for Temporary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_MedCatDetails', @level2type=N'COLUMN',@level2name=N'MedCatType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HospName- mhospital' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_MedCatDetails', @level2type=N'COLUMN',@level2name=N'HospName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Diagnosis1- mdiagnosis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_MedCatDetails', @level2type=N'COLUMN',@level2name=N'Diagnosis1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Diagnosis2- mdiagnosis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_MedCatDetails', @level2type=N'COLUMN',@level2name=N'Diagnosis2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Diagnosis3- mdiagnosis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_MedCatDetails', @level2type=N'COLUMN',@level2name=N'Diagnosis3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Attributable- Y for Yes,N for No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_MedCatDetails', @level2type=N'COLUMN',@level2name=N'Attributable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This flag is used for those casualties in which overlapping need to be checked.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoIA', @level2type=N'COLUMN',@level2name=N'Completed_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This flag is used for those casualties which are required to stop/complete after start e.g. AWL,All allcs etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoIA', @level2type=N'COLUMN',@level2name=N'Completed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This flag is used for those casualties in which overlapping need to be checked.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoIA_Imported', @level2type=N'COLUMN',@level2name=N'Completed_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This flag is used for those casualties which are required to stop/complete after start e.g. AWL,All allcs etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoIA_Imported', @level2type=N'COLUMN',@level2name=N'Completed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This field is a flag to print reports of Group IC. Flags and their descriptions which are being used : 1. Remn - Remaining desc, 2. ArmNo-Only ArmyNo desc, 3.  Enrol - Only Enrollment desc, 4. ReEnl - Only Re-Enrollment desc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoJCOsHeader', @level2type=N'COLUMN',@level2name=N'ReportType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'inserted ''System'' in case of ParadeState' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoJCOsHeader', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FOR VERIFY PTO II FOR JCO OR OFFICERS, 0 - DRAFT, 1- PENDING FOR VERIFICATION, 2-VERIFIED' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoJCOsHeader', @level2type=N'COLUMN',@level2name=N'Verify'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This field is a flag to print reports of Group IC. Flags and their descriptions which are being used : 1. Remn - Remaining desc, 2. ArmNo-Only ArmyNo desc, 3.  Enrol - Only Enrollment desc, 4. ReEnl - Only Re-Enrollment desc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoJCOsHeader_Imported', @level2type=N'COLUMN',@level2name=N'ReportType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'inserted ''System'' in case of ParadeState' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoJCOsHeader_Imported', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FOR VERIFY PTO II FOR JCO OR OFFICERS, 0 - DRAFT, 1- PENDING FOR VERIFICATION, 2-VERIFIED' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_PtoJCOsHeader_Imported', @level2type=N'COLUMN',@level2name=N'Verify'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SportsId- msport' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_SPORTS', @level2type=N'COLUMN',@level2name=N'SportsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SportsLevelId- msport_level' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_SPORTS', @level2type=N'COLUMN',@level2name=N'SportsLevelId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WtDtlId(Warrant Detail ID) is the foreign key of table HR_TRN_WtDetails' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Strength', @level2type=N'COLUMN',@level2name=N'WtDtlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - Yes, 2 - No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_Strength', @level2type=N'COLUMN',@level2name=N'MORequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WtDtlId(Warrant Detail ID) is the foreign key of table HR_TRN_WtDetails' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_TempDuty', @level2type=N'COLUMN',@level2name=N'WtDtlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag are being used: D- Direct Entry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_TRN_TrgOperation', @level2type=N'COLUMN',@level2name=N'OptionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A-Army or C-Civil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mArmy_Act', @level2type=N'COLUMN',@level2name=N'JCO_OR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A for Army Acts and C for Civil Acts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mArmy_Act', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SC,ST,NA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mClass', @level2type=N'COLUMN',@level2name=N'SC_ST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'STPALLC- Whenever a casualty of group STPALLC will be published then system will check whether all casualties under group ALLC must be stopped.
ALLC- List of all casualties which are required to be stopped when any casualty of above group is published.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mPTO_Master', @level2type=N'COLUMN',@level2name=N'Desc_Group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1. This fieldd is usded to set Reference Part-II Order No for those casualties which are being used in reference are in the same draft part-ii order. Example REJAWL required reference of AWL but if both casualties are being published in same draft part-ii then reference part-ii no is not possible before publication. In that case default refference no 0/9999/9999/1900 is given by the system which further replaced with orignal no which it is published.
2. Code of all casualties which are required to used as a reference may be mentioned here seperating by comma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mPTO_Master', @level2type=N'COLUMN',@level2name=N'Ref_Desc_Group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This flag will be true only, if it is required to stop/complete another casualty using given Reference Pto No.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mPTO_Master', @level2type=N'COLUMN',@level2name=N'IsStoppedBy_Ref'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flags are being used : CV - Custom Validator, RE - Regular Expression , JS - Javascript Function' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mPTO_Validations', @level2type=N'COLUMN',@level2name=N'ValidatorType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'U-University, A-Army Schools' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mschool_institute', @level2type=N'COLUMN',@level2name=N'si_type'
GO
