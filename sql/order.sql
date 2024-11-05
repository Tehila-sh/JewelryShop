CREATE TABLE [dbo].[My_Orders](
    [OrderID] [int] IDENTITY(1,1) NOT NULL,
    [UserId] [int] NOT NULL,
    [OrderDate] [datetime] NOT NULL,
    [TotalAmount] [decimal](10, 2) NOT NULL,
    [PaymentStatus] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
    [OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO My_Orders (UserId, OrderDate, TotalAmount, PaymentStatus) VALUES
(1, '2024-10-01 10:15:00', 250.00, 'Paid'),
(2, '2024-10-02 11:30:00', 150.50, 'Pending'),
(3, '2024-10-03 14:00:00', 320.75, 'Paid'),
(4, '2024-10-04 09:45:00', 75.99, 'Failed'),
(5, '2024-10-05 16:20:00', 540.25, 'Paid'),
(6, '2024-10-06 12:00:00', 130.00, 'Pending'),
(7, '2024-10-07 08:30:00', 410.10, 'Paid'),
(8, '2024-10-08 15:15:00', 600.00, 'Failed'),
(9, '2024-10-09 10:00:00', 225.90, 'Paid'),
(10, '2024-10-10 17:45:00', 90.50, 'Pending');

select * from My_Orders