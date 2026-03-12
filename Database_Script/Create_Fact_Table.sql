CREATE TABLE Fact_Sales (
    Sales_SK INT IDENTITY(1,1) PRIMARY KEY,     -- Khóa chính
    OrderDate INT,                              -- Tham chiếu đến Dim_Date (DateKey)
    Product_SK INT,                             -- Tham chiếu đến Dim_Product
    Customer_SK INT,                            -- Tham chiếu đến Dim_Customer (Lưu ý: Trong Dim là CustomerKey)
    Territory_SK INT,                           -- Tham chiếu đến Dim_Territory (Lưu ý: Trong Dim là TerritoryKey)
    OrderQty INT,
    UnitPrice DECIMAL(18, 2),
    LineTotal DECIMAL(18, 2),