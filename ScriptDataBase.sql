USE [master]
GO
/****** Object:  Database [Pedidos]    Script Date: 4/4/2023 7:23:46 PM ******/
CREATE DATABASE [Pedidos]
 CONTAINMENT = NONE

ALTER DATABASE [Pedidos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pedidos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pedidos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pedidos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pedidos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pedidos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pedidos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pedidos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Pedidos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pedidos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pedidos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pedidos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pedidos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pedidos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pedidos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pedidos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pedidos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Pedidos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pedidos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pedidos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pedidos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pedidos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pedidos] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Pedidos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pedidos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pedidos] SET  MULTI_USER 
GO
ALTER DATABASE [Pedidos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pedidos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pedidos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pedidos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pedidos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pedidos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Pedidos] SET QUERY_STORE = OFF
GO
USE [Pedidos]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/4/2023 7:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoProductos]    Script Date: 4/4/2023 7:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoProductos](
	[PedidoProductoId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductoId] [bigint] NOT NULL,
	[PedidoId] [bigint] NOT NULL,
 CONSTRAINT [PK_PedidoProductos] PRIMARY KEY CLUSTERED 
(
	[PedidoProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 4/4/2023 7:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[PedidoId] [bigint] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[PedidoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 4/4/2023 7:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoId] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Precio] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230404085500_Initial', N'6.0.0')
GO
SET IDENTITY_INSERT [dbo].[PedidoProductos] ON 

INSERT [dbo].[PedidoProductos] ([PedidoProductoId], [ProductoId], [PedidoId]) VALUES (3, 3, 2)
INSERT [dbo].[PedidoProductos] ([PedidoProductoId], [ProductoId], [PedidoId]) VALUES (4, 4, 2)
INSERT [dbo].[PedidoProductos] ([PedidoProductoId], [ProductoId], [PedidoId]) VALUES (5, 5, 3)
INSERT [dbo].[PedidoProductos] ([PedidoProductoId], [ProductoId], [PedidoId]) VALUES (6, 6, 3)
SET IDENTITY_INSERT [dbo].[PedidoProductos] OFF
GO
SET IDENTITY_INSERT [dbo].[Pedidos] ON 

INSERT [dbo].[Pedidos] ([PedidoId], [Fecha]) VALUES (2, CAST(N'2022-05-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Pedidos] ([PedidoId], [Fecha]) VALUES (3, CAST(N'2021-05-02T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio]) VALUES (1, N'Asiento', CAST(275.00 AS Decimal(8, 2)))
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio]) VALUES (2, N'Chaqueta', CAST(48.95 AS Decimal(8, 2)))
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio]) VALUES (3, N'Pelota', CAST(19.50 AS Decimal(8, 2)))
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio]) VALUES (4, N'Banderas de campo', CAST(34.95 AS Decimal(8, 2)))
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio]) VALUES (5, N'Estadio', CAST(79500.00 AS Decimal(8, 2)))
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio]) VALUES (6, N'Gorra', CAST(16.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
/****** Object:  Index [IX_PedidoProductos_PedidoId]    Script Date: 4/4/2023 7:23:46 PM ******/
CREATE NONCLUSTERED INDEX [IX_PedidoProductos_PedidoId] ON [dbo].[PedidoProductos]
(
	[PedidoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedidoProductos_ProductoId]    Script Date: 4/4/2023 7:23:46 PM ******/
CREATE NONCLUSTERED INDEX [IX_PedidoProductos_ProductoId] ON [dbo].[PedidoProductos]
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PedidoProductos]  WITH CHECK ADD  CONSTRAINT [FK_PedidoProductos_Pedidos_PedidoId] FOREIGN KEY([PedidoId])
REFERENCES [dbo].[Pedidos] ([PedidoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PedidoProductos] CHECK CONSTRAINT [FK_PedidoProductos_Pedidos_PedidoId]
GO
ALTER TABLE [dbo].[PedidoProductos]  WITH CHECK ADD  CONSTRAINT [FK_PedidoProductos_Productos_ProductoId] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([ProductoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PedidoProductos] CHECK CONSTRAINT [FK_PedidoProductos_Productos_ProductoId]
GO
USE [master]
GO
ALTER DATABASE [Pedidos] SET  READ_WRITE 
GO
