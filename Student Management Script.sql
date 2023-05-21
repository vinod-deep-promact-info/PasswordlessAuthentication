USE [master]
GO
/****** Object:  Database [StudentManagement]    Script Date: 21-05-2023 19:41:48 ******/
CREATE DATABASE [StudentManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StudentManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StudentManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StudentManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [StudentManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [StudentManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StudentManagement] SET QUERY_STORE = OFF
GO
USE [StudentManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpAuditLogActions]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpAuditLogActions](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[AuditLogId] [uniqueidentifier] NOT NULL,
	[ServiceName] [nvarchar](256) NULL,
	[MethodName] [nvarchar](128) NULL,
	[Parameters] [nvarchar](2000) NULL,
	[ExecutionTime] [datetime2](7) NOT NULL,
	[ExecutionDuration] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpAuditLogActions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpAuditLogs]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpAuditLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](96) NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[TenantName] [nvarchar](64) NULL,
	[ImpersonatorUserId] [uniqueidentifier] NULL,
	[ImpersonatorUserName] [nvarchar](256) NULL,
	[ImpersonatorTenantId] [uniqueidentifier] NULL,
	[ImpersonatorTenantName] [nvarchar](64) NULL,
	[ExecutionTime] [datetime2](7) NOT NULL,
	[ExecutionDuration] [int] NOT NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[ClientId] [nvarchar](64) NULL,
	[CorrelationId] [nvarchar](64) NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[HttpMethod] [nvarchar](16) NULL,
	[Url] [nvarchar](256) NULL,
	[Exceptions] [nvarchar](max) NULL,
	[Comments] [nvarchar](256) NULL,
	[HttpStatusCode] [int] NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpAuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpBackgroundJobs]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpBackgroundJobs](
	[Id] [uniqueidentifier] NOT NULL,
	[JobName] [nvarchar](128) NOT NULL,
	[JobArgs] [nvarchar](max) NOT NULL,
	[TryCount] [smallint] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[NextTryTime] [datetime2](7) NOT NULL,
	[LastTryTime] [datetime2](7) NULL,
	[IsAbandoned] [bit] NOT NULL,
	[Priority] [tinyint] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpBackgroundJobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpClaimTypes]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpClaimTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Required] [bit] NOT NULL,
	[IsStatic] [bit] NOT NULL,
	[Regex] [nvarchar](512) NULL,
	[RegexDescription] [nvarchar](128) NULL,
	[Description] [nvarchar](256) NULL,
	[ValueType] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpClaimTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityChanges]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityChanges](
	[Id] [uniqueidentifier] NOT NULL,
	[AuditLogId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ChangeTime] [datetime2](7) NOT NULL,
	[ChangeType] [tinyint] NOT NULL,
	[EntityTenantId] [uniqueidentifier] NULL,
	[EntityId] [nvarchar](128) NOT NULL,
	[EntityTypeFullName] [nvarchar](128) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpEntityChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityPropertyChanges]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityPropertyChanges](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[EntityChangeId] [uniqueidentifier] NOT NULL,
	[NewValue] [nvarchar](512) NULL,
	[OriginalValue] [nvarchar](512) NULL,
	[PropertyName] [nvarchar](128) NOT NULL,
	[PropertyTypeFullName] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AbpEntityPropertyChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatureGroups]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatureGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpFeatureGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatures]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatures](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ParentName] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[DefaultValue] [nvarchar](256) NULL,
	[IsVisibleToClients] [bit] NOT NULL,
	[IsAvailableToHost] [bit] NOT NULL,
	[AllowedProviders] [nvarchar](256) NULL,
	[ValueType] [nvarchar](2048) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatureValues]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatureValues](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](128) NOT NULL,
	[ProviderName] [nvarchar](64) NULL,
	[ProviderKey] [nvarchar](64) NULL,
 CONSTRAINT [PK_AbpFeatureValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpLinkUsers]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpLinkUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[SourceUserId] [uniqueidentifier] NOT NULL,
	[SourceTenantId] [uniqueidentifier] NULL,
	[TargetUserId] [uniqueidentifier] NOT NULL,
	[TargetTenantId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpLinkUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnitRoles]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnitRoles](
	[RoleId] [uniqueidentifier] NOT NULL,
	[OrganizationUnitId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpOrganizationUnitRoles] PRIMARY KEY CLUSTERED 
(
	[OrganizationUnitId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnits]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnits](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Code] [nvarchar](95) NOT NULL,
	[DisplayName] [nvarchar](128) NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissionGrants]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissionGrants](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ProviderName] [nvarchar](64) NOT NULL,
	[ProviderKey] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AbpPermissionGrants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissionGroups]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissionGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpPermissionGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissions]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissions](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ParentName] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[MultiTenancySide] [tinyint] NOT NULL,
	[Providers] [nvarchar](128) NULL,
	[StateCheckers] [nvarchar](256) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoleClaims]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoleClaims](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ClaimType] [nvarchar](256) NOT NULL,
	[ClaimValue] [nvarchar](1024) NULL,
 CONSTRAINT [PK_AbpRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoles]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Name] [nvarchar](256) NOT NULL,
	[NormalizedName] [nvarchar](256) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsStatic] [bit] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpSecurityLogs]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpSecurityLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ApplicationName] [nvarchar](96) NULL,
	[Identity] [nvarchar](96) NULL,
	[Action] [nvarchar](96) NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NULL,
	[TenantName] [nvarchar](64) NULL,
	[ClientId] [nvarchar](64) NULL,
	[CorrelationId] [nvarchar](64) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpSecurityLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpSettings]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpSettings](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](2048) NOT NULL,
	[ProviderName] [nvarchar](64) NULL,
	[ProviderKey] [nvarchar](64) NULL,
 CONSTRAINT [PK_AbpSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpStudents]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpStudents](
	[Id] [uniqueidentifier] NOT NULL,
	[StudentName] [nvarchar](100) NOT NULL,
	[Course] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[mobile] [nvarchar](10) NULL,
	[IsDeleted] [bit] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpStudents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenantConnectionStrings]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenantConnectionStrings](
	[TenantId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_AbpTenantConnectionStrings] PRIMARY KEY CLUSTERED 
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenants]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenants](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpTenants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserClaims]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserClaims](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ClaimType] [nvarchar](256) NOT NULL,
	[ClaimValue] [nvarchar](1024) NULL,
 CONSTRAINT [PK_AbpUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserDelegations]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserDelegations](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[SourceUserId] [uniqueidentifier] NOT NULL,
	[TargetUserId] [uniqueidentifier] NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[EndTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AbpUserDelegations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserLogins]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](64) NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ProviderKey] [nvarchar](196) NOT NULL,
	[ProviderDisplayName] [nvarchar](128) NULL,
 CONSTRAINT [PK_AbpUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserOrganizationUnits]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserOrganizationUnits](
	[UserId] [uniqueidentifier] NOT NULL,
	[OrganizationUnitId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpUserOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[OrganizationUnitId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserRoles]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUsers]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[NormalizedUserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](64) NULL,
	[Surname] [nvarchar](64) NULL,
	[Email] [nvarchar](256) NOT NULL,
	[NormalizedEmail] [nvarchar](256) NOT NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[SecurityStamp] [nvarchar](256) NOT NULL,
	[IsExternal] [bit] NOT NULL,
	[PhoneNumber] [nvarchar](16) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ShouldChangePasswordOnNextLogin] [bit] NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[LastPasswordChangeTime] [datetimeoffset](7) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserTokens]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](64) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictApplications]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictApplications](
	[Id] [uniqueidentifier] NOT NULL,
	[ClientId] [nvarchar](100) NULL,
	[ClientSecret] [nvarchar](max) NULL,
	[ConsentType] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Permissions] [nvarchar](max) NULL,
	[PostLogoutRedirectUris] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedirectUris] [nvarchar](max) NULL,
	[Requirements] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[ClientUri] [nvarchar](max) NULL,
	[LogoUri] [nvarchar](max) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OpenIddictApplications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictAuthorizations]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictAuthorizations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NULL,
	[CreationDate] [datetime2](7) NULL,
	[Properties] [nvarchar](max) NULL,
	[Scopes] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OpenIddictAuthorizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictScopes]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictScopes](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Descriptions] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Name] [nvarchar](200) NULL,
	[Properties] [nvarchar](max) NULL,
	[Resources] [nvarchar](max) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OpenIddictScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictTokens]    Script Date: 21-05-2023 19:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictTokens](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NULL,
	[AuthorizationId] [uniqueidentifier] NULL,
	[CreationDate] [datetime2](7) NULL,
	[ExpirationDate] [datetime2](7) NULL,
	[Payload] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedemptionDate] [datetime2](7) NULL,
	[ReferenceId] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OpenIddictTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230519100036_Initial', N'7.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230519105646_initial commit', N'7.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230519110122_db updated', N'7.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230519110414_db updated1', N'7.0.1')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'fcb5421b-9b0c-d0a2-4d65-3a0b45dea37d', NULL, N'8e0c97d3-f352-bae5-a41e-3a0b45dea37b', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"VINOD","course":"BCA","email":"vinod@gmail.com","mobile":"","lastModificationTime":"2023-05-19T11:06:47.241Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:06:47.241Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T16:37:49.8682666' AS DateTime2), 42, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'25746c23-77f8-2e1d-21b3-3a0b45df547d', NULL, N'6f40c753-c5e6-28ac-2b37-3a0b45df547d', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"VINOD","course":"BCA","email":"vinod@gmail.com","mobile":"","lastModificationTime":"2023-05-19T11:06:47.241Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:06:47.241Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T16:38:35.2897984' AS DateTime2), 32, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'274ef7eb-ca07-b294-58e9-3a0b45ea6141', NULL, N'addb5ed2-4042-ff18-f072-3a0b45ea613c', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"VINOD","course":"BCA","email":"vinod@gmail.com","mobile":"1234567890","lastModificationTime":"2023-05-19T11:19:54.918Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:19:54.918Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T16:50:39.3836926' AS DateTime2), 44, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'179381a5-f0ca-b0d4-85c5-3a0b45eb9a13', NULL, N'c3d58302-43ef-f416-3475-3a0b45eb9a13', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-19T16:51:58.5662883' AS DateTime2), 959, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'9b6307ac-9bcd-d767-58ae-3a0b45f04ace', NULL, N'1a75cd0b-62b1-5526-8af8-3a0b45f04ace', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-19T16:57:05.1339482' AS DateTime2), 1813, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f898bfe0-61e6-191e-8e73-3a0b45f0eccc', NULL, N'0fc98f1c-b937-3ee8-c6c0-3a0b45f0eccc', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"VINOD","course":"BCA","email":"vinod@gmail.com","mobile":"1234567890","lastModificationTime":"2023-05-19T11:27:32.133Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:27:32.133Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T16:57:48.3593716' AS DateTime2), 24, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f596dde9-7d61-b5ce-0a02-3a0b45f149f0', NULL, N'726b2f1b-8729-e45c-7bc2-3a0b45f149f0', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"VINOD","course":"BCA","email":"vinod@gmail.com","mobile":"1234567890","lastModificationTime":null,"lastModifierId":null,"creationTime":"0001-01-01T00:00:00","creatorId":null,"id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T16:58:12.2578308' AS DateTime2), 10, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'6c643441-276a-c355-1c24-3a0b45f621e6', NULL, N'396f0162-8d27-36c0-f2e3-3a0b45f621e5', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"VINOD","course":"BCA","email":"vinod@gmail.com","mobile":"1234567890","lastModificationTime":"2023-05-19T11:33:17.665Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:33:17.665Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T17:03:28.3485296' AS DateTime2), 1327, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'b0ee604f-76af-22c9-661f-3a0b45f9ca2e', NULL, N'bc8da3fa-f4e6-f6f0-9f15-3a0b45f9ca2d', N'Volo.Abp.SettingManagement.EmailSettingsController', N'GetAsync', N'{}', CAST(N'2023-05-19T17:07:29.3305544' AS DateTime2), 24, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'dfdeb692-5e19-6063-3395-3a0b4606f488', NULL, N'966f05ef-4026-1a27-7092-3a0b4606f488', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-19T17:21:50.4367687' AS DateTime2), 1754, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f547bb26-e317-6583-c551-3a0b46078d0c', NULL, N'68c785a8-eaff-a74d-1294-3a0b46078d0c', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"Ravi","course":"BE","email":"vinod@gmail.com","mobile":"1234567890","lastModificationTime":"2023-05-19T11:52:15.673Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:52:15.672Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T17:22:31.0678972' AS DateTime2), 134, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'a592da4f-3e6c-9adf-bf1c-3a0b4607ee85', NULL, N'cd98f198-4ec0-468f-f7c9-3a0b4607ee85', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"Ravi","course":"BE","email":"vinod@gmail.com","mobile":"1234567890","lastModificationTime":"2023-05-19T11:52:15.673Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:52:15.672Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T17:22:56.1329946' AS DateTime2), 59, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'b33270f4-5c38-1ca6-19fc-3a0b460813e0', NULL, N'574a1eed-aad3-8fb8-2ab7-3a0b460813e0', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"Ravi","course":"BE","email":"ravi@gmail.com","mobile":"1234567890","lastModificationTime":"2023-05-19T11:52:15.673Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:52:15.672Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-19T17:23:05.7352149' AS DateTime2), 24, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'c77bdb12-3eb1-b0e0-b2f4-3a0b460ab602', NULL, N'0d9e506a-8e0f-f3fc-20d1-3a0b460ab601', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"Ravi","course":"BCA","email":"vinod@gmail.com","mobile":"1234567890","lastModificationTime":"2023-05-19T11:54:28.87Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:54:28.87Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa1"}}', CAST(N'2023-05-19T17:25:56.9374377' AS DateTime2), 1338, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'524a7fd8-bebc-6bab-4145-3a0b460b037a', NULL, N'51abde4b-e979-4f5e-02fd-3a0b460b037a', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"Ravi","course":"BCA","email":"ravi@gmail.com","mobile":"1234567890","lastModificationTime":"2023-05-19T11:54:28.87Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-19T11:54:28.87Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa1"}}', CAST(N'2023-05-19T17:26:18.1118043' AS DateTime2), 50, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'fcab4852-55af-96e9-f1ae-3a0b4659f08b', NULL, N'26e99343-ef8b-4963-e178-3a0b4659f08a', N'Volo.Abp.Identity.IdentityRoleAppService', N'CreateAsync', N'{"input":{"name":"HR","isDefault":false,"isPublic":true,"extraProperties":{}}}', CAST(N'2023-05-19T18:52:30.4865431' AS DateTime2), 166, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'9f0fb5f3-2363-77c8-dd11-3a0b4659f08c', NULL, N'26e99343-ef8b-4963-e178-3a0b4659f08a', N'Volo.Abp.Identity.Web.Pages.Identity.Roles.CreateModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-19T18:52:30.4740894' AS DateTime2), 180, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'88a7a3f0-0610-75c0-c671-3a0b465a09ba', NULL, N'b29bb427-c48e-1225-7982-3a0b465a09ba', N'Volo.Abp.Identity.IdentityRoleAppService', N'CreateAsync', N'{"input":{"name":"User","isDefault":false,"isPublic":true,"extraProperties":{}}}', CAST(N'2023-05-19T18:52:37.1020356' AS DateTime2), 10, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'267d09e9-42ba-897b-d66d-3a0b465a09ba', NULL, N'b29bb427-c48e-1225-7982-3a0b465a09ba', N'Volo.Abp.Identity.Web.Pages.Identity.Roles.CreateModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-19T18:52:37.0993562' AS DateTime2), 13, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f1788e54-4e32-eadd-7404-3a0b465adf00', NULL, N'f2016ab2-a2d4-9c40-eabb-3a0b465adf00', N'Volo.Abp.Identity.Web.Pages.Identity.Users.CreateModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-19T18:53:31.4985996' AS DateTime2), 187, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'fe3e9a9f-7a76-0640-f51a-3a0b465adf00', NULL, N'f2016ab2-a2d4-9c40-eabb-3a0b465adf00', N'Volo.Abp.Identity.IdentityUserAppService', N'CreateAsync', N'{"input":{"userName":"admin","name":"Ravi","surname":null,"email":"ravi@gmail.com","phoneNumber":"7802036681","isActive":true,"lockoutEnabled":true,"roleNames":[],"extraProperties":{}}}', CAST(N'2023-05-19T18:53:31.5126304' AS DateTime2), 164, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'1b359268-d223-930a-d2ce-3a0b465b46ba', NULL, N'12cbdeb6-7414-a00d-6475-3a0b465b46ba', N'Volo.Abp.Identity.Web.Pages.Identity.Users.CreateModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-19T18:53:58.0147907' AS DateTime2), 250, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'80875a63-3937-11a1-e87b-3a0b465b46ba', NULL, N'12cbdeb6-7414-a00d-6475-3a0b465b46ba', N'Volo.Abp.Identity.IdentityUserAppService', N'CreateAsync', N'{"input":{"userName":"ravi","name":"Ravi shankar","surname":"pandey","email":"ravi@gmail.com","phoneNumber":"7802036681","isActive":true,"lockoutEnabled":true,"roleNames":[],"extraProperties":{}}}', CAST(N'2023-05-19T18:53:58.0200294' AS DateTime2), 245, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'3bb17fcb-8c8f-85a5-1584-3a0b4661cf1e', NULL, N'6e0f238d-b7cd-d08e-0a6c-3a0b4661cf1e', N'Volo.Abp.Identity.IdentityUserAppService', N'CreateAsync', N'{"input":{"userName":"naresh","name":null,"surname":null,"email":"naresh@gmail.com","phoneNumber":null,"isActive":true,"lockoutEnabled":true,"roleNames":[],"extraProperties":{}}}', CAST(N'2023-05-19T19:01:06.2380706' AS DateTime2), 159, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'e02bba55-b330-1bff-bf97-3a0b4661cf1e', NULL, N'6e0f238d-b7cd-d08e-0a6c-3a0b4661cf1e', N'Volo.Abp.Identity.Web.Pages.Identity.Users.CreateModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-19T19:01:06.2359799' AS DateTime2), 161, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'63a5f677-2277-feb9-8649-3a0b4681d9f5', NULL, N'b85cee71-61af-d596-9141-3a0b4681d9f4', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-19T19:36:05.9610105' AS DateTime2), 353, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'eaec69b9-3036-ac37-91fa-3a0b473b3c33', NULL, N'c5db43f3-90cd-09c0-9902-3a0b473b3c32', N'Volo.Abp.Account.Web.Areas.Account.Controllers.AccountController', N'Login', N'{"login":{"userNameOrEmailAddress":"raresh","rememberMe":true}}', CAST(N'2023-05-19T22:58:35.0665206' AS DateTime2), 522, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'd61a0bd5-91f0-1c1f-4513-3a0b473b86da', NULL, N'5df8dfd4-3504-a410-b847-3a0b473b86da', N'Volo.Abp.Account.Web.Areas.Account.Controllers.AccountController', N'Login', N'{"login":{"userNameOrEmailAddress":"naresh","rememberMe":true}}', CAST(N'2023-05-19T22:58:54.3202707' AS DateTime2), 417, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'5c033edf-780d-b3cd-27a3-3a0b47659deb', NULL, N'4607a036-9ad4-2a7a-a82f-3a0b47659deb', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-19T23:44:52.9863602' AS DateTime2), 176, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'5291032f-cefe-99d8-cad9-3a0b47c663a0', NULL, N'623d4563-9926-008d-78c7-3a0b47c6639e', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-20T01:30:31.3230435' AS DateTime2), 3863, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'976a5054-d2d1-c62d-0e5a-3a0b47c6ee12', NULL, N'fee2a584-0112-dabc-fcf7-3a0b47c6ee12', N'PasswordlessAuthentication.Students.StudentAppService', N'GetAllLoggedInUserDetails', N'{}', CAST(N'2023-05-20T01:31:05.6534839' AS DateTime2), 4938, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'ec3482da-ed08-e28c-ddbe-3a0b47c7aa81', NULL, N'22b20cd6-450c-f59d-8ded-3a0b47c7aa81', N'PasswordlessAuthentication.Students.StudentAppService', N'GetAllLoggedInUserDetails', N'{}', CAST(N'2023-05-20T01:31:56.1838627' AS DateTime2), 2724, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'1ff0e074-560c-6d80-b93a-3a0b47cbd553', NULL, N'fd616287-e541-3b00-44f1-3a0b47cbd552', N'PasswordlessAuthentication.Students.StudentAppService', N'GetAllLoggedInUserDetails', N'{}', CAST(N'2023-05-20T01:36:28.9638731' AS DateTime2), 2951, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'faf23f41-c577-d03b-c664-3a0b47cdc03d', NULL, N'cbe225cc-c199-e4b8-689b-3a0b47cdc039', N'PasswordlessAuthentication.Students.StudentAppService', N'GetAllLoggedInUserDetails', N'{}', CAST(N'2023-05-20T01:38:34.6741918' AS DateTime2), 2933, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'7f353645-8d5d-4bec-0f1e-3a0b499ca4f7', NULL, N'0493fb80-e785-7848-b6ff-3a0b499ca4f7', N'PasswordlessAuthentication.Web.Pages.IndexModel', N'OnPostGeneratePasswordlessTokenAsync', N'{}', CAST(N'2023-05-20T10:04:13.6598243' AS DateTime2), 163, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'4c69815c-4639-215b-fbe1-3a0b499e448d', NULL, N'080200e1-efac-3654-e04c-3a0b499e448d', N'Pages.Abp.MultiTenancy.TenantSwitchModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-20T10:06:00.0974220' AS DateTime2), 121, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'67b6c54e-3211-6831-86b4-3a0b499e5926', NULL, N'84205fc8-bab3-994d-b882-3a0b499e5926', N'Pages.Abp.MultiTenancy.TenantSwitchModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-20T10:06:05.5244126' AS DateTime2), 15, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'80b7e258-0d8c-4549-7f2a-3a0b499e5c21', NULL, N'de4b863f-dd5f-6832-51dc-3a0b499e5c21', N'Pages.Abp.MultiTenancy.TenantSwitchModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-20T10:06:06.2870927' AS DateTime2), 17, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'39719816-9f3e-9267-892c-3a0b499e6365', NULL, N'd7762b0f-fc7a-f694-1315-3a0b499e6365', N'Pages.Abp.MultiTenancy.TenantSwitchModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-20T10:06:08.1456815' AS DateTime2), 18, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'00bf7504-6618-6cac-62d6-3a0b499ea053', NULL, N'4c9895b5-a6c7-41de-ad5b-3a0b499ea053', N'PasswordlessAuthentication.Web.Controllers.PasswordlessController', N'Login', N'{"token":"151295","userId":"d51d12c0-6560-2881-ba8f-3a0b45ca77b6"}', CAST(N'2023-05-20T10:06:23.4873589' AS DateTime2), 265, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'1418363f-d971-0d7f-70f4-3a0b499f2615', NULL, N'd24e8864-cf77-8b0f-16ce-3a0b499f2615', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-20T10:06:57.7143674' AS DateTime2), 290, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f0999bd4-0147-84a8-8c4c-3a0b499f3331', NULL, N'a5220054-5d67-4537-2043-3a0b499f3331', N'PasswordlessAuthentication.Web.Pages.IndexModel', N'OnPostGeneratePasswordlessTokenAsync', N'{}', CAST(N'2023-05-20T10:07:01.2856170' AS DateTime2), 33, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'890e5c8a-5562-6166-4cf2-3a0b49a37909', NULL, N'2989cc9a-100a-31e4-83d4-3a0b49a37909', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-20T10:11:41.2134663' AS DateTime2), 170, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'c03611ce-dd4c-a519-ca04-3a0b49a386dc', NULL, N'e45f4eb0-c1c0-5563-6e90-3a0b49a386dc', N'PasswordlessAuthentication.Web.Pages.IndexModel', N'OnPostGeneratePasswordlessTokenAsync', N'{}', CAST(N'2023-05-20T10:11:44.8528117' AS DateTime2), 34, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'd2421ae5-4182-9558-0be9-3a0b49db7646', NULL, N'1035450a-5c06-59fd-142a-3a0b49db7645', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-20T11:12:48.8874882' AS DateTime2), 1795, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f30fa842-d786-6c3e-d377-3a0b49dec619', NULL, N'59146536-d66e-2ea0-08b8-3a0b49dec619', N'PasswordlessAuthentication.Web.Pages.IndexModel', N'OnPostGeneratePasswordlessTokenAsync', N'{}', CAST(N'2023-05-20T11:13:07.5032361' AS DateTime2), 199868, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'63d6eb51-6f20-5a53-87e3-3a0b49fd47b9', NULL, N'470efc5e-9970-19f0-7c9d-3a0b49fd47b7', N'Volo.Abp.Identity.IdentityUserController', N'GetListAsync', N'{"input":{"filter":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', CAST(N'2023-05-20T11:49:46.9068271' AS DateTime2), 34, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'5f76a654-9633-dacc-fd15-3a0b4a13ae4c', NULL, N'432e964e-67a8-1381-c399-3a0b4a13ae4c', N'PasswordlessAuthentication.Students.StudentAppService', N'LoginWithUserNameOrEmail', N'{"UserNameOrEmail":"admin"}', CAST(N'2023-05-20T12:14:14.1987668' AS DateTime2), 842, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'0b4aaecc-8768-d154-68bf-3a0b4a144c5f', NULL, N'213037d0-e105-814f-ac60-3a0b4a144c5f', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-20T12:14:55.0293184' AS DateTime2), 488, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f7e4f8df-827f-3e7b-f772-3a0b4a145218', NULL, N'3211547b-656e-be07-f858-3a0b4a145218', N'PasswordlessAuthentication.Web.Pages.IndexModel', N'OnPostGeneratePasswordlessTokenAsync', N'{}', CAST(N'2023-05-20T12:14:56.8317743' AS DateTime2), 134, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'80314287-b1e5-f511-cc70-3a0b507ad644', NULL, N'948f7b7d-c1f1-1200-fd8f-3a0b507ad642', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-21T18:04:37.7915960' AS DateTime2), 925, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'e9ecf147-d8a1-d825-3afe-3a0b507ada91', NULL, N'26538aea-796d-e833-8c35-3a0b507ada91', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-21T18:04:38.7137503' AS DateTime2), 1170, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'9cf47373-111e-8059-15df-3a0b507aefa3', NULL, N'5bad8c0e-43bb-09aa-9243-3a0b507aefa3', N'PasswordlessAuthentication.Web.Pages.IndexModel', N'OnPostGeneratePasswordlessTokenAsync', N'{}', CAST(N'2023-05-21T18:04:44.9991181' AS DateTime2), 240, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'b768d2b1-b491-958d-9fcb-3a0b508df9f4', NULL, N'41b7b3b9-aae1-9086-475e-3a0b508df9f3', N'PasswordlessAuthentication.Students.StudentAppService', N'EnterUserNameOrEmail', N'{"UserNameOrEmail":"Admin"}', CAST(N'2023-05-21T18:25:31.8745344' AS DateTime2), 1215, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'562bf5c5-4692-d7ba-2976-3a0b509616e3', NULL, N'caefd1b2-2fa8-35de-1783-3a0b509616e2', N'PasswordlessAuthentication.Students.StudentAppService', N'EnterUserNameOrEmail', N'{"UserNameOrEmail":"admin"}', CAST(N'2023-05-21T18:34:24.6350525' AS DateTime2), 151, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'4aef6369-37a7-5eb3-6415-3a0b50971892', NULL, N'6eca3832-3acb-f2c0-5e1e-3a0b50971892', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"string","course":"string","email":"string","mobile":"string","lastModificationTime":"2023-05-21T13:05:29.366Z","lastModifierId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","creationTime":"2023-05-21T13:05:29.366Z","creatorId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-21T18:35:30.5880928' AS DateTime2), 150, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'92e60cc6-31e1-3fc9-9863-3a0b50a72b77', NULL, N'e9f9cb65-c266-5400-3b62-3a0b50a72b77', N'PasswordlessAuthentication.Students.StudentAppService', N'UpdateAsync', N'{"id":"3fa85f64-5717-4562-b3fc-2c963f66afa6","input":{"studentName":"string","course":"string","email":"string","mobile":"string","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-21T18:53:03.1752484' AS DateTime2), 988, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'485e28ae-674d-1b30-68cf-3a0b50ae9375', NULL, N'f924c5ce-ba0d-aac5-33ec-3a0b50ae9375', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-21T19:01:08.6092909' AS DateTime2), 940, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f13dc7ca-ce5b-d3a8-76df-3a0b50aff472', NULL, N'f3d7ecea-6ed5-8aee-1f15-3a0b50aff472', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-21T19:02:39.7662379' AS DateTime2), 154, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'9ec0ee34-3a92-e025-ce55-3a0b50b067bb', NULL, N'7a57b8e3-5359-9531-3736-3a0b50b067bb', N'PasswordlessAuthentication.Students.StudentAppService', N'EnterUserNameOrEmail', N'{"UserNameOrEmail":"admin"}', CAST(N'2023-05-21T19:03:09.4100299' AS DateTime2), 24, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'6131e8d0-5423-5265-afca-3a0b50b160da', NULL, N'bf42aef8-46f6-4b13-9107-3a0b50b160da', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-21T19:04:13.0630506' AS DateTime2), 147, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'021264b4-245f-62b1-a43b-3a0b50b20041', NULL, N'd965ef10-5825-ae12-e2e1-3a0b50b20041', N'Volo.Abp.Account.ProfileAppService', N'ChangePasswordAsync', N'{"input":{}}', CAST(N'2023-05-21T19:04:53.8043407' AS DateTime2), 212, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'3514d1b1-1efd-3061-f9c3-3a0b50b20041', NULL, N'd965ef10-5825-ae12-e2e1-3a0b50b20041', N'Volo.Abp.Account.ProfileController', N'ChangePasswordAsync', N'{"input":{}}', CAST(N'2023-05-21T19:04:53.7996721' AS DateTime2), 218, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'd5ecae0f-a308-56db-0e7e-3a0b50b23152', NULL, N'2b632022-92b5-c0d6-8a0d-3a0b50b23152', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-21T19:05:06.4406255' AS DateTime2), 137, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'1563e46c-fb12-bf51-99d4-3a0b50b304fe', NULL, N'702ebbfb-dc2c-2b99-726c-3a0b50b304fe', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"jiten","course":"B.COM","email":"jiten@gmail.com","mobile":"1234567890","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-21T19:06:00.6186624' AS DateTime2), 119, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'5e0b890e-2e12-80b4-343e-3a0b50b351ee', NULL, N'1d2fe644-5e67-792c-cef9-3a0b50b351ee', N'PasswordlessAuthentication.Students.StudentAppService', N'CreateAsync', N'{"input":{"studentName":"jiten","course":"B.COM","email":"jiten@gmail.com","mobile":"1234567890","id":"00000000-0000-0000-0000-000000000000"}}', CAST(N'2023-05-21T19:06:20.3848474' AS DateTime2), 75, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'42cd009b-fa0f-e14b-5507-3a0b50b4a7db', NULL, N'f0326302-ef5b-4775-1fa3-3a0b50b4a7db', N'PasswordlessAuthentication.Students.StudentAppService', N'UpdateAsync', N'{"id":"22280c02-6866-7a9d-ed99-3a0b50b351d6","input":{"studentName":"aa","course":"string","email":"string","mobile":"12222","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-21T19:07:47.9207194' AS DateTime2), 58, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'049dfe88-43b8-95fe-eb2a-3a0b50b4daf4', NULL, N'95638a8f-5f51-12af-2176-3a0b50b4daf4', N'PasswordlessAuthentication.Students.StudentAppService', N'UpdateAsync', N'{"id":"22280c02-6866-7a9d-ed99-3a0b50b351d6","input":{"studentName":"aa","course":"string","email":"string","mobile":"1234567890","id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}}', CAST(N'2023-05-21T19:08:00.9997473' AS DateTime2), 55, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'cffa90aa-ff82-1236-7171-3a0b50b5a953', NULL, N'72d5288f-1df7-afdf-7abf-3a0b50b5a953', N'PasswordlessAuthentication.Students.StudentAppService', N'UpdateAsync', N'{"id":"22280c02-6866-7a9d-ed99-3a0b50b351d6","input":{"studentName":"akash","course":"MBA","email":"akash@gmail.com","mobile":"1234567890","id":"22280c02-6866-7a9d-ed99-3a0b50b351d6"}}', CAST(N'2023-05-21T19:08:53.8567266' AS DateTime2), 49, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'38f20580-ddfd-1435-c983-3a0b50b650c6', NULL, N'cc7baddd-9703-41a5-f3e9-3a0b50b650c6', N'PasswordlessAuthentication.Students.StudentAppService', N'DeleteAsync', N'{"id":"3fa85f64-5717-4562-b3fc-2c963f66afa6"}', CAST(N'2023-05-21T19:09:36.6946788' AS DateTime2), 78, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'2cb25d8b-58b6-a788-f67d-3a0b50ca16bb', NULL, N'98bbb29e-5ea3-a637-1ba4-3a0b50ca16ba', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-21T19:31:09.8288876' AS DateTime2), 2788, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'c6634f7d-4fff-f624-f020-3a0b50cabfe6', NULL, N'30af464a-f67f-739f-ba0d-3a0b50cabfe6', N'PasswordlessAuthentication.Students.StudentAppService', N'EnterUserNameOrEmail', N'{"UserNameOrEmail":"Naresh"}', CAST(N'2023-05-21T19:31:55.8919423' AS DateTime2), 46, N'{}')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'c62f3d28-4673-0a57-25a5-3a0b50cb294e', NULL, N'e752c1cd-3850-6a62-ed7c-3a0b50cb294e', N'PasswordlessAuthentication.Students.StudentAppService', N'EnterUserNameOrEmail', N'{"UserNameOrEmail":"Naresh"}', CAST(N'2023-05-21T19:32:22.9109075' AS DateTime2), 12, N'{}')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'8e0c97d3-f352-bae5-a41e-3a0b45dea37b', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T16:37:49.6081725' AS DateTime2), 391, N'::1', NULL, NULL, N'695f2b3420ae4ee887ea0df673423c4b', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'5e3879b4a3bd4a3eaf537368422cb8aa')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'6f40c753-c5e6-28ac-2b37-3a0b45df547d', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T16:38:35.2848318' AS DateTime2), 40, N'::1', NULL, NULL, N'16511a41cdc143de899edd304a2ce8fc', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'2b1de7fd132f4b71b6948b6fcf717c5f')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'addb5ed2-4042-ff18-f072-3a0b45ea613c', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T16:50:39.2937368' AS DateTime2), 171, N'::1', NULL, NULL, N'ce7dd77fbbe14a6a89b913fcbb244a21', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'c270d7400dd040c5b15553247310b586')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'c3d58302-43ef-f416-3475-3a0b45eb9a13', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T16:51:58.5471313' AS DateTime2), 1024, N'::1', NULL, NULL, N'0782e1e418e54bc2bb3fa82a42dc2b19', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 200, N'{}', N'5da2c53c737c4a5b8f5c83717133a7c6')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1a75cd0b-62b1-5526-8af8-3a0b45f04ace', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T16:57:05.1193763' AS DateTime2), 1833, N'::1', NULL, NULL, N'1fbd8494463542a1918b04e1e6e95885', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'af5d07da2d954e0fb4746cf89d0cbcc9')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0fc98f1c-b937-3ee8-c6c0-3a0b45f0eccc', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T16:57:48.2623174' AS DateTime2), 165, N'::1', NULL, NULL, N'd0b526018a2241ac9006810546b31e69', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'e672ec1ba7aa493d9461cbcb1fc4c008')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'726b2f1b-8729-e45c-7bc2-3a0b45f149f0', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T16:58:12.2539369' AS DateTime2), 18, N'::1', NULL, NULL, N'ad0da43d41e64196b630f10ed65db2d4', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'b84527ccf955429db81c2fb75c01a964')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'396f0162-8d27-36c0-f2e3-3a0b45f621e5', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T17:03:28.0667994' AS DateTime2), 1629, N'::1', NULL, NULL, N'dfaa040eadcb4d268b2ed8edc4d868da', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', NULL, N'', 200, N'{}', N'398c81955d7d4690b91b74237d781a6b')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'bc8da3fa-f4e6-f6f0-9f15-3a0b45f9ca2d', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T17:07:29.3070382' AS DateTime2), 73, N'::1', NULL, NULL, N'63b8999b0cdc4f38b4f2934468f46234', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/setting-management/emailing', N'[
  {
    "code": "Volo.Authorization:010001",
    "message": "Authorization failed! Given policy has not granted.",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 401, N'{}', N'48ab097d0b604698af9b37d0d0fca293')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'966f05ef-4026-1a27-7092-3a0b4606f488', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T17:21:50.4233302' AS DateTime2), 1772, N'::1', NULL, NULL, N'003a3ac40d014e73ad2c437c66be262b', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'2d6215f029574fbca1dc75b27230dd50')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'68c785a8-eaff-a74d-1294-3a0b46078d0c', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T17:22:30.9670169' AS DateTime2), 274, N'::1', NULL, NULL, N'ece63c286da94fe99411ede3879cec72', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'8ef1820946014a16a96c6dba5924f3ca')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'cd98f198-4ec0-468f-f7c9-3a0b4607ee85', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T17:22:56.1279249' AS DateTime2), 69, N'::1', NULL, NULL, N'0fe569d585dc4ffe8e8c377330da00e0', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'26de2f411d6c40aaad8f1a9d9a6d29e8')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'574a1eed-aad3-8fb8-2ab7-3a0b460813e0', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T17:23:05.7309143' AS DateTime2), 30, N'::1', NULL, NULL, N'f426027161844461b46e280d181e1170', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'23f3aa755d9340509b71c63ad1d50667')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0d9e506a-8e0f-f3fc-20d1-3a0b460ab601', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T17:25:56.6246654' AS DateTime2), 1701, N'::1', NULL, NULL, N'e5f6f014c20a4f1b98621d24e599cd44', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'a9fd48b0c1dd46179269fa2c2a68beb8')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'51abde4b-e979-4f5e-02fd-3a0b460b037a', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T17:26:18.0894553' AS DateTime2), 80, N'::1', NULL, NULL, N'3facc44e00454cf39eeaf3895fff134d', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', NULL, N'', 200, N'{}', N'58351d14c83b4b91813d867cbc08c269')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'26e99343-ef8b-4963-e178-3a0b4659f08a', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T18:52:30.4551100' AS DateTime2), 206, N'::1', NULL, NULL, N'75ce2f2467964dc3af501b2a299e559f', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Identity/Roles/CreateModal', NULL, N'', 204, N'{}', N'47e96c7e418942a5a7aeb74791415ca5')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'b29bb427-c48e-1225-7982-3a0b465a09ba', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T18:52:37.0898838' AS DateTime2), 24, N'::1', NULL, NULL, N'6c583486dd0d4da5912e1e197dbe0234', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Identity/Roles/CreateModal', NULL, N'', 204, N'{}', N'f8da830627574f9d86cd576d0dd66e36')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f2016ab2-a2d4-9c40-eabb-3a0b465adf00', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T18:53:31.4779383' AS DateTime2), 233, N'::1', NULL, NULL, N'60e316fda2ca4803b4e13984ccd20f82', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Identity/Users/CreateModal', N'[
  {
    "code": "Volo.Abp.Identity:DuplicateUserName",
    "message": "Username ''admin'' is already taken.",
    "details": null,
    "data": {
      "0": "admin"
    },
    "validationErrors": null
  },
  {
    "code": "Volo.Abp.Identity:DuplicateUserName",
    "message": "Username ''admin'' is already taken.",
    "details": null,
    "data": {
      "0": "admin"
    },
    "validationErrors": null
  }
]', N'', 403, N'{}', N'82a38a22f35643cdaf916e95b38b7707')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'12cbdeb6-7414-a00d-6475-3a0b465b46ba', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T18:53:58.0038925' AS DateTime2), 262, N'::1', NULL, NULL, N'33dc5d7b13f54b208a8a953a5e516321', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Identity/Users/CreateModal', NULL, N'', 204, N'{}', N'9f931fd3a3ac4e818a5209dc408e3f25')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'6e0f238d-b7cd-d08e-0a6c-3a0b4661cf1e', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T19:01:06.2324786' AS DateTime2), 165, N'::1', NULL, NULL, N'c6ffd9260efb474588f0059ee404f9a9', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Identity/Users/CreateModal', NULL, N'', 204, N'{}', N'49fa3f3ec1234c83936cc43731369fbd')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'b85cee71-61af-d596-9141-3a0b4681d9f4', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T19:36:05.9408756' AS DateTime2), 378, N'::1', NULL, NULL, N'c87056ce076b455c88a18e8d4b52eb3f', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'30750cbe83984df5a2ee4e15ddf04988')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'c5db43f3-90cd-09c0-9902-3a0b473b3c32', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T22:58:34.6665446' AS DateTime2), 956, N'::1', NULL, NULL, N'6e9c5d4ca1924058a044fd405339d98f', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/account/login', NULL, N'', 200, N'{}', N'5d2e3d9785a2422eb4b0c337aaf2fde6')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5df8dfd4-3504-a410-b847-3a0b473b86da', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T22:58:54.2990293' AS DateTime2), 445, N'::1', NULL, NULL, N'6d506fbf429444449248e0e05891ea0a', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/account/login', NULL, N'', 200, N'{}', N'a24ba0b2ebb0455c9edea7b053a8e078')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'4607a036-9ad4-2a7a-a82f-3a0b47659deb', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T23:44:52.9707419' AS DateTime2), 193, N'::1', NULL, NULL, N'e2673a03f1b1412189705536e03b2bb5', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'c4fc0753c4de42ddb2e9e853b8f2b179')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'623d4563-9926-008d-78c7-3a0b47c6639e', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T01:30:31.2908602' AS DateTime2), 3911, N'::1', NULL, NULL, N'6df18dec842245d897f4a483a4aaff01', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'4ef477027ee54f21b4d99ea0ee663a1c')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'fee2a584-0112-dabc-fcf7-3a0b47c6ee12', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T01:31:05.3419330' AS DateTime2), 5331, N'::1', NULL, NULL, N'1d4371b2bc8147aabc4d7dda932a9dbe', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/app/student/logged-in-user-details', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'd536ddb5939d4c1a9715ab23bb9ffeaf')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'22b20cd6-450c-f59d-8ded-3a0b47c7aa81', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T01:31:56.1797160' AS DateTime2), 2734, N'::1', NULL, NULL, N'41ada35bd96c4ea19dce9ece82872b22', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/app/student/logged-in-user-details', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'c0a7f981d70f415e9ccc310782131d30')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'fd616287-e541-3b00-44f1-3a0b47cbd552', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T01:36:28.6227001' AS DateTime2), 3386, N'::1', NULL, NULL, N'7b8ce32b81cc4510a218ae551143137d', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/app/student/logged-in-user-details', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'59113e6c762c458f99df62c00a3bcb4b')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'cbe225cc-c199-e4b8-689b-3a0b47cdc039', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T01:38:34.3397774' AS DateTime2), 3338, N'::1', NULL, NULL, N'23343771cc5747dcac81a1e8f622c3ea', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/app/student/logged-in-user-details', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'251dd23b26a545eab2964c68e610877b')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0493fb80-e785-7848-b6ff-3a0b499ca4f7', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:04:13.6306174' AS DateTime2), 242, N'::1', NULL, NULL, N'a35953f6c0244bba9ad05261993261fd', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/', NULL, N'', 200, N'{}', N'a1740fbe4abe4e7d930b0ee634f2b9de')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'080200e1-efac-3654-e04c-3a0b499e448d', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:06:00.0714786' AS DateTime2), 196, N'::1', NULL, NULL, N'7684e932e8754681b6860f6e3ec96e20', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Abp/MultiTenancy/TenantSwitchModal', N'[
  {
    "code": null,
    "message": "Given tenant doesn''t exist: vinod",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 403, N'{}', N'd8a5f2865bc24c7b93ab6fedf8618c91')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'84205fc8-bab3-994d-b882-3a0b499e5926', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:06:05.5074096' AS DateTime2), 35, N'::1', NULL, NULL, N'f53454b22c5c4b1c8ad4a9746c5b35af', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Abp/MultiTenancy/TenantSwitchModal', N'[
  {
    "code": null,
    "message": "Given tenant doesn''t exist: naresh",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 403, N'{}', N'1e2d6dea8c324377bfea276b774e1433')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'de4b863f-dd5f-6832-51dc-3a0b499e5c21', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:06:06.2828738' AS DateTime2), 22, N'::1', NULL, NULL, N'2d8ede16b60f490a9fe9fa6856bf0282', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Abp/MultiTenancy/TenantSwitchModal', N'[
  {
    "code": null,
    "message": "Given tenant doesn''t exist: naresh",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 403, N'{}', N'32a753bf54d24a979717a7ada21ae98f')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'd7762b0f-fc7a-f694-1315-3a0b499e6365', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:06:08.1392864' AS DateTime2), 26, N'::1', NULL, NULL, N'9d8b357ddab14b4dac0fb89b0aaabc1a', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Abp/MultiTenancy/TenantSwitchModal', N'[
  {
    "code": null,
    "message": "Given tenant doesn''t exist: naresh",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 403, N'{}', N'4b2288fa246d47269a0829962c7d86fc')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'4c9895b5-a6c7-41de-ad5b-3a0b499ea053', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:06:23.4846864' AS DateTime2), 278, N'::1', NULL, NULL, N'fad61e94752543e98d1dba55019df8bb', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/Passwordless/Login', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'c18f05b91df242bca093e918046c7c91')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'd24e8864-cf77-8b0f-16ce-3a0b499f2615', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:06:57.6806778' AS DateTime2), 325, N'::1', NULL, NULL, N'88c030121e8f4fdea31b2709e1cd3228', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'0ac787811fc5448fa217895e828314f2')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'a5220054-5d67-4537-2043-3a0b499f3331', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:07:01.2823409' AS DateTime2), 79, N'::1', NULL, NULL, N'b2de7b516a2642758114883f86805ad5', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/', NULL, N'', 200, N'{}', N'f23eb9c856894d62845f22cc39d40a3b')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'2989cc9a-100a-31e4-83d4-3a0b49a37909', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:11:41.1906013' AS DateTime2), 195, N'::1', NULL, NULL, N'3f6853be2a8744259a58f0a841403ba7', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'882066490c744247b681330fd1f25f71')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'e45f4eb0-c1c0-5563-6e90-3a0b49a386dc', N'PasswordlessAuthentication.Web', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T10:11:44.8488225' AS DateTime2), 75, N'::1', NULL, NULL, N'6f83284e473b462e8ad1e5bbb567e05e', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/', NULL, N'', 200, N'{}', N'167f7f31d9ab4209ab3aa0c38516c668')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1035450a-5c06-59fd-142a-3a0b49db7645', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T11:12:48.8629036' AS DateTime2), 1825, N'127.0.0.1', NULL, NULL, N'368c088e739e4998b96aefd82fdf52ef', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'98dbb8d2ad7a4e10a6bc329c134b12b3')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'59146536-d66e-2ea0-08b8-3a0b49dec619', N'PasswordlessAuthentication.Web', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T11:13:07.4991068' AS DateTime2), 200237, N'127.0.0.1', NULL, NULL, N'848df3ef213649a8900d8033931bc9fd', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/', NULL, N'', 200, N'{}', N'5fd5a7b5385f4667b676425de2aa82e7')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'470efc5e-9970-19f0-7c9d-3a0b49fd47b7', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T11:49:46.8283378' AS DateTime2), 149, N'::1', NULL, NULL, N'f5e2bb9a611e48498b3436b1f45d121a', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/identity/users', N'[
  {
    "code": "Volo.Authorization:010001",
    "message": "Authorization failed! Given policy has not granted.",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 401, N'{}', N'd51c63f5be9f41f680f3d7b60f879721')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'432e964e-67a8-1381-c399-3a0b4a13ae4c', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T12:14:14.1109365' AS DateTime2), 936, N'::1', NULL, NULL, N'484a090f52384f869035256663e9796d', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student/login-with-user-name-or-email', NULL, N'', 200, N'{}', N'e4ad7ada343444e2b7bad84f7883b0da')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'213037d0-e105-814f-ac60-3a0b4a144c5f', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T12:14:55.0177734' AS DateTime2), 501, N'::1', NULL, NULL, N'3bc7559aa13b4339a949e78b43e8ae81', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'29091dce70664992a2f780fad0b428b7')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'3211547b-656e-be07-f858-3a0b4a145218', N'PasswordlessAuthentication.Web', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-20T12:14:56.8293478' AS DateTime2), 155, N'::1', NULL, NULL, N'32a77d21c3a44f5cb78f15b245577927', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/', NULL, N'', 200, N'{}', N'b11d7ebd3dd84471a979ba2fbd403552')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'948f7b7d-c1f1-1200-fd8f-3a0b507ad642', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T18:04:37.7545366' AS DateTime2), 1006, N'::1', NULL, NULL, N'92a2680f9896460b8e6c77c7bce99ca6', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'8eedf252dc2e40a8ae5773bb14983d86')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'26538aea-796d-e833-8c35-3a0b507ada91', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T18:04:38.6941720' AS DateTime2), 1194, N'::1', NULL, NULL, N'7cc3ec4f0ed84d108ecb0348b0931a2a', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'c190c03162fb4c39a900d57e58e94088')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5bad8c0e-43bb-09aa-9243-3a0b507aefa3', N'PasswordlessAuthentication.Web', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T18:04:44.9883064' AS DateTime2), 295, N'::1', NULL, NULL, N'029c9bda555a4bd5b9753a17366dea77', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/', NULL, N'', 200, N'{}', N'2ecb97ab637a4ccd9719d2a27675d008')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'41b7b3b9-aae1-9086-475e-3a0b508df9f3', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T18:25:31.7004430' AS DateTime2), 1401, N'::1', NULL, NULL, N'9760ce19c16d40478565dc8a7f8b2516', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student/enter-user-name-or-email', NULL, N'', 200, N'{}', N'7b69f238a22440948905ffb0d008bdfd')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'caefd1b2-2fa8-35de-1783-3a0b509616e2', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T18:34:24.5707024' AS DateTime2), 224, N'::1', NULL, NULL, N'a13e93d2224d436e98a0bc729d690158', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student/enter-user-name-or-email', NULL, N'', 200, N'{}', N'36baac4f7e46471196fc4cfde5adb2b5')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'6eca3832-3acb-f2c0-5e1e-3a0b50971892', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T18:35:30.5213275' AS DateTime2), 248, N'::1', NULL, NULL, N'9d8143bf238448fa8ce517bc9a190e1c', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'8f1e6d38fff0445bb11e3447c579b5eb')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'e9f9cb65-c266-5400-3b62-3a0b50a72b77', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T18:53:03.0477644' AS DateTime2), 1131, N'::1', NULL, NULL, N'a740d3c6a54143699ce469b24f7e23ee', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'PUT', N'/api/app/student/3fa85f64-5717-4562-b3fc-2c963f66afa6', NULL, N'', 200, N'{}', N'7ec0513eec0c4dfba5781b9670aa613b')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f924c5ce-ba0d-aac5-33ec-3a0b50ae9375', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:01:08.5917688' AS DateTime2), 961, N'::1', NULL, NULL, N'b308e360e12b4b06b2e3388f40402e24', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'916704578e8e463785af580b116775d1')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f3d7ecea-6ed5-8aee-1f15-3a0b50aff472', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:02:39.7577539' AS DateTime2), 164, N'::1', NULL, NULL, N'528edabba1524a17bb3cb8bad59261b6', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'83dbae63a4474bf2b93d1f6622783b2f')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'7a57b8e3-5359-9531-3736-3a0b50b067bb', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:03:09.3967154' AS DateTime2), 39, N'::1', NULL, NULL, N'53067c58b54f48f6b3a422c73c4c5226', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student/enter-user-name-or-email', NULL, N'', 200, N'{}', N'1aae1d9c2f0b4e66b4354427377a96b7')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'bf42aef8-46f6-4b13-9107-3a0b50b160da', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:04:13.0565219' AS DateTime2), 154, N'::1', NULL, NULL, N'a2ea1d0a83dd4a679255ed3b32390e9d', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'9f17deca11db47d7962a84f1e7af24dc')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'd965ef10-5825-ae12-e2e1-3a0b50b20041', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:04:53.7883267' AS DateTime2), 229, N'::1', NULL, NULL, N'ec1ee13a15834780b67b322b0efe2cb6', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/account/my-profile/change-password', NULL, N'', 204, N'{}', N'e7a5f2b41be34630b4ec3d10cf15cf6d')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'2b632022-92b5-c0d6-8a0d-3a0b50b23152', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:05:06.4340276' AS DateTime2), 144, N'::1', NULL, NULL, N'a6370998cb4646fd8eca44c11dfed161', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'1f790b764ab84f6e9c91fd40e971eac0')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'702ebbfb-dc2c-2b99-726c-3a0b50b304fe', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:06:00.6022595' AS DateTime2), 162, N'::1', NULL, NULL, N'8cb971e3670648d29329a641e2a78384', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'665072b511654868bf7f7dc1aefdb72f')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1d2fe644-5e67-792c-cef9-3a0b50b351ee', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:06:20.3807870' AS DateTime2), 81, N'::1', NULL, NULL, N'ae0c66ca0a3944bd8bfaaf7c9e2a7cd0', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student', NULL, N'', 200, N'{}', N'af731cc81d734a189116a7a4e40834a5')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f0326302-ef5b-4775-1fa3-3a0b50b4a7db', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:07:47.9125261' AS DateTime2), 83, N'::1', NULL, NULL, N'f11659c7a34e49b3908a143dac6658d5', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'PUT', N'/api/app/student/22280c02-6866-7a9d-ed99-3a0b50b351d6', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'491b18cc6c3d4a9490b11b23e8822c1e')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'95638a8f-5f51-12af-2176-3a0b50b4daf4', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:08:00.9967079' AS DateTime2), 80, N'::1', NULL, NULL, N'efa4ab41a1a84c03a52c306dd5ea6f51', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'PUT', N'/api/app/student/22280c02-6866-7a9d-ed99-3a0b50b351d6', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'560f1a61fe11451eaaefcdc22f6e2c38')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'72d5288f-1df7-afdf-7abf-3a0b50b5a953', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:08:53.8533282' AS DateTime2), 54, N'::1', NULL, NULL, N'f45257a585b1459cb9699cd87d1e6fd6', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'PUT', N'/api/app/student/22280c02-6866-7a9d-ed99-3a0b50b351d6', NULL, N'', 200, N'{}', N'855c4b0eef0743de9e64525dd7021b53')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'cc7baddd-9703-41a5-f3e9-3a0b50b650c6', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:09:36.6894812' AS DateTime2), 85, N'::1', NULL, NULL, N'46b9fb69ab1b4bb9b683bc7580b553fb', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'DELETE', N'/api/app/student/3fa85f64-5717-4562-b3fc-2c963f66afa6', NULL, N'', 204, N'{}', N'23eefdd763864247ba00addc2b1febc2')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'98bbb29e-5ea3-a637-1ba4-3a0b50ca16ba', N'PasswordlessAuthentication.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:31:09.8094921' AS DateTime2), 2815, N'::1', NULL, NULL, N'd5e88355b92e4b36a3f1f80023454f15', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'7835d307ea344ddebcedff3b9d274332')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'30af464a-f67f-739f-ba0d-3a0b50cabfe6', N'PasswordlessAuthentication.Web', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:31:55.8806079' AS DateTime2), 60, N'::1', NULL, NULL, N'1fdc4bf25c1f4e6dabecbadd7928124e', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student/enter-user-name-or-email', NULL, N'', 200, N'{}', N'0a4725e2f9424ae1b17ad458c192eaa2')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'e752c1cd-3850-6a62-ed7c-3a0b50cb294e', N'PasswordlessAuthentication.Web', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-21T19:32:22.9054060' AS DateTime2), 20, N'::1', NULL, NULL, N'a70bbc5531e84d1d8717d7ade9602eee', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/student/enter-user-name-or-email', NULL, N'', 200, N'{}', N'b74e4bd0b54845688762539551b7b055')
GO
INSERT [dbo].[AbpFeatureGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'7ab6bfaa-02a9-63b1-822a-3a0b45dce779', N'SettingManagement', N'L:AbpSettingManagement,Feature:SettingManagementGroup', N'{}')
GO
INSERT [dbo].[AbpFeatures] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [Description], [DefaultValue], [IsVisibleToClients], [IsAvailableToHost], [AllowedProviders], [ValueType], [ExtraProperties]) VALUES (N'e04e8844-a1b9-1501-d645-3a0b45dce77f', N'SettingManagement', N'SettingManagement.Enable', NULL, N'L:AbpSettingManagement,Feature:SettingManagementEnable', N'L:AbpSettingManagement,Feature:SettingManagementEnableDescription', N'true', 1, 0, NULL, N'{"name":"ToggleStringValueType","properties":{},"validator":{"name":"BOOLEAN","properties":{}}}', N'{}')
GO
INSERT [dbo].[AbpFeatures] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [Description], [DefaultValue], [IsVisibleToClients], [IsAvailableToHost], [AllowedProviders], [ValueType], [ExtraProperties]) VALUES (N'a5938b33-b89a-73a1-2640-3a0b45dce79d', N'SettingManagement', N'SettingManagement.AllowChangingEmailSettings', N'SettingManagement.Enable', N'L:AbpSettingManagement,Feature:AllowChangingEmailSettings', NULL, N'false', 1, 0, NULL, N'{"name":"ToggleStringValueType","properties":{},"validator":{"name":"BOOLEAN","properties":{}}}', N'{}')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'a5427114-09ca-baef-6587-3a0b45ca7f55', NULL, N'AbpIdentity.Roles', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'50a5fb34-e8be-fae4-f6a5-3a0b45ca7f60', NULL, N'AbpIdentity.Roles.Create', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'767c0413-4c0d-10ec-3611-3a0b45ca7f62', NULL, N'AbpIdentity.Roles.Delete', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'3d51e1af-7254-a784-3f36-3a0b45ca7f62', NULL, N'AbpIdentity.Roles.Update', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'6910cc39-cfe2-e1dd-13db-3a0b45ca7f63', NULL, N'SettingManagement.Emailing', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'04bae9e1-ba89-afd3-319b-3a0b45ca7f63', NULL, N'FeatureManagement.ManageHostFeatures', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'4ddb4cea-9009-8f05-6aac-3a0b45ca7f63', NULL, N'AbpIdentity.Users.Create', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'b969cf10-756e-d359-6ffa-3a0b45ca7f63', NULL, N'AbpIdentity.Users.ManagePermissions', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'374acbab-5382-d966-8dd4-3a0b45ca7f63', NULL, N'AbpIdentity.Users.Update', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'c145dd64-334c-cb19-a749-3a0b45ca7f63', NULL, N'SettingManagement.Emailing.Test', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'ef601456-8f82-d1a4-b307-3a0b45ca7f63', NULL, N'AbpIdentity.Users', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'15ee349f-050f-ef25-b60e-3a0b45ca7f63', NULL, N'AbpIdentity.Users.Delete', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'f1b349e9-b5ac-0073-c681-3a0b45ca7f63', NULL, N'AbpIdentity.Roles.ManagePermissions', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'ae31e056-c09d-7e92-0b55-3a0b45ca7f64', NULL, N'AbpTenantManagement.Tenants', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'a40f8fa6-4a80-7412-2952-3a0b45ca7f64', NULL, N'AbpTenantManagement.Tenants.ManageConnectionStrings', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'f1f852fd-a15e-3726-598c-3a0b45ca7f64', NULL, N'AbpTenantManagement.Tenants.Update', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'1dd22984-85fd-ce3b-5a2b-3a0b45ca7f64', NULL, N'AbpTenantManagement.Tenants.Create', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'fe158af4-da1c-c325-caf5-3a0b45ca7f64', NULL, N'AbpTenantManagement.Tenants.ManageFeatures', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'355f9909-afec-b4b0-d68f-3a0b45ca7f64', NULL, N'AbpTenantManagement.Tenants.Delete', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'a9ff04c3-8fe0-345e-753b-3a0b45dce77a', N'AbpIdentity', N'L:AbpIdentity,Permission:IdentityManagement', N'{}')
GO
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'3e411693-5434-71f6-41c4-3a0b45dce782', N'FeatureManagement', N'L:AbpFeatureManagement,Permission:FeatureManagement', N'{}')
GO
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'a1276b99-aa02-59d2-45a2-3a0b45dce782', N'SettingManagement', N'L:AbpSettingManagement,Permission:SettingManagement', N'{}')
GO
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'977368fa-c2a8-6cf7-78c9-3a0b45dce787', N'PasswordlessAuthentication', N'F:PasswordlessAuthentication', N'{}')
GO
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'9b45b57a-bb07-3546-a78a-3a0b45dce787', N'AbpTenantManagement', N'L:AbpTenantManagement,Permission:TenantManagement', N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'b09786b9-0403-048d-2616-3a0b45dce77f', N'AbpIdentity', N'AbpIdentity.Roles', NULL, N'L:AbpIdentity,Permission:RoleManagement', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'd5bd3d8b-7e09-0ca9-10b8-3a0b45dce782', N'SettingManagement', N'SettingManagement.Emailing', NULL, N'L:AbpSettingManagement,Permission:Emailing', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'218094b0-4ac0-cc7a-373a-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Users.Create', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Create', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'e7ed9512-d0da-7aa5-5824-3a0b45dce782', N'FeatureManagement', N'FeatureManagement.ManageHostFeatures', NULL, N'L:AbpFeatureManagement,Permission:FeatureManagement.ManageHostFeatures', 1, 2, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'9ba218a8-abdd-45c7-59f0-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.UserLookup', NULL, N'L:AbpIdentity,Permission:UserLookup', 1, 3, N'C', NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'e3cc55e0-5368-2f09-66a7-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Users', NULL, N'L:AbpIdentity,Permission:UserManagement', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'9a5f0161-f5f2-c1ba-69f4-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Roles.ManagePermissions', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:ChangePermissions', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'c3141161-7372-7e5b-6b23-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Users.ManagePermissions', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:ChangePermissions', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'9d953cfd-65c9-ca95-73e0-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Users.Update', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Edit', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'a83dec86-6bef-756b-8858-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Roles.Create', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Create', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'2e3e209e-320d-de4c-ced7-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Roles.Update', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Edit', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'74081b78-83bb-643f-d0e0-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Roles.Delete', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Delete', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'a022bfc3-d555-0639-e9b9-3a0b45dce782', N'AbpIdentity', N'AbpIdentity.Users.Delete', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Delete', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'f849df3b-4b1b-af59-404a-3a0b45dce787', N'AbpTenantManagement', N'AbpTenantManagement.Tenants', NULL, N'L:AbpTenantManagement,Permission:TenantManagement', 1, 2, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'71184fe0-c71a-39b9-63c3-3a0b45dce787', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Delete', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Delete', 1, 2, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'63c07d79-5bf0-c165-d5b7-3a0b45dce787', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.ManageFeatures', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:ManageFeatures', 1, 2, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'f34b1208-4e5a-6534-ebd2-3a0b45dce787', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Create', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Create', 1, 2, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'53ef68d4-b4d1-c4ca-eca0-3a0b45dce787', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Update', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Edit', 1, 2, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'ab73c46e-6a3b-9561-f170-3a0b45dce787', N'SettingManagement', N'SettingManagement.Emailing.Test', N'SettingManagement.Emailing', N'L:AbpSettingManagement,Permission:EmailingTest', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'c81df701-6e5d-5846-f3af-3a0b45dce787', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.ManageConnectionStrings', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:ManageConnectionStrings', 1, 2, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpRoles] ([Id], [TenantId], [Name], [NormalizedName], [IsDefault], [IsStatic], [IsPublic], [EntityVersion], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'd93e6931-f016-dfbd-70e0-3a0b45ca7bac', NULL, N'admin', N'ADMIN', 0, 1, 1, 0, N'{}', N'754e465a64d64ad2895ef5ec2d277ec4')
GO
INSERT [dbo].[AbpRoles] ([Id], [TenantId], [Name], [NormalizedName], [IsDefault], [IsStatic], [IsPublic], [EntityVersion], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'bcb290f8-1dee-638f-6146-3a0b4659efd8', NULL, N'HR', N'HR', 0, 0, 1, 0, N'{}', N'0128d4dd1c2e4cd8927d5ad6e32ad490')
GO
INSERT [dbo].[AbpRoles] ([Id], [TenantId], [Name], [NormalizedName], [IsDefault], [IsStatic], [IsPublic], [EntityVersion], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1dfda68f-cc58-e3b7-2c70-3a0b465a09ae', NULL, N'User', N'USER', 0, 0, 1, 0, N'{}', N'36445f788e104dd886d4d50a77d51fb8')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'4566e7b0-d7ad-66f5-80e0-3a0b45eb99ab', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginFailed', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'0782e1e418e54bc2bb3fa82a42dc2b19', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T16:51:59.4607741' AS DateTime2), N'{}', N'ef5592e7aa4c4674af11864c5aa60b38')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'7c553348-3b2a-ec5c-5d52-3a0b45f04a64', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'1fbd8494463542a1918b04e1e6e95885', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T16:57:06.8506052' AS DateTime2), N'{}', N'312df29239c34011be358c0933f68e71')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'edc673a8-5d06-4265-5941-3a0b45f986dc', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'da5aa518cff4469daf9416e5a67aaee5', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T17:07:12.1546714' AS DateTime2), N'{}', N'334698246e744d9dbfe71249983ea677')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'd2f63bcb-e31c-9d48-e32c-3a0b4606f3e2', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'003a3ac40d014e73ad2c437c66be262b', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T17:21:52.0324113' AS DateTime2), N'{}', N'2c9c6de9e8e547ccb96b820246ed9902')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'9fa32587-a85b-8032-d02c-3a0b4681bdb6', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'97d5d77e50c342bfb89f3ae76e0bc8df', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T19:35:59.0909492' AS DateTime2), N'{}', N'bd1766e63be1452d82f67f0589b25a92')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'92edcd98-3698-d937-ae72-3a0b4681d9d8', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'c87056ce076b455c88a18e8d4b52eb3f', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T19:36:06.2965009' AS DateTime2), N'{}', N'a2d35f79daeb449e8f49c9c4e6616416')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'2dc6d198-9d4a-2fc0-ecae-3a0b473b3a72', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginFailed', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'raresh', NULL, NULL, N'6e9c5d4ca1924058a044fd405339d98f', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T22:58:35.1799376' AS DateTime2), N'{}', N'dfd183bf0ac64529af9c506062466a28')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5e5836c7-c020-96b6-c03f-3a0b473b86c5', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'naresh', NULL, NULL, N'6d506fbf429444449248e0e05891ea0a', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T22:58:54.7254341' AS DateTime2), N'{}', N'fbaa4c1eff504ceca438c6f16e4fc581')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0c5878a0-9e79-17fe-bfdc-3a0b47658fc5', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, N'ab9e04c66b7342a8b76fb861d92298d1', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T23:44:49.5418751' AS DateTime2), N'{}', N'90a4753aae094b6083aaff07b426f79a')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'42f0951b-ea2d-79cc-a375-3a0b47659dd4', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'e2673a03f1b1412189705536e03b2bb5', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-19T23:44:53.1403502' AS DateTime2), N'{}', N'eaad0e38e22b46ef841eb3b01207e441')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1d7ed3d4-d08b-0b0c-bd25-3a0b479578e2', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'690a384aea554a8695e1065d85a7b411', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T00:37:09.4099377' AS DateTime2), N'{}', N'4f7a8e0909f54d9794f4d31367ebeaf4')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'a9bf9142-6406-f147-6031-3a0b47c661c8', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'6df18dec842245d897f4a483a4aaff01', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T01:30:34.7525809' AS DateTime2), N'{}', N'e24e1ab1409d4f15a4565b4078eea8b6')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'340b837c-8d16-e131-a077-3a0b499df045', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'a63932de0b1646e08cbe73cc2cdb87bd', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T10:05:38.6895258' AS DateTime2), N'{}', N'9c1f8b1dc72a4fe1a4f80438ca3f6f4c')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'6f6d46ce-15cc-583e-0354-3a0b499f2605', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'88c030121e8f4fdea31b2709e1cd3228', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T10:06:57.9896748' AS DateTime2), N'{}', N'657ac660e7144828b6523d15ee98932b')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'91c02857-68d2-9148-12b0-3a0b49a369c5', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'133efb8e07bd43f3bde7648e2eb507aa', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T10:11:37.4771452' AS DateTime2), N'{}', N'b37497a6e2fe42948adee946f86595aa')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'c524a6a2-4e84-7b9f-2a5b-3a0b49a378fe', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, N'3f6853be2a8744259a58f0a841403ba7', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T10:11:41.3741710' AS DateTime2), N'{}', N'c2849f1fb0d04796b20ad1c91dc10600')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'efb37583-ac7e-96f9-1572-3a0b49db7563', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, N'368c088e739e4998b96aefd82fdf52ef', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T11:12:50.4627171' AS DateTime2), N'{}', N'ff0f433254fd45a98eedd4f02f52b7f0')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'a9bbf264-09c6-241d-b957-3a0b49fa79e2', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, N'714348d558394cbabfcb0d9b698b0085', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T11:46:43.2315845' AS DateTime2), N'{}', N'7131738c94734649a3ff206b500d6dd0')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'aa7e0104-e610-cc4f-23ed-3a0b4a144c27', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, N'3bc7559aa13b4339a949e78b43e8ae81', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-20T12:14:55.4607460' AS DateTime2), N'{}', N'3713775f87684b5db35b574c7a42a688')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'4133b49e-d208-811c-36db-3a0b507ada15', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, N'7cc3ec4f0ed84d108ecb0348b0931a2a', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T18:04:39.7589628' AS DateTime2), N'{}', N'26cbbac11d5c4930b4eabac10e487f1b')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'd506d69b-5944-c341-6914-3a0b508a8db0', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', N'naresh', NULL, NULL, N'33cb3c02ca9141c7817b60d635a7ef64', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T18:21:48.7811262' AS DateTime2), N'{}', N'334ef68256574e85ac2e6d7189ee469a')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'b34c7895-e9f7-e251-9e30-3a0b50952ea9', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'3a7b256eec8041a2aa3b805ccfd55103', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T18:33:25.3511410' AS DateTime2), N'{}', N'1fdecbd32f1d4f1ca9f24d1086799748')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'128ca753-50c3-664d-9219-3a0b50ae7bfa', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'11c46e36016846aa931e98f9d6f87163', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:01:03.5444855' AS DateTime2), N'{}', N'b597bac224144b7fb68d7b36f47ccd64')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'fe9f8c12-fbc4-568b-36f4-3a0b50ae9360', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'b308e360e12b4b06b2e3388f40402e24', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:01:09.5365266' AS DateTime2), N'{}', N'5d1b43a5cb7c4a49b6408c1b013d6bec')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'ac18958c-7e32-da2f-656a-3a0b50af3624', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'eefc78602954463ab52b5df15456f672', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:01:51.2047527' AS DateTime2), N'{}', N'f3839c0faaf349b5aeb36c9914abc1ff')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f6d3722a-50a7-78e6-12e2-3a0b50aff464', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'528edabba1524a17bb3cb8bad59261b6', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:02:39.9089142' AS DateTime2), N'{}', N'e498ddc676b84787adb17109d380e8c5')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1430dd80-3cdc-fadd-94b6-3a0b50b00ad5', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'bad9a963d89e43dcaab1d2333c4f06c1', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:02:45.6530765' AS DateTime2), N'{}', N'729ccd4d598146c4983afe63c9372861')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'c0387253-20f2-989d-d71a-3a0b50b143e3', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'13032328bf414b4e88f9c04b41d99919', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:04:05.7958964' AS DateTime2), N'{}', N'51d86bd0dc3a464286486c3984c68c2b')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'63b356b8-6572-b80c-48f6-3a0b50b160d3', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'a2ea1d0a83dd4a679255ed3b32390e9d', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:04:13.2038673' AS DateTime2), N'{}', N'5695bc2c84d34be49c4e36f9f9f9b820')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'75340c91-1927-58b6-e1bf-3a0b50b21cdc', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'Logout', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'c2f5528da161410da8e5a473412c1263', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:05:01.3406280' AS DateTime2), N'{}', N'5b490559d7004a5480cad9cc75661d84')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'c9727cb3-03e8-88b9-183b-3a0b50b2314b', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'a6370998cb4646fd8eca44c11dfed161', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:05:06.5715384' AS DateTime2), N'{}', N'4c7dd9316d3f4626850abe6356bdce57')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'7681883c-f6d2-9fc2-80da-3a0b50ca156c', NULL, N'PasswordlessAuthentication.Web', N'Identity', N'LoginSucceeded', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'admin', NULL, NULL, N'd5e88355b92e4b36a3f1f80023454f15', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-21T19:31:12.2951110' AS DateTime2), N'{}', N'46fead2a5b1540fa912662dc7fb5515f')
GO
INSERT [dbo].[AbpStudents] ([Id], [StudentName], [Course], [Email], [mobile], [IsDeleted], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [DeleterId], [DeletionTime]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa1', N'Ravi', N'BCA', N'ravi@gmail.com', N'1234567890', 0, N'{}', N'8a9f744280ab4e779f7d3f42fcee5336', CAST(N'2023-05-19T11:54:28.8700000' AS DateTime2), N'3fa85f64-5717-4562-b3fc-2c963f66afa6', CAST(N'2023-05-19T11:54:28.8700000' AS DateTime2), N'3fa85f64-5717-4562-b3fc-2c963f66afa6', NULL, NULL)
GO
INSERT [dbo].[AbpStudents] ([Id], [StudentName], [Course], [Email], [mobile], [IsDeleted], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [DeleterId], [DeletionTime]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'string', N'string', N'string', N'string', 1, N'{}', N'5f71131008d145d2ae326c773f0fdff6', CAST(N'2023-05-19T11:33:17.6650000' AS DateTime2), N'3fa85f64-5717-4562-b3fc-2c963f66afa6', CAST(N'2023-05-21T19:09:36.7670596' AS DateTime2), N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', CAST(N'2023-05-21T19:09:36.7639823' AS DateTime2))
GO
INSERT [dbo].[AbpStudents] ([Id], [StudentName], [Course], [Email], [mobile], [IsDeleted], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [DeleterId], [DeletionTime]) VALUES (N'22280c02-6866-7a9d-ed99-3a0b50b351d6', N'akash', N'MBA', N'akash@gmail.com', N'1234567890', 0, N'{}', N'942abe4508bf4f408ce98edb7a18f7e4', CAST(N'2023-05-21T19:06:20.4412551' AS DateTime2), N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', CAST(N'2023-05-21T19:08:53.8928962' AS DateTime2), N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', NULL, NULL)
GO
INSERT [dbo].[AbpUserRoles] ([UserId], [RoleId], [TenantId]) VALUES (N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', N'd93e6931-f016-dfbd-70e0-3a0b45ca7bac', NULL)
GO
INSERT [dbo].[AbpUsers] ([Id], [TenantId], [UserName], [NormalizedUserName], [Name], [Surname], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [IsExternal], [PhoneNumber], [PhoneNumberConfirmed], [IsActive], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ShouldChangePasswordOnNextLogin], [EntityVersion], [LastPasswordChangeTime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', NULL, N'admin', N'ADMIN', N'admin', NULL, N'admin@abp.io', N'ADMIN@ABP.IO', 0, N'AQAAAAIAAYagAAAAELm2/mt02FCypxhZgdvkmTvadUigEZId2VktYoPtqOBd7Ykh67/Zux+ec+2UF42NQg==', N'YSG3L2E34QGTPB2FGEVBBNO63UTM4EOZ', 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 10, CAST(N'2023-05-21T13:34:53.9887916+00:00' AS DateTimeOffset), N'{}', N'aef6aa40c5e54abeb2d336dba4229bbf', CAST(N'2023-05-19T16:15:48.5369252' AS DateTime2), NULL, CAST(N'2023-05-21T19:04:53.9969171' AS DateTime2), N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', 0, NULL, NULL)
GO
INSERT [dbo].[AbpUsers] ([Id], [TenantId], [UserName], [NormalizedUserName], [Name], [Surname], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [IsExternal], [PhoneNumber], [PhoneNumberConfirmed], [IsActive], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ShouldChangePasswordOnNextLogin], [EntityVersion], [LastPasswordChangeTime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'afc7fea1-5990-5c3a-84ac-3a0b465b45c6', NULL, N'ravi', N'RAVI', N'Ravi shankar', N'pandey', N'ravi@gmail.com', N'RAVI@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEC4HbPe++3YXNGmvcluSTTFHXrB0ldbvkVZePxHoM2DF0cu1PPRiZeQKx5t2KP5z9A==', N'CV3ON5FTUZYW2FS37QJXFTT7QARIMG5R', 0, N'7802036681', 0, 1, 0, NULL, 1, 0, 0, 6, CAST(N'2023-05-19T13:23:58.1261383+00:00' AS DateTimeOffset), N'{}', N'c04d6870dbf0499caaf3ab5e56dd1d84', CAST(N'2023-05-19T18:53:58.1451795' AS DateTime2), N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', CAST(N'2023-05-19T18:53:58.2565557' AS DateTime2), N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', 0, NULL, NULL)
GO
INSERT [dbo].[AbpUsers] ([Id], [TenantId], [UserName], [NormalizedUserName], [Name], [Surname], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [IsExternal], [PhoneNumber], [PhoneNumberConfirmed], [IsActive], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ShouldChangePasswordOnNextLogin], [EntityVersion], [LastPasswordChangeTime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'b2a1ef87-5d19-8f95-80e7-3a0b4661ce7f', NULL, N'naresh', N'NARESH', NULL, NULL, N'naresh@gmail.com', N'NARESH@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELA9qwcVCwfwByqSmZyt908VUU9ArKkz0zIrLu8CfCKcpZxGfuNhKD6bQuO3v9WTpg==', N'5TUD7WWUS4XVG6BP245OB76TUOT5H3AS', 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 6, CAST(N'2023-05-19T13:31:06.3474291+00:00' AS DateTimeOffset), N'{}', N'ea69db2dde0544f8be5e1fde10786d80', CAST(N'2023-05-19T19:01:06.3547396' AS DateTime2), N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', CAST(N'2023-05-21T19:32:06.6937313' AS DateTime2), N'd51d12c0-6560-2881-ba8f-3a0b45ca77b6', 0, NULL, NULL)
GO
INSERT [dbo].[OpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [Type], [ClientUri], [LogoUri], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'0ae6fb03-d7d9-c9bc-0b9f-3a0b45ca837a', N'PasswordlessAuthentication_Web', N'AQAAAAEAACcQAAAAEEa0hqVmVQ6V2TclXnc2oWqk8qzZZwMT5qX3NpXw4USW5gyQn+uSbZ2k5vVOl1UdRA==', N'implicit', N'Web Application', NULL, N'["rst:code id_token","ept:logout","gt:authorization_code","rst:code","ept:authorization","ept:token","ept:revocation","ept:introspection","gt:implicit","rst:id_token","scp:address","scp:email","scp:phone","scp:profile","scp:roles","scp:PasswordlessAuthentication"]', N'["https://localhost:44328/signout-callback-oidc"]', NULL, N'["https://localhost:44328/signin-oidc"]', NULL, N'confidential', N'https://localhost:44328/', NULL, N'{}', N'36168e933ecf459583cf4da68917c450', CAST(N'2023-05-19T16:15:51.2240460' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[OpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [Type], [ClientUri], [LogoUri], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'db987ff1-3ba5-7ce8-98bb-3a0b45ca8428', N'PasswordlessAuthentication_App', NULL, N'implicit', N'Console Test / Angular Application', NULL, N'["ept:logout","gt:authorization_code","rst:code","ept:authorization","ept:token","ept:revocation","ept:introspection","gt:password","gt:client_credentials","gt:refresh_token","scp:address","scp:email","scp:phone","scp:profile","scp:roles","scp:PasswordlessAuthentication"]', N'["http://localhost:4200"]', NULL, N'["http://localhost:4200"]', NULL, N'public', N'http://localhost:4200', NULL, N'{}', N'1d19af2ef9e340e493e03744f103ad40', CAST(N'2023-05-19T16:15:51.2758379' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[OpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [Type], [ClientUri], [LogoUri], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'0221e74d-2a5a-24d1-fed2-3a0b45ca8434', N'PasswordlessAuthentication_BlazorServerTiered', N'AQAAAAEAACcQAAAAEAA0564tGBZpJFkohnSwF3n61uEZTZr3dOW78Li7LpttXy1oGW4r1peCRzU9+wSzyA==', N'implicit', N'Blazor Server Application', NULL, N'["rst:code id_token","ept:logout","gt:authorization_code","rst:code","ept:authorization","ept:token","ept:revocation","ept:introspection","gt:implicit","rst:id_token","scp:address","scp:email","scp:phone","scp:profile","scp:roles","scp:PasswordlessAuthentication"]', N'["https://localhost:44342/signout-callback-oidc"]', NULL, N'["https://localhost:44342/signin-oidc"]', NULL, N'confidential', N'https://localhost:44342/', NULL, N'{}', N'7bdd8993440b448998573799c95f3036', CAST(N'2023-05-19T16:15:51.2977766' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[OpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [Type], [ClientUri], [LogoUri], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'c12b22de-7270-2fe3-e1c0-3a0b45ca8449', N'PasswordlessAuthentication_Swagger', NULL, N'implicit', N'Swagger Application', NULL, N'["ept:logout","gt:authorization_code","rst:code","ept:authorization","ept:token","ept:revocation","ept:introspection","scp:address","scp:email","scp:phone","scp:profile","scp:roles","scp:PasswordlessAuthentication"]', NULL, NULL, N'["https://localhost:44366/swagger/oauth2-redirect.html"]', NULL, N'public', N'https://localhost:44366', NULL, N'{}', N'44cfb8b5d49d473d8b644c8d0b2f31c4', CAST(N'2023-05-19T16:15:51.3080145' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[OpenIddictScopes] ([Id], [Description], [Descriptions], [DisplayName], [DisplayNames], [Name], [Properties], [Resources], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'3a4f9d18-bfb5-c6da-5a0a-3a0b45ca82af', NULL, NULL, N'PasswordlessAuthentication API', NULL, N'PasswordlessAuthentication', NULL, N'["PasswordlessAuthentication"]', N'{}', N'f6d944b5a239461aa60c3c72544b75d1', CAST(N'2023-05-19T16:15:50.9697221' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
/****** Object:  Index [IX_AbpAuditLogActions_AuditLogId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogActions_AuditLogId] ON [dbo].[AbpAuditLogActions]
(
	[AuditLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpAuditLogActions_TenantId_ServiceName_MethodName_ExecutionTime]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogActions_TenantId_ServiceName_MethodName_ExecutionTime] ON [dbo].[AbpAuditLogActions]
(
	[TenantId] ASC,
	[ServiceName] ASC,
	[MethodName] ASC,
	[ExecutionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_ExecutionTime]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionTime] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[ExecutionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_UserId_ExecutionTime]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_UserId_ExecutionTime] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[UserId] ASC,
	[ExecutionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime] ON [dbo].[AbpBackgroundJobs]
(
	[IsAbandoned] ASC,
	[NextTryTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityChanges_AuditLogId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_AuditLogId] ON [dbo].[AbpEntityChanges]
(
	[AuditLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpEntityChanges_TenantId_EntityTypeFullName_EntityId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_TenantId_EntityTypeFullName_EntityId] ON [dbo].[AbpEntityChanges]
(
	[TenantId] ASC,
	[EntityTypeFullName] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityPropertyChanges_EntityChangeId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityPropertyChanges_EntityChangeId] ON [dbo].[AbpEntityPropertyChanges]
(
	[EntityChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatureGroups_Name]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpFeatureGroups_Name] ON [dbo].[AbpFeatureGroups]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatures_GroupName]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpFeatures_GroupName] ON [dbo].[AbpFeatures]
(
	[GroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatures_Name]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpFeatures_Name] ON [dbo].[AbpFeatures]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatureValues_Name_ProviderName_ProviderKey]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpFeatureValues_Name_ProviderName_ProviderKey] ON [dbo].[AbpFeatureValues]
(
	[Name] ASC,
	[ProviderName] ASC,
	[ProviderKey] ASC
)
WHERE ([ProviderName] IS NOT NULL AND [ProviderKey] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpLinkUsers_SourceUserId_SourceTenantId_TargetUserId_TargetTenantId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpLinkUsers_SourceUserId_SourceTenantId_TargetUserId_TargetTenantId] ON [dbo].[AbpLinkUsers]
(
	[SourceUserId] ASC,
	[SourceTenantId] ASC,
	[TargetUserId] ASC,
	[TargetTenantId] ASC
)
WHERE ([SourceTenantId] IS NOT NULL AND [TargetTenantId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnitRoles_RoleId_OrganizationUnitId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnitRoles_RoleId_OrganizationUnitId] ON [dbo].[AbpOrganizationUnitRoles]
(
	[RoleId] ASC,
	[OrganizationUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpOrganizationUnits_Code]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_Code] ON [dbo].[AbpOrganizationUnits]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnits_ParentId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_ParentId] ON [dbo].[AbpOrganizationUnits]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissionGrants_TenantId_Name_ProviderName_ProviderKey]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpPermissionGrants_TenantId_Name_ProviderName_ProviderKey] ON [dbo].[AbpPermissionGrants]
(
	[TenantId] ASC,
	[Name] ASC,
	[ProviderName] ASC,
	[ProviderKey] ASC
)
WHERE ([TenantId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissionGroups_Name]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpPermissionGroups_Name] ON [dbo].[AbpPermissionGroups]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissions_GroupName]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_GroupName] ON [dbo].[AbpPermissions]
(
	[GroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissions_Name]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpPermissions_Name] ON [dbo].[AbpPermissions]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoleClaims_RoleId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_RoleId] ON [dbo].[AbpRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpRoles_NormalizedName]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_NormalizedName] ON [dbo].[AbpRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSecurityLogs_TenantId_Action]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSecurityLogs_TenantId_Action] ON [dbo].[AbpSecurityLogs]
(
	[TenantId] ASC,
	[Action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSecurityLogs_TenantId_ApplicationName]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSecurityLogs_TenantId_ApplicationName] ON [dbo].[AbpSecurityLogs]
(
	[TenantId] ASC,
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSecurityLogs_TenantId_Identity]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSecurityLogs_TenantId_Identity] ON [dbo].[AbpSecurityLogs]
(
	[TenantId] ASC,
	[Identity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpSecurityLogs_TenantId_UserId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSecurityLogs_TenantId_UserId] ON [dbo].[AbpSecurityLogs]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSettings_Name_ProviderName_ProviderKey]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpSettings_Name_ProviderName_ProviderKey] ON [dbo].[AbpSettings]
(
	[Name] ASC,
	[ProviderName] ASC,
	[ProviderKey] ASC
)
WHERE ([ProviderName] IS NOT NULL AND [ProviderKey] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpStudents_Email]    Script Date: 21-05-2023 19:41:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpStudents_Email] ON [dbo].[AbpStudents]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpTenants_Name]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_Name] ON [dbo].[AbpTenants]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserClaims_UserId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_UserId] ON [dbo].[AbpUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserLogins_LoginProvider_ProviderKey]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_LoginProvider_ProviderKey] ON [dbo].[AbpUserLogins]
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserOrganizationUnits_UserId_OrganizationUnitId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_UserId_OrganizationUnitId] ON [dbo].[AbpUserOrganizationUnits]
(
	[UserId] ASC,
	[OrganizationUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserRoles_RoleId_UserId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_RoleId_UserId] ON [dbo].[AbpUserRoles]
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_Email]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_Email] ON [dbo].[AbpUsers]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_NormalizedEmail]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_NormalizedEmail] ON [dbo].[AbpUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_NormalizedUserName]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_NormalizedUserName] ON [dbo].[AbpUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_UserName]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_UserName] ON [dbo].[AbpUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictApplications_ClientId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictApplications_ClientId] ON [dbo].[OpenIddictApplications]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictAuthorizations_ApplicationId_Status_Subject_Type]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictAuthorizations_ApplicationId_Status_Subject_Type] ON [dbo].[OpenIddictAuthorizations]
(
	[ApplicationId] ASC,
	[Status] ASC,
	[Subject] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictScopes_Name]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictScopes_Name] ON [dbo].[OpenIddictScopes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictTokens_ApplicationId_Status_Subject_Type]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictTokens_ApplicationId_Status_Subject_Type] ON [dbo].[OpenIddictTokens]
(
	[ApplicationId] ASC,
	[Status] ASC,
	[Subject] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OpenIddictTokens_AuthorizationId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictTokens_AuthorizationId] ON [dbo].[OpenIddictTokens]
(
	[AuthorizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictTokens_ReferenceId]    Script Date: 21-05-2023 19:41:49 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictTokens_ReferenceId] ON [dbo].[OpenIddictTokens]
(
	[ReferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([smallint],(0))) FOR [TryCount]
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAbandoned]
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([tinyint],(15))) FOR [Priority]
GO
ALTER TABLE [dbo].[AbpOrganizationUnits] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpStudents] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpTenants] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [EmailConfirmed]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsExternal]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [PhoneNumberConfirmed]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [TwoFactorEnabled]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [LockoutEnabled]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT ((0)) FOR [AccessFailedCount]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OpenIddictApplications] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OpenIddictScopes] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OpenIddictTokens] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpAuditLogActions]  WITH CHECK ADD  CONSTRAINT [FK_AbpAuditLogActions_AbpAuditLogs_AuditLogId] FOREIGN KEY([AuditLogId])
REFERENCES [dbo].[AbpAuditLogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpAuditLogActions] CHECK CONSTRAINT [FK_AbpAuditLogActions_AbpAuditLogs_AuditLogId]
GO
ALTER TABLE [dbo].[AbpEntityChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityChanges_AbpAuditLogs_AuditLogId] FOREIGN KEY([AuditLogId])
REFERENCES [dbo].[AbpAuditLogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityChanges] CHECK CONSTRAINT [FK_AbpEntityChanges_AbpAuditLogs_AuditLogId]
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId] FOREIGN KEY([EntityChangeId])
REFERENCES [dbo].[AbpEntityChanges] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges] CHECK CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpOrganizationUnits_OrganizationUnitId] FOREIGN KEY([OrganizationUnitId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles] CHECK CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpOrganizationUnits_OrganizationUnitId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles] CHECK CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
GO
ALTER TABLE [dbo].[AbpOrganizationUnits] CHECK CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId]
GO
ALTER TABLE [dbo].[AbpRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpRoleClaims] CHECK CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpTenantConnectionStrings]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenantConnectionStrings_AbpTenants_TenantId] FOREIGN KEY([TenantId])
REFERENCES [dbo].[AbpTenants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpTenantConnectionStrings] CHECK CONSTRAINT [FK_AbpTenantConnectionStrings_AbpTenants_TenantId]
GO
ALTER TABLE [dbo].[AbpUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserClaims] CHECK CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserLogins] CHECK CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserOrganizationUnits_AbpOrganizationUnits_OrganizationUnitId] FOREIGN KEY([OrganizationUnitId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] CHECK CONSTRAINT [FK_AbpUserOrganizationUnits_AbpOrganizationUnits_OrganizationUnitId]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserOrganizationUnits_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] CHECK CONSTRAINT [FK_AbpUserOrganizationUnits_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserRoles_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserRoles] CHECK CONSTRAINT [FK_AbpUserRoles_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserRoles] CHECK CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserTokens] CHECK CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictAuthorizations_OpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[OpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations] CHECK CONSTRAINT [FK_OpenIddictAuthorizations_OpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[OpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictTokens_OpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[OpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictTokens] CHECK CONSTRAINT [FK_OpenIddictTokens_OpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[OpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictTokens_OpenIddictAuthorizations_AuthorizationId] FOREIGN KEY([AuthorizationId])
REFERENCES [dbo].[OpenIddictAuthorizations] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictTokens] CHECK CONSTRAINT [FK_OpenIddictTokens_OpenIddictAuthorizations_AuthorizationId]
GO
USE [master]
GO
ALTER DATABASE [StudentManagement] SET  READ_WRITE 
GO
