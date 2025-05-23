USE [DBWEBPC]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[NumberCard] [int] NULL,
	[UserNumber] [int] NULL,
	[UserId] [int] NULL,
	[Identification] [int] NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ParId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[MetaTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[EmailCC] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credentials]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credentials](
	[CredenId] [int] IDENTITY(1,1) NOT NULL,
	[UserGroupId] [nvarchar](50) NULL,
	[RoleId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Credentials] PRIMARY KEY CLUSTERED 
(
	[CredenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[DateUpdate] [date] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[ShipName] [nvarchar](50) NULL,
	[UserId] [int] NULL,
	[ShipPhone] [int] NULL,
	[ShipEmail] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[ShipAddress] [nvarchar](max) NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetailId] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
	[ProviderId] [int] NULL,
	[CateId] [int] NULL,
	[Photo] [nvarchar](max) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[GroupId] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 5/2/2025 8:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[GroupId] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Card] ON 

INSERT [dbo].[Card] ([CardId], [NumberCard], [UserNumber], [UserId], [Identification]) VALUES (1, 560, 70000, 2, 2314234)
INSERT [dbo].[Card] ([CardId], [NumberCard], [UserNumber], [UserId], [Identification]) VALUES (2, 5600, 0, 38, 174660210)
INSERT [dbo].[Card] ([CardId], [NumberCard], [UserNumber], [UserId], [Identification]) VALUES (3, 0, 0, 41, NULL)
INSERT [dbo].[Card] ([CardId], [NumberCard], [UserNumber], [UserId], [Identification]) VALUES (4, 0, 0, 43, NULL)
SET IDENTITY_INSERT [dbo].[Card] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (1, 0, N'Máy tính xách tay', N'may-tinh-xach-tay')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (2, 0, N'Máy tính để bàn', N'may-tinh-de-ban')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (3, 0, N'Màn hình', N'man-hinh')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (4, 0, N'Bàn phím', N'ban-phim')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (5, 0, N'Chuột máy tính', N'chuot-may-tinh')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (6, 0, N'Linh kiện máy tính', N'linh-kien-may-tinh')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (7, 6, N'RAM', N'ram')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (8, 6, N'SSD', N'ssd')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (9, 6, N'Card màn hình', N'card-man-hinh')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (10, 6, N'Mainboard', N'mainboard')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (11, 0, N'Phần mềm diệt virus', N'phan-mem-diet-virus')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (12, 0, N'Hệ điều hành', N'he-dieu-hanh')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (13, 0, N'Phần mềm văn phòng', N'phan-mem-van-phong')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (14, 0, N'Thiết bị mạng', N'thiet-bi-mang')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (15, 14, N'Router Wifi', N'router-wifi')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (16, 14, N'Switch mạng', N'switch-mang')
INSERT [dbo].[Category] ([CategoryId], [ParId], [Name], [MetaTitle]) VALUES (17, 14, N'Dây mạng', N'day-mang')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactId], [Content], [Status], [EmailCC]) VALUES (1, N'Chào Anh Trung', 1, N'nthanhtrung649@gmail.com')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Credentials] ON 

INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (1, N'ADMIN', N'ADD_USER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (2, N'MOD', N'ADD_NEWS')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (3, N'MOD', N'UPDATE_NEWS')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (4, N'ADMIN', N'UPDATE_USER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (5, N'ADMIN', N'DELETE_USER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (6, N'ADMIN', N'VIEW_USER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (7, N'MOD', N'DELETE_NEWS')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (8, N'MOD', N'VIEW_NEWS')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (9, N'MOD', N'VIEW_PRODUCT')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (10, N'MOD', N'ADD_PRODUCT')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (11, N'MOD', N'DELETE_PRODUCT')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (12, N'MOD', N'UPDATE_PRODUCT')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (13, N'MOD', N'ADD_CATE')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (14, N'MOD', N'UPDATE_CATE')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (15, N'MOD', N'DELETE_CATE')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (16, N'MOD', N'VIEW_CATE')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (17, N'MOD', N'ADD_PROVIDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (18, N'MOD', N'UPDATE_PROVIDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (19, N'MOD', N'DELETE_PROVIDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (20, N'MOD', N'VIEW_PROVIDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (21, N'MOD', N'SHOW_ORDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (22, N'MOD', N'MANAGER_ORDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (23, N'MOD', N'SATISTIC_ORDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (24, N'ADMIN', N'VIEW_NEWS')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (25, N'ADMIN', N'DELETE_NEWS')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (26, N'ADMIN', N'ADD_NEWS')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (27, N'ADMIN', N'UPDATE_NEWS')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (28, N'ADMIN', N'VIEW_PRODUCT')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (29, N'ADMIN', N'ADD_PRODUCT')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (30, N'ADMIN', N'DELETE_PRODUCT')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (31, N'ADMIN', N'UPDATE_PRODUCT')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (32, N'ADMIN', N'ADD_CATE')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (33, N'ADMIN', N'UPDATE_CATE')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (34, N'ADMIN', N'DELETE_CATE')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (35, N'ADMIN', N'VIEW_CATE')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (36, N'ADMIN', N'ADD_PROVIDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (37, N'ADMIN', N'UPDATE_PROVIDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (38, N'ADMIN', N'DELETE_PROVIDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (39, N'ADMIN', N'VIEW_PROVIDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (40, N'ADMIN', N'SHOW_ORDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (41, N'ADMIN', N'MANAGER_ORDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (42, N'ADMIN', N'SATISTIC_ORDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (43, N'ADMIN', N'PRINT_ORDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (44, N'MOD', N'PRINT_ORDER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (45, N'MOD', N'ADD_USER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (46, N'MOD', N'UPDATE_USER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (47, N'MOD', N'DELETE_USER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (48, N'MOD', N'VIEW_USER')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (49, N'ADMIN', N'ADD_ADMIN')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (50, N'ADMIN', N'UPDATE_ADMIN')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (51, N'ADMIN', N'DELETE_ADMIN')
INSERT [dbo].[Credentials] ([CredenId], [UserGroupId], [RoleId]) VALUES (52, N'ADMIN', N'VIEW_ADMIN')
SET IDENTITY_INSERT [dbo].[Credentials] OFF
GO
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (1, N'Ra mắt Laptop mới của Dell', N'Phát hành dòng máy tính xách tay Dell mới với nhiều tính năng ưu việt, giúp bạn làm việc và giải trí mượt mà hơn. Máy được trang bị bộ vi xử lý Intel Core i7, RAM 16GB và ổ SSD 512GB.', N'laptop-dell.jpg', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (2, N'Thị trường máy tính để bàn 2025', N'Thi trường máy tính để bàn đang có những bước tiến lớn với các sản phẩm mới từ các thương hiệu nổi tiếng như HP, Lenovo. Các sản phẩm này cung cấp hiệu suất vượt trội, thiết kế tối giản và dễ dàng nâng cấp.', N'may-tinh-de-ban.jpg', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (3, N'Thiết bị ngoại vi cho máy tính', N'Màn hình 4K, bàn phím cơ, chuột gaming – những thiết bị ngoại vi không thể thiếu cho game thủ và người làm việc chuyên nghiệp. Các sản phẩm mới này mang đến trải nghiệm tuyệt vời và sự thoải mái tối đa.', N'man-hinh-ban-phim.jpg', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (4, N'Mua Laptop gaming tốt nhất 2025', N'Một số mẫu laptop gaming mạnh mẽ hiện nay, với bộ vi xử lý AMD Ryzen 9 và GPU NVIDIA RTX, đáp ứng nhu cầu chơi game đồ họa cao và các tác vụ nặng.', N'laptop-gaming.jpg', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (5, N'Máy tính bảng cho công việc văn phòng', N'Máy tính bảng với các tính năng mạnh mẽ giúp bạn làm việc hiệu quả khi di chuyển, đặc biệt là trong các cuộc họp hoặc thuyết trình.', N'may-tinh-bang.jpg', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (6, N'Thiết bị lưu trữ ngoài cho máy tính', N'SSD ngoài và ổ cứng di động ngày càng trở nên phổ biến, cung cấp giải pháp lưu trữ nhanh chóng và tiện lợi cho người dùng máy tính, đặc biệt là khi làm việc với dữ liệu lớn.', N'ssd-ngoai.jpg', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (7, N'Bộ phận linh kiện máy tính và cách lắp ráp', N'Linh kiện máy tính như RAM, ổ SSD, và card đồ họa có thể thay thế và nâng cấp để tối ưu hóa hiệu suất máy tính của bạn. Hướng dẫn lắp ráp máy tính để bàn từ các linh kiện cơ bản.', N'linh-kien-may-tinh.jpg', NULL)
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (8, N'Mua máy tính bàn tốt nhất cho văn phòng', N'Máy tính để bàn cho văn phòng cần có hiệu suất ổn định, bộ vi xử lý nhanh và khả năng làm việc đa nhiệm mượt mà. Chúng tôi sẽ giới thiệu các mẫu máy tính để bàn đáng mua nhất năm 2025.', N'may-tinh-van-phong.jpg', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (9, N'Màn hình gaming 144Hz', N'Màn hình 144Hz mang lại trải nghiệm mượt mà cho game thủ và những người làm công việc đòi hỏi độ chính xác cao trong đồ họa. Cùng khám phá các mẫu màn hình tốt nhất trên thị trường.', N'man-hinh-144hz.jpg', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[News] ([NewsId], [Title], [Detail], [Photo], [DateUpdate]) VALUES (10, N'Cách chọn laptop cho sinh viên', N'Laptop cho sinh viên cần phải đáp ứng các yêu cầu như giá cả hợp lý, hiệu suất ổn định và thiết kế di động. Chúng tôi sẽ giúp bạn chọn ra những mẫu laptop phù hợp nhất cho năm học 2025.', N'laptop-sinh-vien.jpg', CAST(N'2025-04-22' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1124, N'aaaa', 39, 968012687, N'dangvansam98@gmail.com', CAST(N'2021-03-22T14:21:27.920' AS DateTime), N'Dịch Vọng Hậu, Cầu Giấy, Hà Nội', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1125, N'Phạm Thị Thu Hiền', 43, 344438837, N'nthanhtrung649@gmail.com', CAST(N'2025-04-18T22:58:48.917' AS DateTime), N'Đại học bình dương', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1126, N'admin', 40, 2222, N'admin@gmail.com', CAST(N'2025-04-18T23:04:37.843' AS DateTime), N'Hà Nội', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1127, N'admin', 40, 2222, N'admin@gmail.com', CAST(N'2025-04-18T23:32:46.300' AS DateTime), N'Hà Nội', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1128, N'admin', 40, 2222, N'admin@gmail.com', CAST(N'2025-04-18T23:40:16.147' AS DateTime), N'Hà Nội', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1129, N'Nguyen thanh trung', 44, 344438836, N'20050020@student.bdu.edu.vn', CAST(N'2025-04-18T23:46:21.740' AS DateTime), N'bình định', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1130, N'Nguyen thanh trung', 44, 344438836, N'20050020@student.bdu.edu.vn', CAST(N'2025-04-19T00:12:49.127' AS DateTime), N'bình định', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1131, N'Nguyen thanh trung', 44, 344438836, N'20050020@student.bdu.edu.vn', CAST(N'2025-04-19T00:18:40.743' AS DateTime), N'bình định', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1132, N'nguyễn hoàng hảo', 45, 364438837, N'20050020@student.bdu.edu.vn', CAST(N'2025-04-19T00:24:59.270' AS DateTime), N'bình dương', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1133, N'nguyễn hoàng hảo', 45, 364438837, N'20050020@student.bdu.edu.vn', CAST(N'2025-04-19T00:34:19.020' AS DateTime), N'bình dương', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1134, N'nguyễn hoàng hảo', 45, 364438837, N'20050020@student.bdu.edu.vn', CAST(N'2025-04-19T00:36:55.537' AS DateTime), N'bình dương', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1135, N'admin', 40, 2222, N'admin@gmail.com', CAST(N'2025-04-19T16:44:31.620' AS DateTime), N'Hà Nội', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1136, N'admin', 40, 2222, N'duynguyen00773@gmail.com', CAST(N'2025-04-19T16:50:33.400' AS DateTime), N'Hà Nội', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1137, N'admin', 40, 2222, N'duynguyen00773@gmail.com', CAST(N'2025-04-19T16:57:00.273' AS DateTime), N'Hà Nội', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1138, N'admin', 40, 2222, N'duynguyen00773@gmail.com', CAST(N'2025-04-19T17:06:11.890' AS DateTime), N'Hà Nội', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1139, N'admin', 40, 2222, N'neil.duynguyen@gmail.com', CAST(N'2025-04-19T17:10:14.500' AS DateTime), N'HCM', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1140, N'admin', 40, 2222, N'neil.duynguyen@gmail.com', CAST(N'2025-04-19T17:11:30.317' AS DateTime), N'HCM', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1141, N'admin', 40, 2222, N'neil.duynguyen@gmail.com', CAST(N'2025-04-19T17:12:36.797' AS DateTime), N'HCM', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1142, N'admin', 40, 2222, N'neil.duynguyen@gmail.com', CAST(N'2025-04-19T17:16:39.613' AS DateTime), N'HCM', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1143, N'admin', 40, 2222, N'neil.duynguyen@gmail.com', CAST(N'2025-04-19T17:17:37.943' AS DateTime), N'HCM', 1)
INSERT [dbo].[Order] ([OrderId], [ShipName], [UserId], [ShipPhone], [ShipEmail], [UpdateDate], [ShipAddress], [StatusId]) VALUES (1144, N'admin', 40, 2222, N'neil.duynguyen@gmail.com', CAST(N'2025-04-30T23:34:38.570' AS DateTime), N'HCM', 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1131, 1113, 123, 13, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1132, 1114, 4, 5600000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1133, 1114, 32231, 213, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1134, 1115, 4, 5600000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1135, 1115, 32231, 213, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1136, 1116, 14, 5600000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1138, 1118, 72, 56000000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1139, 1118, 89, 7000000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1140, 1118, 18, 5600000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1141, 1119, 18, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1142, 1120, 17, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1143, 1120, 16, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1144, 1121, 6, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1145, 1122, 227, 2000000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1146, 1123, 227, 2000000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1147, 1124, 227, 2000000, 200)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1148, 1125, 18, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1149, 1126, 17, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1150, 1127, 87, 12480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1151, 1128, 16, 4480000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1152, 1129, 16, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1153, 1130, 6, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1154, 1131, 74, 5600000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1155, 1132, 8, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1156, 1133, 74, 5600000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1157, 1134, 72, 56000000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1158, 1135, 19, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1159, 1136, 4, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1160, 1136, 16, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1161, 1137, 4, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1162, 1137, 16, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1163, 1138, 16, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1164, 1138, 72, 56000000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1165, 1139, 72, 56000000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1166, 1139, 19, 4480000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1167, 1140, 19, 4480000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1168, 1141, 19, 4480000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1169, 1142, 16, 4480000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1170, 1143, 19, 4480000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1171, 1144, 18, 3500000, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (1, N'Laptop HP Pavilion 14', N'Laptop HP Pavilion 14 inch với cấu hình mạnh mẽ, thích hợp cho công việc và giải trí.', 15000000, 143, 1, 1, N'Hp-01.jpg', CAST(N'2025-04-30' AS Date), CAST(N'2025-05-10' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (2, N'Laptop Dell Inspiron 15', N'Laptop Dell Inspiron 15 inch phù hợp với nhu cầu học tập và làm việc từ xa.', 14000000, 197, 1, 1, N'Dell-1.png', CAST(N'2025-04-30' AS Date), CAST(N'2025-11-28' AS Date), 2)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (3, N'Laptop Acer Swift 3', N'Laptop Acer Swift 3, thiết kế mỏng nhẹ, hiệu năng tốt cho công việc và giải trí.', 17000000, 189, 1, 1, N'dell-7.jpg', CAST(N'2023-04-11' AS Date), CAST(N'2023-04-24' AS Date), 20)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (4, N'Laptop Asus VivoBook', N'Asus VivoBook 15 inch, cấu hình cao cho các tác vụ đa nhiệm và giải trí.', 16000000, 190, 1, 1, N'dell-6.png', CAST(N'2023-04-25' AS Date), CAST(N'2023-06-20' AS Date), 20)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (5, N'Laptop Lenovo ThinkPad', N'Lenovo ThinkPad với bàn phím tiện dụng, phù hợp cho công việc văn phòng.', 19000000, 181, 1, 1, N'dell-4.png', CAST(N'2025-04-08' AS Date), CAST(N'2025-04-29' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (6, N'Laptop MSI GF63', N'MSI GF63, Laptop gaming cấu hình cao, phục vụ tốt cho các game thủ.', 22000000, 198, 1, 1, N'Laptop MSI.jpg', CAST(N'2023-03-06' AS Date), CAST(N'2023-04-27' AS Date), 20)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (7, N'Laptop MacBook Air M2', N'MacBook Air M2, sản phẩm cao cấp của Apple, hiệu suất vượt trội, thiết kế đẹp.', 25000000, 190, 1, 1, N'macbook.jpg', CAST(N'2025-04-03' AS Date), CAST(N'2025-04-30' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (8, N'Laptop HP Envy 13', N'HP Envy 13, thiết kế sang trọng, hiệu năng vượt trội cho người dùng cao cấp.', 21000000, 199, 1, 1, N'Hp-01.jpg', CAST(N'2023-04-08' AS Date), CAST(N'2023-04-25' AS Date), 20)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (9, N'Laptop Dell XPS 13', N'Dell XPS 13, thiết kế nhỏ gọn, màn hình sắc nét, phù hợp cho công việc và giải trí.', 23000000, 198, 1, 1, N'dell-5.png', CAST(N'2025-04-10' AS Date), CAST(N'2025-05-10' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (10, N'Laptop Asus ROG Zephyrus', N'Asus ROG Zephyrus, laptop gaming mạnh mẽ với thiết kế tinh tế.', 30000000, 200, 1, 1, N'dell-4.png', CAST(N'2025-03-30' AS Date), CAST(N'2025-05-10' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (11, N'Laptop HP Omen', N'HP Omen, laptop chơi game mạnh mẽ, hiệu năng cực tốt.', 28000000, 199, 1, 1, N'Hp-01.jpg', CAST(N'2025-04-08' AS Date), CAST(N'2025-04-17' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (12, N'Laptop Acer Nitro 5', N'Acer Nitro 5, laptop gaming giá tốt với cấu hình mạnh mẽ.', 19000000, 198, 1, 1, N'Laptop MSI.jpg', CAST(N'2025-03-30' AS Date), CAST(N'2025-04-16' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (13, N'Laptop Lenovo Legion 5', N'Lenovo Legion 5, laptop gaming với hiệu suất mạnh mẽ, màn hình đẹp.', 25000000, 200, 1, 1, N'dell-6.png', CAST(N'2023-03-04' AS Date), CAST(N'2023-04-26' AS Date), 20)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (14, N'Laptop Dell XPS 13', N'Màn hình 13.3 inch, Intel Core i7, 16GB RAM, 512GB SSD', 25000000, 100, 1, 1, N'dell-8.jpeg', CAST(N'2025-04-20' AS Date), CAST(N'2025-05-03' AS Date), 10)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (15, N'Máy tính để bàn HP Pavilion', N'CPU Intel Core i5, 8GB RAM, 1TB HDD, Card đồ họa NVIDIA GTX 1050', 15000000, 80, 1, 2, N'pc 23.png', CAST(N'2025-04-10' AS Date), CAST(N'2025-05-10' AS Date), 5)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (16, N'Màn hình Dell 24 inch', N'Màn hình Full HD, 75Hz, IPS, kết nối HDMI', 4000000, 50, 2, 3, N'Dell UltraSharp U2723QE1.jpeg', CAST(N'2025-04-05' AS Date), CAST(N'2025-05-10' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (17, N'Bàn phím Logitech MX Master 3', N'Chuyên dụng cho công việc văn phòng, công nghệ 2.4GHz, kết nối Bluetooth', 1500000, 150, 3, 4, N'Ban-phim.jpg', CAST(N'2025-03-01' AS Date), CAST(N'2025-05-10' AS Date), 5)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (18, N'Bàn phím cơ Razer Huntsman Elite', N'Bàn phím cơ với switch quang học, đèn RGB, có phím media và bàn nghỉ tay', 3500000, 119, 2, 5, N'Ban-phim.jpg', CAST(N'2025-03-15' AS Date), CAST(N'2025-06-07' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (19, N'Ổ cứng SSD Samsung 970 EVO 1TB', N'Ổ cứng SSD tốc độ cao, dung lượng 1TB, chuẩn M.2 NVMe', 4000000, 60, 3, 8, N'ssd.jpg', CAST(N'2025-04-18' AS Date), CAST(N'2025-05-22' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (20, N'Tai nghe Sony WH-1000XM4', N'Tai nghe chống ồn, âm thanh chất lượng cao, kết nối Bluetooth', 5000000, 75, 2, 6, N'Tai-nghe.jpeg', CAST(N'2025-04-10' AS Date), CAST(N'2025-06-07' AS Date), 15)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (21, N'Laptop MSI GE66 Raider', N'Máy tính xách tay gaming, Intel Core i9, 32GB RAM, NVIDIA RTX 3080', 45000000, 40, 1, 1, N'Laptop MSI.jpg', CAST(N'2025-04-15' AS Date), CAST(N'2025-05-22' AS Date), 10)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (22, N'Máy tính Dell XPS 13', N'Máy tính xách tay Dell XPS 13, màn hình 13.3 inch, bộ vi xử lý Intel Core i7', 24000000, 100, 1, 1, N'Dell.png', CAST(N'2025-04-17' AS Date), CAST(N'2025-07-03' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (23, N'Máy tính MacBook Pro', N'MacBook Pro 16-inch với chip M1 Pro, RAM 16GB', 35000000, 50, 1, 1, N'macbook.jpg', CAST(N'2025-04-16' AS Date), CAST(N'2025-04-18' AS Date), 10)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (24, N'Máy tính HP Pavilion', N'Máy tính HP Pavilion với màn hình 15.6 inch, bộ vi xử lý Intel Core i5', 15000000, 200, 2, 1, N'Hp-01.jpg', CAST(N'2025-04-01' AS Date), CAST(N'2025-04-05' AS Date), 5)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (25, N'Máy tính Lenovo ThinkPad', N'Lenovo ThinkPad X1 Carbon Gen 9, bộ vi xử lý Intel Core i7, 16GB RAM', 22000000, 75, 3, 1, N'dell-8.jpeg', CAST(N'2025-04-03' AS Date), CAST(N'2025-04-16' AS Date), 2)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (26, N'Máy tính Asus ZenBook', N'Asus ZenBook 14 với màn hình 14 inch và bộ vi xử lý AMD Ryzen 5', 18000000, 120, 4, 1, N'asus_zenbook_14.jpg', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (27, N'Máy tính Acer Predator Helios', N'Acer Predator Helios 300 với màn hình 15.6 inch và bộ vi xử lý Intel Core i7', 30000000, 30, 5, 1, N'acer_predator_helios.jpg', NULL, NULL, 10)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (28, N'SSD DATA 256 GB ', N'2440 bit', 450000, 50, 3, 8, N'ssd.jpg', CAST(N'2025-05-01' AS Date), CAST(N'2025-05-02' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (29, N'ram ddr3', N'sgssgsv', 600000, 145, 1, 7, N'rampc.png', CAST(N'2025-04-29' AS Date), CAST(N'2025-05-23' AS Date), -1)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (30, N'Dell P2422H', N'Dell P2422H', 3500000, 500, 1, 3, N'Dell P2422H.png', CAST(N'2025-05-07' AS Date), CAST(N'2025-05-31' AS Date), 5)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (31, N'Dell UltraSharp U26', N'Dell UltraSharp U26', 4000000, 500, 1, 3, N'Dell UltraSharp U2723QE1.jpeg', CAST(N'2025-04-30' AS Date), CAST(N'2025-05-07' AS Date), 5)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (32, N'Dell UltraSharp U2623QE1', N'Dell UltraSharp U2623QE1', 2500000, 16, 1, 3, N'Dell UltraSharp U2723QE1.jpeg', CAST(N'2025-04-27' AS Date), CAST(N'2025-04-29' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (33, N'LG 24MP400-B', N'LG 24MP400-B', 3600000, 30, 1, 3, N'LG 24MP400-B.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (34, N'Chuột không dây Logitech B100', N'Chuột không dây Logitech B100', 120000, 500, 7, 5, N'chuot.jpg', CAST(N'2025-04-27' AS Date), CAST(N'2025-05-21' AS Date), 2)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (35, N'Chuột co dây Logitech B100', N'Chuột không dây Logitech B100', 120000, 46, 1, 5, N'chuot.jpg', CAST(N'2025-04-30' AS Date), CAST(N'2025-05-13' AS Date), 2)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (36, N'Chuột máy tính Logitech Gaming G102 Gen 2 (Black)', N'Mô tả tóm tắt sản phẩm
Độ nhạy chuột DPI: 200 to 8000
Độ bền: 10 triệu lần click
Kết nối: USB
Màu sắc: Màu Đen
Đèn nền: LED RGB
Trọng lượng: 85 g chỉ chuột
', 460000, 49, 1, 5, N'chuot 1.png', CAST(N'2025-04-30' AS Date), CAST(N'2025-05-20' AS Date), 3)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (37, N'Chuột máy tính Fuhlen G70 Gaming', N'Thiết kế Ergonomic, 3 phím chức năng.
- Đầu tiếp nhận mini receiver, công nghệ Nano 2.4Ghz,  độ phân giải 1000DPI, khoảng cách hoạt động 10m.
- Tuổi thọ pin: 1 năm, với 1 pin AA Alkaline
- Mầu: Black, Blue, Yellow
- Công nghệ quang tiết kiên pin 12 tháng
- Kích thước: 100*59*38mm
- Trọng lượng: 51.5g', 385000, 60, 1, 5, N'chuot 2.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (38, N'Chuột máy tính Genius Wireless NX-7000 – Đen', N'Chuột không dây NX700 là mẫu chuột hướng đến người dùng di động. Điểm đặc biệt của sản phẩm là hoạt động rất êm, thiết kế gọn nhẹ, kiểu dáng đối xứng dễ dùng cho cả người thuận tay phải lẫn trái.

NX700

Thực tế sử dụng cho thấy hai nút nhấn trái phải gần như không gây tiếng động, và điều này sẽ tránh ảnh hưởng đến người dùng xung quanh khi bạn làm việc trong môi trường cần sự yên tĩnh.

NX700  thuộc dòng chuột cơ bản nên chỉ có nút nhấn trái phải và con lăn ở giữa dùng cho việc cuộn trang, lướt qua tài liệu văn bản, bảng biểu hoặc website một cách nhanh chóng.

Tương tự các mẫu chuột “không đuôi” nhỏ gọn khác, NX700 cũng kết nối với máy tính Windows và Mac thông qua giao tiếp USB băng tần 2,4 GHz với tầm hoạt động khoảng 10 mét. Điều này mang đến người dùng sự linh hoạt trong việc lựa chọn kết nối phù hợp, chuyển đổi giữa các thiết bị sử dụng.

Tính năng
NX7000  trang bị cảm biến quang học công nghệ BlueEye độ phân giải đến 1.200dp. Tuy không nổi bật ở khía cạnh độ phân giải hỗ trợ nhưng trên thực tế, mẫu chuột Genius vẫn đáp ứng tốt nhu cầu sử dụng di động, cần sự gọn nhẹ. Tuy là chuột “không đuôi” nhưng sản phẩm vẫn giữ được độ trễ thấp, trỏ chuột trên màn hình đáp ứng tức thời mỗi khi di chuyển chuột, độ chính xác cao.

NX700

Ngoại trừ mặt kính trong suốt thì NX7000 có thể sử dụng trên nhiều chất liệu khác nhau, kể cả bề mặt thô ráp. Các miếng đệm bên dưới tuy nhỏ nhưng vẫn giúp chuột di chuyển nhẹ nhàng, thao tác thoải mái. Về phím nhấn trái phải cũng hoạt động êm, lực nhẹ và đồng đều mang lại cảm giác dễ chịu.

Công nghệ tiết kiệm năng lượng hứa hẹn thời gian dùng tương đối chỉ với cục pin AA. Tất nhiên thời gian thực tế sẽ tùy thuộc vào cách sử dụng của mỗi bạn. Và điều mình chắc chắn nó không thể đạt được như thông tin của nhà sản xuất công bố. Đồng thời NX 7000 cũng trang bị nút mở/tắt nguồn ở mặt dưới nhằm duy trì tuổi thọ pin.

NX700

', 200000, 44, 1, 5, N'chuot3.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (39, N'Chuột máy tính DARE-U EM908', N'Chuột máy tính DARE-U EM908', 450000, 26, 1, 5, N'4.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (40, N'Bàn phím cơ Gaming DAREU EK75 GREY BLACK ', N'Thông tin sản phẩm

Bảo hành: 24 THÁNG

Mô tả sản phẩm

2 SIDES RGB STRIP
MULTI LED
Cấu trúc: Gasket-Mount
Keycaps: PBT Double-shot
Switch: DareU DREAM (Linear)
81 keys
Kích thước: 333 x 140 x 40mm | Trọng lượng: 650g
N-key rollover: yes
Dây: 1.8m (Type-C, rời)699000', 699000, 45, 3, 4, N'ban phim1.png', CAST(N'2025-04-29' AS Date), CAST(N'2025-05-22' AS Date), 5)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (41, N'Bàn phím cơ Gaming DAREU EK75', N'Thông tin sản phẩm

Bảo hành: 24 THÁNG

Mô tả sản phẩm

2 SIDES RGB STRIP
MULTI LED
Cấu trúc: Gasket-Mount
Keycaps: PBT Double-shot
Switch: DareU DREAM (Linear)
81 keys
Kích thước: 333 x 140 x 40mm | Trọng lượng: 650g
N-key rollover: yes
Dây: 1.8m (Type-C, rời)699000', 699000, 34, 3, 4, N'ban phím 3.png', CAST(N'2025-04-08' AS Date), CAST(N'2025-05-20' AS Date), 17)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (42, N'BÀN PHÍM CƠ DAREU EK75 PRO AL WHITE BLUE ', N'Thông tin sản phẩm

Bảo hành: 24 THÁNG

Mô tả sản phẩm

TRIPLE MODE: Type-C – BT – 2.4G
Keycaps: OEM profile, PBT Double-Shot
Cấu trúc: Gasket-Mount
Hỗ trợ hotswap switch
Switch: DareU CLOUD (Linear)
Pin: 4.000mAh
Led nền: RGB
Kích thước: 333 x 140 x 40mm | Trọng lượng: 1.700g
Tương thích: Windows, Mac, Mobile', 1699000, 34, 3, 4, N'ban phim 4.png', CAST(N'2025-05-01' AS Date), NULL, 17)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (43, N'1.699.000', N'Bàn phím Lightning PR-8900
Bàn phím Lightning PR-8900 siêu phẩm mới nhất của thương hiệu Lightning cho dòng bàn phím giả cơ với sự đầu tư nâng cấp cả về thiết  kế cũng như tính năng, Mang tới cho bạn một trải nghiệm hoàn toàn khác biệt với hệ thông phím giả cơ cao cấp cực nhạy bén cùng hệ thống led rực rỡ. Hãy cùng Đại lý phụ kiện tìm hiểu kỹ hơn về mã sản phẩm này nhé

Đánh giá Bàn phím giả cơ Lightning PR8900
+> Bàn phím Lightning PR-8900 gây ấn tượng mạnh cho người nhìn bởi thiết kế vô cùng khỏe khoắn. Mặt trên của phím được phủ một tấm hợp kim nhôm với lớp sơn tĩnh điện cao cấp nhằm nâng cao độ bền bỉ, chống rơi vỡ móp méo

', 650000, 78, 1, 4, N'bp5.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (44, N'Máy tính để bàn  Pavilion', N'CPU Intel Core i5, 8GB RAM, 1TB HDD, Card đồ họa NVIDIA GTX 1050', 5000000, 40, 1, 2, N'pc 23.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (45, N'Máy tính để bàn Gaming', N'CPU Intel Core i5, 8GB RAM, 1TB HDD, Card đồ họa NVIDIA GTX 1050', 7600000, 30, 1, 2, N'pc 23.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (46, N'Tai nghe HQ', N'Tai nghe máy tính chơi game Exavp K5 Có Led 
Tai nghe Phong cách game, micro có khớp gấp gọn được, đèn led đổi màu nhìn thật hầm hố. 
Âm thanh: stereo
Tần số đáp ứng: 20Hz – 20KHz
Kích thước loa: 50 mm
Độ nhạy loa: 100 dB
Loại microphone: nhựa cứng (có thể gập lên xuống)
Kích thước micrô: 6.0 x 5.0 mm
Độ nhạy của micrô: = < 4dB
Kết nối: 2 cổng 3.5 mm (1 mic 1 phone), 1 cổng USB (cấp nguồn led)
Chiều dài cáp: 2.2m (dây dù chống đứt) 
Bảo hành 6 tháng ', 670000, 56, 1, 6, N'TAI NGH1.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (47, N'Tai nghe máy tính chơi game Exavp K5', N'Tai nghe máy tính chơi game Exavp K5 Có Led 
Tai nghe Phong cách game, micro có khớp gấp gọn được, đèn led đổi màu nhìn thật hầm hố. 
Âm thanh: stereo
Tần số đáp ứng: 20Hz – 20KHz
Kích thước loa: 50 mm
Độ nhạy loa: 100 dB
Loại microphone: nhựa cứng (có thể gập lên xuống)
Kích thước micrô: 6.0 x 5.0 mm
Độ nhạy của micrô: = < 4dB
Kết nối: 2 cổng 3.5 mm (1 mic 1 phone), 1 cổng USB (cấp nguồn led)
Chiều dài cáp: 2.2m (dây dù chống đứt) 
Bảo hành 6 tháng ', 450000, 22, 1, 6, N'taingh3.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (48, N'Phần Mềm Diệt Virus BKAV Profressional 1 PC', N'Mô tả sản phẩm
Phần Mềm Diệt Virus BKAV Profressional sử dụng Trí tuệ nhân tạo (AI) tổng hợp các dữ liệu được ghi nhận, phân tích và chỉ ra các mối nguy hiểm người sử dụng có thể gặp phải như bị xóa dữ liệu, bị theo dõi bởi phần mềm gián điệp hay bị mất cắp tài khoản… từ đó phát lệnh xử lý, ngăn chặn và tiêu diệt mã độc.
Bkav Pro Internet Security là phần mềm diệt virus tiên phong trong sử dụng công nghệ điện toán đám mây trong lĩnh vực bảo mật, là phần mềm tốt nhất do Hiệp hội An toàn thông tin Việt Nam bình chọn.
Bkav Pro được trang bị những công nghệ cao cấp, bảo vệ đa lớp, tự động phát hiện và tiêu diệt virus mà không cần cập nhật mẫu nhận diện mới.
Các bản update được cập nhật liên tục từ máy chủ Bkav, đảm bảo phần mềm luôn có đầy đủ sức mạnh và tính năng mới nhất.
Sử dụng Bkav Pro giúp bảo vệ máy tính một cách toàn diện ngăn chặn các loại virus xóa dữ liệu, bị theo dõi bởi phần mềm gián điệp, bị đánh cắp tài khoản ngân hàng,…
Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 168999, 50, 1, 11, N'pmdvirus.png', NULL, NULL, 2)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (49, N'Phần Mềm Diệt Virus BKAV Profressional 1 PC', N'Mô tả sản phẩm
Phần Mềm Diệt Virus BKAV Profressional sử dụng Trí tuệ nhân tạo (AI) tổng hợp các dữ liệu được ghi nhận, phân tích và chỉ ra các mối nguy hiểm người sử dụng có thể gặp phải như bị xóa dữ liệu, bị theo dõi bởi phần mềm gián điệp hay bị mất cắp tài khoản… từ đó phát lệnh xử lý, ngăn chặn và tiêu diệt mã độc.
Bkav Pro Internet Security là phần mềm diệt virus tiên phong trong sử dụng công nghệ điện toán đám mây trong lĩnh vực bảo mật, là phần mềm tốt nhất do Hiệp hội An toàn thông tin Việt Nam bình chọn.
Bkav Pro được trang bị những công nghệ cao cấp, bảo vệ đa lớp, tự động phát hiện và tiêu diệt virus mà không cần cập nhật mẫu nhận diện mới.
Các bản update được cập nhật liên tục từ máy chủ Bkav, đảm bảo phần mềm luôn có đầy đủ sức mạnh và tính năng mới nhất.
Sử dụng Bkav Pro giúp bảo vệ máy tính một cách toàn diện ngăn chặn các loại virus xóa dữ liệu, bị theo dõi bởi phần mềm gián điệp, bị đánh cắp tài khoản ngân hàng,…
Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 160000, 25, 1, 11, N'pmem3.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (50, N'Office', N'Microsoft Office 2016 Cho Mac OS – Bộ Phần Mềm Văn Phòng Của Microsoft', 1500000, 50, 1, 13, N'offic.png', NULL, NULL, 20)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (51, N'Bộ Phần Mềm Văn Phòng Của Microsoft', N'Microsoft Office 2011 Cho Mac OS – Bộ Phần Mềm Văn Phòng Của Microsoft', 2499999, 50, 1, 13, N'ofice mac.png', NULL, NULL, 29)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (52, N'switch 8port', N'Thiết bị chuyển mạch 8 cổng Switch RUIJIE RG-ES108GD được thiết kế đơn giản với chất liệu bằng kim loại. Bên cạnh đó, thiết bị chuyển mạch được trang bị với 8 cổng có tốc độ kết nối 10/10/1000Mbps, tốc độ chuyển mạch lên đến 16Gbps cùng với hỗ trợ Auto MDI/MDIX. Có thể giúp quản lý hiệu quả hệ thống mạng và dễ dàng sử dụng, có tính bảo mật cao. Phù hợp cho những doanh nghiệp nhỏ đáp ứng được những nhu cầu sử dụng mạng của khách hàng.

Ngoài ra, RG-ES108GD là một trong những sản phẩm thuộc dòng thiết bị Hub-Switch đến từ thương hiệu Ruijie Network được nhiều người tin tưởng sử dụng. Đây cũng chính là nhà cung cấp những thiết bị mạng cấp doanh nghiệp hàng đầu, với những sản phẩm có chất lượng cao cùng với những tính năng hiện đại dễ dàng sử dụng và quản lý hiệu quả.



Thiết bị chuyển mạch 8 cổng Switch RUIJIE RG-ES108GD

Các thông số của Thiết bị chuyển mạch 8 cổng Switch RUIJIE RG-ES108GD

8 cổng 10/100/1000 BASE-T
Tốc độ chuyển mạch: 16Gbps
Hỗ trợ auto MDI/MDIX
Nguồn DC 9.0V / 600mA
MAC: 8K
Nhiệt độ hoạt động: 0°C~40°C
Kích thước: 144mm*85mm*23mm
Chất liệu: vỏ kim loại
Những tính năng nổi bật của Thiết bị chuyển mạch 8 cổng Switch RUIJIE RG-ES108GD

Hỗ trợ Auto MDI/MDIX



 

Hỗ trợ Auto MDI/MDIX

 

Thiết bị chuyển mạch 8 cổng Switch RUIJIE RG-ES108GD được trang bị bao gồm 8 cổng kết nối cùng với 5 cổng sử dụng cáp RJ45 có tốc độ 10/100/1000Mbps. Từ đó, cho phép những máy tính gần nhau có thể truy cập được internet và kết nối dữ liệu một cách nhanh chóng. Thêm vào đó, thiết bị còn có tính năng giúp tự động đàm phán và hỗ trợ được Auto MDI/MDIX giúp người dùng có thể quản trị được hệ thống mạng linh hoạt.

Thiết kế nhỏ gọn, tản nhiệt tốt



Thiết kế nhỏ gọn, tản nhiệt tốt

 

RUIJIE RG-ES108GD được thiết kế với kích thước 144x85x23 mm, từ đó có thể thuận tiện cho việc lắp đặt và di chuyển được thiết bị đến bất kỳ đâu. Bên cạnh đó, thiết bị chuyển mạch với vỏ bằng kim loại giúp tăng khả năng tản nhiệt hiệu quả. Và có thể làm mát trong suốt quá trình làm việc và đảm bảo được độ bền bỉ cho sản phẩm.

Tốc độ chuyển mạch lên đến 16Gbps



 

Tốc độ chuyển mạch lên đến 16Gbps

 

RUIJIE RG-ES108GD được trang bị tốc độ truyền cao lên đến 16Mbps cho phép những thiết bị được kết nối một cách mượt mà và nâng cao được năng suất và hiệu quả làm việc cao. Thêm vào đó, Còn trang bị được nguồn cấp External 5VDC 1.0A có tính ứng dụng cao, cùng với địa chủ MAC 8K có khả năng mở rộng mạng đến với những hệ thống mạng có quy mô lớn.

Ngoài ra, Thiết bị chuyển mạch 8 cổng Switch RUIJIE RG-ES108GD chính là một trong những giải pháp cần thiết dành riêng cho những doanh nghiệp nhỏ đến từ thương hiệu Ruijie. Bởi thiết bị được hỗ trợ nhiều những tính năng giúp quản lý dễ dàng và nhanh chóng có thể đảm bảo được tốc độ truyền được ổn định. Vì thế, nếu bạn có nhu cầu tìm mua Thiết bị chuyển mạch 8 cổng Switch RUIJIE RG-ES108GD chính hãng, hãy nhanh tay liên hệ với chúng tôi qua Hotline bên dưới để được nhân viên hỗ trợ nhé!', 1989999, 10, 1, 14, N'swit.png', NULL, NULL, 16)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (53, N'Switch 5 cổng Ruijie RG-ES205GC ', N'Switch 5 cổng Ruijie RG-ES205GC công suất 54W, Tốc độ chuyển mạch 10Gbps
Switch 5 cổng Ruijie RG-ES205GC là dòng thiết bị switch được thiết kế nhỏ gọn, tiết kiệm không gian và dễ dàng lắp đặt tại các vị trí khác, trang bị công nghệ xử lý thông minh. Switch Ruijie RG-ES205GC với tốc độ chuyển mạch lên đến 10Gbps. Với Bộ chuyển mạch RG-ES205GC được trang bị 4 cổng 10/100/1000M và 1 cổng 10/100/1000M uplink đảm bảo băng thông tốc độ cao, ổn định. Bên cạnh đó, Thiết bị chia mạng Ruijie RG-ES205GC được đáp ứng được nhu cầu truyền tải hình ảnh, âm thanh của camera. Ruijie RG-ES205GC hỗ trợ đồng thời cấu hình VLAN rất hiện đại phù hợp đối với những hộ gia đình có đông người hoặc những doanh nghiệp vừa và nhỏ sử dụng.

Ngoài ra, Switch 5 cổng Ruijie RG-ES205GC là một trong các sản phẩm thiết bị Switch Ruijie từ RUIJIE nhiều người sử dụng và tin dùng bây giờ. Thêm vào đó, thương hiệu Ruijie chính là thương hiệu cung cấp các thiết bị mạng cho doanh nghiệp hàng đầu tại Trung Quốc. Cũng như Ruijie cung cấp giải pháp doanh nghiệp có tính năng nổi bật không bị gián đoạn, chuyển mạch nhanh đáp ứng được các yêu cầu cho những dự án lớn.

 

Switch 5 cổng Ruijie RG-ES205GC chính hãng, giá tốt tại Việt Hàn

Các thông số của Switch 5 cổng Ruijie RG-ES205GC

4 cổng 10/100/1000M

1 cổng 10/100/1000M uplink

Tốc độ chuyển mạch: 10Gbps

MAC: 2K

Tính năng Layer 2: port mirroring, loop protection, cable detection

Tính năng bảo mật: broadcast storm suppression, port speed limit, port isolation

Dễ dàng quản lý và cấu hình qua Ruijie cloud

Tích hợp Web management

Chống sét: 4KV

Kích thước: 148*78*26mm

Nhiệt độ hoạt động: 0°C~40°C

Nguồn AC 100~240V, 50/60Hz

Hỗ trợ IEEE802.1Q VLAN, bảo mật giữa các nhóm thiết bị', 760000, 29, 1, 14, N'swit5.png', NULL, NULL, 17)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (54, N'Ram Server Lenovo 16GB DDR4 2400MHz', N'Ram Server Lenovo 16GB DDR4 2400MHz', 1199999, 100, 1, 7, N'rampclenovo.png', NULL, NULL, 10)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (55, N'SSD ADATA 256 GB ', N'Nơi lưu trưc cá nhân', 450000, 50, 3, 8, N'ssd.jpg', NULL, NULL, 6)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (56, N'ram ddr4 3200', N'ram ddr4 3200', 560000, 30, 1, 7, N'rampc.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (57, N'Ram DDR5 3200', N'Ram DDR5 3200', 780000, 10, 1, 7, N'rampc.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (58, N'Ổ cứng Seagate BarraCuda 2Tb ', N'Ổ cứng HDD Seagate  2Tb SATA3 7200rpm
Barracuda LP (ST2000DM001) là ổ cứng nội bộ đầu tiên của Seagate có dung lượng lưu trữ 2 terabyte dữ liệu; 2TB hiện là công suất tối đa của một ổ đĩa 3,5 inch SATA 3. Các ổ cứng Seagate Barracuda LP cũng quản lý để giảm tiêu thụ năng lượng so với ổ 7200rpm thông thường trong khi vẫn giữ được hiệu suất hợp lý.', 500000, 20, 1, 8, N'hdd.png', NULL, NULL, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [Quantity], [ProviderId], [CateId], [Photo], [StartDate], [EndDate], [Discount]) VALUES (59, N'hchfc', N'vuhwnnivw', 8483777, 829293, 1, 1, N'trung.jpg', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([ProviderId], [Name], [Address], [Phone]) VALUES (1, N'CÔNG TY CỔ PHẦN MTV HTLShop', N'Bình Định', 12343214)
INSERT [dbo].[Provider] ([ProviderId], [Name], [Address], [Phone]) VALUES (2, N'MÁY TÍNH NHẬP KHẨU USA', N'Trung Quốc', 1243234)
INSERT [dbo].[Provider] ([ProviderId], [Name], [Address], [Phone]) VALUES (3, N'FPT SHOP', N'Bình Dương', 22134312)
INSERT [dbo].[Provider] ([ProviderId], [Name], [Address], [Phone]) VALUES (7, N'NCC1', N'số 12, K8, Trương Định, TDM, Bình Dương', 968012687)
SET IDENTITY_INSERT [dbo].[Provider] OFF
GO
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'ADD_ADMIN', N'thêm quản trị')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'ADD_CATE', N'thêm loại sản phẩm')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'ADD_NEWS', N'Thêm tin tức')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'ADD_PRODUCT', N'thêm sản phẩm')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'ADD_PROVIDER', N'thêm nhà cung cấp')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'ADD_USER', N'thêm người dùng')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'DELETE_ADMIN', N'xóa quản trị')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'DELETE_CATE', N'xóa loại sản phẩm')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'DELETE_NEWS', N'xóa tin tức')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'DELETE_PRODUCT', N'xóa sản phẩm')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'DELETE_PROVIDER', N'xóa nhà cung cấp')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'MANAGER_ORDER', N'quản lý hóa đơn')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'PRINT_ORDER', N'in hóa đơn')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'SATISTIC_ORDER', N'thống kê hóa đơn')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'SHOW_ORDER', N'hiển thị hóa đơn')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'UPDATE_ADMIN', N'cập nhật quản trị')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'UPDATE_CATE', N'cập nhật loại sản phẩm')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'UPDATE_NEWS', N'Cập nhật tin tức')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'UPDATE_PRODUCT', N'cập nhật sản phẩm')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'UPDATE_PROVIDER', N'cập nhật nhà cung cấp')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'UPDATE_USER', N'cập nhật người dùng')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'VIEW_ADMIN', N'hiển thị quản trị')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'VIEW_CATE', N'hiển thị loại sản phẩm')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'VIEW_NEWS', N'hiển thị tin tức')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'VIEW_PRODUCT', N'hiển thị sản phẩm')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'VIEW_PROVIDER', N'hiển thị nhà cung cấp')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'VIEW_USER', N'hiển thị người dùng')
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (1, N'Đã tiếp nhận')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (2, N'Đang chờ xử lý')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (3, N'Đã xử lý')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (4, N'Đang giao hàng')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (5, N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Name], [Address], [Phone], [Username], [Password], [Email], [GroupId], [Status]) VALUES (39, N'aaaa', N'Dịch Vọng Hậu, Cầu Giấy, Hà Nội', 968012687, N'sam', N'332532dcfaa1cbf61e2a266bd723612c', N'dangvansam98@gmail.com', N'USER', 1)
INSERT [dbo].[User] ([UserId], [Name], [Address], [Phone], [Username], [Password], [Email], [GroupId], [Status]) VALUES (40, N'admin', N'HCM', 2222, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'neil.duynguyen@gmail.com', N'ADMIN', 1)
INSERT [dbo].[User] ([UserId], [Name], [Address], [Phone], [Username], [Password], [Email], [GroupId], [Status]) VALUES (41, N'son123', N'Hải Dương', 12345, N'son', N'498d3c6bfa033f6dc1be4fcc3c370aa7', N'dangvansam98@gmail.com', N'USER', 1)
INSERT [dbo].[User] ([UserId], [Name], [Address], [Phone], [Username], [Password], [Email], [GroupId], [Status]) VALUES (42, N'Nhân Viên 1', N'Hà Nội', 123456789, N'nhanvien1', N'fcf321d09609565b7a1ce6e70f1f5056', N'nv1@gmail.com', N'MOD', 1)
INSERT [dbo].[User] ([UserId], [Name], [Address], [Phone], [Username], [Password], [Email], [GroupId], [Status]) VALUES (43, N'Phạm Thị Thu Hiền', N'Đại học bình dương', 344438837, N'THUHIEN', N'51e8e632cc4ef9ae4fb90779bbb070ab', N'nthanhtrung649@gmail.com', N'USER', 1)
INSERT [dbo].[User] ([UserId], [Name], [Address], [Phone], [Username], [Password], [Email], [GroupId], [Status]) VALUES (44, N'Nguyen thanh trung', N'bình định', 344438836, N'a', N'25d55ad283aa400af464c76d713c07ad', N'20050020@student.bdu.edu.vn', N'USER', 1)
INSERT [dbo].[User] ([UserId], [Name], [Address], [Phone], [Username], [Password], [Email], [GroupId], [Status]) VALUES (45, N'nguyễn hoàng hảo', N'bình dương', 364438837, N'hao', N'25d55ad283aa400af464c76d713c07ad', N'20050020@student.bdu.edu.vn', N'USER', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserGroups] ([GroupId], [Name]) VALUES (N'ADMIN', N'Quản trị  ')
INSERT [dbo].[UserGroups] ([GroupId], [Name]) VALUES (N'MOD', N'Quản lý   ')
INSERT [dbo].[UserGroups] ([GroupId], [Name]) VALUES (N'USER', N'Người dùng')
GO
