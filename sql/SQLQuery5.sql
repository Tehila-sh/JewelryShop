-- 1. ��� ����� ����
ALTER TABLE Users
ADD NewUserId NVARCHAR(50) NOT NULL;  -- ��� �-NVARCHAR �� ���� �����

-- 2. ���� �� ������� ������ �����
UPDATE Users
SET NewUserId = CAST(UserId AS NVARCHAR(50));  -- ��� �� ������

-- 3. ��� �� ������ �����
ALTER TABLE Users
DROP COLUMN UserId;

-- 4. ��� �� �� ������ �����
EXEC sp_rename 'Users.NewUserId', 'UserId', 'COLUMN';



-- �� �� �����, ���� ����� ���� ���� ��� ������ �� �������
CREATE TABLE UsersTemp (
    UserId INT IDENTITY(1,1) NOT NULL,
    Username NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    CreatedIn DATETIME DEFAULT GETDATE() NULL,
    UNIQUE NONCLUSTERED (Email ASC)
);

-- ���� �� ������� ������ ����� ����� �����
INSERT INTO UsersTemp (Username, Email, Password)
SELECT Username, Email, Password FROM Users;

-- ��� �� ����� �����
DROP TABLE Users;

-- ��� �� �� ����� �����
EXEC sp_rename 'UsersTemp', 'Users';

ALTER TABLE Orders
DROP CONSTRAINT FK_Orders_Users;  -- �� �� ����� �� �� ������

ALTER TABLE Orders
ADD NewUserId NVARCHAR(50) NOT NULL;  -- ��� ���� �����

UPDATE Orders
SET NewUserId = CAST(UserId AS NVARCHAR(50));  -- ��� �� ������


ALTER TABLE Orders
DROP COLUMN UserId;

EXEC sp_rename 'Orders.NewUserId', 'UserId', 'COLUMN';
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Users
FOREIGN KEY (UserId) REFERENCES Users(UserId);

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Orders' AND COLUMN_NAME = 'UserId';

ALTER TABLE Orders
ADD UserId NVARCHAR(50) NOT NULL;  -- ���� �� ������





