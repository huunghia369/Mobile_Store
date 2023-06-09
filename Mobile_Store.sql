USE [master]
GO
/****** Object:  Database [Mobile_Store]    Script Date: 3/27/2023 12:05:37 PM ******/
CREATE DATABASE [Mobile_Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bán Điện Thoại', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Bán Điện Thoại.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bán Điện Thoại_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Bán Điện Thoại_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Mobile_Store] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mobile_Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mobile_Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mobile_Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mobile_Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mobile_Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mobile_Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mobile_Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mobile_Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mobile_Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mobile_Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mobile_Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mobile_Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mobile_Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mobile_Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mobile_Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mobile_Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mobile_Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mobile_Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mobile_Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mobile_Store] SET RECOVERY FULL 
GO
ALTER DATABASE [Mobile_Store] SET  MULTI_USER 
GO
ALTER DATABASE [Mobile_Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mobile_Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mobile_Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mobile_Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mobile_Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mobile_Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Mobile_Store', N'ON'
GO
ALTER DATABASE [Mobile_Store] SET QUERY_STORE = OFF
GO
USE [Mobile_Store]
GO
/****** Object:  Table [dbo].[CAP_NHAT_GIA]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAP_NHAT_GIA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MASP] [nvarchar](10) NOT NULL,
	[MANV] [nvarchar](10) NOT NULL,
	[NGAYAD] [date] NOT NULL,
	[GIASP] [money] NOT NULL,
	[TRANGTHAI] [int] NOT NULL,
 CONSTRAINT [PK_CAP_NHAT_GIA] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[MANV] ASC,
	[NGAYAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_HOA_DON]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOA_DON](
	[MASP] [nvarchar](10) NOT NULL,
	[SOHD] [int] NOT NULL,
	[DONGIA] [int] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[SALE] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CT_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[SOHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_KHUYEN_MAI]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_KHUYEN_MAI](
	[MASP] [nvarchar](10) NOT NULL,
	[MAKM] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_CT_KHUYEN_MAI] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOI_TRA]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOI_TRA](
	[MASP] [nvarchar](10) NOT NULL,
	[SOSERI] [nvarchar](50) NOT NULL,
	[LYDO] [nvarchar](100) NULL,
	[NGAYHETHAN] [date] NOT NULL,
	[TRANGTHAI] [int] NULL,
 CONSTRAINT [PK_DOI_TRA] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[SOSERI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EDIT]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDIT](
	[MAPN] [int] NOT NULL,
	[MANV] [nvarchar](10) NOT NULL,
	[NGAY_EDIT] [date] NOT NULL,
 CONSTRAINT [PK_EDIT] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC,
	[MANV] ASC,
	[NGAY_EDIT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON](
	[SOHD] [int] IDENTITY(1,1) NOT NULL,
	[NGAYLAP] [date] NULL,
	[TONGTIEN] [int] NULL,
	[MANV] [nvarchar](10) NULL,
	[MAKH] [nvarchar](10) NULL,
	[PHIVANCHUYEN] [int] NULL,
	[TONGGIAMGIA] [int] NULL,
	[THANHTIEN] [int] NULL,
	[MAGGKH] [nvarchar](50) NULL,
	[TRANGTHAI] [int] NULL,
 CONSTRAINT [PK_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[SOHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON_TMP]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON_TMP](
	[MAHDTMP] [int] IDENTITY(1,1) NOT NULL,
	[HOTENKH] [nvarchar](100) NULL,
	[SDT] [nvarchar](10) NULL,
	[MANV] [nvarchar](10) NULL,
	[NGAYLAPHD] [date] NULL,
	[TONGTIENHANG] [int] NULL,
	[PHIVANCHUYEN] [int] NULL,
	[GIAMGIA] [int] NULL,
	[THANHTIEN] [int] NULL,
	[GHICHU] [nvarchar](100) NULL,
	[TRANGTHAI] [int] NULL,
 CONSTRAINT [PK_HOA_DON_TMP] PRIMARY KEY CLUSTERED 
(
	[MAHDTMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMEI]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMEI](
	[SOSERI] [nvarchar](50) NOT NULL,
	[MASP] [nvarchar](10) NOT NULL,
	[TRANGTHAI] [int] NOT NULL,
 CONSTRAINT [PK_EMEI] PRIMARY KEY CLUSTERED 
(
	[SOSERI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MAKH] [nvarchar](10) NOT NULL,
	[HOKH] [nvarchar](30) NULL,
	[TENKH] [nvarchar](10) NOT NULL,
	[SDTKH] [nvarchar](10) NULL,
	[CMNDKH] [nvarchar](10) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](3) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[NGAYTAO] [date] NULL,
	[TRANGTHAI] [int] NOT NULL,
	[GHICHU] [nvarchar](300) NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_CMNDKH] UNIQUE NONCLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_SDTKH] UNIQUE NONCLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYEN_MAI]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYEN_MAI](
	[MAKM] [nvarchar](10) NOT NULL,
	[TENKM] [nvarchar](40) NOT NULL,
	[LOAI] [nvarchar](150) NOT NULL,
	[TRANGTHAI] [int] NOT NULL,
	[MUCGG] [int] NOT NULL,
	[NGAYAD] [date] NOT NULL,
	[NGAYHETHAN] [date] NOT NULL,
	[DONVI] [nvarchar](10) NOT NULL,
	[MANV] [nvarchar](10) NULL,
 CONSTRAINT [PK_KHUYEN_MAI] PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHA_CUNG_CAP]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHA_CUNG_CAP](
	[MANCC] [int] IDENTITY(1,1) NOT NULL,
	[TENNCC] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_NHA_CUNG_CAP] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[MANV] [nvarchar](10) NOT NULL,
	[TENNV] [nvarchar](70) NOT NULL,
	[CHUCVU] [nvarchar](30) NOT NULL,
	[SDTNV] [nvarchar](10) NOT NULL,
	[CMNDNV] [nvarchar](10) NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[PHAI] [nvarchar](3) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[NGAYLAM] [date] NOT NULL,
	[NGAYNGHI] [date] NULL,
	[HINHANH] [nvarchar](1000) NULL,
	[EMAIL] [nvarchar](100) NOT NULL,
	[TRANGTHAI] [int] NOT NULL,
	[CAPQUYEN] [int] NULL,
	[MANVQL] [nvarchar](10) NULL,
	[GHICHU] [nvarchar](100) NULL,
 CONSTRAINT [PK_NHAN_VIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_BAO_HANH]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_BAO_HANH](
	[SOBH] [nvarchar](10) NOT NULL,
	[NGAYHETHAN] [date] NOT NULL,
	[SOSERI] [nvarchar](50) NOT NULL,
	[MAKH] [nvarchar](10) NULL,
	[TRANGTHAI] [int] NOT NULL,
 CONSTRAINT [PK_PHIEU_BAO_HANH] PRIMARY KEY CLUSTERED 
(
	[SOBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_NHAP]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_NHAP](
	[MAPN] [int] IDENTITY(1,1) NOT NULL,
	[MASP] [nvarchar](10) NOT NULL,
	[GIANHAP] [money] NOT NULL,
	[NGAYNHAP] [date] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[MOTA] [nvarchar](150) NULL,
	[MANV] [nvarchar](10) NULL,
	[MANCC] [int] NULL,
 CONSTRAINT [PK_PHIEU_NHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[MASP] [nvarchar](10) NOT NULL,
	[TENSP] [nvarchar](150) NOT NULL,
	[GIA] [int] NOT NULL,
	[LOAI] [nvarchar](10) NULL,
	[HINHANH] [nvarchar](1000) NULL,
	[XUATXU] [nvarchar](40) NULL,
	[HANG] [nvarchar](40) NULL,
	[ROM] [nvarchar](10) NULL,
	[RAM] [nvarchar](10) NULL,
	[MANHINH] [nvarchar](100) NULL,
	[KICHTHUOC] [nvarchar](100) NULL,
	[CAMERA] [nvarchar](40) NULL,
	[MAUSAC] [nvarchar](100) NULL,
	[HDH] [nvarchar](40) NULL,
	[CPU] [nvarchar](40) NULL,
	[PIN] [nvarchar](10) NULL,
	[MOTASP] [nvarchar](100) NULL,
	[TRANGTHAI] [int] NOT NULL,
 CONSTRAINT [PK_SAN_PHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SO_HUU]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO_HUU](
	[MAKH] [nvarchar](10) NOT NULL,
	[MAKM] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_SO_HUU] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC,
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAI_KHOAN_DN]    Script Date: 3/27/2023 12:05:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAI_KHOAN_DN](
	[MATK] [int] IDENTITY(1,1) NOT NULL,
	[MANV] [nvarchar](10) NOT NULL,
	[TENDN] [varchar](100) NOT NULL,
	[MATKHAU] [varchar](100) NOT NULL,
	[TRANGTHAI] [int] NOT NULL,
	[VAITRO] [nvarchar](100) NULL,
 CONSTRAINT [PK_TAI_KHOAN_DN] PRIMARY KEY CLUSTERED 
(
	[MATK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CT_HOA_DON] ADD  CONSTRAINT [DF_CT_HOA_DON_SHIP]  DEFAULT ((0)) FOR [SALE]
GO
ALTER TABLE [dbo].[DOI_TRA] ADD  CONSTRAINT [DF_DOI_TRA_LYDO]  DEFAULT ((1)) FOR [LYDO]
GO
ALTER TABLE [dbo].[DOI_TRA] ADD  CONSTRAINT [DF_DOI_TRA_TRANGTHAI]  DEFAULT ((1)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[HOA_DON] ADD  CONSTRAINT [DF_HOA_DON_TRANGTHAI]  DEFAULT ((1)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[HOA_DON_TMP] ADD  CONSTRAINT [DF_HOA_DON_TMP_TRANGTHAI]  DEFAULT ((1)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[KHACH_HANG] ADD  CONSTRAINT [DF_Table_1_PHAI]  DEFAULT (N'NAM') FOR [GIOITINH]
GO
ALTER TABLE [dbo].[KHACH_HANG] ADD  CONSTRAINT [DF_KHACH_HANG_DIACHI]  DEFAULT (' ') FOR [DIACHI]
GO
ALTER TABLE [dbo].[KHUYEN_MAI] ADD  CONSTRAINT [DF_KHUYEN_MAI_DONVI]  DEFAULT (N'VND') FOR [DONVI]
GO
ALTER TABLE [dbo].[NHAN_VIEN] ADD  CONSTRAINT [DF_NHAN_VIEN1_PHAI_1]  DEFAULT (N'NAM') FOR [PHAI]
GO
ALTER TABLE [dbo].[NHAN_VIEN] ADD  CONSTRAINT [DF_NHAN_VIEN1_DIACHI_1]  DEFAULT (' ') FOR [DIACHI]
GO
ALTER TABLE [dbo].[NHAN_VIEN] ADD  CONSTRAINT [DF_NHAN_VIEN1_GHICHU_1]  DEFAULT (' ') FOR [GHICHU]
GO
ALTER TABLE [dbo].[PHIEU_BAO_HANH] ADD  CONSTRAINT [DF_PHIEU_BAO_HANH_TRANGTHAI]  DEFAULT ((1)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[SAN_PHAM] ADD  CONSTRAINT [DF_SAN_PHAM_LOAI]  DEFAULT (N'Mới') FOR [LOAI]
GO
ALTER TABLE [dbo].[CAP_NHAT_GIA]  WITH CHECK ADD  CONSTRAINT [FK_CAP_NHAT_GIA_NHAN_VIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHAN_VIEN] ([MANV])
GO
ALTER TABLE [dbo].[CAP_NHAT_GIA] CHECK CONSTRAINT [FK_CAP_NHAT_GIA_NHAN_VIEN]
GO
ALTER TABLE [dbo].[CAP_NHAT_GIA]  WITH CHECK ADD  CONSTRAINT [FK_CAP_NHAT_GIA_SAN_PHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SAN_PHAM] ([MASP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CAP_NHAT_GIA] CHECK CONSTRAINT [FK_CAP_NHAT_GIA_SAN_PHAM]
GO
ALTER TABLE [dbo].[CT_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOA_DON_HOA_DON1] FOREIGN KEY([SOHD])
REFERENCES [dbo].[HOA_DON] ([SOHD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CT_HOA_DON] CHECK CONSTRAINT [FK_CT_HOA_DON_HOA_DON1]
GO
ALTER TABLE [dbo].[CT_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOA_DON_SAN_PHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SAN_PHAM] ([MASP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CT_HOA_DON] CHECK CONSTRAINT [FK_CT_HOA_DON_SAN_PHAM]
GO
ALTER TABLE [dbo].[CT_KHUYEN_MAI]  WITH CHECK ADD  CONSTRAINT [FK_CT_KHUYEN_MAI_KHUYEN_MAI] FOREIGN KEY([MAKM])
REFERENCES [dbo].[KHUYEN_MAI] ([MAKM])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CT_KHUYEN_MAI] CHECK CONSTRAINT [FK_CT_KHUYEN_MAI_KHUYEN_MAI]
GO
ALTER TABLE [dbo].[CT_KHUYEN_MAI]  WITH CHECK ADD  CONSTRAINT [FK_CT_KHUYEN_MAI_SAN_PHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SAN_PHAM] ([MASP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CT_KHUYEN_MAI] CHECK CONSTRAINT [FK_CT_KHUYEN_MAI_SAN_PHAM]
GO
ALTER TABLE [dbo].[DOI_TRA]  WITH CHECK ADD  CONSTRAINT [FK_DOI_TRA_IMEI] FOREIGN KEY([SOSERI])
REFERENCES [dbo].[IMEI] ([SOSERI])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DOI_TRA] CHECK CONSTRAINT [FK_DOI_TRA_IMEI]
GO
ALTER TABLE [dbo].[EDIT]  WITH CHECK ADD  CONSTRAINT [FK_EDIT_NHAN_VIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHAN_VIEN] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EDIT] CHECK CONSTRAINT [FK_EDIT_NHAN_VIEN]
GO
ALTER TABLE [dbo].[EDIT]  WITH CHECK ADD  CONSTRAINT [FK_EDIT_PHIEU_NHAP] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEU_NHAP] ([MAPN])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EDIT] CHECK CONSTRAINT [FK_EDIT_PHIEU_NHAP]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_KHACH_HANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACH_HANG] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_KHACH_HANG]
GO
ALTER TABLE [dbo].[HOA_DON_TMP]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_TMP_NHAN_VIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHAN_VIEN] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HOA_DON_TMP] CHECK CONSTRAINT [FK_HOA_DON_TMP_NHAN_VIEN]
GO
ALTER TABLE [dbo].[IMEI]  WITH CHECK ADD  CONSTRAINT [FK_IMEI_SAN_PHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SAN_PHAM] ([MASP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[IMEI] CHECK CONSTRAINT [FK_IMEI_SAN_PHAM]
GO
ALTER TABLE [dbo].[KHUYEN_MAI]  WITH CHECK ADD  CONSTRAINT [FK_KHUYEN_MAI_NHAN_VIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHAN_VIEN] ([MANV])
GO
ALTER TABLE [dbo].[KHUYEN_MAI] CHECK CONSTRAINT [FK_KHUYEN_MAI_NHAN_VIEN]
GO
ALTER TABLE [dbo].[PHIEU_BAO_HANH]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_BAO_HANH_EMEI] FOREIGN KEY([SOSERI])
REFERENCES [dbo].[IMEI] ([SOSERI])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PHIEU_BAO_HANH] CHECK CONSTRAINT [FK_PHIEU_BAO_HANH_EMEI]
GO
ALTER TABLE [dbo].[PHIEU_BAO_HANH]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_BAO_HANH_KHACH_HANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACH_HANG] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PHIEU_BAO_HANH] CHECK CONSTRAINT [FK_PHIEU_BAO_HANH_KHACH_HANG]
GO
ALTER TABLE [dbo].[PHIEU_NHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_NHAP_NHA_CUNG_CAP] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHA_CUNG_CAP] ([MANCC])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PHIEU_NHAP] CHECK CONSTRAINT [FK_PHIEU_NHAP_NHA_CUNG_CAP]
GO
ALTER TABLE [dbo].[PHIEU_NHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_NHAP_NHAN_VIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHAN_VIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEU_NHAP] CHECK CONSTRAINT [FK_PHIEU_NHAP_NHAN_VIEN]
GO
ALTER TABLE [dbo].[SO_HUU]  WITH CHECK ADD  CONSTRAINT [FK_SO_HUU_KHACH_HANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACH_HANG] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SO_HUU] CHECK CONSTRAINT [FK_SO_HUU_KHACH_HANG]
GO
ALTER TABLE [dbo].[SO_HUU]  WITH CHECK ADD  CONSTRAINT [FK_SO_HUU_KHUYEN_MAI] FOREIGN KEY([MAKM])
REFERENCES [dbo].[KHUYEN_MAI] ([MAKM])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SO_HUU] CHECK CONSTRAINT [FK_SO_HUU_KHUYEN_MAI]
GO
ALTER TABLE [dbo].[TAI_KHOAN_DN]  WITH CHECK ADD  CONSTRAINT [FK_TAI_KHOAN_DN_NHAN_VIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHAN_VIEN] ([MANV])
GO
ALTER TABLE [dbo].[TAI_KHOAN_DN] CHECK CONSTRAINT [FK_TAI_KHOAN_DN_NHAN_VIEN]
GO
ALTER TABLE [dbo].[CT_HOA_DON]  WITH CHECK ADD  CONSTRAINT [CK_DONGIA] CHECK  (([DONGIA]>(0)))
GO
ALTER TABLE [dbo].[CT_HOA_DON] CHECK CONSTRAINT [CK_DONGIA]
GO
ALTER TABLE [dbo].[CT_HOA_DON]  WITH CHECK ADD  CONSTRAINT [CK_SOLUONG] CHECK  (([SOLUONG]>(0)))
GO
ALTER TABLE [dbo].[CT_HOA_DON] CHECK CONSTRAINT [CK_SOLUONG]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [CK_TONGTIEN] CHECK  (([TONGTIEN]>(0)))
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [CK_TONGTIEN]
GO
USE [master]
GO
ALTER DATABASE [Mobile_Store] SET  READ_WRITE 
GO
