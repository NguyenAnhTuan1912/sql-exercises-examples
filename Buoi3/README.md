# Nội dung buổi 3

SQL là gì? (SEQUEL)
Là một ngôn ngữ lập trình được sử dùng để thao tác với dữ liệu trong cơ sở dữ liệu.

Phân biệt các nhóm lệnh SQL
1. DML (Data Manipulation Language): các câu lệnh được sử dụng để thao tác với dữ liệu. Xóa, thêm, sửa...
  - INSERT INTO (Create): thêm record vào trong table nào đó trong CSDL.
  - UPDATE (Update): thay đổi một hay nhiều record trong table nào đó trong CSDL.
  - DELETE (Delete): xóa một hay nhiều record trong table nào đó trong CSDL.
  - SELECT (Get): lấy một hay nhiều record trong table nào đó trong CSDL.

2. DDL (Data Definition Language): các câu lệnh được sử dụng để định nghĩa các cấu trúc của cơ sở dữ liệu, bao gồm các bảng, cột, chỉ mục.
  - CREATE TABLE: tạo table.
  - ALTER TABLE: Thêm, xóa hoặc sửa các cột trong bảng.
  - DROP TABLE: Xóa một bảng.
  - CREATE INDEX: Tạo một chỉ mục cho một cột hoặc tập hợp các cột.
  - DROP INDEX: Xóa một chỉ mục.
  - CREATE CONSTRAINT: Tạo một ràng buộc cho một cột hoặc tập hợp các cột.
  - DROP CONSTRAINT: Xóa một ràng buộc.

3. DCL (Data Control Language): các câu lệnh được sử dụng để kiểm soát quyền truy cập vào cơ sở dữ liệu, bao gồm các câu lệnh cấp phép và thu hồi quyền.
  - GRANT: cấp quyền truy cập cho người dùng.
  - REVOKE: Thu hồi quyền truy cập cho người dùng.

4. TCL (Transaction Control Language): các câu lệnh được sử dụng để quản lý các giao dịch trong cơ sở dữ liệu, bao gồm bắt đầu, xác nhận và hoàn tất giao dịch.
  - BEGIN TRANSACTION: bắt đầu một giao dịch.
  - COMMIT TRANSACTION: xác nhận một giao dịch.
  - ROLLBACK TRANSACTION: hoàn tác một giao dịch.

Tạo cơ sở dữ liệu trong SQL Server.

Kiểu dữ liệu: https://www.w3schools.com/sql/sql_datatypes.asp