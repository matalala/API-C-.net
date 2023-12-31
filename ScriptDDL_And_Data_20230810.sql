USE [master]
GO
/****** Object:  Database [VETLY]    Script Date: 10/8/2023 11:43:56 ******/
CREATE DATABASE [VETLY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VETLY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\VETLY.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VETLY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\VETLY_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [VETLY] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VETLY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VETLY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VETLY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VETLY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VETLY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VETLY] SET ARITHABORT OFF 
GO
ALTER DATABASE [VETLY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VETLY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VETLY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VETLY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VETLY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VETLY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VETLY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VETLY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VETLY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VETLY] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VETLY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VETLY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VETLY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VETLY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VETLY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VETLY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VETLY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VETLY] SET RECOVERY FULL 
GO
ALTER DATABASE [VETLY] SET  MULTI_USER 
GO
ALTER DATABASE [VETLY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VETLY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VETLY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VETLY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VETLY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VETLY] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VETLY', N'ON'
GO
ALTER DATABASE [VETLY] SET QUERY_STORE = ON
GO
ALTER DATABASE [VETLY] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [VETLY]
GO
/****** Object:  User [vetly2]    Script Date: 10/8/2023 11:43:56 ******/
CREATE USER [vetly2] FOR LOGIN [vetly2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vetly]    Script Date: 10/8/2023 11:43:56 ******/
CREATE USER [vetly] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [test]    Script Date: 10/8/2023 11:43:56 ******/
CREATE USER [test] FOR LOGIN [test] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [vetly2]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [vetly2]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [vetly2]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [vetly2]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [vetly2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [vetly2]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [vetly2]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [vetly2]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [vetly2]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nchar](100) NOT NULL,
	[id_tipo_usuario] [int] NOT NULL,
	[fecha_creacion] [date] NULL,
	[borrado] [int] NULL,
	[fecha_Borrado] [date] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Usuario_Patente]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Usuario_Patente](
	[id] [smallint] NOT NULL,
	[id_tipo_usuario] [smallint] NOT NULL,
	[id_patente] [smallint] NOT NULL,
 CONSTRAINT [PK_Tipo_Usuario_Patenet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[tipo_usuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Familia]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Familia](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[familia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Familia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patente]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patente](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[patente] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Patente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Familia_Patente]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Familia_Patente](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[id_Familia] [smallint] NULL,
	[id_Patente] [smallint] NULL,
 CONSTRAINT [PK_Familia_Patente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Usuario_Familia]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Usuario_Familia](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[id_tipoUsuario] [smallint] NOT NULL,
	[id_familia] [smallint] NOT NULL,
 CONSTRAINT [PK_Tipo_Usuario_Familia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Usuario_Perfil_Permisos]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Usuario_Perfil_Permisos]
as
SELECT
    u.id,
    u.email,
    tu.Tipo_Usuario,
    STRING_AGG(f.familia, ',') AS Familias_Asignadas,
	STRING_AGG(p.patente, ',') AS patentesIndividuales_Asignadas,
	STRING_AGG(fp.patente, ',') AS patentesPorFamilia_Asignadas
FROM Usuario u
INNER JOIN Tipo_Usuario tu ON u.id_tipo_usuario = tu.id
LEFT JOIN Tipo_Usuario_Familia tuf ON tu.id = tuf.id_tipousuario
LEFT JOIN Familia f ON tuf.id_familia = f.id
LEFT JOIN Tipo_Usuario_Patente tup ON tu.id = tup.id_patente
LEFT JOIN (
    SELECT fp.id_Familia, STRING_AGG(p.patente, ',') AS patente
    FROM Familia_Patente fp
	LEFT JOIN Patente p ON fp.id_patente = p.id
    GROUP BY fp.id_Familia
) fp ON fp.id_Familia = tuf.id_familia
LEFT JOIN Patente p ON tup.id_patente = p.id
GROUP BY u.id, u.email, tu.Tipo_Usuario;
GO
/****** Object:  Table [dbo].[Antiparasitario]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Antiparasitario](
	[id] [smallint] NOT NULL,
	[Antiparasitario] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Antiparasitario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[id] [numeric](18, 0) NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[id_Patente] [smallint] NOT NULL,
	[id_Tipo_Bitacora_Msj] [smallint] NOT NULL,
	[bTable] [varchar](50) NULL,
	[Description] [varchar](200) NULL,
	[AUD_FechaCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Castrado]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Castrado](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[Castrado] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Castrado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria_Producto]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_Producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoriaProducto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Categoria_Producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[id_Provincia] [smallint] NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[DNI] [varchar](20) NOT NULL,
	[Calle] [varchar](100) NULL,
	[Numero] [varchar](10) NULL,
	[Piso] [varchar](10) NULL,
	[CP] [varchar](10) NULL,
	[Id_Ciudad] [smallint] NOT NULL,
	[Id_Provincia] [smallint] NOT NULL,
	[Id_Pais] [smallint] NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[Telefono] [varchar](20) NULL,
	[AUD_FechaCreate] [datetime] NOT NULL,
	[AUD_FechaModify] [datetime] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente_Mascota]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente_Mascota](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Cliente] [int] NOT NULL,
	[id_Mascota] [int] NOT NULL,
	[AUD_FechaCreate] [datetime] NOT NULL,
	[AUD_FechaModify] [datetime] NULL,
 CONSTRAINT [PK_Cliente_Mascota] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente_RedSocial]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente_RedSocial](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Cliente] [int] NOT NULL,
	[id_TipoRedSocial] [smallint] NOT NULL,
	[UsuarioRedSocial] [varchar](100) NULL,
 CONSTRAINT [PK_Cliente_RedSocial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta_profesional]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta_profesional](
	[id] [int] NOT NULL,
	[id_veterinaria_profesional] [int] NOT NULL,
	[id_cliente_mascota] [int] NOT NULL,
	[id_tipo_consulta] [smallint] NOT NULL,
	[id_estado_consulta] [smallint] NOT NULL,
	[id_profesional_tarifa] [int] NOT NULL,
	[id_pago_consulta] [int] NOT NULL,
	[fecha_atencion_inicio] [datetime] NOT NULL,
	[fecha_atencion_fin] [datetime] NOT NULL,
	[motivo_consulta_abrev] [varchar](1000) NULL,
	[AUD_FechaCreate] [datetime] NOT NULL,
	[AUD_FechaModify] [datetime] NULL,
 CONSTRAINT [PK_CONSULTA_PROFESIONAL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[id] [int] NOT NULL,
	[id_ConsultaProfesional] [int] NOT NULL,
	[DetalleDiagnostico] [varchar](2000) NULL,
	[AUD_FechaCreacion] [datetime] NOT NULL,
	[AUD_FechaModify] [datetime] NULL,
 CONSTRAINT [PK_Diagnostico] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especie]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especie](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[Especie] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Especie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_Consulta]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Consulta](
	[id] [smallint] NOT NULL,
	[estado_consulta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado_Consulta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mascota]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascota](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[id_Cliente] [int] NOT NULL,
	[id_Especie] [smallint] NOT NULL,
	[id_Raza] [smallint] NOT NULL,
	[id_Sexo] [smallint] NOT NULL,
	[Id_Castrado] [smallint] NOT NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Fecha_Fallecimiento] [date] NULL,
	[QuieroRecibirRecordatorios] [varchar](1) NULL,
	[AUD_FechaCreate] [datetime] NOT NULL,
	[AUD_FechaModify] [datetime] NULL,
 CONSTRAINT [PK_Mascota] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mascota_Antiparasitario]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascota_Antiparasitario](
	[id] [int] NOT NULL,
	[id_Mascota] [int] NOT NULL,
	[id_Antiparasitario] [smallint] NOT NULL,
	[peso_Mascota] [decimal](10, 3) NULL,
	[fecha_Colocacion] [datetime] NULL,
 CONSTRAINT [PK_Mascota_Antiparasitario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mascota_Vacuna]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascota_Vacuna](
	[id] [int] NOT NULL,
	[id_Mascota] [int] NOT NULL,
	[id_Vacuna] [int] NOT NULL,
	[peso_Mascota] [decimal](10, 3) NULL,
	[Marca_Serie] [varchar](100) NULL,
	[Fecha_Colocacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Mascota_Vacuna] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago_Consulta]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago_Consulta](
	[id] [int] NOT NULL,
	[id_consulta_profesional] [int] NOT NULL,
	[fecha_pago] [datetime] NULL,
 CONSTRAINT [PK_Pago_Consulta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id] [int] NOT NULL,
	[id_Categoria_Producto] [smallint] NOT NULL,
	[Codigo_Producto] [varchar](200) NOT NULL,
	[DescripcionProducto] [varchar](200) NULL,
	[id_Veterinaria] [smallint] NOT NULL,
	[activo] [smallint] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesional]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesional](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[DNI] [varchar](20) NOT NULL,
	[Matricula] [varchar](20) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[AUD_FechaCreate] [datetime] NOT NULL,
	[AUD_FechaModify] [datetime] NULL,
 CONSTRAINT [PK_Profesional] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesional_Tarifa]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesional_Tarifa](
	[id] [int] NOT NULL,
	[id_veterinaria_profesional] [int] NOT NULL,
	[tarifa] [decimal](10, 3) NULL,
	[vigencia_desde] [datetime] NOT NULL,
	[vigencia_hasta] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[id] [smallint] NOT NULL,
	[Id_pais] [smallint] NOT NULL,
	[Provincia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raza]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raza](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[Raza] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Raza] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recordatorio_Mascota]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recordatorio_Mascota](
	[id] [int] NOT NULL,
	[id_Veterinaria] [smallint] NOT NULL,
	[id_Cliente_Mascota] [int] NOT NULL,
	[FechaRecordatorioEnviado] [datetime] NOT NULL,
	[Motivo] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Recordatorio_Mascota] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[Sexo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Bitacora_Msj]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Bitacora_Msj](
	[id] [smallint] NOT NULL,
	[Tipo_Bitacora_Msj] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Bitacora_Msj] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Consulta]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Consulta](
	[id] [smallint] NOT NULL,
	[tipo_consulta] [varchar](100) NULL,
 CONSTRAINT [PK_Tipo_Consulta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoRedSocial]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRedSocial](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[RedSocial] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoRedSocial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacuna]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacuna](
	[id] [smallint] NOT NULL,
	[vacuna] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Vacuna] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veterinaria]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veterinaria](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [varchar](100) NOT NULL,
	[CUIT] [varchar](20) NOT NULL,
	[Calle] [varchar](100) NOT NULL,
	[Numero] [varchar](10) NOT NULL,
	[Piso] [varchar](10) NULL,
	[CP] [varchar](10) NOT NULL,
	[id_Ciudad] [smallint] NOT NULL,
	[id_Provincia] [smallint] NOT NULL,
	[id_Pais] [smallint] NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[Telefono_Part] [varchar](20) NOT NULL,
	[Celular] [varchar](20) NULL,
	[Activo] [varchar](1) NOT NULL,
	[AUD_FechaCreate] [datetime] NOT NULL,
	[AUD_FechaModify] [datetime] NULL,
 CONSTRAINT [PK_Veterinaria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veterinaria_Horario]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veterinaria_Horario](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Id_Veterinaria] [smallint] NOT NULL,
	[Dias] [varchar](50) NOT NULL,
	[HorarioApertura] [varchar](50) NOT NULL,
	[HorarioCierre] [varchar](50) NULL,
 CONSTRAINT [PK_Veterinaria_Horario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veterinaria_Profesional]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veterinaria_Profesional](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Veterinaria] [smallint] NOT NULL,
	[id_Profesional] [int] NOT NULL,
	[FechaSolicitudEnviada] [datetime] NOT NULL,
	[FechaSolicitudAprobada] [datetime] NULL,
	[FechaBaja] [datetime] NULL,
	[Activo] [varchar](1) NOT NULL,
	[AUD_FechaCreate] [datetime] NOT NULL,
	[AUD_FechaModify] [datetime] NULL,
 CONSTRAINT [PK_Veterinaria_Profesional] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veterinaria_RedSocial]    Script Date: 10/8/2023 11:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veterinaria_RedSocial](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_veterinaria] [smallint] NOT NULL,
	[id_TipoRedSocial] [smallint] NOT NULL,
	[UsuarioRedSocial] [varchar](100) NULL,
 CONSTRAINT [PK_Veterinaria_RedSocial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria_Producto] ON 

INSERT [dbo].[Categoria_Producto] ([id], [categoriaProducto]) VALUES (1, N'Comida Perros')
INSERT [dbo].[Categoria_Producto] ([id], [categoriaProducto]) VALUES (2, N'Comida Gatos')
INSERT [dbo].[Categoria_Producto] ([id], [categoriaProducto]) VALUES (3, N'Pipetas')
INSERT [dbo].[Categoria_Producto] ([id], [categoriaProducto]) VALUES (4, N'Golosinas')
SET IDENTITY_INSERT [dbo].[Categoria_Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Familia] ON 

INSERT [dbo].[Familia] ([id], [familia]) VALUES (1, N'SEGURIDAD')
SET IDENTITY_INSERT [dbo].[Familia] OFF
GO
SET IDENTITY_INSERT [dbo].[Familia_Patente] ON 

INSERT [dbo].[Familia_Patente] ([id], [id_Familia], [id_Patente]) VALUES (1, 1, 1)
INSERT [dbo].[Familia_Patente] ([id], [id_Familia], [id_Patente]) VALUES (2, 1, 2)
INSERT [dbo].[Familia_Patente] ([id], [id_Familia], [id_Patente]) VALUES (3, 1, 3)
INSERT [dbo].[Familia_Patente] ([id], [id_Familia], [id_Patente]) VALUES (4, 1, 4)
INSERT [dbo].[Familia_Patente] ([id], [id_Familia], [id_Patente]) VALUES (5, 1, 5)
SET IDENTITY_INSERT [dbo].[Familia_Patente] OFF
GO
SET IDENTITY_INSERT [dbo].[Patente] ON 

INSERT [dbo].[Patente] ([id], [patente]) VALUES (1, N'Backup')
INSERT [dbo].[Patente] ([id], [patente]) VALUES (2, N'Restore')
INSERT [dbo].[Patente] ([id], [patente]) VALUES (3, N'Usuarios')
INSERT [dbo].[Patente] ([id], [patente]) VALUES (4, N'Permisos')
INSERT [dbo].[Patente] ([id], [patente]) VALUES (5, N'Logs')
SET IDENTITY_INSERT [dbo].[Patente] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] ON 

INSERT [dbo].[Tipo_Usuario] ([id], [tipo_usuario]) VALUES (1, N'CLIENTE')
INSERT [dbo].[Tipo_Usuario] ([id], [tipo_usuario]) VALUES (2, N'PROFESIONAL')
INSERT [dbo].[Tipo_Usuario] ([id], [tipo_usuario]) VALUES (3, N'VETERINARIO')
INSERT [dbo].[Tipo_Usuario] ([id], [tipo_usuario]) VALUES (4, N'ADMINISTRADOR')
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo_Usuario_Familia] ON 

INSERT [dbo].[Tipo_Usuario_Familia] ([id], [id_tipoUsuario], [id_familia]) VALUES (1, 4, 1)
SET IDENTITY_INSERT [dbo].[Tipo_Usuario_Familia] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id], [email], [id_tipo_usuario], [fecha_creacion], [borrado], [fecha_Borrado]) VALUES (1, N'gallardo747@gmail.com                                                                               ', 1, CAST(N'2023-08-10' AS Date), NULL, NULL)
INSERT [dbo].[Usuario] ([id], [email], [id_tipo_usuario], [fecha_creacion], [borrado], [fecha_Borrado]) VALUES (2, N'prueba@example.com                                                                                  ', 2, CAST(N'2023-08-10' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
USE [master]
GO
ALTER DATABASE [VETLY] SET  READ_WRITE 
GO
