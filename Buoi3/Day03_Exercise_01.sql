USE EMPLOYEES;

SELECT *
FROM SinhVien

-- 1. Create SinhVien table
CREATE TABLE SinhVien (
	[MaSV] INT NOT NULL PRIMARY KEY,
  [HoTen] VARCHAR(50) NOT NULL,
  [Lop] VARCHAR(20),
  [Nganh] VARCHAR(20),
  [DiemTB] FLOAT
);
GO

-- 2. Add Email to SinhVien
ALTER TABLE SinhVien
ADD [Email] VARCHAR(100);
GO

-- 3. Change data type of DiemTB to DECIMAL(2, 1)
ALTER TABLE SinhVien
ALTER COLUMN [DiemTB] DECIMAL(2, 1);
GO

-- 4. Delete Nganh from SinhVien
ALTER TABLE SinhVien
DROP COLUMN [Nganh];
GO

-- 5. Add CHECK Constraint to DiemTB that value must larger or equal to 0.
ALTER TABLE SinhVien
ADD CONSTRAINT DiemTB_RangeCheck CHECK ([DiemTB] >= 0 AND [DiemTB] <= 10);
GO

-- 6. Add Unique Constraint to MaSV in SinhVien table.
ALTER TABLE SinhVien
ADD CONSTRAINT MaSV_Unique UNIQUE ([MaSV]);
GO

-- 7. Add base data to SinhVien
INSERT INTO SinhVien ([MaSV], [HoTen], [Lop], [DiemTB], [Email])
VALUES
  (1, 'Nguyen Anh Tuan', '20DTH5', 2.2, 'nguyenanhtuan@dntu.edu.vn'),
  (2, 'Tu Nhat Phuong', '20DTH5', 3.2, 'tunhatphuong@dntu.edu.vn'),
  (3, 'Thai Anh Duc', '20DTH2', 3.3, 'thaianhduc@dntu.edu.vn'),
  (4, 'Luong Van Phap', '20DTH5', 3.4, 'luongvanphap@dntu.edu.vn');
GO

-- 8. Delete all records in SinhVien
TRUNCATE TABLE SinhVien;

-- 9. Delete SinhVien
DROP TABLE SinhVien;

-- 10. Re-create SinhVien.