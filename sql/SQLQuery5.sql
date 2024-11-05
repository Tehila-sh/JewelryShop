-- 1. צור עמודה חדשה
ALTER TABLE Users
ADD NewUserId NVARCHAR(50) NOT NULL;  -- שנה ל-NVARCHAR או לסוג הרצוי

-- 2. העבר את הנתונים לעמודה החדשה
UPDATE Users
SET NewUserId = CAST(UserId AS NVARCHAR(50));  -- המר את הערכים

-- 3. הסר את העמודה הישנה
ALTER TABLE Users
DROP COLUMN UserId;

-- 4. שנה את שם העמודה החדשה
EXEC sp_rename 'Users.NewUserId', 'UserId', 'COLUMN';



-- אם זה מתאים, תוכל ליצור טבלה חדשה ואז להעביר את הנתונים
CREATE TABLE UsersTemp (
    UserId INT IDENTITY(1,1) NOT NULL,
    Username NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    CreatedIn DATETIME DEFAULT GETDATE() NULL,
    UNIQUE NONCLUSTERED (Email ASC)
);

-- העבר את הנתונים מהטבלה הישנה לטבלה החדשה
INSERT INTO UsersTemp (Username, Email, Password)
SELECT Username, Email, Password FROM Users;

-- מחק את הטבלה הישנה
DROP TABLE Users;

-- שנה את שם הטבלה החדשה
EXEC sp_rename 'UsersTemp', 'Users';

ALTER TABLE Orders
DROP CONSTRAINT FK_Orders_Users;  -- אם יש אילוץ עם שם ספציפי

ALTER TABLE Orders
ADD NewUserId NVARCHAR(50) NOT NULL;  -- שנה לסוג הרצוי

UPDATE Orders
SET NewUserId = CAST(UserId AS NVARCHAR(50));  -- המר את הערכים


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
ADD UserId NVARCHAR(50) NOT NULL;  -- הוסף את העמודה





