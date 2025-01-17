USE [QuanLyQuanAn1]
GO
/****** Object:  Table [dbo].[BANAN]    Script Date: 7/11/2024 2:30:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANAN](
	[MaBanAn] [int] IDENTITY(1,1) NOT NULL,
	[TenBanAn] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBanAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 7/11/2024 2:30:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaBanAn] [int] NOT NULL,
	[MaNV] [nvarchar](15) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[NgayTao] [date] NOT NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 7/11/2024 2:30:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCHITIET](
	[MaHDCT] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaMonAn] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIMONAN]    Script Date: 7/11/2024 2:30:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIMONAN](
	[MaLoaiMonAn] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiMonAn] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONAN]    Script Date: 7/11/2024 2:30:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONAN](
	[MaMonAn] [int] IDENTITY(1,1) NOT NULL,
	[TenMonAn] [nvarchar](50) NOT NULL,
	[MaLoaiMonAn] [int] NOT NULL,
	[GiaTien] [float] NOT NULL,
	[HinhAnh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 7/11/2024 2:30:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](15) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SoDienThoai] [nvarchar](15) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[ChucVu] [bit] NOT NULL,
	[HinhAnh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BANAN] ON 

INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (1, N'Bàn 1', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (2, N'Bàn 2', 0)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (3, N'Bàn 3', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (4, N'Bàn 4', 0)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (5, N'Bàn 5', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (6, N'Bàn 6', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (7, N'Bàn 7', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (8, N'Bàn 8', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (9, N'Bàn 9', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (10, N'Bàn 10', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (11, N'Bàn 11', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (12, N'Bàn 12', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (13, N'Bàn 13', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (14, N'Bàn 14', 1)
INSERT [dbo].[BANAN] ([MaBanAn], [TenBanAn], [TrangThai]) VALUES (15, N'Bàn 15', 1)
SET IDENTITY_INSERT [dbo].[BANAN] OFF
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (6, 2, N'NV01', 1, CAST(N'2023-12-10' AS Date), 75000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (7, 2, N'NV01', 1, CAST(N'2023-12-10' AS Date), 45000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (9, 1, N'NV01', 1, CAST(N'2023-12-10' AS Date), 305000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (10, 9, N'NV01', 1, CAST(N'2023-12-01' AS Date), 45000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (11, 7, N'NV01', 1, CAST(N'2023-12-11' AS Date), 886000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (12, 2, N'NV01', 1, CAST(N'2023-12-12' AS Date), 290000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (13, 3, N'NV01', 1, CAST(N'2023-12-12' AS Date), 740000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (14, 4, N'NV01', 1, CAST(N'2023-12-12' AS Date), 470000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (15, 5, N'NV01', 1, CAST(N'2023-12-12' AS Date), 360000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (16, 3, N'NV01', 1, CAST(N'2023-12-12' AS Date), 360000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (17, 4, N'NV01', 1, CAST(N'2023-12-12' AS Date), 180000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (18, 3, N'NV01', 1, CAST(N'2023-12-12' AS Date), 120000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (19, 3, N'NV01', 1, CAST(N'2023-12-13' AS Date), 160000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (20, 4, N'NV01', 1, CAST(N'2023-12-13' AS Date), 60000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (21, 4, N'NV01', 1, CAST(N'2023-12-13' AS Date), 395000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (22, 5, N'NV01', 1, CAST(N'2023-12-13' AS Date), 10000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (23, 5, N'NV01', 1, CAST(N'2023-12-13' AS Date), 240000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (24, 2, N'NV01', 1, CAST(N'2023-12-13' AS Date), 40000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (25, 2, N'NV01', 0, CAST(N'2023-12-13' AS Date), 0)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (26, 3, N'NV02', 1, CAST(N'2023-12-13' AS Date), 380000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (27, 5, N'NV02', 1, CAST(N'2023-12-13' AS Date), 360000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (28, 4, N'NV01', 1, CAST(N'2023-12-13' AS Date), 160000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (29, 3, N'NV01', 1, CAST(N'2023-12-13' AS Date), 40000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (30, 5, N'NV01', 1, CAST(N'2023-12-13' AS Date), 40000)
INSERT [dbo].[HOADON] ([MaHD], [MaBanAn], [MaNV], [TrangThai], [NgayTao], [TongTien]) VALUES (31, 3, N'NV01', 1, CAST(N'2023-12-13' AS Date), 70000)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[HOADONCHITIET] ON 

INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (5, 6, 2, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (6, 6, 2, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (7, 6, 1, 3, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (11, 7, 2, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (12, 7, 2, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (13, 7, 1, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (21, 9, 1, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (22, 9, 2, 2, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (26, 10, 1, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (27, 10, 2, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (28, 10, 1, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (29, 11, 45, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (30, 11, 5, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (31, 11, 44, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (32, 11, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (33, 11, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (34, 11, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (35, 11, 25, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (36, 11, 41, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (37, 11, 26, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (38, 11, 43, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (39, 11, 32, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (40, 11, 13, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (41, 9, 45, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (42, 9, 45, 3, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (43, 9, 45, 3, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (44, 9, 42, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (45, 12, 5, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (46, 12, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (49, 13, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (50, 13, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (51, 13, 41, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (52, 13, 42, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (53, 13, 43, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (54, 13, 35, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (55, 13, 36, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (56, 14, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (57, 14, 25, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (58, 14, 26, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (59, 14, 45, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (60, 14, 5, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (61, 14, 44, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (62, 14, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (63, 14, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (64, 12, 25, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (65, 12, 45, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (67, 15, 25, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (68, 15, 43, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (69, 15, 41, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (70, 16, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (71, 16, 26, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (72, 16, 42, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (74, 17, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (75, 17, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (76, 18, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (79, 19, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (80, 17, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (81, 17, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (82, 19, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (83, 20, 44, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (84, 20, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (85, 20, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (86, 21, 44, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (87, 21, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (88, 21, 41, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (89, 21, 3, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (90, 22, 39, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (91, 22, 40, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (94, 23, 25, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (95, 23, 25, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (96, 24, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (97, 24, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (98, 21, 25, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (99, 19, 25, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (100, 25, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (102, 25, 41, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (103, 25, 35, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (104, 25, 34, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (105, 26, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (106, 26, 24, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (107, 26, 26, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (108, 26, 41, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (112, 27, 41, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (113, 27, 42, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (114, 27, 35, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (115, 28, 46, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (116, 28, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (117, 28, 26, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (118, 29, 45, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (119, 29, 47, 1, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (120, 25, 1, 2, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (121, 31, 39, 2, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (122, 31, 2, 2, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (123, 31, 6, 2, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (124, 30, 40, 2, 0)
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaMonAn], [SoLuong], [ThanhTien]) VALUES (125, 30, 2, 2, 0)
SET IDENTITY_INSERT [dbo].[HOADONCHITIET] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIMONAN] ON 

INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (1, N'Đồ Uống')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (2, N'Tráng Miệng')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (3, N'Bia')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (4, N'Trà')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (5, N'Rượu')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (6, N'Lẩu')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (7, N'Cá')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (8, N'Mực')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (9, N'Tôm')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (10, N'Đồ Ăn No')
INSERT [dbo].[LOAIMONAN] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (11, N'Đồ Thêm')
SET IDENTITY_INSERT [dbo].[LOAIMONAN] OFF
GO
SET IDENTITY_INSERT [dbo].[MONAN] ON 

INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (1, N'Cocacola', 1, 15000, N'cocacola.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (2, N'Mirinda Xanh', 1, 15000, N'MirindaXanh.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (3, N'Mirinda Xaxi', 1, 15000, N'MirindaXaxi.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (4, N'Nước suối', 1, 12000, N'nuocsuoi.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (5, N'Bia Heneken', 3, 30000, N'HeinekenThung.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (6, N'Pepsi', 1, 15000, N'pepsi.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (7, N'Sprite', 1, 15000, N'sprite.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (8, N'Rượu Gạo', 5, 20000, N'ruougao.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (9, N'Rượu SoJu', 5, 25000, N'soju.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (10, N'Trà Đào Nhỏ', 4, 22000, N'tradao.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (11, N'Trà Đào Lớn', 4, 26000, N'tradao.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (12, N'Trà Sữa Nhỏ', 4, 22000, N'TraSua.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (13, N'Trà Sữa Lớn', 4, 26000, N'TraSua.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (14, N'Trà Vải', 4, 22000, N'travai.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (15, N'Trà Xanh', 4, 12000, N'TraXanh.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (16, N'Lẩu Bò', 6, 150000, N'lau.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (17, N'Lẩu Dê', 6, 150000, N'lau.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (18, N'Lẩu Gà', 6, 150000, N'lau.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (19, N'Lẩu Đặc Biệt', 6, 200000, N'lau.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (20, N'Lẩu Hải Sản', 6, 170000, N'lau.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (21, N'Lẩu Sườn', 6, 150000, N'lau.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (22, N'Rượu Vodka Nhỏ', 5, 100000, N'ruouvalka.jpg.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (23, N'Rượu Vodka Lớn', 5, 150000, N'ruouvalka.jpg.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (24, N'Cá Hấp', 7, 120000, N'cahap.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (25, N'Cá Hồi', 7, 120000, N'cahoi.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (26, N'Cá Kho', 7, 120000, N'cakho.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (27, N'Mực Chiên', 8, 150000, N'mucchien.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (28, N'Mực Sốt Cay', 8, 150000, N'mucsotcay.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (29, N'Mực Xào', 8, 150000, N'mucxao.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (30, N'Tôm Hấp', 9, 150000, N'TomHap.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (31, N'Tôm Hùm Alaska', 9, 400000, N'tomhumalaska.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (32, N'Tôm Nướng', 9, 150000, N'tomnuong.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (33, N'Tôm Sốt', 9, 150000, N'tomsot.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (34, N'Tôm Sốt Tỏi', 9, 150000, N'tomsottoi.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (35, N'Cơm Chiên', 10, 120000, N'comchien.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (36, N'Cơm Trộn', 10, 120000, N'comtron.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (37, N'Cơm Trọn Bạch Tuộc', 10, 150000, N'comtronbachtuoc.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (38, N'Cơm Trộn Hải Sản', 10, 150000, N'comtronhaisan.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (39, N'Bún', 11, 5000, N'bun.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (40, N'Khăn Giấy', 11, 5000, N'khanGiay.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (41, N'Canh Hải Sản', 10, 120000, N'canhhaisan.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (42, N'Canh Rông Biển', 10, 120000, N'canhrongbien.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (43, N'Canh Sườn Bò', 10, 120000, N'canhsuonbo.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (44, N'Bia Huda', 3, 20000, N'BiaHuDa.png')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (45, N'Bia Hà Nội', 3, 20000, N'biaHaNoi.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (46, N'Bia Larue', 3, 20000, N'biaLarue.jpg')
INSERT [dbo].[MONAN] ([MaMonAn], [TenMonAn], [MaLoaiMonAn], [GiaTien], [HinhAnh]) VALUES (47, N'Bia Sài Gòn', 3, 20000, N'BiaSaigon.jpg')
SET IDENTITY_INSERT [dbo].[MONAN] OFF
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [GioiTinh], [TaiKhoan], [MatKhau], [ChucVu], [HinhAnh]) VALUES (N'NV01', N'Hoàng Tấn Thiên', CAST(N'2004-01-10' AS Date), N'0799063529', N'Quảng Bình', 1, N'thien', N'123456', 1, N'3.jpg')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [GioiTinh], [TaiKhoan], [MatKhau], [ChucVu], [HinhAnh]) VALUES (N'NV02', N'Hoàng Tài', CAST(N'2004-10-20' AS Date), N'0795749733', N'Quảng Trị', 1, N'tai', N'123456', 0, N'2 (1).jpg')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [GioiTinh], [TaiKhoan], [MatKhau], [ChucVu], [HinhAnh]) VALUES (N'NV03', N'Kim Ngân', CAST(N'2004-01-28' AS Date), N'0123444444', N'ĐÀ Nẵng', 0, N'ngan', N'123456', 0, N'1 (1).jpg')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [GioiTinh], [TaiKhoan], [MatKhau], [ChucVu], [HinhAnh]) VALUES (N'NV04', N'Lê Thảo', CAST(N'2004-07-08' AS Date), N'0123456789', N'ĐN', 0, N'thao', N'123456', 0, N'2 (1).jpg')
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaBanAn])
REFERENCES [dbo].[BANAN] ([MaBanAn])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD FOREIGN KEY([MaMonAn])
REFERENCES [dbo].[MONAN] ([MaMonAn])
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[MONAN]  WITH CHECK ADD FOREIGN KEY([MaLoaiMonAn])
REFERENCES [dbo].[LOAIMONAN] ([MaLoaiMonAn])
GO
