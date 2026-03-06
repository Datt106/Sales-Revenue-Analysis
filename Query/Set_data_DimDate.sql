DECLARE @StartDate DATE = '2005-01-01';
DECLARE @EndDate DATE = '2022-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO Dim_Date (DateKey, FullDate, DayOfWeek, DayName, DayOfMonth, Month, MonthName, Quarter, Year)
    VALUES (
        CAST(CONVERT(VARCHAR(8), @StartDate, 112) AS INT), -- Định dạng YYYYMMDD
        @StartDate,
        DATEPART(dw, @StartDate),
        DATENAME(dw, @StartDate),
        DATEPART(d, @StartDate),
        DATEPART(m, @StartDate),
        DATENAME(m, @StartDate),
        DATEPART(q, @StartDate),
        DATEPART(yyyy, @StartDate)
    );
    
    SET @StartDate = DATEADD(day, 1, @StartDate);
END;