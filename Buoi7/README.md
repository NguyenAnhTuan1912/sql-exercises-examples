# Cơ sở dữ liệu NoSQL

Là một thuật ngữ chung để chỉ các hệ thống quản lý cở sở dữ liệu (Database Management Systems) mà khong sử dụng ngôn ngữ truy vấn SQL để tương tác với dữ liệu. NoSQL thường được sử dụng để mô tả các loại cơ sở dữ liệu không phải là cơ sở dữ liệu quan hệ (Relational Database).

Có một số diểm mạnh sau:
- NoSQL database đề cập đến các khoa dữ liệu hiệu suất cao, phi quan hệ. Chúng vượt trội về các đặc điểm dễ sử dụng,  khả năng mở rộng, khả năng phục hồi và tính khả dụng.
- Thay vì tham gia các bảng dữ liệu chuẩn hóa, NoSQL lưu trữ dữ liệu phi cấu trúc hoặc bán cấu trúc, thường ở các cắp khóa-giá trị hoặc tài liệu JSON.
- Cở sở dữ liệu NoSQL thường không cung cấp đảm bảo ACID ngoài phạm vi của một phân vùng cơ sở dữ liệu duy nhất.
- Các dịch vụ khối lượng lớn yêu cầu thời gian phản hồi dưới giây ưu tiên kho dữ liệu NoSQL.

## Cơ sở dữ liệu tài liệu (Document Store)
- Có cùng một định dạng mô hình tài liệu mà các nhà phát triển sử dụng trong mã ứng dụng của họ.
- Chúng lưu trữ dữ liệu dưới dạng các đối tượng JSON với bản chất linh hoạt, bán cấu trúc và phân cấp.
- Mô hình cơ sở dữ liệu tài liệu phát huy hiệu quả với danh mục, hồ sơ người dùng và hệ thống quản lý nội dung, nơi từng văn bản là duy nhất và phát triển theo thời gian.

## Cở sở dữ liệu khóa-giá trị (Key-value)
- Rất dễ phân chia và cho phép thay đổi quy mô theo chiều ngang tại các cấp độ mà các loại cơ sở dữ liệu NoSQL không thể làm được.
- Cở sở dữ liệu khóa-giá trị lưu trữ dữ liệu dưới dạng một tập hợp các cặp khóa giá trị mà tại đó, khóa đóng vai trò là mã định danh duy nhất.
- Khóa và giá trị đều có thể là bất cứ thứ gì, từ đối tượng đơn giản đến đối tượng phức hợp phức tạp.
- Thiết kế dữ liệu lưu trữ khóa-giá trị được dùng cho trò chơi, công nghệ quảng cáo và đặc biệt thích hợp cho IoT.

## Cở sở dữ liệu đồ thị (Graph)
- Được xây dựng cho mục đích duy nhất, đó là lưu trữ và điều hướng các mối quan hệ.
- Chúng sử dụng nút để lưu trữ các thực thể dữ liuệ và biên để lưu trữ mối quan hệ giữa các thực thể. Biên luôn có một nút bắt đầu, nút kết thúc, kiểu và hướng.
- Biên có thể mô thả các mối quan hệ cha-con, hành động và quyền sở hữu và các mối quan hệ tương tự. Không giới hạn về số lượng cũng như loại mối quan hệ mà một nút có thể sở hữu.
- Bản có thể sử dụng cơ sở dữ liệu đồ thị để xây dựng và chạy ứng dụng hoạt động với bộ dữ liệu kết nối cao. Các trường hợp sử dụng hoạt động với bộ dữ liệu kết nối cao. Các trường hợp sử dụng điển hình của cơ sở dữ liệu đồ thị bao gồm mạng xã hội, công cụ đề xuất, phát hiện gian lần và đồ thị kiến trúc.

## Cơ sở dữ liệu cột gia tăng (Wide-column)
- là một loại cơ sở dữ liệu lưu trữ theo cột. Mỗi cột có thể chứa một loại dữ liệu khác nhau và số lượng cột trong mỗi hàng có thể thay đổi. Điều này làm cho WCDs phù hợp để lưu trữ lượng lớn dữ liệu với nhiều loại dữ liệu khác nhau.

## Ưu điểm
- Khả năng mở rộng tốt: thường có khả năng mở rộng ngang tốt, tức là chúng có thể xử lý lượng dữ liệu lớn và tăng cường khả năng xử lý bằng cách thêm các node mới vào hệ thống.
- Độ linh hoạt cao: linh hoạt với các dạng dữ liệu khác nhau, giúp nhanh chóng thích ứng với sự thay đổi của cấu trúc dữ liệu mà không yêu cầu sự điều chỉnh lớn.
- Hiệu suất cao: trong một số trường hợp, các hệ thống NoSQL có thể cung cấp hiệu suất tốt hơn so với cơ sở dữ liệu quan hệ, đặc biệt là đối với các loại dữ liệu cụ thể như dữ liệu tài liệu, dữ liệu key-value hoặc dữ liệu đồ thị.

## Khi nào nên sử dụng NoSQL?
- Dữ liệu không có cáu trúc hoặc cấu trúc lỏng lẻo: nếu dữ liệu của bạn không phải là các bảng có cấu trúc dữ liệu có cấu trúc cố định và thay đổi thường xuyên, một cở sở dữ liệu NoSQL như MongoDB (Document) hoặc Cassandra (WDC) có thể phù hợp hơn.
- Nhu cầu mở rộng tốt: nếu ứng dụng của bản có yêu cầu về mở rộng tốt, tức là cần xử lý lượng dữ liệu lớn và mở rộng hệ thống một cách dễ dàng. NoSQL có thể là lựa chọn tốt.
- Yêu cầu hiệu suất cao: trong một số trường hợp, các hệ thống NoSQL có thể cung cấp hiệu suất tốt hơn so với cơ sở dữ liệu quan hệ, đặc biệt là khi có nhu cầu truy xuất dữ liệu phức tạp.