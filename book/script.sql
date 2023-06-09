USE [master]
GO
/****** Object:  Database [mydatabase]    Script Date: 05/24/2017 02:34:40 ******/
CREATE DATABASE [mydatabase] ON  PRIMARY 
( NAME = N'mydatabase', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\mydatabase.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mydatabase_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\mydatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mydatabase] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mydatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mydatabase] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [mydatabase] SET ANSI_NULLS OFF
GO
ALTER DATABASE [mydatabase] SET ANSI_PADDING OFF
GO
ALTER DATABASE [mydatabase] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [mydatabase] SET ARITHABORT OFF
GO
ALTER DATABASE [mydatabase] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [mydatabase] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [mydatabase] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [mydatabase] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [mydatabase] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [mydatabase] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [mydatabase] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [mydatabase] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [mydatabase] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [mydatabase] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [mydatabase] SET  DISABLE_BROKER
GO
ALTER DATABASE [mydatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [mydatabase] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [mydatabase] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [mydatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [mydatabase] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [mydatabase] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [mydatabase] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [mydatabase] SET  READ_WRITE
GO
ALTER DATABASE [mydatabase] SET RECOVERY SIMPLE
GO
ALTER DATABASE [mydatabase] SET  MULTI_USER
GO
ALTER DATABASE [mydatabase] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [mydatabase] SET DB_CHAINING OFF
GO
USE [mydatabase]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 05/24/2017 02:34:40 ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [certlogin]    Script Date: 05/24/2017 02:34:40 ******/
CREATE USER [certlogin] FOR LOGIN [certlogin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[album]    Script Date: 05/24/2017 02:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[image] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[album] ON
INSERT [dbo].[album] ([id], [name], [image]) VALUES (1, N'12', N'MY IMAGES\Koala.jpg')
INSERT [dbo].[album] ([id], [name], [image]) VALUES (2, N'13', N'MY IMAGES\Penguins.gif')
SET IDENTITY_INSERT [dbo].[album] OFF
/****** Object:  Table [dbo].[customer_blog]    Script Date: 05/24/2017 02:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer_blog](
	[customer_id] [int] NULL,
	[customer_title] [varchar](50) NULL,
	[customer_blog] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log_Table]    Script Date: 05/24/2017 02:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_Table](
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Log_Table] ([UserName], [Password]) VALUES (N'1', N'1')
INSERT [dbo].[Log_Table] ([UserName], [Password]) VALUES (N'ravi', N'ravi')
INSERT [dbo].[Log_Table] ([UserName], [Password]) VALUES (N'ankur', N'n0t4u2c!')
INSERT [dbo].[Log_Table] ([UserName], [Password]) VALUES (N'test', N'test')
INSERT [dbo].[Log_Table] ([UserName], [Password]) VALUES (N'hanuman', N'hanuman1')
/****** Object:  Table [dbo].[HTMLContent]    Script Date: 05/24/2017 02:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HTMLContent](
	[comment] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 05/24/2017 02:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[enroll_no] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[course] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[coll_name] [varchar](50) NULL,
	[branch] [varchar](50) NULL,
	[sem] [varchar](50) NULL,
	[mobile_no] [varchar](50) NULL,
	[email_id] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[student] ([enroll_no], [name], [course], [category], [coll_name], [branch], [sem], [mobile_no], [email_id]) VALUES (N'001', N'Ram', N'MCA', N'MALE', N'GLS', N'MCA', N'I', N'9898656500', N'ram@gls.com')
/****** Object:  Table [dbo].[sale_purchase]    Script Date: 05/24/2017 02:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sale_purchase](
	[mobile_no] [int] NULL,
	[email_id] [varchar](50) NULL,
	[course] [varchar](50) NULL,
	[branch] [varchar](50) NULL,
	[sem] [varchar](50) NULL,
	[book_publish] [varchar](50) NULL,
	[price] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sale_purchase] ([mobile_no], [email_id], [course], [branch], [sem], [book_publish], [price]) VALUES (1212121212, N'1212121212', N'COURSE', N'BRANCH', N'SEM', N'Shivani', 12)
INSERT [dbo].[sale_purchase] ([mobile_no], [email_id], [course], [branch], [sem], [book_publish], [price]) VALUES (0, N'1212121212', N'COURSE', N'BRANCH', N'SEM', N'Shivani', 0)
INSERT [dbo].[sale_purchase] ([mobile_no], [email_id], [course], [branch], [sem], [book_publish], [price]) VALUES (0, N'', N'COURSE', N'BRANCH', N'SEM', N'Shivani', 0)
INSERT [dbo].[sale_purchase] ([mobile_no], [email_id], [course], [branch], [sem], [book_publish], [price]) VALUES (0, N'', N'COURSE', N'BRANCH', N'SEM', N'Shivani', 0)
/****** Object:  Table [dbo].[tbl_Comment]    Script Date: 05/24/2017 02:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Comment] [varchar](250) NULL,
 CONSTRAINT [PK_tbl_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Comment] ON
INSERT [dbo].[tbl_Comment] ([Id], [Name], [Email], [Comment]) VALUES (1, N'Laxman', N'laxman@samrat.com', N'Blah Blah ...')
INSERT [dbo].[tbl_Comment] ([Id], [Name], [Email], [Comment]) VALUES (2, N'SEM6 Project', N'example@xyz.com', N'Project details')
SET IDENTITY_INSERT [dbo].[tbl_Comment] OFF
/****** Object:  StoredProcedure [dbo].[student_insert]    Script Date: 05/24/2017 02:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[student_insert]
	(
	@enroll_no varchar(50),
	@name varchar(50),
	@course varchar(50),
	@category varchar(50),
	@coll_name varchar(50),
	@branch varchar(50),
	@sem varchar(50),
	@mobile_no varchar(50),
	@email_id varchar(50)
	)
AS
insert into student values(@enroll_no,@name,@course,@category,@coll_name,@branch,@sem,@mobile_no,@email_id)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[student_getall]    Script Date: 05/24/2017 02:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[student_getall]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
select * from student
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[sale_pur]    Script Date: 05/24/2017 02:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sale_pur]
	(
    @mobile_no int,
	@email_id varchar(50),
	@course varchar(50),
	@branch varchar(50),
	@sem varchar(50),
	@book_publish varchar(50),
	@price int
	)
AS
insert into sale_purchase values(@mobile_no,@email_id,@course,@branch,@sem,@book_publish,@price)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[getall]    Script Date: 05/24/2017 02:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getall]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	/* SET NOCOUNT ON */
	select * from Album
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[get_it]    Script Date: 05/24/2017 02:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_it]
	(
	@course varchar(50),
	@sem varchar(50),
	@branch varchar(50)
	)
AS

SELECT     enroll_no, name, course, category, coll_name, branch, sem, mobile_no, email_id
FROM         student
WHERE     (course = @course) AND (sem = @sem) AND (branch = @branch)	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[album_update]    Script Date: 05/24/2017 02:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[album_update]
	(
	@id int,
	@name varchar(50),
	@image varchar(500)
	
	)
AS

	/* SET NOCOUNT ON */
	Update album set name=@name,image=@image where @id=id 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[album_insert]    Script Date: 05/24/2017 02:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[album_insert]
	(
	
	 @name varchar(50),

	 @image varchar(500)
	)
AS
	/* SET NOCOUNT ON */
	insert  into album values(@name,@image)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[album_del]    Script Date: 05/24/2017 02:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[album_del]
(
 @id int
  )
as
delete from Album where id=@id
return
GO
