CREATE TABLE [dbo].[USERS](
    [UserId] [int] IDENTITY(1,1) NOT NULL,
    [Username] [nvarchar](100) NOT NULL,
    [Email] [nvarchar](255) NOT NULL,
    [Password] [nvarchar](255) NOT NULL,
    [CreatedIn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
    [UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
    [Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[USERS] ADD  DEFAULT (getdate()) FOR [CreatedIn]
GO

INSERT INTO USERS (Username, Email, Password)
VALUES 
    ('john_doe', 'john.doe@example.com', 'Password1!'),
    ('jane_smith', 'jane.smith@example.com', 'Password2@'),
    ('alice_jones', 'alice.jones@example.com', 'Password3#'),
    ('bob_brown', 'bob.brown@example.com', 'Password4$'),
    ('charlie_black', 'charlie.black@example.com', 'Password5%'),
    ('david_green', 'david.green@example.com', 'Password6^'),
    ('emma_white', 'emma.white@example.com', 'Password7&'),
    ('frank_blue', 'frank.blue@example.com', 'Password8*'),
    ('grace_red', 'grace.red@example.com', 'Password9('),
    ('henry_yellow', 'henry.yellow@example.com', 'Password0)');

	select * from USERS