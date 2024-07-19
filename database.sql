USE [master]
GO
/****** Object:  Database [bookstore]    Script Date: 19.07.2024 14:47:33 ******/
CREATE DATABASE [bookstore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bookstore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bookstore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bookstore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bookstore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bookstore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bookstore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bookstore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bookstore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bookstore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bookstore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bookstore] SET ARITHABORT OFF 
GO
ALTER DATABASE [bookstore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bookstore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bookstore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bookstore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bookstore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bookstore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bookstore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bookstore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bookstore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bookstore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bookstore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bookstore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bookstore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bookstore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bookstore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bookstore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bookstore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bookstore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bookstore] SET  MULTI_USER 
GO
ALTER DATABASE [bookstore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bookstore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bookstore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bookstore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bookstore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bookstore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [bookstore] SET QUERY_STORE = OFF
GO
USE [bookstore]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 19.07.2024 14:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[author_id] [int] NOT NULL,
	[author_name] [nvarchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_authors]    Script Date: 19.07.2024 14:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_authors](
	[book_id] [int] NOT NULL,
	[author_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_languages]    Script Date: 19.07.2024 14:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_languages](
	[language_id] [int] NOT NULL,
	[language_code] [varchar](50) NOT NULL,
	[language_name] [nvarchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 19.07.2024 14:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[book_id] [int] NOT NULL,
	[title] [nvarchar](150) NULL,
	[isbn13] [varchar](50) NOT NULL,
	[language_id] [int] NOT NULL,
	[num_pages] [int] NOT NULL,
	[publication_date] [date] NOT NULL,
	[publisher_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publishers]    Script Date: 19.07.2024 14:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publishers](
	[publisher_id] [int] NOT NULL,
	[publisher_name] [nvarchar](150) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bookstore] SET  READ_WRITE 
GO
