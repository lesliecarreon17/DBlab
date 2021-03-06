USE [netflix]
GO
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT [FK_usuario_Subscripcion]
GO
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT [FK_usuario_Perfil]
GO
ALTER TABLE [dbo].[Subscripcion] DROP CONSTRAINT [FK_Subscripcion_MetodoDePago]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Perfil]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Genero]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Director]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Autor]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[Subscripcion]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP TABLE [dbo].[Subscripcion]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP TABLE [dbo].[Perfil]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP TABLE [dbo].[Pelicula]
GO
/****** Object:  Table [dbo].[MetodoDePago]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP TABLE [dbo].[MetodoDePago]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP TABLE [dbo].[Genero]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP TABLE [dbo].[Director]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP TABLE [dbo].[Autor]
GO
USE [master]
GO
/****** Object:  Database [netflix]    Script Date: 03/03/2018 08:55:15 a.m. ******/
DROP DATABASE [netflix]
GO
/****** Object:  Database [netflix]    Script Date: 03/03/2018 08:55:15 a.m. ******/
CREATE DATABASE [netflix]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'netflix', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\netflix.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'netflix_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\netflix_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [netflix] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [netflix].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [netflix] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [netflix] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [netflix] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [netflix] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [netflix] SET ARITHABORT OFF 
GO
ALTER DATABASE [netflix] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [netflix] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [netflix] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [netflix] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [netflix] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [netflix] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [netflix] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [netflix] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [netflix] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [netflix] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [netflix] SET  DISABLE_BROKER 
GO
ALTER DATABASE [netflix] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [netflix] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [netflix] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [netflix] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [netflix] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [netflix] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [netflix] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [netflix] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [netflix] SET  MULTI_USER 
GO
ALTER DATABASE [netflix] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [netflix] SET DB_CHAINING OFF 
GO
ALTER DATABASE [netflix] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [netflix] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [netflix]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 03/03/2018 08:55:15 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[IdAutor] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Director]    Script Date: 03/03/2018 08:55:15 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[IdDirector] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[IdDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genero]    Script Date: 03/03/2018 08:55:15 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[IdGenero] [int] NOT NULL,
	[tipo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MetodoDePago]    Script Date: 03/03/2018 08:55:15 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodoDePago](
	[IdMetodoDePago] [int] NOT NULL,
	[tipo] [nvarchar](50) NULL,
 CONSTRAINT [PK_MetodoDePago] PRIMARY KEY CLUSTERED 
(
	[IdMetodoDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 03/03/2018 08:55:15 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[IdPelicula] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[sinopsis] [nvarchar](max) NULL,
	[IdGenero] [int] NULL,
	[tiempoDuracion] [datetime2](7) NULL,
	[IdDirector] [int] NULL,
	[IdAutor] [int] NULL,
	[IdPerfil] [int] NULL,
 CONSTRAINT [PK_Pelicula] PRIMARY KEY CLUSTERED 
(
	[IdPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 03/03/2018 08:55:15 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[IdPerfil] [int] NOT NULL,
	[imagen] [image] NULL,
	[nombre] [nvarchar](50) NULL,
	[tipo] [bit] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[IdPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscripcion]    Script Date: 03/03/2018 08:55:15 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscripcion](
	[IdSubscripcion] [int] NOT NULL,
	[tipo] [nvarchar](50) NULL,
	[IdMetodoDePago] [int] NULL,
	[costo] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Subscripcion] PRIMARY KEY CLUSTERED 
(
	[IdSubscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuario]    Script Date: 03/03/2018 08:55:15 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[IdUsuario] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[telefono] [numeric](18, 0) NULL,
	[FechaCreacion] [date] NULL,
	[correo] [nvarchar](50) NULL,
	[IdSubscripcion] [int] NULL,
	[IdPerfil] [int] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Autor] FOREIGN KEY([IdAutor])
REFERENCES [dbo].[Autor] ([IdAutor])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Autor]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Director] FOREIGN KEY([IdDirector])
REFERENCES [dbo].[Director] ([IdDirector])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Director]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Genero]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Perfil] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfil] ([IdPerfil])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Perfil]
GO
ALTER TABLE [dbo].[Subscripcion]  WITH CHECK ADD  CONSTRAINT [FK_Subscripcion_MetodoDePago] FOREIGN KEY([IdMetodoDePago])
REFERENCES [dbo].[MetodoDePago] ([IdMetodoDePago])
GO
ALTER TABLE [dbo].[Subscripcion] CHECK CONSTRAINT [FK_Subscripcion_MetodoDePago]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_Perfil] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfil] ([IdPerfil])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_Perfil]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_Subscripcion] FOREIGN KEY([IdSubscripcion])
REFERENCES [dbo].[Subscripcion] ([IdSubscripcion])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_Subscripcion]
GO
USE [master]
GO
ALTER DATABASE [netflix] SET  READ_WRITE 
GO
