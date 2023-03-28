USE [master]
GO
/****** Object:  Database [QLBanHang]    Script Date: 28/03/2023 14:31:00 ******/
CREATE DATABASE [QLBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLBanHang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBanHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLBanHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLBanHang]
GO
/****** Object:  Table [dbo].[T1_SanPham]    Script Date: 28/03/2023 14:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T1_SanPham](
	[MaSanPham] [nchar](10) NOT NULL,
	[MaHangSanXuat] [nchar](10) NULL,
	[TenSanPham] [nvarchar](20) NULL,
	[SoLuong] [int] NULL,
	[MauSac] [nvarchar](20) NULL,
	[GiaBan] [money] NULL,
	[DonViTinh] [nchar](10) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [T1_SanPham_PK] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T2_HangSanXuat]    Script Date: 28/03/2023 14:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T2_HangSanXuat](
	[MaHangSanXuat] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](30) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](30) NULL,
 CONSTRAINT [T2_HangSanXuat_PK] PRIMARY KEY CLUSTERED 
(
	[MaHangSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T3_NhanVien]    Script Date: 28/03/2023 14:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T3_NhanVien](
	[MaNhanVien] [nchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](20) NULL,
	[GioiTinh] [nchar](10) NULL,
	[DiaChi] [nvarchar](30) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](30) NULL,
	[Phong] [nvarchar](30) NULL,
 CONSTRAINT [T3_NhanVien_PK] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4_Nhap]    Script Date: 28/03/2023 14:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4_Nhap](
	[SoHoaDonNhap] [nchar](10) NOT NULL,
	[MaSanPham] [nchar](10) NULL,
	[MaNhanVien] [nchar](10) NULL,
	[NgayNhap] [date] NULL,
	[SoLuongNhap] [int] NULL,
	[DonGiaNhap] [money] NULL,
 CONSTRAINT [T4_Nhap_PK] PRIMARY KEY CLUSTERED 
(
	[SoHoaDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T5_Xuat]    Script Date: 28/03/2023 14:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T5_Xuat](
	[SoHoaDonXuat] [nchar](10) NOT NULL,
	[MaSanPham] [nchar](10) NULL,
	[MaNhanVien] [nchar](10) NULL,
	[NgayXuat] [date] NULL,
	[SoLuongXuat] [int] NULL,
 CONSTRAINT [T5_Xuat_PK] PRIMARY KEY CLUSTERED 
(
	[SoHoaDonXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[T1_SanPham] ([MaSanPham], [MaHangSanXuat], [TenSanPham], [SoLuong], [MauSac], [GiaBan], [DonViTinh], [MoTa]) VALUES (N'SP01      ', N'H02       ', N'F1 Plus', 100, N'Xam', 7000000,0000, N'Chiec     ', N'Hang can cao cap')
INSERT [dbo].[T1_SanPham] ([MaSanPham], [MaHangSanXuat], [TenSanPham], [SoLuong], [MauSac], [GiaBan], [DonViTinh], [MoTa]) VALUES (N'SP02      ', N'H01       ', N'Galaxy Note 11', 50, N'Do', 19000000,0000, N'Chiec     ', N'Hang cao cap')
INSERT [dbo].[T1_SanPham] ([MaSanPham], [MaHangSanXuat], [TenSanPham], [SoLuong], [MauSac], [GiaBan], [DonViTinh], [MoTa]) VALUES (N'SP03      ', N'H02       ', N'F3 lite', 200, N'Nau', 300000,0000, N'Chiec     ', N'Hang pho thong')
INSERT [dbo].[T1_SanPham] ([MaSanPham], [MaHangSanXuat], [TenSanPham], [SoLuong], [MauSac], [GiaBan], [DonViTinh], [MoTa]) VALUES (N'SP04      ', N'H03       ', N'Vjoy3', 200, N'Xam', 1500000,0000, N'Chiec     ', N'Hang pho thong')
INSERT [dbo].[T1_SanPham] ([MaSanPham], [MaHangSanXuat], [TenSanPham], [SoLuong], [MauSac], [GiaBan], [DonViTinh], [MoTa]) VALUES (N'SP05      ', N'H01       ', N'Galaxy V21', 500, N'Nau', 8000000,0000, N'Chiec     ', N'Hang can cao cap')
GO
INSERT [dbo].[T2_HangSanXuat] ([MaHangSanXuat], [TenHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'H01       ', N'Samsung', N'Korea', N'011-08271717', N'ss@gmail.com.kr')
INSERT [dbo].[T2_HangSanXuat] ([MaHangSanXuat], [TenHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'H02       ', N'OPPO', N'China', N'081-08626262', N'oppo@gmail.com.cn')
INSERT [dbo].[T2_HangSanXuat] ([MaHangSanXuat], [TenHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'H03       ', N'Vinfone', N'Viet Nam', N'084-098262626', N'vf@gmail.com.vn')
GO
INSERT [dbo].[T3_NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [Phong]) VALUES (N'NV01      ', N'Nguyen Thi Thu', N'Nu        ', N'Ha Noi', N'0982626521', N'thu@gmail.com', N'Ke toan')
INSERT [dbo].[T3_NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [Phong]) VALUES (N'NV02      ', N'Le Van Nam', N'Nam       ', N'Bac Ninh', N'0972525252', N'nam@gmail.com', N'Vat tu')
INSERT [dbo].[T3_NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [Phong]) VALUES (N'NV03      ', N'Tran Hoa Binh', N'Nu        ', N'Ha Noi', N'0328388388', N'hb@gmail.com', N'Ke toan')
GO
INSERT [dbo].[T4_Nhap] ([SoHoaDonNhap], [MaSanPham], [MaNhanVien], [NgayNhap], [SoLuongNhap], [DonGiaNhap]) VALUES (N'N01       ', N'SP02      ', N'NV01      ', CAST(N'2019-02-05' AS Date), 10, 17000000,0000)
INSERT [dbo].[T4_Nhap] ([SoHoaDonNhap], [MaSanPham], [MaNhanVien], [NgayNhap], [SoLuongNhap], [DonGiaNhap]) VALUES (N'N02       ', N'SP01      ', N'NV02      ', CAST(N'2020-04-07' AS Date), 30, 6000000,0000)
INSERT [dbo].[T4_Nhap] ([SoHoaDonNhap], [MaSanPham], [MaNhanVien], [NgayNhap], [SoLuongNhap], [DonGiaNhap]) VALUES (N'N03       ', N'SP04      ', N'NV02      ', CAST(N'2020-05-17' AS Date), 20, 1200000,0000)
INSERT [dbo].[T4_Nhap] ([SoHoaDonNhap], [MaSanPham], [MaNhanVien], [NgayNhap], [SoLuongNhap], [DonGiaNhap]) VALUES (N'N04       ', N'SP01      ', N'NV03      ', CAST(N'2020-03-22' AS Date), 10, 6200000,0000)
INSERT [dbo].[T4_Nhap] ([SoHoaDonNhap], [MaSanPham], [MaNhanVien], [NgayNhap], [SoLuongNhap], [DonGiaNhap]) VALUES (N'N05       ', N'SP05      ', N'NV01      ', CAST(N'2020-07-07' AS Date), 20, 7000000,0000)
GO
INSERT [dbo].[T5_Xuat] ([SoHoaDonXuat], [MaSanPham], [MaNhanVien], [NgayXuat], [SoLuongXuat]) VALUES (N'X01       ', N'SP03      ', N'NV02      ', CAST(N'2020-06-14' AS Date), 5)
INSERT [dbo].[T5_Xuat] ([SoHoaDonXuat], [MaSanPham], [MaNhanVien], [NgayXuat], [SoLuongXuat]) VALUES (N'X02       ', N'SP01      ', N'NV03      ', CAST(N'2019-03-05' AS Date), 3)
INSERT [dbo].[T5_Xuat] ([SoHoaDonXuat], [MaSanPham], [MaNhanVien], [NgayXuat], [SoLuongXuat]) VALUES (N'X03       ', N'SP02      ', N'NV01      ', CAST(N'2020-12-12' AS Date), 1)
INSERT [dbo].[T5_Xuat] ([SoHoaDonXuat], [MaSanPham], [MaNhanVien], [NgayXuat], [SoLuongXuat]) VALUES (N'X04       ', N'SP03      ', N'NV02      ', CAST(N'2020-06-02' AS Date), 2)
INSERT [dbo].[T5_Xuat] ([SoHoaDonXuat], [MaSanPham], [MaNhanVien], [NgayXuat], [SoLuongXuat]) VALUES (N'X05       ', N'SP05      ', N'NV01      ', CAST(N'2020-05-18' AS Date), 1)
GO
ALTER TABLE [dbo].[T1_SanPham]  WITH CHECK ADD  CONSTRAINT [T1_SanPham_FK] FOREIGN KEY([MaHangSanXuat])
REFERENCES [dbo].[T2_HangSanXuat] ([MaHangSanXuat])
GO
ALTER TABLE [dbo].[T1_SanPham] CHECK CONSTRAINT [T1_SanPham_FK]
GO
ALTER TABLE [dbo].[T4_Nhap]  WITH CHECK ADD  CONSTRAINT [T4_Nhap_FK] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[T1_SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[T4_Nhap] CHECK CONSTRAINT [T4_Nhap_FK]
GO
ALTER TABLE [dbo].[T4_Nhap]  WITH CHECK ADD  CONSTRAINT [T4_Nhap_FK_1] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[T3_NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[T4_Nhap] CHECK CONSTRAINT [T4_Nhap_FK_1]
GO
ALTER TABLE [dbo].[T5_Xuat]  WITH CHECK ADD  CONSTRAINT [T5_Xuat_FK] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[T1_SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[T5_Xuat] CHECK CONSTRAINT [T5_Xuat_FK]
GO
ALTER TABLE [dbo].[T5_Xuat]  WITH CHECK ADD  CONSTRAINT [T5_Xuat_FK_1] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[T3_NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[T5_Xuat] CHECK CONSTRAINT [T5_Xuat_FK_1]
GO
USE [master]
GO
ALTER DATABASE [QLBanHang] SET  READ_WRITE 
GO
