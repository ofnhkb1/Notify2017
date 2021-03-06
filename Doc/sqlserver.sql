USE [DB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2016/7/15 10:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [varchar](36) NOT NULL,
	[AccountNo] [varchar](100) NOT NULL,
	[AccountName] [varchar](100) NOT NULL,
	[Mail] [varchar](100) NOT NULL,
	[Mobile] [varchar](11) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[PayPassword] [varchar](100) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 2016/7/15 10:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [varchar](36) NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[ParentId] [varchar](36) NOT NULL,
	[Url] [varchar](200) NOT NULL,
	[Sort] [int] NOT NULL,
	[Icon] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2016/7/15 10:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [varchar](36) NOT NULL,
	[RoleName] [varchar](100) NOT NULL,
	[RoleDescription] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 2016/7/15 10:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[Id] [varchar](36) NOT NULL,
	[RoleId] [varchar](36) NOT NULL,
	[MenuId] [varchar](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleUserRelationship]    Script Date: 2016/7/15 10:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleUserRelationship](
	[Id] [varchar](36) NOT NULL,
	[AccountId] [varchar](36) NOT NULL,
	[RoleId] [varchar](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VerificationCode]    Script Date: 2016/7/15 10:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VerificationCode](
	[Id] [varchar](36) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Code] [varchar](100) NOT NULL,
	[AccountId] [varchar](36) NOT NULL,
	[Contact] [varchar](100) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([Id], [AccountNo], [AccountName], [Mail], [Mobile], [Password], [PayPassword], [CreateTime], [IsAdmin], [Status]) VALUES (N'15b8b9d3-a6a1-4d74-929c-7c46a7e7458f', N'sd', N'ss', N's', N'ss', N'E10ADC3949BA59ABBE56E057F20F883E', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(N'2015-11-25 16:30:57.000' AS DateTime), 0, 1)
INSERT [dbo].[Account] ([Id], [AccountNo], [AccountName], [Mail], [Mobile], [Password], [PayPassword], [CreateTime], [IsAdmin], [Status]) VALUES (N'3823df7a-7aec-499e-8167-97982ed51f73', N'djfkhja', N'5555', N'5555', N'5555', N'E10ADC3949BA59ABBE56E057F20F883E', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(N'2015-11-25 16:31:07.000' AS DateTime), 0, 1)
INSERT [dbo].[Account] ([Id], [AccountNo], [AccountName], [Mail], [Mobile], [Password], [PayPassword], [CreateTime], [IsAdmin], [Status]) VALUES (N'717d2f69-ae00-415a-a810-636ae9bb5425', N'x', N'c', N'x', N'x', N'E10ADC3949BA59ABBE56E057F20F883E', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(N'2015-11-25 16:25:36.000' AS DateTime), 0, 1)
INSERT [dbo].[Account] ([Id], [AccountNo], [AccountName], [Mail], [Mobile], [Password], [PayPassword], [CreateTime], [IsAdmin], [Status]) VALUES (N'da8adcf2-1c5b-4118-9d62-cd69d31602bd', N'admin', N'管理员Notify', N'1102253039@qq.com', N'13551192896', N'E10ADC3949BA59ABBE56E057F20F883E', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(N'2015-11-23 14:47:57.000' AS DateTime), 1, 1)
INSERT [dbo].[Account] ([Id], [AccountNo], [AccountName], [Mail], [Mobile], [Password], [PayPassword], [CreateTime], [IsAdmin], [Status]) VALUES (N'e11f525f-e8ce-4e92-99fe-820249d5ea8e', N'a', N'a', N's', N'a', N'E10ADC3949BA59ABBE56E057F20F883E', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(N'2015-11-25 16:26:09.000' AS DateTime), 0, 1)
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'2b4798cb-9a0d-422f-93c7-882b79c16e89', N'城市管理', N'11', N'3ef60878-ac8b-44d1-945d-45e4f59598eb', N'11', 11, N'icon-nav')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'3891003f-5f74-4b2a-bbf2-2c2854aa702b', N'用户列表', N'6', N'8dc7bb8d-126c-4467-be37-72ca71340b6d', N'/User/UserList', 6, N'icon-nav')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'3d7f82bd-b65c-4db8-9221-cc507c05f4c5', N'区域管理', N'9', N'3ef60878-ac8b-44d1-945d-45e4f59598eb', N'9', 9, N'icon-nav')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'3ef60878-ac8b-44d1-945d-45e4f59598eb', N'基础数据管理', N'7', N'46c7ac23-6c73-49d5-b53d-1b773da5a762', N'7', 7, N'icon-sys')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'46C7AC23-6C73-49D5-B53D-1B773DA5A762', N'菜单管理', N'菜单管理 ', N'00000000-0000-0000-0000-000000000000', N'', 1, N'icon-sys')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'6ff9ecc6-fdb1-48bf-b31f-e7b0701a90eb', N'角色管理', N'4', N'756afd03-4ef3-4fd2-8674-7c73b0f04c8a', N'/Role/RoleList', 4, N'icon-nav')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'756afd03-4ef3-4fd2-8674-7c73b0f04c8a', N'权限管理', N'权限管理', N'46c7ac23-6c73-49d5-b53d-1b773da5a762', N'url', 2, N'icon-sys')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'87cef101-5189-47f5-adf7-bebf464aa1ed', N'县城管理', N'12', N'3ef60878-ac8b-44d1-945d-45e4f59598eb', N'12', 12, N'icon-nav')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'8dc7bb8d-126c-4467-be37-72ca71340b6d', N'用户管理', N'用户管理', N'46c7ac23-6c73-49d5-b53d-1b773da5a762', N'5', 5, N'icon-sys')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'bae71b5f-66a5-452a-9938-63fdd7140bc4', N'菜单管理', N'菜单管理', N'756afd03-4ef3-4fd2-8674-7c73b0f04c8a', N'/Menu/MenuList', 3, N'icon-nav')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'c175709e-64e5-4c14-ace5-a41891f0de1d', N'国家管理', N'8', N'3ef60878-ac8b-44d1-945d-45e4f59598eb', N'8', 8, N'icon-nav')
INSERT [dbo].[Menu] ([Id], [Title], [Description], [ParentId], [Url], [Sort], [Icon]) VALUES (N'dcad96df-0d63-4968-a310-c16bb2462cf2', N'省份管理', N'10', N'3ef60878-ac8b-44d1-945d-45e4f59598eb', N'10', 10, N'icon-nav')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'1074A45D-5556-4F88-AB7F-0261B25DA7C4', N'权限管理', N'权限系统')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'19d4f1d4-2877-4ce5-af24-b8ae2bce5015', N'f', N'da')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'1CB37B77-33EC-4466-A427-B27551D03521', N'55', N'55')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'1e4a5f96-d4a7-466b-9b8f-2256e6d68993', N'dd', N'f')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'218C1025-38C0-43CB-A682-9540D84DF9E9', N'd4f4p', N'ff')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'31e66e5f-7ed3-4903-b0a6-d42a0cf6f745', N's', N'dds')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'53b902ad-fe5d-4776-8ca3-50761883c290', N'14', N'134')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'78c9c382-8895-431f-a379-ca7cbc3fc36d', N'13', N'13')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'81b6a293-9b2c-47e5-ac0e-7a8a6d7bd870', N'17', N'17')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'8d40f7b4-6e33-4206-a334-45bd98213d68', N'er', N'rr')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'9DE3FC26-F8F9-4DBB-94DF-3B1042FC3536', N'测试选中', N'5d')
INSERT [dbo].[Role] ([Id], [RoleName], [RoleDescription]) VALUES (N'a8ec06f2-0fd7-476a-847e-a360df1feeca', N'默认角色', N'默认角色')
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [MenuId]) VALUES (N'067bcfc7-6f14-44ee-bc02-fabb089b9cd9', N'9de3fc26-f8f9-4dbb-94df-3b1042fc3536', N'c175709e-64e5-4c14-ace5-a41891f0de1d')
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [MenuId]) VALUES (N'1334e3ec-e446-4541-a2fe-fe159c0c3649', N'9de3fc26-f8f9-4dbb-94df-3b1042fc3536', N'3ef60878-ac8b-44d1-945d-45e4f59598eb')
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [MenuId]) VALUES (N'3AFA7560-058A-456B-A36E-F56EEC951035', N'A8EC06F2-0FD7-476A-847E-A360DF1FEECA', N'46C7AC23-6C73-49D5-B53D-1B773DA5A762')
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [MenuId]) VALUES (N'496380BB-C34B-44F2-9389-EBEC62470F45', N'A8EC06F2-0FD7-476A-847E-A360DF1FEECA', N'BAE71B5F-66A5-452A-9938-63FDD7140BC4')
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [MenuId]) VALUES (N'5746b22e-0f5e-4f9b-8aef-e0d57e5dee67', N'9de3fc26-f8f9-4dbb-94df-3b1042fc3536', N'87cef101-5189-47f5-adf7-bebf464aa1ed')
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [MenuId]) VALUES (N'80DEFE05-79A5-484B-B975-CD2DE640F9C6', N'A8EC06F2-0FD7-476A-847E-A360DF1FEECA', N'756AFD03-4EF3-4FD2-8674-7C73B0F04C8A')
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [MenuId]) VALUES (N'81fca8ee-4cfb-4628-8a90-886fd1969296', N'9de3fc26-f8f9-4dbb-94df-3b1042fc3536', N'46c7ac23-6c73-49d5-b53d-1b773da5a762')
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [MenuId]) VALUES (N'CD07E57E-875E-4BCC-901D-6CD339545B1C', N'A8EC06F2-0FD7-476A-847E-A360DF1FEECA', N'6FF9ECC6-FDB1-48BF-B31F-E7B0701A90EB')
