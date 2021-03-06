USE [netflix]
GO
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [FK_Usuario_Subscripcion]
GO
ALTER TABLE [dbo].[Perfiles] DROP CONSTRAINT [FK_Perfiles_Usuario]
GO
ALTER TABLE [dbo].[Peliculas] DROP CONSTRAINT [FK_Peliculas_Genero]
GO
ALTER TABLE [dbo].[Peliculas] DROP CONSTRAINT [FK_Peliculas_Director]
GO
ALTER TABLE [dbo].[Peliculas] DROP CONSTRAINT [FK_Peliculas_Autores]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_MetodoDePago]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Compras]
GO
ALTER TABLE [dbo].[DemandaPelicula] DROP CONSTRAINT [FK_DemandaPelicula_Perfiles]
GO
ALTER TABLE [dbo].[DemandaPelicula] DROP CONSTRAINT [FK_DemandaPelicula_Peliculas]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_Compras_Usuario]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_Compras_Subscripcion]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_Compras_Estatus]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Subscripcion]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Subscripcion]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Perfiles]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Peliculas]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[MetodoDePago]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[MetodoDePago]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Genero]
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Estatus]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Director]
GO
/****** Object:  Table [dbo].[DemandaPelicula]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[DemandaPelicula]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Compras]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 17/03/2018 9:48:32 ******/
DROP TABLE [dbo].[Autores]
GO
USE [master]
GO
/****** Object:  Database [netflix]    Script Date: 17/03/2018 9:48:32 ******/
DROP DATABASE [netflix]
GO
/****** Object:  Database [netflix]    Script Date: 17/03/2018 9:48:32 ******/
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
/****** Object:  Table [dbo].[Autores]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[IdAutores] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[IdAutores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Compras]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[IdCompras] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[IdEstatus] [int] NULL,
	[IdSubscripcion] [int] NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[IdCompras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandaPelicula]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandaPelicula](
	[IdDemandaPelicula] [int] NOT NULL,
	[IdPeliculas] [int] NULL,
	[IdPerfil] [int] NULL,
	[FechaHora] [datetime] NULL,
 CONSTRAINT [PK_DemandaPelicula] PRIMARY KEY CLUSTERED 
(
	[IdDemandaPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Director]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[IdDirector] [int] NOT NULL,
	[nombre] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[IdDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estatus](
	[IdEstatus] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Estatus] PRIMARY KEY CLUSTERED 
(
	[IdEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genero]    Script Date: 17/03/2018 9:48:32 ******/
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
/****** Object:  Table [dbo].[MetodoDePago]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodoDePago](
	[IdMetodoDePago] [int] NOT NULL,
	[FormaDePago] [nvarchar](50) NULL,
 CONSTRAINT [PK_MetodoDePago] PRIMARY KEY CLUSTERED 
(
	[IdMetodoDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pago]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[IdPago] [int] NOT NULL,
	[IdMetodoDePago] [int] NULL,
	[Monto] [numeric](18, 0) NULL,
	[IdCompras] [int] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[IdPeliculas] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[sinopsis] [nvarchar](max) NULL,
	[IdGenero] [int] NULL,
	[tiempo] [date] NULL,
	[comentario] [nvarchar](50) NOT NULL,
	[Actores] [nvarchar](50) NULL,
	[IdDirector] [int] NULL,
	[IdAutores] [int] NULL,
	[imagen] [image] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[IdPeliculas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[IdPerfiles] [int] NOT NULL,
	[tipo] [nvarchar](50) NULL,
	[imagen] [image] NULL,
	[nombre] [nvarchar](50) NULL,
	[fecha] [datetime] NULL,
	[IdUsuario] [int] NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[IdPerfiles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscripcion]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscripcion](
	[IdSubscripcion] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[costo] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Subscripcion] PRIMARY KEY CLUSTERED 
(
	[IdSubscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 17/03/2018 9:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[telefono] [numeric](18, 0) NULL,
	[correo] [nvarchar](50) NULL,
	[Idsubscripcion] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Autores] ON 

INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345898, N'Pablo Larrin')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345900, N'Pablo Larrin')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345901, N'Richard Linklater')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345902, N'Carlos Vermut')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345903, N'Paolo Sorrentino')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345904, N'Harmoni Korine')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345905, N'Joachim Lafosse')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345906, N'Xavier Dolan')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345907, N'Leos Carax')
INSERT [dbo].[Autores] ([IdAutores], [Nombre]) VALUES (12345908, N'Carlos Reygadas')
SET IDENTITY_INSERT [dbo].[Autores] OFF
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Estatus] FOREIGN KEY([IdEstatus])
REFERENCES [dbo].[Estatus] ([IdEstatus])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Estatus]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Subscripcion] FOREIGN KEY([IdSubscripcion])
REFERENCES [dbo].[Subscripcion] ([IdSubscripcion])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Subscripcion]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Usuario]
GO
ALTER TABLE [dbo].[DemandaPelicula]  WITH CHECK ADD  CONSTRAINT [FK_DemandaPelicula_Peliculas] FOREIGN KEY([IdPeliculas])
REFERENCES [dbo].[Peliculas] ([IdPeliculas])
GO
ALTER TABLE [dbo].[DemandaPelicula] CHECK CONSTRAINT [FK_DemandaPelicula_Peliculas]
GO
ALTER TABLE [dbo].[DemandaPelicula]  WITH CHECK ADD  CONSTRAINT [FK_DemandaPelicula_Perfiles] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfiles] ([IdPerfiles])
GO
ALTER TABLE [dbo].[DemandaPelicula] CHECK CONSTRAINT [FK_DemandaPelicula_Perfiles]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Compras] FOREIGN KEY([IdCompras])
REFERENCES [dbo].[Compras] ([IdCompras])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Compras]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_MetodoDePago] FOREIGN KEY([IdMetodoDePago])
REFERENCES [dbo].[MetodoDePago] ([IdMetodoDePago])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_MetodoDePago]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Autores] FOREIGN KEY([IdAutores])
REFERENCES [dbo].[Autores] ([IdAutores])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Autores]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Director] FOREIGN KEY([IdDirector])
REFERENCES [dbo].[Director] ([IdDirector])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Director]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Genero]
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD  CONSTRAINT [FK_Perfiles_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Perfiles] CHECK CONSTRAINT [FK_Perfiles_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Subscripcion] FOREIGN KEY([Idsubscripcion])
REFERENCES [dbo].[Subscripcion] ([IdSubscripcion])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Subscripcion]
GO
USE [master]
GO
ALTER DATABASE [netflix] SET  READ_WRITE 
GO
