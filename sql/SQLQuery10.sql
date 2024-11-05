USE [Jewelry]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 05/11/2024 22:47:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int],
	[OrderDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](10, 2) NOT NULL,
	[PaymentStatus] [varchar](50) NOT NULL,
	FOREIGN KEY (UserId) REFERENCES Users(UserID),
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedIn]
GO
