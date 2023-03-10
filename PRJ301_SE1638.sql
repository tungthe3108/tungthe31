USE [master]
GO
/****** Object:  Database [PRJ301_SE1638]    Script Date: 11/9/2022 6:26:17 PM ******/
CREATE DATABASE [PRJ301_SE1638]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_SE1638', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TUNG\MSSQL\DATA\PRJ301_SE1638.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_SE1638_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TUNG\MSSQL\DATA\PRJ301_SE1638_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_SE1638] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_SE1638].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_SE1638] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SE1638] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SE1638] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SE1638] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1638] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1638] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SE1638] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SE1638] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SE1638] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SE1638] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SE1638] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SE1638] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301_SE1638] SET QUERY_STORE = OFF
GO
USE [PRJ301_SE1638]
GO
/****** Object:  Table [dbo].[account_HE160120]    Script Date: 11/9/2022 6:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_HE160120](
	[username] [nchar](30) NOT NULL,
	[password] [nchar](30) NOT NULL,
	[email] [nchar](30) NULL,
	[decentralization] [bit] NULL,
 CONSTRAINT [PK_account_HE160120] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class_HE160120]    Script Date: 11/9/2022 6:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class_HE160120](
	[id] [nchar](10) NOT NULL,
	[total student] [int] NOT NULL,
 CONSTRAINT [PK_class_HE160120] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment_HE160120]    Script Date: 11/9/2022 6:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_HE160120](
	[cmtfrom] [nchar](30) NOT NULL,
	[content] [nchar](500) NOT NULL,
	[STT] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forum_HE160120]    Script Date: 11/9/2022 6:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forum_HE160120](
	[username] [nchar](30) NULL,
	[title] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[pin] [bit] NULL,
	[STT] [int] NOT NULL,
 CONSTRAINT [PK_forum_HE160120] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register_HE160120]    Script Date: 11/9/2022 6:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register_HE160120](
	[STT] [int] NOT NULL,
	[id class] [nchar](10) NOT NULL,
	[id subject] [nchar](10) NOT NULL,
	[semester] [nchar](30) NOT NULL,
 CONSTRAINT [PK_register_HE160120] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_HE160120]    Script Date: 11/9/2022 6:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_HE160120](
	[STT] [int] NOT NULL,
	[id] [nchar](10) NOT NULL,
	[slot booked] [nchar](10) NOT NULL,
	[day] [nchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_HE160120]    Script Date: 11/9/2022 6:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_HE160120](
	[id] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[total slot] [int] NULL,
	[semester] [int] NULL,
 CONSTRAINT [PK_subject_HE160120] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account_HE160120] ([username], [password], [email], [decentralization]) VALUES (N'a2                            ', N'a2                            ', N'ntunganh798@gmail.com         ', 1)
INSERT [dbo].[account_HE160120] ([username], [password], [email], [decentralization]) VALUES (N'a4                            ', N'a4                            ', N'b@gmail.com                   ', 0)
INSERT [dbo].[account_HE160120] ([username], [password], [email], [decentralization]) VALUES (N'a5                            ', N'a5                            ', N'tungdeptrai@gmail.com         ', 0)
INSERT [dbo].[account_HE160120] ([username], [password], [email], [decentralization]) VALUES (N'admin                         ', N'admin                         ', N'ad@gmail.com                  ', 1)
INSERT [dbo].[account_HE160120] ([username], [password], [email], [decentralization]) VALUES (N'c                             ', N'c                             ', N'c@gmail.com                   ', 0)
INSERT [dbo].[account_HE160120] ([username], [password], [email], [decentralization]) VALUES (N'd                             ', N'd                             ', N'd@gmail.com                   ', 0)
INSERT [dbo].[account_HE160120] ([username], [password], [email], [decentralization]) VALUES (N'mu                            ', N'mu                            ', N'mu@gmail.com                  ', 0)
INSERT [dbo].[account_HE160120] ([username], [password], [email], [decentralization]) VALUES (N'thetung3108                   ', N'12345                         ', N'marcota8@gmail.com            ', 0)
GO
INSERT [dbo].[class_HE160120] ([id], [total student]) VALUES (N'ab        ', 20)
INSERT [dbo].[class_HE160120] ([id], [total student]) VALUES (N'cd        ', 30)
INSERT [dbo].[class_HE160120] ([id], [total student]) VALUES (N'gh        ', 60)
INSERT [dbo].[class_HE160120] ([id], [total student]) VALUES (N'ta        ', 60)
GO
INSERT [dbo].[comment_HE160120] ([cmtfrom], [content], [STT]) VALUES (N'vnklask                       ', N'fdslnlasd                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[comment_HE160120] ([cmtfrom], [content], [STT]) VALUES (N'a4                            ', N'nmjnasbdas                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 3)
INSERT [dbo].[comment_HE160120] ([cmtfrom], [content], [STT]) VALUES (N'a4                            ', N'sấcc                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 3)
INSERT [dbo].[comment_HE160120] ([cmtfrom], [content], [STT]) VALUES (N'a4                            ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', 3)
INSERT [dbo].[comment_HE160120] ([cmtfrom], [content], [STT]) VALUES (N'a4                            ', N'dãcxs                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 3)
GO
INSERT [dbo].[forum_HE160120] ([username], [title], [text], [pin], [STT]) VALUES (N'a2                            ', N'âsdas', N'sdfsda', 0, 1)
INSERT [dbo].[forum_HE160120] ([username], [title], [text], [pin], [STT]) VALUES (N'd                             ', N'sdnas', N'ádniowq', 0, 3)
GO
INSERT [dbo].[subject_HE160120] ([id], [name], [total slot], [semester]) VALUES (N'ád        ', N'ádcxz', 2, 1)
INSERT [dbo].[subject_HE160120] ([id], [name], [total slot], [semester]) VALUES (N'sadq      ', N'ádzx', 3, 3)
INSERT [dbo].[subject_HE160120] ([id], [name], [total slot], [semester]) VALUES (N'ưqd       ', N'ácxz', 3, 2)
GO
ALTER TABLE [dbo].[comment_HE160120]  WITH CHECK ADD  CONSTRAINT [FK_comment_HE160120_forum_HE160120] FOREIGN KEY([STT])
REFERENCES [dbo].[forum_HE160120] ([STT])
GO
ALTER TABLE [dbo].[comment_HE160120] CHECK CONSTRAINT [FK_comment_HE160120_forum_HE160120]
GO
ALTER TABLE [dbo].[forum_HE160120]  WITH CHECK ADD  CONSTRAINT [FK_forum_HE160120_account_HE160120] FOREIGN KEY([username])
REFERENCES [dbo].[account_HE160120] ([username])
GO
ALTER TABLE [dbo].[forum_HE160120] CHECK CONSTRAINT [FK_forum_HE160120_account_HE160120]
GO
ALTER TABLE [dbo].[register_HE160120]  WITH CHECK ADD  CONSTRAINT [FK_register_HE160120_class_HE160120] FOREIGN KEY([id class])
REFERENCES [dbo].[class_HE160120] ([id])
GO
ALTER TABLE [dbo].[register_HE160120] CHECK CONSTRAINT [FK_register_HE160120_class_HE160120]
GO
ALTER TABLE [dbo].[register_HE160120]  WITH CHECK ADD  CONSTRAINT [FK_register_HE160120_subject_HE160120] FOREIGN KEY([id subject])
REFERENCES [dbo].[subject_HE160120] ([id])
GO
ALTER TABLE [dbo].[register_HE160120] CHECK CONSTRAINT [FK_register_HE160120_subject_HE160120]
GO
ALTER TABLE [dbo].[room_HE160120]  WITH CHECK ADD  CONSTRAINT [FK_room_HE160120_register_HE160120] FOREIGN KEY([STT])
REFERENCES [dbo].[register_HE160120] ([STT])
GO
ALTER TABLE [dbo].[room_HE160120] CHECK CONSTRAINT [FK_room_HE160120_register_HE160120]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SE1638] SET  READ_WRITE 
GO
