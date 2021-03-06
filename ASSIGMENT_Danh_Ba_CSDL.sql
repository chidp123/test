USE [ASSIGRMENT_WINFORM]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/31/2021 1:34:55 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHBA]    Script Date: 7/31/2021 1:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHBA](
	[IdDanhBa] [uniqueidentifier] NOT NULL,
	[SDT1] [int] NULL,
	[SDT2] [int] NULL,
	[Email] [nvarchar](30) NULL,
	[Note] [nvarchar](30) NULL,
	[IdNguoi] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DANHBA] PRIMARY KEY CLUSTERED 
(
	[IdDanhBa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoi]    Script Date: 7/31/2021 1:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoi](
	[IdNguoi] [uniqueidentifier] NOT NULL,
	[Ho] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ten] [nvarchar](30) NULL,
	[NamSinh] [int] NOT NULL,
	[GioiTinh] [int] NOT NULL,
 CONSTRAINT [PK_Nguoi] PRIMARY KEY CLUSTERED 
(
	[IdNguoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DANHBA]  WITH CHECK ADD  CONSTRAINT [FK_DANHBA_Nguoi_IdNguoi] FOREIGN KEY([IdNguoi])
REFERENCES [dbo].[Nguoi] ([IdNguoi])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DANHBA] CHECK CONSTRAINT [FK_DANHBA_Nguoi_IdNguoi]
GO
