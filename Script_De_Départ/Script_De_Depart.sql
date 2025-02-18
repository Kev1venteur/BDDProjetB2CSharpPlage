USE [master]
GO
/****** Object:  Database [Betterave]    Script Date: 07/04/2020 13:42:41 ******/
CREATE DATABASE [Betterave]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Betterave', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Betterave.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Betterave_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Betterave_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Betterave] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Betterave].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Betterave] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Betterave] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Betterave] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Betterave] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Betterave] SET ARITHABORT OFF 
GO
ALTER DATABASE [Betterave] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Betterave] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Betterave] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Betterave] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Betterave] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Betterave] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Betterave] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Betterave] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Betterave] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Betterave] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Betterave] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Betterave] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Betterave] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Betterave] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Betterave] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Betterave] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Betterave] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Betterave] SET RECOVERY FULL 
GO
ALTER DATABASE [Betterave] SET  MULTI_USER 
GO
ALTER DATABASE [Betterave] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Betterave] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Betterave] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Betterave] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Betterave] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Betterave', N'ON'
GO
ALTER DATABASE [Betterave] SET QUERY_STORE = OFF
GO
USE [Betterave]
GO
/****** Object:  Table [dbo].[Communes]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Communes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](45) NOT NULL,
	[idDepartement] [int] NOT NULL,
 CONSTRAINT [PK_Communes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departements]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](45) NOT NULL,
	[numero] [int] NOT NULL,
 CONSTRAINT [PK_Departements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Echantillons]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Echantillons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEspecePresumee] [int] NULL,
	[idEspeceFinale] [int] NULL,
	[estValide] [bit] NOT NULL,
 CONSTRAINT [PK_Echantillons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipes]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](45) NOT NULL,
	[nbMembres] [int] NOT NULL,
 CONSTRAINT [PK_Equipes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especes]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Especes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especes_Has_ZonePrelevements]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especes_Has_ZonePrelevements](
	[dateRencontre] [date] NOT NULL,
	[idEspece] [int] NOT NULL,
	[idZone] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etudes]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etudes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[titre] [nvarchar](45) NOT NULL,
	[nbTotalEspeceRencontrees] [int] NOT NULL,
	[idEquipe] [int] NOT NULL,
	[estTerminee] [bit] NOT NULL,
 CONSTRAINT [PK_Etudes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etudes_Has_Plages_Has_Zones]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etudes_Has_Plages_Has_Zones](
	[nomConcatenation] [nvarchar](45) NOT NULL,
	[idEtude] [int] NOT NULL,
	[idPlage] [int] NOT NULL,
	[idZone] [int] NOT NULL,
 CONSTRAINT [PK_Etudes_Has_Plages_Has_Zones] PRIMARY KEY CLUSTERED 
(
	[nomConcatenation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plages]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](50) NOT NULL,
	[idCommune] [int] NOT NULL,
	[nombreEspecesDifferentes] [int] NOT NULL,
	[surface] [float] NULL,
 CONSTRAINT [PK_Plages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilisateurs]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilisateurs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](45) NOT NULL,
	[prenom] [varchar](45) NOT NULL,
	[estAdministrateur] [bit] NOT NULL,
	[mdp] [nvarchar](150) NOT NULL,
	[nomUtilisateur] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_Utilisateurs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilisateurs_Has_Equipes]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilisateurs_Has_Equipes](
	[idUtilisateur] [int] NOT NULL,
	[idEquipe] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZonesPrelevements]    Script Date: 07/04/2020 13:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZonesPrelevements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](45) NOT NULL,
	[lat1] [decimal](9, 6) NOT NULL,
	[lat2] [decimal](9, 6) NOT NULL,
	[lat3] [decimal](9, 6) NOT NULL,
	[lat4] [decimal](9, 6) NOT NULL,
	[long1] [decimal](9, 6) NOT NULL,
	[long2] [decimal](9, 6) NOT NULL,
	[long3] [decimal](9, 6) NOT NULL,
	[long4] [decimal](9, 6) NOT NULL,
	[estTerminee] [bit] NOT NULL,
	[surfaceEtudiee] [float] NOT NULL,
	[idEquipeConcernee] [int] NOT NULL,
	[nbEspecesDifferentes] [int] NOT NULL,
 CONSTRAINT [PK_ZonesPrelevements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Communes]  WITH CHECK ADD  CONSTRAINT [FK_Communes_Departements] FOREIGN KEY([idDepartement])
REFERENCES [dbo].[Departements] ([id])
GO
ALTER TABLE [dbo].[Communes] CHECK CONSTRAINT [FK_Communes_Departements]
GO
ALTER TABLE [dbo].[Echantillons]  WITH CHECK ADD  CONSTRAINT [FK_Echantillons_Especes] FOREIGN KEY([idEspecePresumee])
REFERENCES [dbo].[Especes] ([id])
GO
ALTER TABLE [dbo].[Echantillons] CHECK CONSTRAINT [FK_Echantillons_Especes]
GO
ALTER TABLE [dbo].[Echantillons]  WITH CHECK ADD  CONSTRAINT [FK_Echantillons_Especes1] FOREIGN KEY([idEspeceFinale])
REFERENCES [dbo].[Especes] ([id])
GO
ALTER TABLE [dbo].[Echantillons] CHECK CONSTRAINT [FK_Echantillons_Especes1]
GO
ALTER TABLE [dbo].[Especes_Has_ZonePrelevements]  WITH CHECK ADD  CONSTRAINT [FK_Especes_Has_ZonePrelevements_Especes] FOREIGN KEY([idEspece])
REFERENCES [dbo].[Especes] ([id])
GO
ALTER TABLE [dbo].[Especes_Has_ZonePrelevements] CHECK CONSTRAINT [FK_Especes_Has_ZonePrelevements_Especes]
GO
ALTER TABLE [dbo].[Especes_Has_ZonePrelevements]  WITH CHECK ADD  CONSTRAINT [FK_Especes_Has_ZonePrelevements_ZonesPrelevements] FOREIGN KEY([idZone])
REFERENCES [dbo].[ZonesPrelevements] ([id])
GO
ALTER TABLE [dbo].[Especes_Has_ZonePrelevements] CHECK CONSTRAINT [FK_Especes_Has_ZonePrelevements_ZonesPrelevements]
GO
ALTER TABLE [dbo].[Etudes]  WITH CHECK ADD  CONSTRAINT [FK_Etudes_Equipes] FOREIGN KEY([idEquipe])
REFERENCES [dbo].[Equipes] ([id])
GO
ALTER TABLE [dbo].[Etudes] CHECK CONSTRAINT [FK_Etudes_Equipes]
GO
ALTER TABLE [dbo].[Etudes_Has_Plages_Has_Zones]  WITH CHECK ADD  CONSTRAINT [FK_Etudes_Has_Plages_Has_Zones_Etudes] FOREIGN KEY([idEtude])
REFERENCES [dbo].[Etudes] ([id])
GO
ALTER TABLE [dbo].[Etudes_Has_Plages_Has_Zones] CHECK CONSTRAINT [FK_Etudes_Has_Plages_Has_Zones_Etudes]
GO
ALTER TABLE [dbo].[Etudes_Has_Plages_Has_Zones]  WITH CHECK ADD  CONSTRAINT [FK_Etudes_Has_Plages_Has_Zones_Plages] FOREIGN KEY([idPlage])
REFERENCES [dbo].[Plages] ([id])
GO
ALTER TABLE [dbo].[Etudes_Has_Plages_Has_Zones] CHECK CONSTRAINT [FK_Etudes_Has_Plages_Has_Zones_Plages]
GO
ALTER TABLE [dbo].[Etudes_Has_Plages_Has_Zones]  WITH CHECK ADD  CONSTRAINT [FK_Etudes_Has_Plages_Has_Zones_ZonesPrelevements] FOREIGN KEY([idZone])
REFERENCES [dbo].[ZonesPrelevements] ([id])
GO
ALTER TABLE [dbo].[Etudes_Has_Plages_Has_Zones] CHECK CONSTRAINT [FK_Etudes_Has_Plages_Has_Zones_ZonesPrelevements]
GO
ALTER TABLE [dbo].[Plages]  WITH CHECK ADD  CONSTRAINT [FK_Plages_Communes] FOREIGN KEY([idCommune])
REFERENCES [dbo].[Communes] ([id])
GO
ALTER TABLE [dbo].[Plages] CHECK CONSTRAINT [FK_Plages_Communes]
GO
ALTER TABLE [dbo].[Utilisateurs_Has_Equipes]  WITH CHECK ADD  CONSTRAINT [FK_Utilisateurs_Has_Equipes_Equipes] FOREIGN KEY([idEquipe])
REFERENCES [dbo].[Equipes] ([id])
GO
ALTER TABLE [dbo].[Utilisateurs_Has_Equipes] CHECK CONSTRAINT [FK_Utilisateurs_Has_Equipes_Equipes]
GO
ALTER TABLE [dbo].[Utilisateurs_Has_Equipes]  WITH CHECK ADD  CONSTRAINT [FK_Utilisateurs_Has_Equipes_Utilisateurs] FOREIGN KEY([idUtilisateur])
REFERENCES [dbo].[Utilisateurs] ([id])
GO
ALTER TABLE [dbo].[Utilisateurs_Has_Equipes] CHECK CONSTRAINT [FK_Utilisateurs_Has_Equipes_Utilisateurs]
GO
ALTER TABLE [dbo].[ZonesPrelevements]  WITH CHECK ADD  CONSTRAINT [FK_ZonesPrelevements_Equipes] FOREIGN KEY([idEquipeConcernee])
REFERENCES [dbo].[Equipes] ([id])
GO
ALTER TABLE [dbo].[ZonesPrelevements] CHECK CONSTRAINT [FK_ZonesPrelevements_Equipes]
GO
USE [master]
GO
ALTER DATABASE [Betterave] SET  READ_WRITE 
GO
