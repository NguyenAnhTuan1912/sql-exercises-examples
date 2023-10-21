USE School

-- GIVE EXAMPLE WITH RANK
-- Create Students.
/*
CREATE TABLE [Students] (
    [StudentId] INT PRIMARY KEY,
    [Fullname] NVARCHAR(255),
    [Average Score] DECIMAL(3, 2),
    [ClassId] INT
);

-- Insert 20 records of students.
INSERT INTO [Students] ([StudentId], [Fullname], [Average Score], [ClassId])
VALUES

    (1, N'Nguyễn Văn A', 3.75, 101),
    (2, N'Trần Thị B', 3.88, 102),
    (3, N'Phạm Văn C', 3.75, 101),
    (4, N'Huỳnh Thị D', 3.92, 103),
    (5, N'Lê Văn E', 3.60, 102),
    (6, N'Ngô Thị F', 3.78, 101),
    (7, N'Trịnh Văn G', 3.65, 102),
    (8, N'Võ Thị H', 3.80, 103),
    (9, N'Đặng Văn I', 3.55, 101),
    (10, N'Hoàng Thị K', 3.95, 102),
    (11, N'Mai Thị L', 3.70, 103),
    (12, N'Lý Thị M', 3.62, 101),
    (13, N'Chu Thị N', 3.85, 102),
    (14, N'Đỗ Thị P', 3.58, 103),
    (15, N'Dương Văn Q', 3.72, 101),
    (16, N'Lâm Thị R', 3.85, 102),
    (17, N'Nguyễn Văn S', 3.68, 101),
    (18, N'Nguyễn Thị T', 3.75, 103),
    (19, N'Nguyễn Văn U', 3.93, 102),
    (20, N'Nguyễn Thị V', 3.67, 101);
*/
;

-- Get ranking by average score
SELECT
	StudentId,
	Fullname,
	[Average Score],
	ClassId,
	RANK() OVER(
		PARTITION BY [ClassId]
		ORDER BY [Average Score] DESC
	) AS [Top]
FROM Students AS S

-- Get ranking by average score (non repeat rank)
SELECT
	StudentId,
	Fullname,
	[Average Score],
	ClassId,
	ROW_NUMBER() OVER(
		PARTITION BY [ClassId]
		ORDER BY [Average Score] DESC
	) AS [Top]
FROM Students AS S