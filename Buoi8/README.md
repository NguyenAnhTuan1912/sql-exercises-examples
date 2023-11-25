# Buổi 8 - MongoDB

Là một hệ quản trị cơ sở dữ liệu thuộc loại NoSQL, được thiết kế để lưu trữ và truy xuất dữ liệu theo cách linh hoạt và không yêu cầu sự chuẩn bị cấu trúc cố định trước. MongoDB là một hệ quản trị cở sở dữ liệu phổ biến cho các ứng dụng web và các dự án phá triển nhanh, đặc biệt là khi có sự thay đổi thường xuyên trong cấu trúc dữ liệu.

MongoDB là một db hướng tài liệu, một dạng NoSQL DB. Vì thế, MongoDB sẽ tránh cấu trúc table-based của relational database để thích ứng với các tài liệu như JSON có một schema rất linh hoạt gọi là BSON. MongoDB sử dụng lưu trữ dữ liệu dưới dạng Document JSON nên mỗi một collection sẽ có các kích cỡ và các document khác nhau. Các dữ liệu được lưu trữ trong document kiểu JSON nên truy vấn sẽ rất nhanh.

## Một số đặc điểm
- Các AD HOC Query: MongoDB hỗ trợ các truy vấn linh hoạt, cho phép tìm kiếm theo trường dữ liệu, thực hiện các truy vấn thông thường, tìm kiếm theo biểu thức chính quy (Regular Expression), và truy vấn theo khoảng giá trị.
- Indexing: bất kỳ trường nào trong tài liệu BSON cũng có thể được tạo chỉ mục, giúp tăng tốc quá trình tìm kiếm và truy xuất dữ liệu.
- Replication: MongoDB hỗ trợ chức năng nhân bản, tạo ra một bảng sao đồng nhất với phiên bản đang hoạt động. Điều này giúp bảo vệ dữ liệu khỏi mất mát và đảm bảo tính toàn vẹn của cơ sở dữ liệu trong trường hợp bị sự cố.
- Aggregation: các phép toán tập hợp trong MongoDB xử lý và trả về kết quả được tính toán. Chúng có thể nhóm các giá trị từ nhiều tài liệu lại với nhau và thực hiện nhiều phép toán đa dạng để trả về kết quả duy nhất. Điều này giống với GROUP BY và các hàm tổng hợp trong SQL.
- Lưu trữ file: MongoDB có thể được sử dụng như một hệ thống lưu trữ file, tận dụng các chức năng của nó và hoạt động như một cách phân phối thông qua sharding, giúp quản lý và truy xuất dữ liệu lớn.

## Khi nào thì sử dụng MongoDB
- Quản lý và truyền tải content: quản lý đa dạng nhiều product của content chỉ trong một kho lưu trữ data cho phép thay đổi và phản hồi nhanh chóng mà không chịu thêm phức tạp thêm từ hệ thống content.
- Cấu trúc Mobile và Social: MongoDB cung cấp một platform có sẵn, phản xạ nhanh, và dễ mở rộng cho phép rất nhiều khả năng đột phá, phân tích real-time, và hỗ trợ toàn cầu.
- Quản lý data khách hàng: tận dụng khả năng query nhanh chóng cho phân tích real-time trên cơ sở dữ liệu người dùng cực lớn với các mô hình data phức tạp bằng các schema linh hoạt và tự động sharding cho mở rộng chiều ngang.

## Ưu điểm
- Dữ liệu phi cấu trúc, không có tính ràng buộc, toàn vẹn nên tính sẵn sàng cao, hiệu suất lớn và dễ dàng mở rộng lưu trữ.
- Dữ liệu được caching lên RAM, hạn chế truy cập vào ổ cứng nên tốc độ đọc và ghi cao.

## Nhược điểm
- Không ứng dụng được cho các mô hình giao dịch nào có yêu cầu độ chính xác cao do không có ràng buộc.'
- Không có cơ chế transaction để phục vụ các ứng dụng ngân hàng.
- Dữ liệu lấy RAM làm trọng tâm hoạt động vì vậy khi hoạt động yêu cầu một bộ nhớ RAM lớn.
- Mọi thay đổi về dữ liệu mặc định đều chưa được ghi xuống ổ cứng ngay lập tức vì vậy khả năng bị mất dữ liệu từ nguyên nhân mất điện đột xuất là rất cao.