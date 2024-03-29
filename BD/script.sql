USE [master]
GO
/****** Object:  Database [Prueba]    Script Date: 1/06/2023 5:49:04 p. m. ******/
CREATE DATABASE [Prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Prueba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Prueba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Prueba] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prueba] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prueba] SET RECOVERY FULL 
GO
ALTER DATABASE [Prueba] SET  MULTI_USER 
GO
ALTER DATABASE [Prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prueba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Prueba] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Prueba', N'ON'
GO
ALTER DATABASE [Prueba] SET QUERY_STORE = ON
GO
ALTER DATABASE [Prueba] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Prueba]
GO
/****** Object:  User [VALENTINA]    Script Date: 1/06/2023 5:49:04 p. m. ******/
CREATE USER [VALENTINA] FOR LOGIN [VALENTINA] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [VALENTINA]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 1/06/2023 5:49:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[ImagenUrl] [nvarchar](max) NOT NULL,
	[Categoria] [nvarchar](50) NOT NULL,
	[Estado] [nvarchar](50) NULL,
	[Cantidad] [int] NULL,
	[Precio] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (1, N'Comedor', N'Comedor de cuatro puestos en mármol', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.falabella.com.co%2Ffalabella-co%2Fproduct%2F880350144%2FSofa-en-L-240-cm-Oregon-Tela&psig=AOvVaw0xMUka4JxU1Mp-wNvFImVh&ust=1685643576581000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNjVwuaVoP8CFQAAAAAdAAAAABAH', N'Hogar', N'Nuevo', 4, 25.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (3, N'Sofá cama', N'Sofá cama reclinable 25x12', N'', N'Hogar', N'Usado', 2, 50.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (4, N'Juego de sala', N'Juego de sala con un mueble grande y dos pequeños', N'', N'Hogar', N'Usado', 2, 50.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (5, N'Juego de sala', N'Juego de sala con un mueble grande y dos pequeños', N'', N'Hogar', N'Usado', 2, 50.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (6, N'Cama', N'Cama con colchón de espuma', N'', N'Hogar', N'Nuevo', 4, 30.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (7, N'Lámpara led', N'Lámpara led con sensor', N'', N'Hogar', N'Nuevo', 5, 60)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (8, N'Organizador', N'Organizador para el hogar', N'', N'Hogar', N'Usado', 30, 21.87)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (9, N'Escritorio', N'Escritorio estilo nordico', N'', N'Hogar', N'Usado', 2, 10.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (10, N'Silla gamer', N'Silla gamer reclinable', N'', N'Hogar', N'Usado', 13, 20.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (11, N'Clóset', N'Clóset en madera', N'', N'Hogar', N'Nuevo', 4, 70.1)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (12, N'Iphone 12', N'iPhone 12 128gb ', N'', N'Tecnología', N'Usado', 2, 50.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (13, N'Asus VivoBook', N'Laptop Asus VivoBook 8RAM 512SSD', N'', N'Tecnología', N'Nuevo', 4, 130.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (14, N'Cámara CANON', N'Canon con lente 33mm', N'', N'Tecnología', N'Nuevo', 5, 260)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (15, N'Xiaomi Redmi 11', N'XR11 256GB', N'', N'Tecnología', N'Usado', 30, 21.87)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (16, N'Audifonos inalambricos', N'Largo alcance', N'', N'Tecnología', N'Usado', 2, 30.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (17, N'iPad Pro', N'256Gb', N'', N'Tecnología', N'Usado', 13, 80.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (18, N'Reloj inteligente', N'Reloj digital', N'', N'Tecnología', N'Nuevo', 4, 120.1)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (19, N'Cable para iPhone', N'Cable 2 metros', N'', N'Tecnología', N'Usado', 2, 30.21)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (20, N'iPad Air', N'Espacio 256Gb', N'', N'Tecnología', N'Usado', 13, 60.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (21, N'Macbook Pro', N'Laptop ultradelgada', N'', N'Tecnología', N'Nuevo', 4, 90.8)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (22, N'Nevera', N'Nevera LG con tablero digital', N'', N'Electrodomestricos', N'Usado', 2, 50.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (23, N'Lavadora', N'Lavadora HACEB con varios moods de lavado', N'', N'Electrodomesticos', N'Nuevo', 4, 130.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (24, N'Estufa', N'Estufa en vidrio', N'', N'Electrodomesticos', N'Nuevo', 5, 260)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (25, N'Horno', N'Horno con potencia de 360C', N'', N'Electrodomesticos', N'Usado', 30, 21.87)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (26, N'Secadora', N'Secadora Samsung', N'', N'Electrodomesticos', N'Usado', 2, 30.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (27, N'Airfryer', N'Olla para hacer alimentos más saludables', N'', N'Electrodomesticos', N'Usado', 13, 80.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (28, N'Aspiradora', N'Aspiradora con tubo de 2 metros', N'', N'Electrodomesticos', N'Nuevo', 4, 120.1)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (29, N'Microondas', N'Buen calentamiento de tus productos', N'', N'Electrodomesticos', N'Usado', 2, 30.21)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (30, N'Licuadora', N'Color negro', N'', N'Electrodomesticos', N'Usado', 13, 60.99)
INSERT [dbo].[Productos] ([Id], [Nombre], [Descripcion], [ImagenUrl], [Categoria], [Estado], [Cantidad], [Precio]) VALUES (31, N'Wafflera', N'Tamaño medio', N'', N'Electrodomesticos', N'Nuevo', 4, 90.8)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
USE [master]
GO
ALTER DATABASE [Prueba] SET  READ_WRITE 
GO
