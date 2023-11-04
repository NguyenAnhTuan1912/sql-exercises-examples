# Nội dung buổi 5

## T-SQL (Transact SQL)
Là cú pháp ngôn ngữ lập trình mở rộng của ngôn ngữ SQL gồm có các tính năng được Sybase và Microsoft bổ sung cho SQL. Chằng hạn như kiểm soát giao dịch, xử lý lỗi và các biến được khai báo.

Với Microsoft thì là T-SQL, còn với:
- Oracle thì có PL/SQL
- PostgreSQL thì có PL/pgSQL

Cũng giống với SQL tiêu chuẩn, nhưng vẫn có những cú pháp của riêng từng Hệ quản trị cơ sở dữ liệu.

## Stored Procedure
Là tập hợp một hoặc nhiều câu lệnh T-SQL thành một nhóm đơn vị xử lý logic và được lưu trữ trên Database Server.

Khi một câu lệnh gọi chạy SP lần đầu tiên thì SQL Server sẽ chạy nó và lưu trữ vào bộ nhớ đệm, gọi là plan cache, những lần tiếp theo SQL Server sẽ sử dụng lại plan cache nên sẽ cho tốc độ xử lý tối ưu.

Syntax:
```
CREATE PROCEDURE procedure_name
( var1 TYPE, var2 TYPE, ... )
AS
BEGIN
  [Statements]
END
```

### Pros
- Hiệu xuất tốt.
- Giảm bộ nhớ.
- Tái sử dụng, khả năng mở rộng tốt.
- Bảo mật tốt.

### Cons
- Khả năng kiếm tra không tốt, vì đã được lưu trữ cho nên rất khó kiểm tra, bị thiếu linh động trong quá trình này.
- Khả năng gỡ lỗi: tùy thuộc vào hệ quản trị thì việc gỡ lỗi sẽ không thực hiện được hoặc rất khó để thực hiện.

## Trigger
Là một Stored Procedure trong database được dùng để tự động gọi bất cứ khi nào trong database có một sự kiện gì đó diễn ra. Trigger có thể được gọi khi một người nào đo truy vấn cơ sở dữ liệu, thêm một record mới vào trong cơ sở dữ liệu hoặc xóa một record nào đó.

Trigger có thể được gọi trước (BEFORE) hoặc sau (AFTER) khi câu lệnh mà nó cần-phải-được-trigger được thực thi.

Syntax:
```
CREATE TRIGGER trigger_name
ON table_name
FOR | AFTER | INSTEAD OF {INSERT [,] SELECT [,] DELETE [,] UPDATE}
AS
BEGIN
  [Statements]
END
```

### Note
Một số thời diềm Trigger được thực thi.
- AFTER: được kích hoạt sau khi các lệnh trong DML được thực thi, đã thay đổi trong cơ sở dữ liệu. Nó có thể truy cập vào các dữ liệu vừa mới thay đổi và sử dụng nó trong các hành động khác.
- FOR: được kích hoạt trước khi các lệnh trong DML được thực thi, dùng để kiểm tra hoặc can thiệp vào dữ liệu trước khi các lệnh trong DML được thực thi. Nó có thể ảnh hưởng lên dữ liệu trước khi nó được ghi vào.
- INSTEAD OF: được kích hoạt trước khi các lệnh trong DML được thực thi, được sử dụng để thay đổi hoặc kiểm tra dữ liệu trước khi một lệnh DML được thực hiện trên một view hoặc một bảng. Nếu như muốn áp dụng các quy tắc để kiểm tra trước khi cho phép các lệnh INSERT hay UPDATE được thực thi thì có thể dùng INSTEADE OF để can thiệp vào dữ liệu trước khi thêm vào trong CSDL.

### Pros
- Kiểm tra đầu vào dữ liệu: kiểm tra và thao tác dữ liệu trước khi thêm hoặc thay đổi. Kiểm tra tính đúng đắn của dữ liệu. Đảm bảo tính toàn vẹn của dữ liệu.
- Theo dõi các truy vấn: giúp cho quản trị viên có thể theo dõi các truy vấn, giao dịch trong cở sở dữ liệu.

### Cons
- Trigger chỉ là một phần mở rộng của việc kiểm tra, và không thể thay thế được hoàn toàn công việc này.
- khi cơ sở dữ liệu quá lớn, thì kết quả của trigger sẽ tăng lên, thực thi chậm hơn.
- Nạp chồng các actions của DML: nhiều trigger sẽ lồng nhau trên cùng một hay nhiều DML, cho nên rất khó để xác định.