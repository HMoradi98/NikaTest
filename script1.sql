
sssssssss
GO
/****** Object:  Schema [core]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE SCHEMA [core]
GO
/****** Object:  Table [cms].[Comment]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cms].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Commenter] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](128) NULL,
	[ContentId] [bigint] NOT NULL,
 CONSTRAINT [PK_cms.Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [cms].[Content]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cms].[Content](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ContentStructId] [int] NULL,
	[ContentTypeId] [int] NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Sys_Site] [bit] NOT NULL,
	[Sys_PublishDate] [datetime] NOT NULL,
 CONSTRAINT [PK_cms.Content] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [cms].[Content_Culture]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cms].[Content_Culture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentId] [bigint] NOT NULL,
	[Text] [ntext] NULL,
	[InnerText] [nvarchar](max) NULL,
	[LangCode] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_cms.Content_Culture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [cms].[ContentParameterValue]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cms].[ContentParameterValue](
	[ContentId] [bigint] NOT NULL,
	[ParameterId] [int] NOT NULL,
	[ParameterValueId] [bigint] NULL,
	[Value] [nvarchar](200) NULL,
	[BoolValue] [bit] NOT NULL,
	[NumberValue] [bigint] NOT NULL,
 CONSTRAINT [PK_cms.ContentParameterValue] PRIMARY KEY CLUSTERED 
(
	[ContentId] ASC,
	[ParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [cms].[ContentStruct]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cms].[ContentStruct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[sys_IsDeleted] [bit] NULL,
	[sys_DeleteDate] [datetime] NULL,
	[sys_RegDate] [datetime] NULL,
	[sys_RegUserId] [nvarchar](128) NULL,
	[sys_IsEnabled] [bit] NULL,
 CONSTRAINT [PK_cms.ContentStruct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [cms].[ContentType]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cms].[ContentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
 CONSTRAINT [PK_cms.ContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [cms].[Tag]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cms].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Keyword] [nvarchar](200) NULL,
 CONSTRAINT [PK_cms.Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[__MigrationHistory]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [core].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_core.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [core].[Access]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [core].[Access](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaId] [int] NOT NULL,
	[Controller] [varchar](70) NOT NULL,
	[Action] [varchar](70) NOT NULL,
	[Admin] [bit] NOT NULL,
	[Site] [bit] NOT NULL,
	[MenuId] [int] NULL,
	[sys_RegDate] [datetime] NULL,
	[sys_RegUserId] [nvarchar](128) NULL,
	[sys_IsEnabled] [bit] NULL,
 CONSTRAINT [PK_core.Access] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [core].[Area]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Area](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_core.Area] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Attachment]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Attachment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](200) NULL,
	[AttachmentTypeId] [int] NOT NULL,
	[Title] [nvarchar](200) NULL,
 CONSTRAINT [PK_core.Attachment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[AttachmentType]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[AttachmentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Extention] [nvarchar](max) NULL,
 CONSTRAINT [PK_core.AttachmentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [core].[Branch]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
	[WorkGroupId] [int] NOT NULL,
	[Tel] [nvarchar](11) NULL,
	[Fax] [nvarchar](11) NULL,
	[sys_IsDeleted] [bit] NULL,
	[sys_DeleteDate] [datetime] NULL,
	[sys_RegDate] [datetime] NULL,
	[sys_RegUserId] [nvarchar](128) NULL,
	[sys_IsEnabled] [bit] NULL,
 CONSTRAINT [PK_core.Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Contact]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](128) NULL,
	[ContactTypeId] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_core.Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [core].[ContactType]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[ContactType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Expression] [nvarchar](200) NULL,
	[IsRequired] [bit] NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_core.ContactType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[ContentAttachment]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[ContentAttachment](
	[Content_Id] [bigint] NOT NULL,
	[Attachment_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_core.ContentAttachment] PRIMARY KEY CLUSTERED 
(
	[Content_Id] ASC,
	[Attachment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[ContentTypeParameter]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[ContentTypeParameter](
	[ContentType_Id] [int] NOT NULL,
	[Parameter_Id] [int] NOT NULL,
 CONSTRAINT [PK_core.ContentTypeParameter] PRIMARY KEY CLUSTERED 
(
	[ContentType_Id] ASC,
	[Parameter_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[CultureKey]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[CultureKey](
	[TextKey] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_core.CultureKey] PRIMARY KEY CLUSTERED 
(
	[TextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[CultureValue]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[CultureValue](
	[TextKey] [nvarchar](200) NOT NULL,
	[LangCode] [nvarchar](5) NOT NULL,
	[Value] [nvarchar](200) NULL,
 CONSTRAINT [PK_core.CultureValue] PRIMARY KEY CLUSTERED 
(
	[TextKey] ASC,
	[LangCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Customer]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Customer](
	[Id] [nvarchar](128) NOT NULL,
	[NationalCode] [nvarchar](max) NULL,
	[BirthDate] [datetime] NULL,
	[Company] [nvarchar](200) NULL,
	[Post] [nvarchar](200) NULL,
 CONSTRAINT [PK_core.Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [core].[Customer_Culture]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Customer_Culture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](128) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[LangCode] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_core.Customer_Culture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Department]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[sys_IsDeleted] [bit] NULL,
	[sys_DeleteDate] [datetime] NULL,
	[sys_RegDate] [datetime] NULL,
	[sys_RegUserId] [nvarchar](128) NULL,
	[sys_IsEnabled] [bit] NULL,
 CONSTRAINT [PK_core.Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Language]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Language](
	[Code] [nvarchar](5) NOT NULL,
	[LocalName] [nvarchar](50) NULL,
	[GlobalName] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[sys_IsDeleted] [bit] NULL,
	[sys_DeleteDate] [datetime] NULL,
	[sys_RegDate] [datetime] NULL,
	[sys_RegUserId] [nvarchar](128) NULL,
	[sys_IsEnabled] [bit] NULL,
 CONSTRAINT [PK_core.Language] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Menu]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ParentId] [int] NULL,
	[SortNumber] [int] NOT NULL,
	[sys_Enable] [bit] NULL,
	[Url] [nvarchar](max) NULL,
	[Controller] [nvarchar](100) NULL,
	[Action] [nvarchar](100) NULL,
	[Area] [nvarchar](100) NULL,
	[MenuTypeId] [int] NOT NULL,
 CONSTRAINT [PK_core.Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [core].[MenuType]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[MenuType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_core.MenuType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Parameter]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Parameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ExtraName] [nvarchar](200) NULL,
	[ParentId] [int] NULL,
	[TypeInput] [int] NOT NULL,
	[SortNumber] [int] NOT NULL,
 CONSTRAINT [PK_core.Parameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[ParameterValue]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[ParameterValue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](200) NULL,
	[Extra] [nvarchar](200) NULL,
	[ParentId] [bigint] NULL,
	[ParameterId] [int] NOT NULL,
 CONSTRAINT [PK_core.ParameterValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Product]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[DuringShoot] [nvarchar](max) NULL,
	[DuringBud] [nvarchar](max) NULL,
	[Diameter] [nvarchar](max) NULL,
	[Petals] [nvarchar](max) NULL,
	[LifeTime] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Sys_PublishDate] [datetime] NOT NULL,
 CONSTRAINT [PK_core.Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [core].[ProductAttachment]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[ProductAttachment](
	[Product_Id] [int] NOT NULL,
	[Attachment_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_core.ProductAttachment] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC,
	[Attachment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[ProductTag]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[ProductTag](
	[Product_Id] [int] NOT NULL,
	[Tag_Id] [int] NOT NULL,
 CONSTRAINT [PK_core.ProductTag] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC,
	[Tag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Project]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[WorkGroupId] [int] NOT NULL,
 CONSTRAINT [PK_core.Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[Role]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[Role](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_core.Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[RoleAccess]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RoleAccess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[AccessId] [int] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_core.RoleAccess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[TagContent]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[TagContent](
	[Tag_Id] [int] NOT NULL,
	[Content_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_core.TagContent] PRIMARY KEY CLUSTERED 
(
	[Tag_Id] ASC,
	[Content_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[User]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[User](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_core.User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [core].[UserClaim]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_core.UserClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [core].[UserLogin]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserLogin](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_core.UserLogin] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[UserRole]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserRole](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_core.UserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[UserWorkGroup]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserWorkGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorkGroupId] [int] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[BranchId] [int] NOT NULL,
	[DepartmentId] [int] NULL,
	[JobPosition] [nvarchar](100) NULL,
	[SetDefault] [bit] NULL,
	[RegisterDate] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](400) NULL,
 CONSTRAINT [PK_core.UserWorkGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [core].[WorkGroup]    Script Date: 8/16/2016 3:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[WorkGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[sys_IsDeleted] [bit] NULL,
	[sys_DeleteDate] [datetime] NULL,
	[sys_RegDate] [datetime] NULL,
	[sys_RegUserId] [nvarchar](128) NULL,
	[sys_IsEnabled] [bit] NULL,
 CONSTRAINT [PK_core.WorkGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ContentId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContentId] ON [cms].[Comment]
(
	[ContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [cms].[Comment]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentStructId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContentStructId] ON [cms].[Content]
(
	[ContentStructId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentTypeId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContentTypeId] ON [cms].[Content]
(
	[ContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [cms].[Content]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContentId] ON [cms].[Content_Culture]
(
	[ContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LangCode]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_LangCode] ON [cms].[Content_Culture]
(
	[LangCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContentId] ON [cms].[ContentParameterValue]
(
	[ContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParameterId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ParameterId] ON [cms].[ContentParameterValue]
(
	[ParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParameterValueId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ParameterValueId] ON [cms].[ContentParameterValue]
(
	[ParameterValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Value]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Value] ON [cms].[ContentParameterValue]
(
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_sys_RegUserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_sys_RegUserId] ON [cms].[ContentStruct]
(
	[sys_RegUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [cms].[ContentStruct]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [cms].[ContentType]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Keyword]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Keyword] ON [cms].[Tag]
(
	[Keyword] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AreaId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AreaId] ON [core].[Access]
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_MenuId] ON [core].[Access]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_sys_RegUserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_sys_RegUserId] ON [core].[Access]
(
	[sys_RegUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AttachmentTypeId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AttachmentTypeId] ON [core].[Attachment]
(
	[AttachmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [core].[Attachment]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [core].[AttachmentType]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Address]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Address] ON [core].[Branch]
(
	[Address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Description]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Description] ON [core].[Branch]
(
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Name]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Name] ON [core].[Branch]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_sys_RegUserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_sys_RegUserId] ON [core].[Branch]
(
	[sys_RegUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WorkGroupId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_WorkGroupId] ON [core].[Branch]
(
	[WorkGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContactTypeId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContactTypeId] ON [core].[Contact]
(
	[ContactTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CustomerId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [core].[Contact]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [core].[ContactType]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attachment_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Attachment_Id] ON [core].[ContentAttachment]
(
	[Attachment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Content_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Content_Id] ON [core].[ContentAttachment]
(
	[Content_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentType_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContentType_Id] ON [core].[ContentTypeParameter]
(
	[ContentType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Parameter_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Parameter_Id] ON [core].[ContentTypeParameter]
(
	[Parameter_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LangCode]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_LangCode] ON [core].[CultureValue]
(
	[LangCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TextKey]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_TextKey] ON [core].[CultureValue]
(
	[TextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Company]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Company] ON [core].[Customer]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [core].[Customer]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Post]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post] ON [core].[Customer]
(
	[Post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CustomerId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [core].[Customer_Culture]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LangCode]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_LangCode] ON [core].[Customer_Culture]
(
	[LangCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Description]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Description] ON [core].[Department]
(
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_sys_RegUserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_sys_RegUserId] ON [core].[Department]
(
	[sys_RegUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [core].[Department]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_sys_RegUserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_sys_RegUserId] ON [core].[Language]
(
	[sys_RegUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuTypeId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_MenuTypeId] ON [core].[Menu]
(
	[MenuTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Name]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Name] ON [core].[Menu]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ParentId] ON [core].[Menu]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Description]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Description] ON [core].[MenuType]
(
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Name]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Name] ON [core].[MenuType]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ExtraName]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExtraName] ON [core].[Parameter]
(
	[ExtraName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Name]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Name] ON [core].[Parameter]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ParentId] ON [core].[Parameter]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Extra]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Extra] ON [core].[ParameterValue]
(
	[Extra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParameterId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ParameterId] ON [core].[ParameterValue]
(
	[ParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ParentId] ON [core].[ParameterValue]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Value]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Value] ON [core].[ParameterValue]
(
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [core].[Product]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attachment_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Attachment_Id] ON [core].[ProductAttachment]
(
	[Attachment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_Id] ON [core].[ProductAttachment]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_Id] ON [core].[ProductTag]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tag_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tag_Id] ON [core].[ProductTag]
(
	[Tag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Description]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Description] ON [core].[Project]
(
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Name]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Name] ON [core].[Project]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WorkGroupId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_WorkGroupId] ON [core].[Project]
(
	[WorkGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [core].[Role]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccessId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccessId] ON [core].[RoleAccess]
(
	[AccessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [core].[RoleAccess]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Content_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Content_Id] ON [core].[TagContent]
(
	[Content_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tag_Id]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tag_Id] ON [core].[TagContent]
(
	[Tag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [core].[User]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [core].[UserClaim]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [core].[UserLogin]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [core].[UserRole]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [core].[UserRole]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BranchId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_BranchId] ON [core].[UserWorkGroup]
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepartmentId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepartmentId] ON [core].[UserWorkGroup]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [core].[UserWorkGroup]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WorkGroupId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_WorkGroupId] ON [core].[UserWorkGroup]
(
	[WorkGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Description]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Description] ON [core].[WorkGroup]
(
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_sys_RegUserId]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_sys_RegUserId] ON [core].[WorkGroup]
(
	[sys_RegUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Title]    Script Date: 8/16/2016 3:01:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Title] ON [core].[WorkGroup]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [cms].[ContentParameterValue] ADD  DEFAULT ((0)) FOR [NumberValue]
GO
ALTER TABLE [core].[Parameter] ADD  DEFAULT ((0)) FOR [SortNumber]
GO
ALTER TABLE [cms].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_cms.Comment_cms.Content_ContentId] FOREIGN KEY([ContentId])
REFERENCES [cms].[Content] ([Id])
GO
ALTER TABLE [cms].[Comment] CHECK CONSTRAINT [FK_cms.Comment_cms.Content_ContentId]
GO
ALTER TABLE [cms].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_cms.Comment_core.User_UserId] FOREIGN KEY([UserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [cms].[Comment] CHECK CONSTRAINT [FK_cms.Comment_core.User_UserId]
GO
ALTER TABLE [cms].[Content]  WITH CHECK ADD  CONSTRAINT [FK_cms.Content_cms.ContentStruct_ContentStructId] FOREIGN KEY([ContentStructId])
REFERENCES [cms].[ContentStruct] ([Id])
GO
ALTER TABLE [cms].[Content] CHECK CONSTRAINT [FK_cms.Content_cms.ContentStruct_ContentStructId]
GO
ALTER TABLE [cms].[Content]  WITH CHECK ADD  CONSTRAINT [FK_cms.Content_cms.ContentType_ContentTypeId] FOREIGN KEY([ContentTypeId])
REFERENCES [cms].[ContentType] ([Id])
GO
ALTER TABLE [cms].[Content] CHECK CONSTRAINT [FK_cms.Content_cms.ContentType_ContentTypeId]
GO
ALTER TABLE [cms].[Content]  WITH CHECK ADD  CONSTRAINT [FK_cms.Content_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [cms].[Content] CHECK CONSTRAINT [FK_cms.Content_core.CultureKey_Title]
GO
ALTER TABLE [cms].[Content_Culture]  WITH CHECK ADD  CONSTRAINT [FK_cms.Content_Culture_cms.Content_ContentId] FOREIGN KEY([ContentId])
REFERENCES [cms].[Content] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cms].[Content_Culture] CHECK CONSTRAINT [FK_cms.Content_Culture_cms.Content_ContentId]
GO
ALTER TABLE [cms].[Content_Culture]  WITH CHECK ADD  CONSTRAINT [FK_cms.Content_Culture_core.Language_LangCode] FOREIGN KEY([LangCode])
REFERENCES [core].[Language] ([Code])
GO
ALTER TABLE [cms].[Content_Culture] CHECK CONSTRAINT [FK_cms.Content_Culture_core.Language_LangCode]
GO
ALTER TABLE [cms].[ContentParameterValue]  WITH CHECK ADD  CONSTRAINT [FK_cms.ContentParameterValue_cms.Content_ContentId] FOREIGN KEY([ContentId])
REFERENCES [cms].[Content] ([Id])
GO
ALTER TABLE [cms].[ContentParameterValue] CHECK CONSTRAINT [FK_cms.ContentParameterValue_cms.Content_ContentId]
GO
ALTER TABLE [cms].[ContentParameterValue]  WITH CHECK ADD  CONSTRAINT [FK_cms.ContentParameterValue_core.CultureKey_Value] FOREIGN KEY([Value])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [cms].[ContentParameterValue] CHECK CONSTRAINT [FK_cms.ContentParameterValue_core.CultureKey_Value]
GO
ALTER TABLE [cms].[ContentParameterValue]  WITH CHECK ADD  CONSTRAINT [FK_cms.ContentParameterValue_core.Parameter_ParameterId] FOREIGN KEY([ParameterId])
REFERENCES [core].[Parameter] ([Id])
GO
ALTER TABLE [cms].[ContentParameterValue] CHECK CONSTRAINT [FK_cms.ContentParameterValue_core.Parameter_ParameterId]
GO
ALTER TABLE [cms].[ContentParameterValue]  WITH CHECK ADD  CONSTRAINT [FK_cms.ContentParameterValue_core.ParameterValue_ParameterValueId] FOREIGN KEY([ParameterValueId])
REFERENCES [core].[ParameterValue] ([Id])
GO
ALTER TABLE [cms].[ContentParameterValue] CHECK CONSTRAINT [FK_cms.ContentParameterValue_core.ParameterValue_ParameterValueId]
GO
ALTER TABLE [cms].[ContentStruct]  WITH CHECK ADD  CONSTRAINT [FK_cms.ContentStruct_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [cms].[ContentStruct] CHECK CONSTRAINT [FK_cms.ContentStruct_core.CultureKey_Title]
GO
ALTER TABLE [cms].[ContentStruct]  WITH CHECK ADD  CONSTRAINT [FK_cms.ContentStruct_core.User_sys_RegUserId] FOREIGN KEY([sys_RegUserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [cms].[ContentStruct] CHECK CONSTRAINT [FK_cms.ContentStruct_core.User_sys_RegUserId]
GO
ALTER TABLE [cms].[ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cms.ContentType_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [cms].[ContentType] CHECK CONSTRAINT [FK_cms.ContentType_core.CultureKey_Title]
GO
ALTER TABLE [cms].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_cms.Tag_core.CultureKey_Keyword] FOREIGN KEY([Keyword])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [cms].[Tag] CHECK CONSTRAINT [FK_cms.Tag_core.CultureKey_Keyword]
GO
ALTER TABLE [core].[Access]  WITH CHECK ADD  CONSTRAINT [FK_core.Access_core.Area_AreaId] FOREIGN KEY([AreaId])
REFERENCES [core].[Area] ([Id])
GO
ALTER TABLE [core].[Access] CHECK CONSTRAINT [FK_core.Access_core.Area_AreaId]
GO
ALTER TABLE [core].[Access]  WITH CHECK ADD  CONSTRAINT [FK_core.Access_core.Menu_MenuId] FOREIGN KEY([MenuId])
REFERENCES [core].[Menu] ([Id])
GO
ALTER TABLE [core].[Access] CHECK CONSTRAINT [FK_core.Access_core.Menu_MenuId]
GO
ALTER TABLE [core].[Access]  WITH CHECK ADD  CONSTRAINT [FK_core.Access_core.User_sys_RegUserId] FOREIGN KEY([sys_RegUserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[Access] CHECK CONSTRAINT [FK_core.Access_core.User_sys_RegUserId]
GO
ALTER TABLE [core].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK_core.Attachment_core.AttachmentType_AttachmentTypeId] FOREIGN KEY([AttachmentTypeId])
REFERENCES [core].[AttachmentType] ([Id])
GO
ALTER TABLE [core].[Attachment] CHECK CONSTRAINT [FK_core.Attachment_core.AttachmentType_AttachmentTypeId]
GO
ALTER TABLE [core].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK_core.Attachment_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Attachment] CHECK CONSTRAINT [FK_core.Attachment_core.CultureKey_Title]
GO
ALTER TABLE [core].[AttachmentType]  WITH CHECK ADD  CONSTRAINT [FK_core.AttachmentType_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[AttachmentType] CHECK CONSTRAINT [FK_core.AttachmentType_core.CultureKey_Title]
GO
ALTER TABLE [core].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_core.Branch_core.CultureKey_Address] FOREIGN KEY([Address])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Branch] CHECK CONSTRAINT [FK_core.Branch_core.CultureKey_Address]
GO
ALTER TABLE [core].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_core.Branch_core.CultureKey_Description] FOREIGN KEY([Description])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Branch] CHECK CONSTRAINT [FK_core.Branch_core.CultureKey_Description]
GO
ALTER TABLE [core].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_core.Branch_core.CultureKey_Name] FOREIGN KEY([Name])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Branch] CHECK CONSTRAINT [FK_core.Branch_core.CultureKey_Name]
GO
ALTER TABLE [core].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_core.Branch_core.User_sys_RegUserId] FOREIGN KEY([sys_RegUserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[Branch] CHECK CONSTRAINT [FK_core.Branch_core.User_sys_RegUserId]
GO
ALTER TABLE [core].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_core.Branch_core.WorkGroup_WorkGroupId] FOREIGN KEY([WorkGroupId])
REFERENCES [core].[WorkGroup] ([Id])
GO
ALTER TABLE [core].[Branch] CHECK CONSTRAINT [FK_core.Branch_core.WorkGroup_WorkGroupId]
GO
ALTER TABLE [core].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_core.Contact_core.ContactType_ContactTypeId] FOREIGN KEY([ContactTypeId])
REFERENCES [core].[ContactType] ([Id])
GO
ALTER TABLE [core].[Contact] CHECK CONSTRAINT [FK_core.Contact_core.ContactType_ContactTypeId]
GO
ALTER TABLE [core].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_core.Contact_core.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [core].[Customer] ([Id])
GO
ALTER TABLE [core].[Contact] CHECK CONSTRAINT [FK_core.Contact_core.Customer_CustomerId]
GO
ALTER TABLE [core].[ContactType]  WITH CHECK ADD  CONSTRAINT [FK_core.ContactType_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[ContactType] CHECK CONSTRAINT [FK_core.ContactType_core.CultureKey_Title]
GO
ALTER TABLE [core].[ContentAttachment]  WITH CHECK ADD  CONSTRAINT [FK_core.ContentAttachment_cms.Content_Content_Id] FOREIGN KEY([Content_Id])
REFERENCES [cms].[Content] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[ContentAttachment] CHECK CONSTRAINT [FK_core.ContentAttachment_cms.Content_Content_Id]
GO
ALTER TABLE [core].[ContentAttachment]  WITH CHECK ADD  CONSTRAINT [FK_core.ContentAttachment_core.Attachment_Attachment_Id] FOREIGN KEY([Attachment_Id])
REFERENCES [core].[Attachment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[ContentAttachment] CHECK CONSTRAINT [FK_core.ContentAttachment_core.Attachment_Attachment_Id]
GO
ALTER TABLE [core].[ContentTypeParameter]  WITH CHECK ADD  CONSTRAINT [FK_core.ContentTypeParameter_cms.ContentType_ContentType_Id] FOREIGN KEY([ContentType_Id])
REFERENCES [cms].[ContentType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[ContentTypeParameter] CHECK CONSTRAINT [FK_core.ContentTypeParameter_cms.ContentType_ContentType_Id]
GO
ALTER TABLE [core].[ContentTypeParameter]  WITH CHECK ADD  CONSTRAINT [FK_core.ContentTypeParameter_core.Parameter_Parameter_Id] FOREIGN KEY([Parameter_Id])
REFERENCES [core].[Parameter] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[ContentTypeParameter] CHECK CONSTRAINT [FK_core.ContentTypeParameter_core.Parameter_Parameter_Id]
GO
ALTER TABLE [core].[CultureValue]  WITH CHECK ADD  CONSTRAINT [FK_core.CultureValue_core.CultureKey_TextKey] FOREIGN KEY([TextKey])
REFERENCES [core].[CultureKey] ([TextKey])
ON DELETE CASCADE
GO
ALTER TABLE [core].[CultureValue] CHECK CONSTRAINT [FK_core.CultureValue_core.CultureKey_TextKey]
GO
ALTER TABLE [core].[CultureValue]  WITH CHECK ADD  CONSTRAINT [FK_core.CultureValue_core.Language_LangCode] FOREIGN KEY([LangCode])
REFERENCES [core].[Language] ([Code])
GO
ALTER TABLE [core].[CultureValue] CHECK CONSTRAINT [FK_core.CultureValue_core.Language_LangCode]
GO
ALTER TABLE [core].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_core.Customer_core.CultureKey_Company] FOREIGN KEY([Company])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Customer] CHECK CONSTRAINT [FK_core.Customer_core.CultureKey_Company]
GO
ALTER TABLE [core].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_core.Customer_core.CultureKey_Post] FOREIGN KEY([Post])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Customer] CHECK CONSTRAINT [FK_core.Customer_core.CultureKey_Post]
GO
ALTER TABLE [core].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_core.Customer_core.User_Id] FOREIGN KEY([Id])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[Customer] CHECK CONSTRAINT [FK_core.Customer_core.User_Id]
GO
ALTER TABLE [core].[Customer_Culture]  WITH CHECK ADD  CONSTRAINT [FK_core.Customer_Culture_core.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [core].[Customer] ([Id])
GO
ALTER TABLE [core].[Customer_Culture] CHECK CONSTRAINT [FK_core.Customer_Culture_core.Customer_CustomerId]
GO
ALTER TABLE [core].[Customer_Culture]  WITH CHECK ADD  CONSTRAINT [FK_core.Customer_Culture_core.Language_LangCode] FOREIGN KEY([LangCode])
REFERENCES [core].[Language] ([Code])
GO
ALTER TABLE [core].[Customer_Culture] CHECK CONSTRAINT [FK_core.Customer_Culture_core.Language_LangCode]
GO
ALTER TABLE [core].[Department]  WITH CHECK ADD  CONSTRAINT [FK_core.Department_core.CultureKey_Description] FOREIGN KEY([Description])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Department] CHECK CONSTRAINT [FK_core.Department_core.CultureKey_Description]
GO
ALTER TABLE [core].[Department]  WITH CHECK ADD  CONSTRAINT [FK_core.Department_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Department] CHECK CONSTRAINT [FK_core.Department_core.CultureKey_Title]
GO
ALTER TABLE [core].[Department]  WITH CHECK ADD  CONSTRAINT [FK_core.Department_core.User_sys_RegUserId] FOREIGN KEY([sys_RegUserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[Department] CHECK CONSTRAINT [FK_core.Department_core.User_sys_RegUserId]
GO
ALTER TABLE [core].[Language]  WITH CHECK ADD  CONSTRAINT [FK_core.Language_core.User_sys_RegUserId] FOREIGN KEY([sys_RegUserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[Language] CHECK CONSTRAINT [FK_core.Language_core.User_sys_RegUserId]
GO
ALTER TABLE [core].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_core.Menu_core.CultureKey_Name] FOREIGN KEY([Name])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Menu] CHECK CONSTRAINT [FK_core.Menu_core.CultureKey_Name]
GO
ALTER TABLE [core].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_core.Menu_core.Menu_ParentId] FOREIGN KEY([ParentId])
REFERENCES [core].[Menu] ([Id])
GO
ALTER TABLE [core].[Menu] CHECK CONSTRAINT [FK_core.Menu_core.Menu_ParentId]
GO
ALTER TABLE [core].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_core.Menu_core.MenuType_MenuTypeId] FOREIGN KEY([MenuTypeId])
REFERENCES [core].[MenuType] ([Id])
GO
ALTER TABLE [core].[Menu] CHECK CONSTRAINT [FK_core.Menu_core.MenuType_MenuTypeId]
GO
ALTER TABLE [core].[MenuType]  WITH CHECK ADD  CONSTRAINT [FK_core.MenuType_core.CultureKey_Description] FOREIGN KEY([Description])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[MenuType] CHECK CONSTRAINT [FK_core.MenuType_core.CultureKey_Description]
GO
ALTER TABLE [core].[MenuType]  WITH CHECK ADD  CONSTRAINT [FK_core.MenuType_core.CultureKey_Name] FOREIGN KEY([Name])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[MenuType] CHECK CONSTRAINT [FK_core.MenuType_core.CultureKey_Name]
GO
ALTER TABLE [core].[Parameter]  WITH CHECK ADD  CONSTRAINT [FK_core.Parameter_core.CultureKey_ExtraName] FOREIGN KEY([ExtraName])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Parameter] CHECK CONSTRAINT [FK_core.Parameter_core.CultureKey_ExtraName]
GO
ALTER TABLE [core].[Parameter]  WITH CHECK ADD  CONSTRAINT [FK_core.Parameter_core.CultureKey_Name] FOREIGN KEY([Name])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Parameter] CHECK CONSTRAINT [FK_core.Parameter_core.CultureKey_Name]
GO
ALTER TABLE [core].[Parameter]  WITH CHECK ADD  CONSTRAINT [FK_core.Parameter_core.Parameter_ParentId] FOREIGN KEY([ParentId])
REFERENCES [core].[Parameter] ([Id])
GO
ALTER TABLE [core].[Parameter] CHECK CONSTRAINT [FK_core.Parameter_core.Parameter_ParentId]
GO
ALTER TABLE [core].[ParameterValue]  WITH CHECK ADD  CONSTRAINT [FK_core.ParameterValue_core.CultureKey_Extra] FOREIGN KEY([Extra])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[ParameterValue] CHECK CONSTRAINT [FK_core.ParameterValue_core.CultureKey_Extra]
GO
ALTER TABLE [core].[ParameterValue]  WITH CHECK ADD  CONSTRAINT [FK_core.ParameterValue_core.CultureKey_Value] FOREIGN KEY([Value])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[ParameterValue] CHECK CONSTRAINT [FK_core.ParameterValue_core.CultureKey_Value]
GO
ALTER TABLE [core].[ParameterValue]  WITH CHECK ADD  CONSTRAINT [FK_core.ParameterValue_core.Parameter_ParameterId] FOREIGN KEY([ParameterId])
REFERENCES [core].[Parameter] ([Id])
GO
ALTER TABLE [core].[ParameterValue] CHECK CONSTRAINT [FK_core.ParameterValue_core.Parameter_ParameterId]
GO
ALTER TABLE [core].[ParameterValue]  WITH CHECK ADD  CONSTRAINT [FK_core.ParameterValue_core.ParameterValue_ParentId] FOREIGN KEY([ParentId])
REFERENCES [core].[ParameterValue] ([Id])
GO
ALTER TABLE [core].[ParameterValue] CHECK CONSTRAINT [FK_core.ParameterValue_core.ParameterValue_ParentId]
GO
ALTER TABLE [core].[Product]  WITH CHECK ADD  CONSTRAINT [FK_core.Product_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Product] CHECK CONSTRAINT [FK_core.Product_core.CultureKey_Title]
GO
ALTER TABLE [core].[ProductAttachment]  WITH CHECK ADD  CONSTRAINT [FK_core.ProductAttachment_core.Attachment_Attachment_Id] FOREIGN KEY([Attachment_Id])
REFERENCES [core].[Attachment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[ProductAttachment] CHECK CONSTRAINT [FK_core.ProductAttachment_core.Attachment_Attachment_Id]
GO
ALTER TABLE [core].[ProductAttachment]  WITH CHECK ADD  CONSTRAINT [FK_core.ProductAttachment_core.Product_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [core].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[ProductAttachment] CHECK CONSTRAINT [FK_core.ProductAttachment_core.Product_Product_Id]
GO
ALTER TABLE [core].[ProductTag]  WITH CHECK ADD  CONSTRAINT [FK_core.ProductTag_cms.Tag_Tag_Id] FOREIGN KEY([Tag_Id])
REFERENCES [cms].[Tag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[ProductTag] CHECK CONSTRAINT [FK_core.ProductTag_cms.Tag_Tag_Id]
GO
ALTER TABLE [core].[ProductTag]  WITH CHECK ADD  CONSTRAINT [FK_core.ProductTag_core.Product_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [core].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[ProductTag] CHECK CONSTRAINT [FK_core.ProductTag_core.Product_Product_Id]
GO
ALTER TABLE [core].[Project]  WITH CHECK ADD  CONSTRAINT [FK_core.Project_core.CultureKey_Description] FOREIGN KEY([Description])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Project] CHECK CONSTRAINT [FK_core.Project_core.CultureKey_Description]
GO
ALTER TABLE [core].[Project]  WITH CHECK ADD  CONSTRAINT [FK_core.Project_core.CultureKey_Name] FOREIGN KEY([Name])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[Project] CHECK CONSTRAINT [FK_core.Project_core.CultureKey_Name]
GO
ALTER TABLE [core].[Project]  WITH CHECK ADD  CONSTRAINT [FK_core.Project_core.WorkGroup_WorkGroupId] FOREIGN KEY([WorkGroupId])
REFERENCES [core].[WorkGroup] ([Id])
GO
ALTER TABLE [core].[Project] CHECK CONSTRAINT [FK_core.Project_core.WorkGroup_WorkGroupId]
GO
ALTER TABLE [core].[RoleAccess]  WITH CHECK ADD  CONSTRAINT [FK_core.RoleAccess_core.Access_AccessId] FOREIGN KEY([AccessId])
REFERENCES [core].[Access] ([Id])
GO
ALTER TABLE [core].[RoleAccess] CHECK CONSTRAINT [FK_core.RoleAccess_core.Access_AccessId]
GO
ALTER TABLE [core].[RoleAccess]  WITH CHECK ADD  CONSTRAINT [FK_core.RoleAccess_core.Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [core].[Role] ([Id])
GO
ALTER TABLE [core].[RoleAccess] CHECK CONSTRAINT [FK_core.RoleAccess_core.Role_RoleId]
GO
ALTER TABLE [core].[TagContent]  WITH CHECK ADD  CONSTRAINT [FK_core.TagContent_cms.Content_Content_Id] FOREIGN KEY([Content_Id])
REFERENCES [cms].[Content] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[TagContent] CHECK CONSTRAINT [FK_core.TagContent_cms.Content_Content_Id]
GO
ALTER TABLE [core].[TagContent]  WITH CHECK ADD  CONSTRAINT [FK_core.TagContent_cms.Tag_Tag_Id] FOREIGN KEY([Tag_Id])
REFERENCES [cms].[Tag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [core].[TagContent] CHECK CONSTRAINT [FK_core.TagContent_cms.Tag_Tag_Id]
GO
ALTER TABLE [core].[UserClaim]  WITH CHECK ADD  CONSTRAINT [FK_core.UserClaim_core.User_UserId] FOREIGN KEY([UserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[UserClaim] CHECK CONSTRAINT [FK_core.UserClaim_core.User_UserId]
GO
ALTER TABLE [core].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_core.UserLogin_core.User_UserId] FOREIGN KEY([UserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[UserLogin] CHECK CONSTRAINT [FK_core.UserLogin_core.User_UserId]
GO
ALTER TABLE [core].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_core.UserRole_core.Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [core].[Role] ([Id])
GO
ALTER TABLE [core].[UserRole] CHECK CONSTRAINT [FK_core.UserRole_core.Role_RoleId]
GO
ALTER TABLE [core].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_core.UserRole_core.User_UserId] FOREIGN KEY([UserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[UserRole] CHECK CONSTRAINT [FK_core.UserRole_core.User_UserId]
GO
ALTER TABLE [core].[UserWorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_core.UserWorkGroup_core.Branch_BranchId] FOREIGN KEY([BranchId])
REFERENCES [core].[Branch] ([Id])
GO
ALTER TABLE [core].[UserWorkGroup] CHECK CONSTRAINT [FK_core.UserWorkGroup_core.Branch_BranchId]
GO
ALTER TABLE [core].[UserWorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_core.UserWorkGroup_core.Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [core].[Department] ([Id])
GO
ALTER TABLE [core].[UserWorkGroup] CHECK CONSTRAINT [FK_core.UserWorkGroup_core.Department_DepartmentId]
GO
ALTER TABLE [core].[UserWorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_core.UserWorkGroup_core.User_UserId] FOREIGN KEY([UserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[UserWorkGroup] CHECK CONSTRAINT [FK_core.UserWorkGroup_core.User_UserId]
GO
ALTER TABLE [core].[UserWorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_core.UserWorkGroup_core.WorkGroup_WorkGroupId] FOREIGN KEY([WorkGroupId])
REFERENCES [core].[WorkGroup] ([Id])
GO
ALTER TABLE [core].[UserWorkGroup] CHECK CONSTRAINT [FK_core.UserWorkGroup_core.WorkGroup_WorkGroupId]
GO
ALTER TABLE [core].[WorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_core.WorkGroup_core.CultureKey_Description] FOREIGN KEY([Description])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[WorkGroup] CHECK CONSTRAINT [FK_core.WorkGroup_core.CultureKey_Description]
GO
ALTER TABLE [core].[WorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_core.WorkGroup_core.CultureKey_Title] FOREIGN KEY([Title])
REFERENCES [core].[CultureKey] ([TextKey])
GO
ALTER TABLE [core].[WorkGroup] CHECK CONSTRAINT [FK_core.WorkGroup_core.CultureKey_Title]
GO
ALTER TABLE [core].[WorkGroup]  WITH CHECK ADD  CONSTRAINT [FK_core.WorkGroup_core.User_sys_RegUserId] FOREIGN KEY([sys_RegUserId])
REFERENCES [core].[User] ([Id])
GO
ALTER TABLE [core].[WorkGroup] CHECK CONSTRAINT [FK_core.WorkGroup_core.User_sys_RegUserId]
GO
USE [master]
GO
ALTER DATABASE [naghsheghalam_db] SET  READ_WRITE 
GO
