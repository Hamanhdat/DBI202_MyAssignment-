``` sql
USE [AssignmentDBI]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 7/17/2022 3:06:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[CiD] [varchar](50) NOT NULL,
	[Aid] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CiD] ASC,
	[Aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment system]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment system](
	[Aid] [nchar](10) NOT NULL,
	[CaID] [varchar](50) NOT NULL,
	[type] [varchar](50) NULL,
	[part] [varchar](50) NULL,
	[No question] [int] NOT NULL,
	[LO] [varchar](50) NULL,
	[duration] [varchar](50) NOT NULL,
	[question type] [varchar](50) NULL,
	[Knowledge and skill] [varchar](150) NULL,
	[greading guide] [varchar](150) NULL,
	[weight] [float] NULL,
	[note] [varchar](150) NULL,
 CONSTRAINT [PK_Assessment system] PRIMARY KEY CLUSTERED 
(
	[Aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CaID] [varchar](50) NOT NULL,
	[category] [varchar](150) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[Completion Criteria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[CLid] [nchar](10) NOT NULL,
	[CiD] [varchar](50) NULL,
	[semester] [varchar](50) NOT NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[CLid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[CiD] [varchar](50) NOT NULL,
	[CourseName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[CiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enroll]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enroll](
	[GiD] [varchar](50) NOT NULL,
	[CLid] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLid] ASC,
	[GiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group](
	[GiD] [varchar](50) NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[number of student] [varchar](50) NOT NULL,
 CONSTRAINT [PK_group] PRIMARY KEY CLUSTERED 
(
	[GiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[join]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[join](
	[SiD] [varchar](50) NOT NULL,
	[CLid] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLid] ASC,
	[SiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[LiD] [varchar](50) NOT NULL,
	[LecturerName] [varchar](150) NOT NULL,
	[mail] [varchar](50) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[LiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[result ]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[result ](
	[Sid] [varchar](50) NOT NULL,
	[Aid] [nchar](10) NOT NULL,
	[date] [date] NOT NULL,
	[Score] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Aid] ASC,
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[semester]    Script Date: 7/17/2022 3:06:06 PM ******/
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
/****** Object:  Table [dbo].[student]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[SiD] [varchar](50) NOT NULL,
	[First name] [varchar](150) NOT NULL,
	[Last Name] [varchar](150) NULL,
	[DoB] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[address] [varchar](150) NULL,
	[mail] [varchar](50) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[SiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supervisor]    Script Date: 7/17/2022 3:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supervisor](
	[CLid] [nchar](10) NOT NULL,
	[LiD] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLid] ASC,
	[LiD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CEA201', N'CEAAS1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CEA201', N'CEAAS2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CEA201', N'CEAFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CEA201', N'CEAPT1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CEA201', N'CEAPT2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'csd201', N'CSDFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'csd201', N'CSDLAB1   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'csd201', N'CSDLAB2   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'csd201', N'CSDPE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'csd201', N'CSDPT     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CSI104', N'CSIAS1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CSI104', N'CSIAS2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CSI104', N'CSIFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CSI104', N'CSILAB1   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CSI104', N'CSILAB2   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CSI104', N'CSIPT1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'CSI104', N'CSIPT2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'dbi202', N'DBIAS     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'dbi202', N'DBIFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'dbi202', N'DBILAB1   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'dbi202', N'DBILAB2   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'dbi202', N'DBIPT     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'iao202', N'IAOAS     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'iao202', N'IAOFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'iao202', N'IAOLAB1   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'iao202', N'IAOLAB2   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'iao202', N'IAOPT1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'iao202', N'IAOPT2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'jpd113', N'JPDAS1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'jpd113', N'JPDAS2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'jpd113', N'JPDFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'jpd113', N'JPDLAB1   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'jpd113', N'JPDLAB2   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'jpd113', N'JPDPT1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'jpd113', N'JPDPT2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'lab211', N'LABLOC    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAD101', N'MADAS1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAD101', N'MADAS2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAD101', N'MADFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAD101', N'MADLAB1   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAD101', N'MADLAB2   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAD101', N'MADPT1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAD101', N'MADPT2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAE101', N'MAEAS1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAE101', N'MAEAS2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAE101', N'MAEFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAE101', N'MAELAB1   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAE101', N'MAELAB2   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAE101', N'MAEPT1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'MAE101', N'MAEPT2    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'NWC204', N'NWCAS     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'NWC204', N'NWCFE     ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'NWC204', N'NWCLAB1   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'NWC204', N'NWCLAB2   ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'NWC204', N'NWCPT1    ')
GO
INSERT [dbo].[Assessment] ([CiD], [Aid]) VALUES (N'NWC204', N'NWCPT2    ')
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CEAAS1    ', N'AS1', N'', N'', 20, N'', N'30 mins', N'', N'', N'', 0.1, N'')
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CEAAS2    ', N'AS2', N'', N'', 20, N'', N'30 mins', N'', N'', N'', 0.1, N'')
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CEAFE     ', N'FE', N'', N'', 50, N'', N'90 mins', N'', N'', N'', 0.4, N'')
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CEAPT1    ', N'PT1', N'', N'', 30, N'', N'60 mins', N'', N'', N'', 0.2, N'')
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CEAPT2    ', N'PT2', N'', N'', 30, N'', N'60 mins', N'', N'', N'', 0.2, N'')
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSDFE     ', N'FE', NULL, NULL, 50, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSDLAB1   ', N'LAB1', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSDLAB2   ', N'LAB2', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSDPE     ', N'PE', NULL, NULL, 15, NULL, N'90 mins', NULL, NULL, NULL, 0.3, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSDPT     ', N'PT', NULL, NULL, 35, NULL, N'60 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSIAS1    ', N'AS1', NULL, NULL, 20, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSIAS2    ', N'AS2', NULL, NULL, 20, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSIFE     ', N'FE', NULL, NULL, 60, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSILAB1   ', N'LAB1', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSILAB2   ', N'LAB2', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSIPT1    ', N'PT1', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.15, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'CSIPT2    ', N'PT2', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.15, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'DBIAS     ', N'AS', NULL, NULL, 10, NULL, N'28 Slots', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'DBIFE     ', N'FE', NULL, NULL, 60, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'DBILAB1   ', N'LAB1', NULL, NULL, 20, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'DBILAB2   ', N'LAB2', NULL, NULL, 20, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'DBIPT     ', N'PT', NULL, NULL, 40, NULL, N'60 mins', NULL, NULL, NULL, 0.3, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'IAOAS     ', N'AS', NULL, NULL, 30, NULL, N'45 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'IAOFE     ', N'FE', NULL, NULL, 60, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'IAOLAB1   ', N'LAB1', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'IAOLAB2   ', N'LAB2', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'IAOPT1    ', N'PT1', NULL, NULL, 40, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'IAOPT2    ', N'PT2', NULL, NULL, 40, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'JPDAS1    ', N'AS1', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'JPDAS2    ', N'AS2', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'JPDFE     ', N'FE', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'JPDLAB1   ', N'LAB1', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'JPDLAB2   ', N'LAB2', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'JPDPT1    ', N'PT1', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'JPDPT2    ', N'PT2', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'LABLOC    ', N'LOC', NULL, NULL, 75, NULL, N'30 Slots', NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MADAS1    ', N'AS1', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MADAS2    ', N'AS2', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MADFE     ', N'FE', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MADLAB1   ', N'LAB1', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MADLAB2   ', N'LAB2', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MADPT1    ', N'PT1', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MADPT2    ', N'PT2', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MAEAS1    ', N'AS1', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MAEAS2    ', N'AS2', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MAEFE     ', N'FE', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MAELAB1   ', N'LAB1', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MAELAB2   ', N'LAB2', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MAEPT1    ', N'PT1', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'MAEPT2    ', N'PT2', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'NWCAS     ', N'AS', NULL, NULL, 30, NULL, N'45 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'NWCFE     ', N'FE', NULL, NULL, 60, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'NWCLAB1   ', N'LAB1', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'NWCLAB2   ', N'LAB2', NULL, NULL, 15, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'NWCPT1    ', N'PT1', NULL, NULL, 40, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'NWCPT2    ', N'PT2', NULL, NULL, 40, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'OSGAS     ', N'AS', NULL, NULL, 25, NULL, N'30 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'OSGFE     ', N'FE', NULL, NULL, 50, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'OSGLAB1   ', N'LAB1', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'OSGLAB2   ', N'LAB2', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'OSGPE     ', N'PE', NULL, NULL, 15, NULL, N'90 mins', NULL, NULL, NULL, 0.3, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'OSGPT     ', N'PT', NULL, NULL, 35, NULL, N'60 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PRFAS     ', N'AS', NULL, NULL, 25, NULL, N'30 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PRFFE     ', N'FE', NULL, NULL, 50, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PRFLAB1   ', N'LAB1', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PRFLAB2   ', N'LAB2', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PRFPE     ', N'PE', NULL, NULL, 15, NULL, N'90 mins', NULL, NULL, NULL, 0.3, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PRFPT     ', N'PT', NULL, NULL, 35, NULL, N'60 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PROAS     ', N'AS', NULL, NULL, 25, NULL, N'30 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PROFE     ', N'FE', NULL, NULL, 50, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PROLAB1   ', N'LAB1', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PROLAB2   ', N'LAB2', NULL, NULL, 10, NULL, N'30 mins', NULL, NULL, NULL, 0.05, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PROPE     ', N'PE', NULL, NULL, 15, NULL, N'90 mins', NULL, NULL, NULL, 0.3, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'PROPT     ', N'PT', NULL, NULL, 35, NULL, N'60 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'SSGAS1    ', N'AS1', NULL, NULL, 20, NULL, N'30 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'SSGAS2    ', N'AS2', NULL, NULL, 20, NULL, N'30 mins', NULL, NULL, NULL, 0.1, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'SSGFE     ', N'FE', NULL, NULL, 50, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'SSGPT1    ', N'PT1', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'SSGPT2    ', N'PT2', NULL, NULL, 30, NULL, N'60 mins', NULL, NULL, NULL, 0.2, NULL)
GO
INSERT [dbo].[Assessment system] ([Aid], [CaID], [type], [part], [No question], [LO], [duration], [question type], [Knowledge and skill], [greading guide], [weight], [note]) VALUES (N'SSLFE     ', N'FE', NULL, NULL, 50, NULL, N'90 mins', NULL, NULL, NULL, 0.4, NULL)
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'AS', N'Assignment', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'AS1', N'Assignment 1', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'AS2', N'Assignment 2', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'FE', N'Final Exam', N'Final Exam', N'>4')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'FER', N'Final Exam Retake', N'Final Exam', N'>4')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'LAB', N'Lab', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'LAB1', N'Lab 1', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'LAB2', N'Lab 2', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'LOC', N'Line of Code', N'On-Going', N'>=750')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'PE', N'Practical Exam', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'PT', N'Progress Test', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'PT1', N'Progress Test 1', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CaID], [category], [type], [Completion Criteria]) VALUES (N'PT2', N'Progress Test 2', N'On-Going', N'>0')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21APRO  ', N'PRO192', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21BIAO  ', N'iao202', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21BNWC  ', N'NWC204', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21CLAB  ', N'lab211', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21DDBI  ', N'dbi202', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21ECSD  ', N'csd201', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21FJPD  ', N'jpd113', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21GSSG  ', N'SSG104', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21HOSG  ', N'OSG202', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21HPRF  ', N'PRF192', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21ICSI  ', N'CSI104', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21IMAE  ', N'MAE101', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21ISSL  ', N'SSL101c', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21JMAD  ', N'MAD101', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'FA21KCEA  ', N'CEA201', N'FALL 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22ACSD  ', N'csd201', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22ADBI  ', N'dbi202', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22APRO  ', N'PRO192', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22BCSD  ', N'csd201', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22BIAO  ', N'iao202', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22BNWC  ', N'NWC204', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22CLAB  ', N'lab211', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22DDBI  ', N'dbi202', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22DLAB  ', N'lab211', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22ECSD  ', N'csd201', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22FJPD  ', N'jpd113', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22FSSG  ', N'SSG104', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22GJPD  ', N'jpd113', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22GSSG  ', N'SSG104', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22HCEA  ', N'CEA201', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22HOSG  ', N'OSG202', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22HPRF  ', N'PRF192', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22IMAE  ', N'MAE101', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22ISSL  ', N'SSL101c', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22JCEA  ', N'CEA201', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22JMAD  ', N'MAD101', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SP22KCSI  ', N'CSI104', N'SPRING 2022')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21ACSD  ', N'csd201', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21ADBI  ', N'dbi202', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21APRO  ', N'PRO192', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21BIAO  ', N'iao202', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21BNWC  ', N'NWC204', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21CLAB  ', N'lab211', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21FJPD  ', N'jpd113', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21FSSG  ', N'SSG104', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21HOSG  ', N'OSG202', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21HPRF  ', N'PRF192', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21IMAE  ', N'MAE101', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21ISSL  ', N'SSL101c', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21JCEA  ', N'CEA201', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21JMAD  ', N'MAD101', N'SUMMER 2021')
GO
INSERT [dbo].[class] ([CLid], [CiD], [semester]) VALUES (N'SU21KCSI  ', N'CSI104', N'SUMMER 2021')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'CEA201', N'Computer Organization and Architecture')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'csd201', N'	Data Structures and Algorithms')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'CSI104', N'Introduction to Computer Science')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'dbi202', N'Introduction to Databases')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'iao202', N'Introduction to Information Assurance')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'jpd113', N'Elementary Japanese 1-A1.1')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'lab211', N'OOP with Java Lab')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'MAD101', N'Discrete mathematics')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'MAE101', N'Mathematics for Engineering')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'NWC204', N'Computer Networking')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'OSG202', N'Operating Systems')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'PRF192', N'Programming Fundamentals')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'PRO192', N'Object-Oriented Programming')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'SSG104', N'Communication and In-Group Working Skills')
GO
INSERT [dbo].[course] ([CiD], [CourseName]) VALUES (N'SSL101c', N'Academic Skills for University Success')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'FA21APRO  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IOT1607', N'FA21BIAO  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'FA21BNWC  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IOT1607', N'FA21CLAB  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IOT1607', N'FA21DDBI  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IOT1607', N'FA21ECSD  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IOT1607', N'FA21FJPD  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'FA21HOSG  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'FA21HPRF  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'FA21ICSI  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'FA21IMAE  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'FA21ISSL  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'FA21JMAD  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'FA21KCEA  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SP22ADBI  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'SP22APRO  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SP22BCSD  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SP22BIAO  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'SP22BNWC  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SP22CLAB  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SP22FJPD  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'SP22GSSG  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'SP22HOSG  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'AI1605', N'SP22HPRF  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'AI1605', N'SP22IMAE  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'AI1605', N'SP22ISSL  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'AI1605', N'SP22JCEA  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1608', N'SP22JMAD  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'AI1605', N'SP22KCSI  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SU21HPRF  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SU21IMAE  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SU21ISSL  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SU21JCEA  ')
GO
INSERT [dbo].[enroll] ([GiD], [CLid]) VALUES (N'IA1604', N'SU21KCSI  ')
GO
INSERT [dbo].[group] ([GiD], [GroupName], [number of student]) VALUES (N'AI1605', N'Artificial Intelligence', N'15')
GO
INSERT [dbo].[group] ([GiD], [GroupName], [number of student]) VALUES (N'IA1604', N'Information Assurance', N'15')
GO
INSERT [dbo].[group] ([GiD], [GroupName], [number of student]) VALUES (N'IA1608', N'Information Assurance', N'10')
GO
INSERT [dbo].[group] ([GiD], [GroupName], [number of student]) VALUES (N'IOT1607', N'Internet of Things', N'15')
GO
INSERT [dbo].[group] ([GiD], [GroupName], [number of student]) VALUES (N'SE1606', N'Software Engineering', N'20')
GO
INSERT [dbo].[group] ([GiD], [GroupName], [number of student]) VALUES (N'SE1609', N'Software Engineering', N'20')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00001', N'FA21APRO  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00002', N'FA21BIAO  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00003', N'FA21BNWC  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00004', N'FA21CLAB  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00005', N'FA21DDBI  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00006', N'FA21ECSD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00007', N'FA21FJPD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00008', N'FA21GSSG  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00009', N'FA21HOSG  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00010', N'FA21HPRF  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00011', N'FA21ICSI  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00012', N'FA21IMAE  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00013', N'FA21ISSL  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00014', N'FA21JMAD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00015', N'FA21KCEA  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00016', N'SP22ACSD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00017', N'SP22ADBI  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00018', N'SP22APRO  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00019', N'SP22BCSD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00020', N'SP22BIAO  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00021', N'SP22BNWC  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00022', N'SP22CLAB  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00023', N'SP22DDBI  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00024', N'SP22DLAB  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00025', N'SP22ECSD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00026', N'SP22FJPD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00027', N'SP22FSSG  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00028', N'SP22GJPD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00029', N'SP22GSSG  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00030', N'SP22HCEA  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00031', N'SP22HOSG  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00032', N'SP22HPRF  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00033', N'SP22IMAE  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00034', N'SP22ISSL  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00035', N'SP22JCEA  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00036', N'SP22JMAD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00037', N'SP22KCSI  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00038', N'SU21ACSD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00039', N'SU21ADBI  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00040', N'SU21APRO  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00041', N'SU21BIAO  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00042', N'SU21BNWC  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00043', N'SU21CLAB  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00044', N'SU21FJPD  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00045', N'SU21FSSG  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00046', N'SU21HOSG  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00047', N'SU21HPRF  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00048', N'SU21IMAE  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00049', N'SU21ISSL  ')
GO
INSERT [dbo].[join] ([SiD], [CLid]) VALUES (N'HE00050', N'SU21JCEA  ')
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVA', N'A', N'gva@fe.edu.vn', 1, CAST(N'1985-01-01' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVB', N'B', N'gvb@fe.edu.vn', 0, CAST(N'1985-01-02' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVC', N'C', N'gvc@fe.edu.vn', 1, CAST(N'1985-01-03' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVD', N'D', N'gvd@fe.edu.vn', 0, CAST(N'1985-01-04' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVE', N'E', N'gve@fe.edu.vn', 1, CAST(N'1985-01-05' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVF', N'F', N'gvf@fe.edu.vn', 0, CAST(N'1985-01-06' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVG', N'G', N'gvg@fe.edu.vn', 1, CAST(N'1985-01-07' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVH', N'H', N'gvh@fe.edu.vn', 0, CAST(N'1985-01-08' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVI', N'I', N'gvi@fe.edu.vn', 1, CAST(N'1985-01-09' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVJ', N'J', N'gvj@fe.edu.vn', 0, CAST(N'1985-01-10' AS Date))
GO
INSERT [dbo].[Lecturer] ([LiD], [LecturerName], [mail], [gender], [dob]) VALUES (N'GVK', N'K', N'gvk@fe.edu.vn', 1, CAST(N'1985-01-11' AS Date))
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSDFE     ', CAST(N'2022-04-01' AS Date), 8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSDFE     ', CAST(N'2022-04-01' AS Date), 4.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSDFE     ', CAST(N'2022-04-01' AS Date), 7.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSDLAB1   ', CAST(N'2022-04-01' AS Date), 7.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSDLAB1   ', CAST(N'2022-04-01' AS Date), 3.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSDLAB1   ', CAST(N'2022-04-01' AS Date), 7.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSDLAB2   ', CAST(N'2022-04-01' AS Date), 6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSDLAB2   ', CAST(N'2022-04-01' AS Date), 2.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSDLAB2   ', CAST(N'2022-04-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSDPE     ', CAST(N'2022-04-01' AS Date), 8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSDPE     ', CAST(N'2022-04-01' AS Date), 3.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSDPE     ', CAST(N'2022-04-01' AS Date), 9.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSDPT     ', CAST(N'2022-04-01' AS Date), 8.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSDPT     ', CAST(N'2022-04-01' AS Date), 4.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSDPT     ', CAST(N'2022-04-01' AS Date), 9.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSIAS1    ', CAST(N'2021-08-01' AS Date), 7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSIAS1    ', CAST(N'2021-08-01' AS Date), 7.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSIAS1    ', CAST(N'2021-08-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSIAS2    ', CAST(N'2021-08-01' AS Date), 9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSIAS2    ', CAST(N'2021-08-01' AS Date), 6.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSIAS2    ', CAST(N'2021-08-01' AS Date), 9.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSIFE     ', CAST(N'2021-08-01' AS Date), 10)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSIFE     ', CAST(N'2021-08-01' AS Date), 7.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSIFE     ', CAST(N'2021-08-01' AS Date), 8.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSILAB1   ', CAST(N'2021-08-01' AS Date), 10)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSILAB1   ', CAST(N'2021-08-01' AS Date), 5.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSILAB1   ', CAST(N'2021-08-01' AS Date), 7.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSILAB2   ', CAST(N'2021-08-01' AS Date), 0.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSILAB2   ', CAST(N'2021-08-01' AS Date), 8.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSILAB2   ', CAST(N'2021-08-01' AS Date), 8.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSIPT1    ', CAST(N'2021-08-01' AS Date), 8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSIPT1    ', CAST(N'2021-08-01' AS Date), 9.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSIPT1    ', CAST(N'2021-08-01' AS Date), 9.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'CSIPT2    ', CAST(N'2021-08-01' AS Date), 9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'CSIPT2    ', CAST(N'2021-08-01' AS Date), 7.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'CSIPT2    ', CAST(N'2021-08-01' AS Date), 7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'DBIAS     ', CAST(N'2022-04-01' AS Date), 9.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'DBIAS     ', CAST(N'2022-04-01' AS Date), 5.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'DBIAS     ', CAST(N'2022-04-01' AS Date), 8.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'DBIFE     ', CAST(N'2022-04-01' AS Date), 10)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'DBIFE     ', CAST(N'2022-04-01' AS Date), 2.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'DBIFE     ', CAST(N'2022-04-01' AS Date), 8.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'DBILAB1   ', CAST(N'2022-04-01' AS Date), 9.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'DBILAB1   ', CAST(N'2022-04-01' AS Date), 5.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'DBILAB1   ', CAST(N'2022-04-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'DBILAB2   ', CAST(N'2022-04-01' AS Date), 7.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'DBILAB2   ', CAST(N'2022-04-01' AS Date), 2.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'DBILAB2   ', CAST(N'2022-04-01' AS Date), 9.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'DBIPT     ', CAST(N'2022-04-01' AS Date), 8.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'DBIPT     ', CAST(N'2022-04-01' AS Date), 4.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'DBIPT     ', CAST(N'2022-04-01' AS Date), 8.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'IAOAS     ', CAST(N'2022-04-01' AS Date), 9.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'IAOAS     ', CAST(N'2022-04-01' AS Date), 1.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'IAOAS     ', CAST(N'2022-04-01' AS Date), 8.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'IAOFE     ', CAST(N'2022-04-01' AS Date), 5.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'IAOFE     ', CAST(N'2022-04-01' AS Date), 3.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'IAOFE     ', CAST(N'2022-04-01' AS Date), 9.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'IAOLAB1   ', CAST(N'2022-04-01' AS Date), 8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'IAOLAB1   ', CAST(N'2022-04-01' AS Date), 4.1)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'IAOLAB1   ', CAST(N'2022-04-01' AS Date), 9.1)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'IAOLAB2   ', CAST(N'2022-04-01' AS Date), 9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'IAOLAB2   ', CAST(N'2022-04-01' AS Date), 8.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'IAOLAB2   ', CAST(N'2022-04-01' AS Date), 8.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'IAOPT1    ', CAST(N'2022-04-01' AS Date), 7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'IAOPT1    ', CAST(N'2022-04-01' AS Date), 2.9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'IAOPT1    ', CAST(N'2022-04-01' AS Date), 9.9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'IAOPT2    ', CAST(N'2022-04-01' AS Date), 6.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'IAOPT2    ', CAST(N'2022-04-01' AS Date), 1.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'IAOPT2    ', CAST(N'2022-04-01' AS Date), 9.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'JPDAS1    ', CAST(N'2022-04-01' AS Date), 8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'JPDAS1    ', CAST(N'2022-04-01' AS Date), 2.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'JPDAS1    ', CAST(N'2022-04-01' AS Date), 8.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'JPDAS2    ', CAST(N'2022-04-01' AS Date), 9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'JPDAS2    ', CAST(N'2022-04-01' AS Date), 4.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'JPDAS2    ', CAST(N'2022-04-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'JPDFE     ', CAST(N'2022-04-01' AS Date), 10)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'JPDFE     ', CAST(N'2022-04-01' AS Date), 5.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'JPDFE     ', CAST(N'2022-04-01' AS Date), 7.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'JPDLAB1   ', CAST(N'2022-04-01' AS Date), 8.9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'JPDLAB1   ', CAST(N'2022-04-01' AS Date), 3.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'JPDLAB1   ', CAST(N'2022-04-01' AS Date), 7.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'JPDLAB2   ', CAST(N'2022-04-01' AS Date), 9.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'JPDLAB2   ', CAST(N'2022-04-01' AS Date), 5.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'JPDLAB2   ', CAST(N'2022-04-01' AS Date), 9.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'JPDPT1    ', CAST(N'2022-04-01' AS Date), 9.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'JPDPT1    ', CAST(N'2022-04-01' AS Date), 2.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'JPDPT1    ', CAST(N'2022-04-01' AS Date), 8.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'JPDPT2    ', CAST(N'2022-04-01' AS Date), 8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'JPDPT2    ', CAST(N'2022-04-01' AS Date), 5.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'JPDPT2    ', CAST(N'2022-04-01' AS Date), 7.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'LABLOC    ', CAST(N'2022-04-01' AS Date), 750)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'LABLOC    ', CAST(N'2022-04-01' AS Date), 120)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'LABLOC    ', CAST(N'2022-04-01' AS Date), 900)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MADAS1    ', CAST(N'2021-12-01' AS Date), 7.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MADAS1    ', CAST(N'2021-12-01' AS Date), 6.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MADAS1    ', CAST(N'2021-12-01' AS Date), 5.1)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MADAS2    ', CAST(N'2021-12-01' AS Date), 8.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MADAS2    ', CAST(N'2021-12-01' AS Date), 7.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MADAS2    ', CAST(N'2021-12-01' AS Date), 7.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MADFE     ', CAST(N'2021-12-01' AS Date), 9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MADFE     ', CAST(N'2021-12-01' AS Date), 6.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MADFE     ', CAST(N'2021-12-01' AS Date), 7.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MADLAB1   ', CAST(N'2021-12-01' AS Date), 9.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MADLAB1   ', CAST(N'2021-12-01' AS Date), 8.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MADLAB1   ', CAST(N'2021-12-01' AS Date), 6.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MADLAB2   ', CAST(N'2021-12-01' AS Date), 5.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MADLAB2   ', CAST(N'2021-12-01' AS Date), 7.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MADLAB2   ', CAST(N'2021-12-01' AS Date), 5.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MADPT1    ', CAST(N'2021-12-01' AS Date), 7.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MADPT1    ', CAST(N'2021-12-01' AS Date), 6.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MADPT1    ', CAST(N'2021-12-01' AS Date), 3.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MADPT2    ', CAST(N'2021-12-01' AS Date), 9.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MADPT2    ', CAST(N'2021-12-01' AS Date), 7.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MADPT2    ', CAST(N'2021-12-01' AS Date), 3.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MAEAS1    ', CAST(N'2021-08-01' AS Date), 10)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MAEAS1    ', CAST(N'2021-08-01' AS Date), 5.9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MAEAS1    ', CAST(N'2021-08-01' AS Date), 9.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MAEAS2    ', CAST(N'2021-08-01' AS Date), 6.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MAEAS2    ', CAST(N'2021-08-01' AS Date), 6.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MAEAS2    ', CAST(N'2021-08-01' AS Date), 9.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MAEFE     ', CAST(N'2021-08-01' AS Date), 2.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MAEFE     ', CAST(N'2021-08-01' AS Date), 7.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MAEFE     ', CAST(N'2021-08-01' AS Date), 9.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MAELAB1   ', CAST(N'2021-08-01' AS Date), 7.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MAELAB1   ', CAST(N'2021-08-01' AS Date), 6.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00003', N'MAELAB1   ', CAST(N'2021-08-01' AS Date), 9.1)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MAELAB2   ', CAST(N'2021-08-01' AS Date), 7.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MAELAB2   ', CAST(N'2021-08-01' AS Date), 7.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MAEPT1    ', CAST(N'2021-08-01' AS Date), 9.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MAEPT1    ', CAST(N'2021-08-01' AS Date), 6.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'MAEPT2    ', CAST(N'2021-08-01' AS Date), 5.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'MAEPT2    ', CAST(N'2021-08-01' AS Date), 9.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'NWCAS     ', CAST(N'2021-12-01' AS Date), 10)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'NWCAS     ', CAST(N'2021-12-01' AS Date), 8.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'NWCFE     ', CAST(N'2021-12-01' AS Date), 9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'NWCFE     ', CAST(N'2021-12-01' AS Date), 6.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'NWCLAB1   ', CAST(N'2021-12-01' AS Date), 8.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'NWCLAB1   ', CAST(N'2021-12-01' AS Date), 7.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'NWCLAB2   ', CAST(N'2021-12-01' AS Date), 7.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'NWCLAB2   ', CAST(N'2021-12-01' AS Date), 9.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'NWCPT1    ', CAST(N'2021-12-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'NWCPT1    ', CAST(N'2021-12-01' AS Date), 8.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'NWCPT2    ', CAST(N'2021-12-01' AS Date), 7.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'NWCPT2    ', CAST(N'2021-12-01' AS Date), 6.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'OSGAS     ', CAST(N'2021-12-01' AS Date), 9.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'OSGAS     ', CAST(N'2021-12-01' AS Date), 7.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'OSGFE     ', CAST(N'2021-12-01' AS Date), 7.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'OSGFE     ', CAST(N'2021-12-01' AS Date), 8.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'OSGLAB1   ', CAST(N'2021-12-01' AS Date), 8.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'OSGLAB1   ', CAST(N'2021-12-01' AS Date), 6.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'OSGLAB2   ', CAST(N'2021-12-01' AS Date), 6.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'OSGLAB2   ', CAST(N'2021-12-01' AS Date), 7.9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'OSGPE     ', CAST(N'2021-12-01' AS Date), 7.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'OSGPE     ', CAST(N'2021-12-01' AS Date), 6.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'OSGPT     ', CAST(N'2021-12-01' AS Date), 8.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'OSGPT     ', CAST(N'2021-12-01' AS Date), 9.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PRFAS     ', CAST(N'2021-08-01' AS Date), 3.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PRFAS     ', CAST(N'2021-08-01' AS Date), 9.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PRFFE     ', CAST(N'2021-08-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PRFFE     ', CAST(N'2021-08-01' AS Date), 6.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PRFLAB1   ', CAST(N'2021-08-01' AS Date), 4.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PRFLAB1   ', CAST(N'2021-08-01' AS Date), 5.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PRFLAB2   ', CAST(N'2021-08-01' AS Date), 7.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PRFLAB2   ', CAST(N'2021-08-01' AS Date), 8.2)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PRFPE     ', CAST(N'2021-08-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PRFPE     ', CAST(N'2021-08-01' AS Date), 7.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PRFPT     ', CAST(N'2021-08-01' AS Date), 8.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PRFPT     ', CAST(N'2021-08-01' AS Date), 5.3)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PROAS     ', CAST(N'2021-12-01' AS Date), 10)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PROAS     ', CAST(N'2021-12-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PROFE     ', CAST(N'2021-12-01' AS Date), 9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PROFE     ', CAST(N'2021-12-01' AS Date), 8.8)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PROLAB1   ', CAST(N'2021-12-01' AS Date), 9.4)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PROLAB1   ', CAST(N'2021-12-01' AS Date), 6.7)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PROLAB2   ', CAST(N'2021-12-01' AS Date), 7.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PROLAB2   ', CAST(N'2021-12-01' AS Date), 8.6)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PROPE     ', CAST(N'2021-12-01' AS Date), 8.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PROPE     ', CAST(N'2021-12-01' AS Date), 7.9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'PROPT     ', CAST(N'2021-12-01' AS Date), 6.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'PROPT     ', CAST(N'2021-12-01' AS Date), 8.5)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00001', N'SSLFE     ', CAST(N'2021-08-01' AS Date), 8.9)
GO
INSERT [dbo].[result ] ([Sid], [Aid], [date], [Score]) VALUES (N'HE00002', N'SSLFE     ', CAST(N'2021-08-01' AS Date), 9.6)
GO
INSERT [dbo].[semester] ([semester], [start date], [end date]) VALUES (N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[semester] ([semester], [start date], [end date]) VALUES (N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[semester] ([semester], [start date], [end date]) VALUES (N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00001', N'Nguyen Van', N'A', CAST(N'2002-01-01' AS Date), 1, N'hanoi', N'anv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00002', N'Nguyen Van', N'B', CAST(N'2002-01-02' AS Date), 1, N'hanoi', N'bnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00003', N'Nguyen Van', N'C', CAST(N'2002-01-13' AS Date), 1, N'hanoi', N'cnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00004', N'Nguyen Van', N'D', CAST(N'2002-01-04' AS Date), 1, N'hanoi', N'dnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00005', N'Nguyen Van', N'E', CAST(N'2002-01-05' AS Date), 1, N'hanoi', N'env@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00006', N'Nguyen Van', N'F', CAST(N'2002-01-06' AS Date), 1, N'hanoi', N'fnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00007', N'Nguyen Van', N'G', CAST(N'2002-01-07' AS Date), 1, N'hanoi', N'gnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00008', N'Nguyen Van', N'H', CAST(N'2002-01-08' AS Date), 1, N'hanoi', N'hnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00009', N'Nguyen Van', N'I', CAST(N'2002-01-09' AS Date), 1, N'hanoi', N'inv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00010', N'Nguyen Van', N'J', CAST(N'2002-01-10' AS Date), 1, N'hanoi', N'jnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00011', N'Nguyen Van', N'K', CAST(N'2002-01-11' AS Date), 1, N'hanoi', N'knv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00012', N'Nguyen Van', N'L', CAST(N'2002-01-12' AS Date), 1, N'hanoi', N'lnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00013', N'Nguyen Van', N'M', CAST(N'2002-01-13' AS Date), 1, N'hanoi', N'mnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00014', N'Nguyen Van', N'N', CAST(N'2002-01-14' AS Date), 1, N'hanoi', N'nnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00015', N'Nguyen Van', N'O', CAST(N'2002-01-15' AS Date), 1, N'hanoi', N'mnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00016', N'Nguyen Van', N'P', CAST(N'2002-01-16' AS Date), 1, N'hanoi', N'pnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00017', N'Nguyen Van', N'Q', CAST(N'2002-01-17' AS Date), 1, N'hanoi', N'qnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00018', N'Nguyen Van', N'R', CAST(N'2002-01-18' AS Date), 1, N'hanoi', N'rnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00019', N'Nguyen Van', N'S', CAST(N'2002-01-19' AS Date), 1, N'hanoi', N'snv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00020', N'Nguyen Van', N'T', CAST(N'2002-01-20' AS Date), 1, N'hanoi', N'tnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00021', N'Nguyen Van', N'U', CAST(N'2002-01-21' AS Date), 1, N'hanoi', N'unv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00022', N'Nguyen Van', N'V', CAST(N'2002-01-22' AS Date), 1, N'hanoi', N'vnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00023', N'Nguyen Van', N'W', CAST(N'2002-01-23' AS Date), 1, N'hanoi', N'wnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00024', N'Nguyen Van', N'X', CAST(N'2002-01-24' AS Date), 1, N'hanoi', N'xnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00025', N'Nguyen Van', N'Y', CAST(N'2002-01-25' AS Date), 1, N'hanoi', N'ynv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00026', N'Nguyen Van', N'Z', CAST(N'2002-01-26' AS Date), 1, N'hanoi', N'znv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00027', N'Nguyen Thi', N'A', CAST(N'2002-02-01' AS Date), 0, N'hanoi', N'anv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00028', N'Nguyen Thi', N'B', CAST(N'2002-02-02' AS Date), 0, N'hanoi', N'bnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00029', N'Nguyen Thi', N'C', CAST(N'2002-02-03' AS Date), 0, N'hanoi', N'cnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00030', N'Nguyen Thi', N'D', CAST(N'2002-02-04' AS Date), 0, N'hanoi', N'dnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00031', N'Nguyen Thi', N'E', CAST(N'2002-02-05' AS Date), 0, N'hanoi', N'env@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00032', N'Nguyen Thi', N'F', CAST(N'2002-02-06' AS Date), 0, N'hanoi', N'fnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00033', N'Nguyen Thi', N'G', CAST(N'2002-02-07' AS Date), 0, N'hanoi', N'gnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00034', N'Nguyen Thi', N'H', CAST(N'2002-02-08' AS Date), 0, N'hanoi', N'hnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00035', N'Nguyen Thi', N'I', CAST(N'2002-02-09' AS Date), 0, N'hanoi', N'inv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00036', N'Nguyen Thi', N'K', CAST(N'2002-02-11' AS Date), 0, N'hanoi', N'knv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00037', N'Nguyen Thi', N'L', CAST(N'2002-02-12' AS Date), 0, N'hanoi', N'lnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00038', N'Nguyen Thi', N'M', CAST(N'2002-02-13' AS Date), 0, N'hanoi', N'mnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00039', N'Nguyen Thi', N'N', CAST(N'2002-02-14' AS Date), 0, N'hanoi', N'nnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00040', N'Nguyen Thi', N'O', CAST(N'2002-02-15' AS Date), 0, N'hanoi', N'onv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00041', N'Nguyen Thi', N'P', CAST(N'2002-02-16' AS Date), 0, N'hanoi', N'pnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00042', N'Nguyen Thi', N'Q', CAST(N'2002-02-17' AS Date), 0, N'hanoi', N'qnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00043', N'Nguyen Thi', N'R', CAST(N'2002-02-18' AS Date), 0, N'hanoi', N'rnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00044', N'Nguyen Thi', N'S', CAST(N'2002-02-19' AS Date), 0, N'hanoi', N'snv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00045', N'Nguyen Thi', N'T', CAST(N'2002-02-20' AS Date), 0, N'hanoi', N'tnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00046', N'Nguyen Thi', N'U', CAST(N'2002-02-21' AS Date), 0, N'hanoi', N'unv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00047', N'Nguyen Thi', N'V', CAST(N'2002-02-22' AS Date), 0, N'hanoi', N'vnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00048', N'Nguyen Thi', N'W', CAST(N'2002-02-23' AS Date), 0, N'hanoi', N'wnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00049', N'Nguyen Thi', N'X', CAST(N'2002-02-24' AS Date), 0, N'hanoi', N'xnv@fpt.edu.vn')
GO
INSERT [dbo].[student] ([SiD], [First name], [Last Name], [DoB], [gender], [address], [mail]) VALUES (N'HE00050', N'Nguyen Thi', N'Y', CAST(N'2002-02-25' AS Date), 0, N'hanoi', N'ynv@fpt.edu.vn')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21APRO  ', N'GVA')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21BIAO  ', N'GVB')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21BNWC  ', N'GVC')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21CLAB  ', N'GVD')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21DDBI  ', N'GVE')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21ECSD  ', N'GVF')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21FJPD  ', N'GVG')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21GSSG  ', N'GVH')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21HOSG  ', N'GVI')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21HPRF  ', N'GVJ')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21ICSI  ', N'GVK')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21IMAE  ', N'GVA')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21ISSL  ', N'GVB')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21JMAD  ', N'GVC')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'FA21KCEA  ', N'GVD')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22ACSD  ', N'GVE')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22ADBI  ', N'GVF')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22APRO  ', N'GVG')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22BCSD  ', N'GVH')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22BIAO  ', N'GVI')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22BNWC  ', N'GVJ')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22CLAB  ', N'GVK')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22DDBI  ', N'GVA')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22DLAB  ', N'GVB')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22ECSD  ', N'GVC')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22FJPD  ', N'GVD')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22FSSG  ', N'GVE')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22GJPD  ', N'GVF')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22GSSG  ', N'GVG')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22HCEA  ', N'GVH')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22HOSG  ', N'GVI')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22HPRF  ', N'GVJ')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22IMAE  ', N'GVK')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22ISSL  ', N'GVA')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22JCEA  ', N'GVB')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22JMAD  ', N'GVC')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SP22KCSI  ', N'GVD')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21ACSD  ', N'GVE')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21ADBI  ', N'GVF')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21APRO  ', N'GVG')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21BIAO  ', N'GVH')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21BNWC  ', N'GVI')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21CLAB  ', N'GVJ')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21FJPD  ', N'GVK')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21FSSG  ', N'GVA')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21HOSG  ', N'GVB')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21HPRF  ', N'GVC')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21IMAE  ', N'GVD')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21ISSL  ', N'GVE')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21JCEA  ', N'GVF')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21JMAD  ', N'GVG')
GO
INSERT [dbo].[supervisor] ([CLid], [LiD]) VALUES (N'SU21KCSI  ', N'GVH')
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Assessment system] FOREIGN KEY([Aid])
REFERENCES [dbo].[Assessment system] ([Aid])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Assessment system]
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_course] FOREIGN KEY([CiD])
REFERENCES [dbo].[course] ([CiD])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_course]
GO
ALTER TABLE [dbo].[Assessment system]  WITH CHECK ADD  CONSTRAINT [FK_Assessment system_Categories1] FOREIGN KEY([CaID])
REFERENCES [dbo].[Categories] ([CaID])
GO
ALTER TABLE [dbo].[Assessment system] CHECK CONSTRAINT [FK_Assessment system_Categories1]
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [FK_class_course] FOREIGN KEY([CiD])
REFERENCES [dbo].[course] ([CiD])
GO
ALTER TABLE [dbo].[class] CHECK CONSTRAINT [FK_class_course]
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [FK_class_semester] FOREIGN KEY([semester])
REFERENCES [dbo].[semester] ([semester])
GO
ALTER TABLE [dbo].[class] CHECK CONSTRAINT [FK_class_semester]
GO
ALTER TABLE [dbo].[enroll]  WITH CHECK ADD  CONSTRAINT [FK_enroll_class] FOREIGN KEY([CLid])
REFERENCES [dbo].[class] ([CLid])
GO
ALTER TABLE [dbo].[enroll] CHECK CONSTRAINT [FK_enroll_class]
GO
ALTER TABLE [dbo].[enroll]  WITH CHECK ADD  CONSTRAINT [FK_enroll_group] FOREIGN KEY([GiD])
REFERENCES [dbo].[group] ([GiD])
GO
ALTER TABLE [dbo].[enroll] CHECK CONSTRAINT [FK_enroll_group]
GO
ALTER TABLE [dbo].[join]  WITH CHECK ADD  CONSTRAINT [FK_join_class] FOREIGN KEY([CLid])
REFERENCES [dbo].[class] ([CLid])
GO
ALTER TABLE [dbo].[join] CHECK CONSTRAINT [FK_join_class]
GO
ALTER TABLE [dbo].[join]  WITH CHECK ADD  CONSTRAINT [FK_join_student] FOREIGN KEY([SiD])
REFERENCES [dbo].[student] ([SiD])
GO
ALTER TABLE [dbo].[join] CHECK CONSTRAINT [FK_join_student]
GO
ALTER TABLE [dbo].[result ]  WITH CHECK ADD  CONSTRAINT [FK_assessment_Student_Assessment system] FOREIGN KEY([Aid])
REFERENCES [dbo].[Assessment system] ([Aid])
GO
ALTER TABLE [dbo].[result ] CHECK CONSTRAINT [FK_assessment_Student_Assessment system]
GO
ALTER TABLE [dbo].[result ]  WITH CHECK ADD  CONSTRAINT [FK_assessment_Student_student1] FOREIGN KEY([Sid])
REFERENCES [dbo].[student] ([SiD])
GO
ALTER TABLE [dbo].[result ] CHECK CONSTRAINT [FK_assessment_Student_student1]
GO
ALTER TABLE [dbo].[supervisor]  WITH CHECK ADD  CONSTRAINT [FK_supervisor_class] FOREIGN KEY([CLid])
REFERENCES [dbo].[class] ([CLid])
GO
ALTER TABLE [dbo].[supervisor] CHECK CONSTRAINT [FK_supervisor_class]
GO
ALTER TABLE [dbo].[supervisor]  WITH CHECK ADD  CONSTRAINT [FK_supervisor_Lecturer] FOREIGN KEY([LiD])
REFERENCES [dbo].[Lecturer] ([LiD])
GO
ALTER TABLE [dbo].[supervisor] CHECK CONSTRAINT [FK_supervisor_Lecturer]
GO
```
