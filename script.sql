USE [master]
GO
/****** Object:  Database [library_final]    Script Date: 16.01.2022 21:31:47 ******/
CREATE DATABASE [library_final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'library_final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\library_final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'library_final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\library_final_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [library_final] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [library_final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [library_final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [library_final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [library_final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [library_final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [library_final] SET ARITHABORT OFF 
GO
ALTER DATABASE [library_final] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [library_final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [library_final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [library_final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [library_final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [library_final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [library_final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [library_final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [library_final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [library_final] SET  DISABLE_BROKER 
GO
ALTER DATABASE [library_final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [library_final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [library_final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [library_final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [library_final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [library_final] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [library_final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [library_final] SET RECOVERY FULL 
GO
ALTER DATABASE [library_final] SET  MULTI_USER 
GO
ALTER DATABASE [library_final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [library_final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [library_final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [library_final] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [library_final] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [library_final] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'library_final', N'ON'
GO
ALTER DATABASE [library_final] SET QUERY_STORE = OFF
GO
USE [library_final]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 16.01.2022 21:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[bookid] [int] IDENTITY(1,1) NOT NULL,
	[bookname] [varchar](255) NOT NULL,
	[writer] [varchar](255) NULL,
	[in_library] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[bookid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 16.01.2022 21:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[memberid] [int] IDENTITY(1000,1) NOT NULL,
	[firstname] [varchar](255) NOT NULL,
	[lastname] [varchar](255) NULL,
	[emailadress] [varchar](255) NULL,
	[phonenumber] [varchar](255) NULL,
	[have_book] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[memberid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 16.01.2022 21:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[tid] [int] IDENTITY(2000,1) NOT NULL,
	[date_of_start] [datetime] NULL,
	[date_of_end] [datetime] NULL,
	[memberid] [int] NULL,
	[bookid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([bookid])
REFERENCES [dbo].[Books] ([bookid])
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([memberid])
REFERENCES [dbo].[Members] ([memberid])
GO
USE [master]
GO
ALTER DATABASE [library_final] SET  READ_WRITE 
GO
