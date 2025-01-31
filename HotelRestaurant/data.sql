USE [HotelRestaurant]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 3/23/2022 1:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[catagoryID] [int] IDENTITY(1,1) NOT NULL,
	[catagoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[catagoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 3/23/2022 1:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NULL,
	[total] [decimal](18, 0) NULL,
	[userID] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_tblOrder] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 3/23/2022 1:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[detailID] [int] IDENTITY(1,1) NOT NULL,
	[price] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
	[orderID] [int] NULL,
	[productID] [int] NULL,
 CONSTRAINT [PK_tblOrderDetail] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 3/23/2022 1:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[price] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
	[catagoryID] [int] NULL,
	[importDate] [date] NULL,
	[usingDate] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 3/23/2022 1:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblRoles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 3/23/2022 1:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [int] NOT NULL,
	[address] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([catagoryID], [catagoryName]) VALUES (1, N'Buffet')
INSERT [dbo].[tblCategory] ([catagoryID], [catagoryName]) VALUES (2, N'Breakfast')
INSERT [dbo].[tblCategory] ([catagoryID], [catagoryName]) VALUES (3, N'Lunch')
INSERT [dbo].[tblCategory] ([catagoryID], [catagoryName]) VALUES (4, N'Dinner')
INSERT [dbo].[tblCategory] ([catagoryID], [catagoryName]) VALUES (5, N'Super')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrder] ON 

INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (1, CAST(N'2022-03-12' AS Date), CAST(30000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (2, CAST(N'2022-03-12' AS Date), CAST(40000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (3, CAST(N'2022-03-12' AS Date), CAST(50000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (4, CAST(N'2022-03-12' AS Date), CAST(50000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (5, CAST(N'2022-03-12' AS Date), CAST(85000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (6, CAST(N'2022-03-12' AS Date), CAST(20000 AS Decimal(18, 0)), 3, 1)
INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (7, CAST(N'2022-03-12' AS Date), CAST(50000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (8, CAST(N'2022-03-23' AS Date), CAST(50000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES (9, CAST(N'2022-03-23' AS Date), CAST(50000 AS Decimal(18, 0)), 1, 1)
SET IDENTITY_INSERT [dbo].[tblOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderDetail] ON 

INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (3, CAST(20000 AS Decimal(18, 0)), 1, 5, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (4, CAST(30000 AS Decimal(18, 0)), 1, 5, 2)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (5, CAST(20000 AS Decimal(18, 0)), 4, 5, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (6, CAST(5000 AS Decimal(18, 0)), 1, 5, 3)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (7, CAST(20000 AS Decimal(18, 0)), 1, 6, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (8, CAST(30000 AS Decimal(18, 0)), 1, 7, 2)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (9, CAST(20000 AS Decimal(18, 0)), 1, 7, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (10, CAST(20000 AS Decimal(18, 0)), 1, 8, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (11, CAST(30000 AS Decimal(18, 0)), 1, 8, 2)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (12, CAST(20000 AS Decimal(18, 0)), 1, 9, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (13, CAST(30000 AS Decimal(18, 0)), 1, 9, 2)
SET IDENTITY_INSERT [dbo].[tblOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [catagoryID], [importDate], [usingDate], [status]) VALUES (1, N'Crab Soup', N'supcua', CAST(20000 AS Decimal(18, 0)), 200, 1, CAST(N'2022-01-02' AS Date), CAST(N'2022-02-01' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [catagoryID], [importDate], [usingDate], [status]) VALUES (2, N'Salted Fried Crab', N'cuarangmuoi', CAST(30000 AS Decimal(18, 0)), 100, 1, CAST(N'2022-02-28' AS Date), CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [catagoryID], [importDate], [usingDate], [status]) VALUES (3, N'Beef Salad', N'nombo', CAST(5000 AS Decimal(18, 0)), 312, 2, CAST(N'2022-02-27' AS Date), CAST(N'2022-03-06' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [catagoryID], [importDate], [usingDate], [status]) VALUES (4, N'Shrimp Salad', N'goitom', CAST(123 AS Decimal(18, 0)), 123, 2, CAST(N'2022-03-23' AS Date), CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [catagoryID], [importDate], [usingDate], [status]) VALUES (6, N'Vit quay', N'vitquay', CAST(11111 AS Decimal(18, 0)), 1, 1, CAST(N'2022-03-20' AS Date), CAST(N'2022-03-20' AS Date), 1)
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRoles] ON 

INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (1, N'Admin')
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[tblRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON 

INSERT [dbo].[tblUsers] ([userID], [fullname], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (1, N'ADMIN', N'123', 1, N'HCM', CAST(N'2000-01-01' AS Date), N'0329555111', N'admin@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullname], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (2, N'USER', N'123', 2, N'HCM', CAST(N'2000-01-01' AS Date), N'0213445774', N'user@gmail.com', 2)
INSERT [dbo].[tblUsers] ([userID], [fullname], [password], [roleID], [address], [birthday], [phone], [email], [status]) VALUES (3, N'dinh', N'123', 2, N'Can Tho', CAST(N'2022-03-06' AS Date), N'0852690600', N'dinhttce140331@fpt.edu.vn', 1)
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK_tblOrder_tblUsers] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK_tblOrder_tblUsers]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblProduct] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProduct] ([productID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK_tblOrderDetail_tblProduct]
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblRoles] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRoles] ([roleID])
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK_tblUsers_tblRoles]
GO
