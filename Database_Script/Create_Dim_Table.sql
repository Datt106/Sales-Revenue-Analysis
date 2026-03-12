CREATE TABLE Dim_Customer (
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY, -- Surrogate Key cho Data Warehouse
    CustomerID INT NOT NULL,                   -- Business Key từ hệ thống nguồn [cite: 1419]
    PersonID INT,                              -- ID tham chiếu đến bảng Person [cite: 1422]
    FirstName NVARCHAR(50),                    -- Tên khách hàng [cite: 245]
    LastName NVARCHAR(50),                     -- Họ khách hàng [cite: 245]
    AccountNumber VARCHAR(10)                  -- Số tài khoản khách hàng [cite: 1422]
);

CREATE TABLE Dim_Territory (
    TerritoryKey INT IDENTITY(1,1) PRIMARY KEY, -- Surrogate Key
    TerritoryID INT NOT NULL,                   -- Business Key [cite: 1579]
    TerritoryName NVARCHAR(50),                 -- Tên khu vực bán hàng [cite: 1579]
    CountryRegionCode NVARCHAR(3),              -- Mã quốc gia/vùng lãnh thổ [cite: 1579]
    TerritoryGroup NVARCHAR(50)                 -- Nhóm khu vực [cite: 1579]
);

CREATE TABLE Dim_Date (
    DateKey INT PRIMARY KEY,           -- Khóa chính, định dạng YYYYMMDD (ví dụ: 20260306)
    FullDate DATE NOT NULL,            -- Ngày tháng năm đầy đủ
    DayOfWeek TINYINT NOT NULL,        -- Ngày thứ mấy trong tuần (1-7)
    DayName NVARCHAR(15) NOT NULL,     -- Tên ngày (Monday, Tuesday...)
    DayOfMonth TINYINT NOT NULL,       -- Ngày trong tháng (1-31)
    Month TINYINT NOT NULL,            -- Tháng (1-12)
    MonthName NVARCHAR(15) NOT NULL,   -- Tên tháng (January, February...)
    Quarter TINYINT NOT NULL,          -- Quý (1-4)
    Year INT NOT NULL                  -- Năm (ví dụ: 2026)
);

CREATE TABLE Dim_Product (
    Product_SK INT IDENTITY(1,1) PRIMARY KEY,   -- Khóa chính
    ProductID INT NOT NULL,
    ProductName NVARCHAR(150),
    ProductNumber NVARCHAR(50),
    SubcategoryName NVARCHAR(100),
    CategoryName NVARCHAR(100)
);