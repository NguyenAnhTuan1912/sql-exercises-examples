# Nội dung buổi 4

__Một số lưu ý__:
- Tải các file cơ sơ dữ liệu [ở đây](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms) gồm AdventureWorks2022.bak và AdventureWorks2019.bak


## INSERT INTO
Ghi dữ liệu vào trong một table nào đó. Có thể ghi một hoặc ghi nhiều.

Syntax:

Thêm một
```sql
INSERT INTO Table (Column1, Column2, Column3, ...)
VALUES (Data1, Data2, Data3, ...)
```

Thêm nhiều
```sql
INSERT INTO Table (Column1, Column2, Column3, ...)
VALUES
  (Data1, Data2, Data3, ...),
  (Data1, Data2, Data3, ...),
  ...
  (Data1, Data2, Data3, ...);
```

## SELECT INTO
Lấy dữ liệu từ một table và tạo ra một table mới. Ngoài ra thì tác dụng của nó 

Syntax:

Lấy tất cả các cột
```sql
SELECT *
INTO NewTable [IN externaldb]
FROM Table
WHERE Condition;
```

Lấy một vài cột
```sql
SELECT Column1, Column2, Column3, ...
INTO NewTable [IN externaldb]
FROM Table
WHERE Condition;
```

NOTE:
- Thường được sử dụng để tạo bảng tạm thời, cùng với các điều kiện mà không thay đổi bảng gốc.
- Có thể dùng backup, sao lưu dữ liệu.
- Trích xuất một phần dữ liệu theo điều kiện từ dữ liệu gốc để thực hiện một số nghiệp vụ khác.
- Tạo một bảng mới là dữ liệu tổng hợp từ nhiều bảng.
- Không nên sử dụng trong môi trường PRODUCTION. Chỉ nên sử dụng trong quá trình phát triển và sửa lỗi.

## DELETE
Xóa một hay nhiều record trong bảng với điều kiện hoặc không. Nó sẽ không hồi phục lại trạng thái ban đầu của Table.

Syntax:
```sql
DELETE FROM Table WHERE Condition
```

NOTE: có một số trường hợp không thể xóa được dữ liệu.
- Khóa ngoại với cấu hình RESTRICT hoặc NO ACTION.
- Các ràng buộc duy nhất hoặc các ràng buộc kiểm tra.
- Quyền truy cập.

## UPDATE
Update một hay nhiều dữ liệu đã tồn tại trong cơ sở dữ liệu. Các dữ liệu được update phải khớp với kiểu dữ liệu đã được định nghĩa khi tạo table.

Syntax:
```sql
UPDATE Table
SET Column1 = NewValue, Column2 = NewValue, Column3 = NewValue, ...
WHERE Condition
```

## INDEX
Đánh thứ tự, chỉ mục cho các records trong table của table, giúp tăng tốc việc thao tác dữ liệu trong quá trình truy vấn dữ liệu.

Trỏ tới địa chỉ dữ liệu trong một bảng, giống như mục lục của một cuốn sách hoặc phần mục lục nhanh của từ diển.

Có hai kiểu index

1. Hash Index
- Sẽ tốt khi thực hiện các truy vấn = <>.

2. B Tree
- Được tổ chức theo dạng cây nhị phân
- Sẽ tốt khi thực hiện các truy vấn dạng =, <>, >=, <=, BETWEEN, LIKE
- Được dùng cho những col trong bảng khi muốn tìm kiếm 1 giá trị nằm trong khoảng nào đó.

Syntax:
```sql
CREATE INDEX IndexName
ON Table (Column1, Column2, Column3, ...)
```

Or

```sql
CREATE UNIQUE INDEX IndexName
ON Table (Column1, Column2, Column3, ...)
```

### Một số trường hợp nên sử dụng
- Những table có kiểu dữ liệu vừa và lớn, hơn 100k dòng.
- Các column thường xuyên sử dụng trong so sánh như là WHERE, JOIN và ORDER BY

### Một số trường hợp không nên sử dụng
- Các dữ liệu nhỏ hoặc cần ít tài nguyên.
- Dữ liệu thay đổi thường xuyên.
- Cột chứa dữ liệu không đa dạng.
- Cột chứa dữ liệu text quá dài.

## VIEW
View là một bảng ảo, có chứa các hàng và cột như một table thật. Các trường dữ liệu của View sẽ từ một hoặc nhiều các table khác nhau.

View vẫn được lưu trữ trong cơ sở dữ liệu, nhưng không phải là nơi để tạo ra dữ liệu.

Dữ liệu trong view sẽ luôn được cập nhật liên tục. Mỗi khi dữ liệu thay đổi thì engine của cơ sở dữ liệu sẽ tạo lại view.

Syntax:
```sql
CREATE VIEW ViewName AS
SELECT Column1, Column2, ...
FROM Table
WHERE Condition
```

### CHECK OPTION
Sử dụng CHECK OPTION để thêm các dữ liệu thõa mãn điều kiện. Các dữ liệud được chèn này thì nó sẽ thay đổi dữ liệu ở Table gốc.

Một View được cấu hình để update hoặc insert dữ liệu thì nó chỉ có thể được tạo từ một Table duy nhất.


### Pros & Cons
1. Pros
  - Đơn gián hóa những câu query phức tạp.
  - Giới hạn data có thể truy cập với nhóm nugời dùng được chỉ định.
  - View cung cấp thêm một lớp bảo mật cho database.
  - Cung cấp khả năng thích nghi khi thay đổi dữ liệu.

2. Nhược điểm
  - Hiệu năng sẽ chậm hơn, vì view không phải là dữ liệu thật, một view được tạo ra với mục đích là xem dữ liệu của một table, không phải là một table thật, QP (Query Processor) sẽ phải dịch truy vấn của view thành truy vấn cơ bản của table nguồn. Nếu như một view được định nghĩa truy vấn nhiểu table hay truy vấn phức tạp, thì chỉ với một truy vấn đơn giản của view thôi sẽ làm các thao tác join lâu hoàn thành hơn.