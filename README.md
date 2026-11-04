# \# 25TH2507 - HỆ THỐNG QUẢN LÝ NHÂN SỰ VÀ DỰ BÁO NGUY CƠ NGHỈ VIỆC (HRM SYSTEM)

# 

# \- Đề tài nghiên cứu: Xây dựng hệ thống quản lý nhân sự và phân tích nguy cơ nghỉ việc/hiệu suất bằng Machine Learning giải thích được

# \- Cấp độ thực hiện: Thực tập ngành Công nghệ Thông tin (Mức 1 - Prototype nghiệp vụ)

# \- Sinh viên thực hiện: Đặng Minh Hoàng

# \- MSSV: 25TH2507 - Lớp: CC25TTH

# \- Giảng viên hướng dẫn: TS. Phạm Thị Thu Thúy

# \- Đơn vị: Khoa Công nghệ Thông tin - Trường Đại học Nha Trang

# 

# \---

# 

# \## 1. Giới thiệu dự án

# 

# Dự án nghiên cứu và xây dựng hệ thống quản lý nguồn nhân lực (Human Resource Management - HRM) cho doanh nghiệp sản xuất, đồng thời chuẩn bị nền tảng hạ tầng dữ liệu để tích hợp các mô hình học máy (Machine Learning) dự báo nguy cơ thôi việc của người lao động (Employee Attrition) kết hợp giải thích mô hình (Explainable AI - XAI) ở giai đoạn tiếp theo.

# 

# Giai đoạn hiện tại (Mức 1) tập trung vào việc thiết kế hệ thống cơ sở dữ liệu quan hệ chuẩn hóa, phát triển ứng dụng web quản trị nghiệp vụ đầy đủ các phân hệ cốt lõi, tích hợp cơ chế xác thực phân quyền an toàn và xây dựng Dashboard trực quan hóa vận hành sản xuất.

# 

# \---

# 

# \## 2. Mục tiêu dự án

# 

# \- Số hóa quy trình quản lý thông tin nhân sự, tổ chức phân xưởng và chuyền may trong môi trường sản xuất công nghiệp.

# \- Thiết kế cơ sở dữ liệu quan hệ chuẩn hóa, đảm bảo tính toàn vẹn dữ liệu và ràng buộc khóa ngoại chặt chẽ.

# \- Xây dựng đầy đủ các chức năng quản trị nghiệp vụ: Hồ sơ nhân viên, Phòng ban, Phân xưởng, Chuyền sản xuất, Chức vụ, Hợp đồng lao động, Chấm công theo ngày, Đơn nghỉ phép và Đánh giá KPI.

# \- Phát triển Dashboard thống kê giúp ban giám đốc và phòng nhân sự theo dõi tổng quan quy mô lao động, cơ cấu giới tính và phân bổ tổ chuyền.

# \- Thiết lập cấu trúc hệ thống mở để kế thừa trực tiếp cho việc tích hợp mô hình Machine Learning, SHAP và Ontology ở Mức 2.

# 

# \---

# 

# \## 3. Bối cảnh nghiên cứu và phạm vi dữ liệu

# 

# \- Bối cảnh tham chiếu: Hệ thống được khảo sát và xây dựng dựa trên mô hình doanh nghiệp may mặc, lấy Công ty May mặc Quảng Việt (huyện Củ Chi, TP. Hồ Chí Minh) làm bối cảnh nghiên cứu tham chiếu học thuật.

# \- Bản quyền và tính chất dữ liệu: Tác giả không làm việc tại Công ty May mặc Quảng Việt và không sử dụng dữ liệu nội bộ chưa được xác thực. Toàn bộ dữ liệu sử dụng trong prototype hiện tại là dữ liệu mô phỏng (synthetic data) được tạo lập bằng kịch bản có kiểm soát dựa trên quy tắc nghiệp vụ thực tế của ngành may.

# \- Quy mô mô phỏng hiện tại: Bao gồm 1 nhà máy, 4 phân xưởng, 10 chuyền may/tổ sản xuất và 300 hồ sơ lao động (75% lao động sản xuất trực tiếp tại xưởng may/cắt, 25% khối gián tiếp QA/QC, cơ điện và văn phòng).

# 

# \---

# 

# \## 4. Công nghệ sử dụng

# 

# \- Ngôn ngữ và Nền tảng: C# trên nền .NET Framework 4.8.1

# \- Kiến trúc ứng dụng: ASP.NET MVC 5

# \- Object-Relational Mapping (ORM): Entity Framework 6.5.2 (Database First)

# \- Cơ sở dữ liệu: Microsoft SQL Server 2017 trở lên

# \- Giao diện người dùng: Razor View Engine (.cshtml), Bootstrap 5.2.3, CSS3 tùy biến (styleAdmin.css)

# \- Thư viện biểu đồ: Chart.js

# \- Cơ chế bảo mật: Lớp hỗ trợ băm mật khẩu bằng thuật toán PBKDF2 kết hợp Salt 16-byte (PasswordHelper.cs)

# \- Công cụ thiết kế mô hình CSDL: SAP Sybase PowerDesigner (CDM và PDM)

# \- Môi trường lập trình: Microsoft Visual Studio 2022

# 

# \---

# 

# \## 5. Các chức năng đã triển khai thực tế (Mức 1)

# 

# 1\. Phân hệ Xác thực \& Phân quyền (Authentication \& Authorization):

# &#x20;  - Chức năng đăng nhập hệ thống kiểm tra tài khoản và mật khẩu từ CSDL.

# &#x20;  - Phân quyền kiểm soát hiển thị menu theo 3 vai trò: Admin (Toàn quyền), HR (Quản lý nhân sự), Manager (Quản đốc / Tổ trưởng chuyền).

# &#x20;  - Cơ chế duy trì phiên làm việc bằng Session và đăng xuất an toàn.

# 

# 2\. Phân hệ Quản lý Nhân sự (Employee Management):

# &#x20;  - Danh sách tổng quan 300 nhân sự với tính năng lọc tìm kiếm nhanh phía Client.

# &#x20;  - Hồ sơ nhân viên chi tiết (Details View) được thiết kế theo chuẩn biểu mẫu doanh nghiệp đóng khung liền mạch, hỗ trợ in ấn và xuất PDF.

# &#x20;  - Đầy đủ các thao tác Thêm mới (Create), Chỉnh sửa (Edit) và Xóa an toàn (Delete).

# 

# 3\. Phân hệ Cơ cấu Sản xuất \& Tổ chức (Production Organization):

# &#x20;  - Quản lý danh mục Nhà máy, 4 Phân xưởng sản xuất và 10 Chuyền may / Tổ cắt / Đóng gói.

# &#x20;  - Quản lý danh mục Phòng ban hành chính gián tiếp.

# &#x20;  - Quản lý danh mục Chức vụ chuyên môn hóa ngành may (Bậc 1/5, Bậc 3/5, Thợ cắt, KCS/QC, Tổ trưởng...).

# 

# 4\. Phân hệ Hợp đồng Lao động (Contract Management):

# &#x20;  - Theo dõi số hợp đồng, loại hợp đồng (Thử việc 2 tháng, Xác định thời hạn 1-2 năm, Không xác định thời hạn).

# &#x20;  - Quản lý thời hạn hiệu lực, mức lương cơ bản và tình trạng hợp đồng.

# 

# 5\. Phân hệ Chấm công \& Nghỉ phép (Attendance \& Leave Management):

# &#x20;  - Ghi nhận lịch trình chấm công hằng ngày, giờ vào, giờ ra, ghi nhận đi trễ và tăng ca.

# &#x20;  - Quản lý đơn xin nghỉ phép, theo dõi lý do, thời gian nghỉ và trạng thái duyệt (Chờ duyệt, Đã duyệt, Từ chối).

# 

# 6\. Phân hệ Đánh giá Hiệu suất (KPI Evaluation):

# &#x20;  - Theo dõi kết quả đánh giá định kỳ theo quý/năm.

# &#x20;  - Ghi nhận chi tiết điểm hiệu suất, điểm chuyên cần, điểm tổng kết thang điểm 5.0 và nhận xét của quản lý.

# 

# 7\. Dashboard Quản trị Nhân lực May mặc:

# &#x20;  - 4 thẻ thống kê chỉ số tổng quan: Tổng nhân sự, Công nhân chuyền may, Số tổ chuyền, Hợp đồng hiệu lực.

# &#x20;  - Bảng thông số cơ cấu mô hình xuyên suốt nhà máy tham chiếu.

# &#x20;  - Biểu đồ cột: Phân bổ chi tiết công nhân trên 10 chuyền may và tổ sản xuất.

# &#x20;  - Biểu đồ tròn: Cơ cấu lao động theo giới tính (phản ánh tỉ lệ 80% nữ đặc thù may mặc).

# &#x20;  - Biểu đồ tròn: Tỉ lệ phân loại các nhóm hợp đồng lao động.

# 

# \---

# 

# \## 6. Cấu trúc thư mục Repository

# 

# ```text

# 25TH2507-HRM-System-Warning-Risk-of-Resignation/

# |-- 01\_HRMSystem\_MayMac.sql        # Script DDL tạo cấu trúc 12 bảng

# |-- 02\_SeedData\_MayMac.sql         # Script DML nạp danh mục và 300 nhân sự synthetic

# |-- .gitignore                     # Bỏ qua các thư mục build (.vs, bin, obj, packages)

# |-- README.md                      # Tài liệu hướng dẫn dự án

# |-- IMG/                           # Thư mục chứa sơ đồ CDM/PDM và hình ảnh

# |   |-- CDM\_MayMac.png        # Sơ đồ quan niệm Conceptual Data Model

# |   `-- PDM\_MayMac.png        # Sơ đồ vật lý Physical Data Model

# `-- HRMSystem/                     # Thư mục giải pháp Visual Studio

# &#x20;   |-- HRMSystem.sln              # File Visual Studio Solution khởi động dự án

# &#x20;   `-- HRMSystem/                 # Thư mục mã nguồn ứng dụng ASP.NET MVC 5

# &#x20;       |-- App\_Start/             # Cấu hình Bundle, Route, Filter

# &#x20;       |-- Content/               # Tệp styleAdmin.css và định dạng giao diện

# &#x20;       |-- Controllers/           # Các Controller xử lý logic nghiệp vụ C#

# &#x20;       |-- Models/                # Entity Framework EDMX và các lớp thực thể

# &#x20;       |-- Scripts/               # Thư viện JavaScript hỗ trợ

# &#x20;       |-- Views/                 # Hệ thống giao diện Razor View (.cshtml)

# &#x20;       |-- packages.config        # Danh mục các gói thư viện NuGet

# &#x20;       `-- Web.config             # File cấu hình ứng dụng và chuỗi kết nối CSDL

# ```

# 

# \## 7. Yêu cầu môi trường

# 

# \- Hệ điều hành: Windows 10 hoặc Windows 11 (64-bit).

# \- Môi trường phát triển: Microsoft Visual Studio 2019 hoặc 2022 (yêu cầu workload "ASP.NET and web development").

# \- Gói hỗ trợ .NET: .NET Framework 4.8.1 Developer Pack / Targeting Pack.

# \- Hệ quản trị CSDL: Microsoft SQL Server 2017, 2019 hoặc 2022.

# \- Công cụ quản lý CSDL: SQL Server Management Studio (SSMS).

# \- Trình duyệt: Microsoft Edge, Google Chrome hoặc các trình duyệt tương thích tiêu chuẩn HTML5.

# 

# \---

# 

# \## 8. Hướng dẫn cài đặt và khởi chạy

# 

# Để triển khai và vận hành ứng dụng trên một máy tính mới, cần thực hiện theo đúng trình tự các bước sau đây:

# 

# \---

# 

# \## 9. Hướng dẫn tạo database từ hai file SQL

# 

# Mở phần mềm SQL Server Management Studio (SSMS), kết nối tới máy chủ SQL Server của bạn và thực thi lần lượt 2 file script nằm tại thư mục gốc của dự án:

# 

# 1\. \*\*Thực thi file `01\_HRMSystem\_MayMac.sql`\*\*:

# &#x20;  - Script này sẽ tự động khởi tạo database `HRM\_DB` và tạo toàn bộ cấu trúc 12 bảng dữ liệu cùng hệ thống khóa chính, khóa ngoại và chỉ mục index hỗ trợ tìm kiếm.

# &#x20;  - Nhấn Execute (hoặc phím F5) và đảm bảo kết quả thông báo thành công.

# 2\. \*\*Thực thi file `02\_SeedData\_MayMac.sql`\*\*:

# &#x20;  - Script này sẽ thực hiện nạp danh mục nhà máy Quảng Việt (4 phân xưởng, 10 chuyền may, 10 chức vụ, 6 phòng ban, 3 vai trò) và tạo sẵn 300 hồ sơ nhân sự may mặc mẫu cùng hợp đồng, chấm công và đánh giá KPI.

# &#x20;  - Nhấn Execute (hoặc phím F5) để hoàn tất nạp dữ liệu mô phỏng.

# 

# \---

# 

# \## 10. Hướng dẫn cấu hình kết nối SQL Server

# 

# 1\. Mở file `HRMSystem/HRMSystem/Web.config`.

# 2\. Tìm đến thẻ `<connectionStrings>`:

# 

# ```xml

# <connectionStrings>

# &#x20; <add name="HRM\_DBEntities" connectionString="metadata=res://\*/Models.HRMModel.csdl|res://\*/Models.HRMModel.ssdl|res://\*/Models.HRMModel.msl;provider=System.Data.SqlClient;provider connection string=\&quot;data source=TEN\_SERVER\_CUA\_BAN;initial catalog=HRM\_DB;integrated security=True;trustservercertificate=True;MultipleActiveResultSets=True;App=EntityFramework\&quot;" providerName="System.Data.EntityClient" />

# </connectionStrings>

# ```

# 

# 3\. Thay thế `TEN\_SERVER\_CUA\_BAN` bằng tên instance SQL Server thực tế trên máy của bạn (Ví dụ: `.`, hoặc `localhost`, hoặc `.\\SQLEXPRESS`). Trên máy phát triển gốc của tác giả, giá trị này là `MinhHoangg`.

# 4\. Lưu file `Web.config`.

# 

# \---

# 

# \## 11. Hướng dẫn mở và chạy chương trình trong Visual Studio

# 

# 1\. Mở file giải pháp `HRMSystem/HRMSystem.sln` bằng Visual Studio.

# 2\. Khôi phục thư viện NuGet (Restore Packages):

# &#x20;  - Trong cửa sổ Solution Explorer, nhấp chuột phải vào Solution 'HRMSystem' trên cùng → Chọn "Restore NuGet Packages".

# &#x20;  - Chờ Visual Studio tự động tải và nạp lại các gói thư viện từ file `packages.config`.

# 3\. Biên dịch dự án:

# &#x20;  - Nhấn tổ hợp phím `Ctrl + Shift + B` (hoặc menu `Build` → `Build Solution`).

# &#x20;  - Kiểm tra cửa sổ Output đảm bảo: "Build: 1 succeeded, 0 failed".

# 4\. Chạy ứng dụng:

# &#x20;  - Nhấn `Ctrl + F5` để khởi chạy ứng dụng trên máy chủ ảo IIS Express.

# &#x20;  - Hệ thống sẽ tự động mở trình duyệt tại địa chỉ cục bộ (ví dụ: `https://localhost:44379/`).

# 

# \---

# 

# \## 12. Tài khoản demo thử nghiệm

# 

# Hệ thống cung cấp sẵn 3 tài khoản tương ứng với 3 cấp phân quyền nghiệp vụ để phục vụ đánh giá và kiểm thử chức năng (được tạo sẵn trong kịch bản `02\_SeedData\_MayMac.sql`):

# 

# | Tên đăng nhập | Mật khẩu thử nghiệm | Vai trò (Role) | Chức danh đại diện | Quyền hạn truy cập |

# | :--- | :--- | :--- | :--- | :--- |

# | admin | 123456 | Admin | Quản trị viên hệ thống | Toàn quyền hệ thống, quản lý danh mục tổ chức và phân quyền. |

# | hr | 123456 | HR | Nhân viên Nhân sự (QV0280) | Quản lý hồ sơ nhân sự, phòng ban, hợp đồng, chấm công, nghỉ phép, KPI. |

# | manager | 123456 | Manager | Quản đốc / Tổ trưởng (QV0226) | Theo dõi nhân sự chuyền, duyệt đơn nghỉ phép, đánh giá KPI chuyền may. |

# 

# \*Lưu ý: Hệ thống đã xây dựng sẵn lớp `PasswordHelper` (sử dụng thuật toán PBKDF2 và Salt) sẵn sàng cho việc nâng cấp mã hóa toàn diện trong cơ sở dữ liệu ở giai đoạn tiếp theo.\*

# 

# \---

# 

# \## 13. Lưu ý về dữ liệu mô phỏng

# 

# \- \*\*Tính chất học thuật\*\*: Toàn bộ 300 hồ sơ nhân viên, mức lương và chỉ số đánh giá hoàn toàn mang tính chất giả lập (synthetic data) được xây dựng dựa trên khảo sát nghiệp vụ may mặc thực tế để đánh giá tính ổn định và năng lực vận hành của hệ thống.

# \- \*\*Đạo đức dữ liệu\*\*: Dự án tuyệt đối không sử dụng thông tin thật, không lưu trữ thông tin định danh nhạy cảm (như CCCD/CMND, tài khoản ngân hàng, bí mật kinh doanh) và không gây ảnh hưởng đến quy trình vận hành của đơn vị tham chiếu.

# 

# \---

# 

# \## 14. Tình trạng phát triển và hướng phát triển tiếp theo

# 

# \### Tiến độ hiện tại (Mức 1 - Giai đoạn hoàn thiện Prototype)

# 

# \- \[x] Thiết kế mô hình dữ liệu quan niệm CDM, mô hình vật lý PDM và xuất script SQL 12 bảng nghiệp vụ.

# \- \[x] Xây dựng ứng dụng Web ASP.NET MVC 5 vận hành ổn định với Entity Framework 6.5.2.

# \- \[x] Hoàn thiện 6 phân hệ nghiệp vụ CRUD theo chuẩn biểu mẫu đóng khung nhất quán.

# \- \[x] Tích hợp cơ chế đăng nhập, phân quyền giao diện theo 3 vai trò và lớp hỗ trợ mã hóa PBKDF2.

# \- \[x] Xây dựng Dashboard điều hành thống kê trên 300 lao động may mặc tham chiếu Quảng Việt.

# \- \[x] Dọn dẹp kho mã nguồn Git (.gitignore) và thiết lập tài liệu hướng dẫn README.md chuẩn hóa.

# \- \[ ] Xây dựng bộ test case chi tiết (Expected/Actual/PASS-FAIL) cho các luồng nghiệp vụ và phân quyền.

# \- \[ ] Hoàn thiện chức năng xuất báo cáo định dạng Excel và PDF theo yêu cầu đề cương.

# \- \[ ] Soạn thảo và cập nhật file Word báo cáo Thực tập ngành theo bối cảnh may mặc.

# 

# \### Định hướng nghiên cứu tiếp theo (Phạm vi Mức 2 - Chuyên đề tốt nghiệp)

# 

# \- \[ ] Tích hợp bộ dữ liệu chuẩn quốc tế IBM HR Analytics Employee Attrition \& Performance để huấn luyện và đánh giá mô hình học máy dự báo nguy cơ nghỉ việc (Attrition = Yes/No).

# \- \[ ] Thực hiện thí nghiệm bổ sung trên bộ dữ liệu UCI Productivity Prediction of Garment Employees để dự báo năng suất tổ chuyền may.

# \- \[ ] Huấn luyện và so sánh hiệu năng tối thiểu 3 thuật toán Machine Learning: Logistic Regression (Baseline), Random Forest và Gradient Boosting (XGBoost/LightGBM).

# \- \[ ] Giải thích mô hình ở cả hai cấp độ Global và Local bằng thư viện SHAP (SHapley Additive exPlanations).

# \- \[ ] Xây dựng HR Ontology trên Protege để chuẩn hóa tri thức nghiệp vụ nhân sự và hệ luật suy diễn.

# \- \[ ] Đóng gói mô hình AI thành dịch vụ API độc lập bằng Python (FastAPI) và tích hợp với ứng dụng Web HRM để hình thành Hệ thống hỗ trợ ra quyết định (DSS).



