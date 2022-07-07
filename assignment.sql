USE [master]
GO
/****** Object:  Database [AssignmentDBI]    Script Date: 7/7/2022 9:08:08 PM ******/
CREATE DATABASE [AssignmentDBI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AssignmentDBI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AssignmentDBI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AssignmentDBI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AssignmentDBI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AssignmentDBI] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AssignmentDBI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AssignmentDBI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AssignmentDBI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AssignmentDBI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AssignmentDBI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AssignmentDBI] SET ARITHABORT OFF 
GO
ALTER DATABASE [AssignmentDBI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AssignmentDBI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AssignmentDBI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AssignmentDBI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AssignmentDBI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AssignmentDBI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AssignmentDBI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AssignmentDBI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AssignmentDBI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AssignmentDBI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AssignmentDBI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AssignmentDBI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AssignmentDBI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AssignmentDBI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AssignmentDBI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AssignmentDBI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AssignmentDBI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AssignmentDBI] SET RECOVERY FULL 
GO
ALTER DATABASE [AssignmentDBI] SET  MULTI_USER 
GO
ALTER DATABASE [AssignmentDBI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AssignmentDBI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AssignmentDBI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AssignmentDBI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AssignmentDBI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AssignmentDBI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AssignmentDBI', N'ON'
GO
ALTER DATABASE [AssignmentDBI] SET QUERY_STORE = OFF
GO
USE [AssignmentDBI]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[CiD] [varchar](50) NOT NULL,
	[category] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[part] [int] NOT NULL,
	[duration] [time](7) NOT NULL,
	[LO] [nchar](10) NULL,
	[question type] [varchar](50) NOT NULL,
	[No question] [int] NOT NULL,
	[Knowledge and skill] [nvarchar](150) NULL,
	[greading guide] [nvarchar](150) NULL,
	[note] [nchar](150) NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[CiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_Student]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_Student](
	[Cid] [varchar](50) NOT NULL,
	[Sid] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[Score] [float] NOT NULL,
 CONSTRAINT [PK_assessment_Student] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CiD] [varchar](50) NOT NULL,
	[category] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[Gid] [varchar](50) NOT NULL,
	[SiD] [varchar](50) NOT NULL,
	[semester] [varchar](50) NOT NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[Gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[CiD] [varchar](50) NOT NULL,
	[CourseName] [varchar](150) NOT NULL,
	[start date] [date] NULL,
	[end date] [date] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[CiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group](
	[GiD] [varchar](50) NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[LiD] [varchar](50) NOT NULL,
	[CiD] [varchar](50) NOT NULL,
 CONSTRAINT [PK_group] PRIMARY KEY CLUSTERED 
(
	[GiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[LiD] [varchar](50) NOT NULL,
	[LecturerName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[LiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[semester]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semester](
	[semester] [varchar](50) NOT NULL,
	[start date] [date] NULL,
	[end date] [date] NULL,
 CONSTRAINT [PK_semester] PRIMARY KEY CLUSTERED 
(
	[semester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 7/7/2022 9:08:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[SiD] [varchar](50) NOT NULL,
	[Sname] [varchar](150) NOT NULL,
	[DoB] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[address] [varchar](150) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[SiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_course] FOREIGN KEY([CiD])
REFERENCES [dbo].[course] ([CiD])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_course]
GO
ALTER TABLE [dbo].[assessment_Student]  WITH CHECK ADD  CONSTRAINT [FK_assessment_Student_course] FOREIGN KEY([Cid])
REFERENCES [dbo].[course] ([CiD])
GO
ALTER TABLE [dbo].[assessment_Student] CHECK CONSTRAINT [FK_assessment_Student_course]
GO
ALTER TABLE [dbo].[assessment_Student]  WITH CHECK ADD  CONSTRAINT [FK_assessment_Student_student] FOREIGN KEY([Sid])
REFERENCES [dbo].[student] ([SiD])
GO
ALTER TABLE [dbo].[assessment_Student] CHECK CONSTRAINT [FK_assessment_Student_student]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_course] FOREIGN KEY([CiD])
REFERENCES [dbo].[course] ([CiD])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_course]
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [FK_class_group] FOREIGN KEY([Gid])
REFERENCES [dbo].[group] ([GiD])
GO
ALTER TABLE [dbo].[class] CHECK CONSTRAINT [FK_class_group]
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [FK_class_semester] FOREIGN KEY([semester])
REFERENCES [dbo].[semester] ([semester])
GO
ALTER TABLE [dbo].[class] CHECK CONSTRAINT [FK_class_semester]
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [FK_class_student] FOREIGN KEY([SiD])
REFERENCES [dbo].[student] ([SiD])
GO
ALTER TABLE [dbo].[class] CHECK CONSTRAINT [FK_class_student]
GO
ALTER TABLE [dbo].[group]  WITH CHECK ADD  CONSTRAINT [FK_group_course] FOREIGN KEY([CiD])
REFERENCES [dbo].[course] ([CiD])
GO
ALTER TABLE [dbo].[group] CHECK CONSTRAINT [FK_group_course]
GO
ALTER TABLE [dbo].[group]  WITH CHECK ADD  CONSTRAINT [FK_group_Lecturer] FOREIGN KEY([LiD])
REFERENCES [dbo].[Lecturer] ([LiD])
GO
ALTER TABLE [dbo].[group] CHECK CONSTRAINT [FK_group_Lecturer]
GO
USE [master]
GO
ALTER DATABASE [AssignmentDBI] SET  READ_WRITE 
GO
