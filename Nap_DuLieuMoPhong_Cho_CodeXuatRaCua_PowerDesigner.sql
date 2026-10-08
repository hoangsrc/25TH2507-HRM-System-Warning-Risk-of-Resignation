-- DỮ LIỆU MẪU MÔ PHỎNG HỆ THỐNG HRM
-- Sinh viên: Đặng Minh Hoàng - MSSV: 25TH2507

USE HRM_DB;
GO

-- 1. DANH MỤC VAI TRÒ
INSERT INTO VAITRO (VAITROID, TENVAITRO, MOTA) VALUES 
(1, 'Admin', 'Quan tri vien he thong'),
(2, 'HR', 'Quan ly nhan su'),
(3, 'Manager', 'Truong phong quan ly');
GO

-- 2. DANH MỤC PHÒNG BAN
INSERT INTO PHONGBAN (PHONGBANID, TENPHONGBAN, MOTA, DANGHOATDONG) VALUES 
(1, 'Phong Ky Thuat', 'Phu trach phan mem va ha tang mang', 1),
(2, 'Phong Nhan Su', 'Tuyen dung, dao tao va quan ly che do', 1),
(3, 'Phong Kinh Doanh', 'Kinh doanh du an va cham soc khach hang', 1),
(4, 'Phong Ke Toan', 'Ke toan tai chinh, quy luong', 1),
(5, 'Phong Marketing', 'Phat trien thuong hieu va truyen thong', 1);
GO

-- 3. DANH SÁCH 50 NHÂN VIÊN
INSERT INTO NHANVIEN (NHANVIENID, PHONGBANID, MANHANVIEN, HOTEN, NGAYSINH, GIOITINH, SODIENTHOAI, EMAIL, DIACHI, CHUCVU, NGAYVAOLAM, TRANGTHAI) VALUES
(1, 1, 'NV001', 'Dang Minh Hoang', '1995-04-12', 'Nam', '0912345678', 'hoang.dm@hrm.vn', 'Thi tran Cu Chi, TP.HCM', 'Truong phong', '2020-03-01', 'Dang lam viec'),
(2, 2, 'NV002', 'Nguyen Thi Bich Ngoc', '1993-08-20', 'Nu', '0908123456', 'ngoc.ntb@hrm.vn', 'Tan An Hoi, Cu Chi, TP.HCM', 'Truong phong', '2019-06-15', 'Dang lam viec'),
(3, 3, 'NV003', 'Tran Duc Thang', '1992-11-05', 'Nam', '0978234567', 'thang.td@hrm.vn', 'Quan 12, TP.HCM', 'Truong phong', '2018-09-01', 'Dang lam viec'),
(4, 4, 'NV004', 'Pham Thu Ha', '1994-01-18', 'Nu', '0934567890', 'ha.pt@hrm.vn', 'Hoc Mon, TP.HCM', 'Truong phong', '2020-10-10', 'Dang lam viec'),
(5, 5, 'NV005', 'Le Hoang Nam', '1996-05-25', 'Nam', '0989012345', 'nam.lh@hrm.vn', 'Quan Go Vap, TP.HCM', 'Truong phong', '2021-02-15', 'Dang lam viec'),
(6, 1, 'NV006', 'Vo Thanh Tung', '1997-07-14', 'Nam', '0918765432', 'tung.vt@hrm.vn', 'Tan Phu Trung, Cu Chi, TP.HCM', 'Chuyen vien chinh', '2021-05-02', 'Dang lam viec'),
(7, 2, 'NV007', 'Bui Khanh Linh', '1998-03-09', 'Nu', '0909876543', 'linh.bk@hrm.vn', 'Quan Binh Thanh, TP.HCM', 'Chuyen vien chinh', '2022-01-10', 'Dang lam viec'),
(8, 3, 'NV008', 'Do Minh Khang', '1995-12-30', 'Nam', '0938765432', 'khang.dm@hrm.vn', 'Phu Hoa Dong, Cu Chi, TP.HCM', 'Chuyen vien chinh', '2020-07-20', 'Dang lam viec'),
(9, 4, 'NV009', 'Nguyen Mai Phuong', '1997-09-22', 'Nu', '0977654321', 'phuong.nm@hrm.vn', 'Quan 3, TP.HCM', 'Chuyen vien chinh', '2021-08-01', 'Dang lam viec'),
(10, 5, 'NV010', 'Hoang Tuan Kiet', '1998-06-17', 'Nam', '0988765432', 'kiet.ht@hrm.vn', 'Hoc Mon, TP.HCM', 'Chuyen vien chinh', '2022-03-15', 'Dang lam viec'),
(11, 1, 'NV011', 'Nguyen Van An', '1999-02-11', 'Nam', '0913456789', 'an.nv@hrm.vn', 'Trung Lap Ha, Cu Chi, TP.HCM', 'Nhan vien', '2022-06-01', 'Dang lam viec'),
(12, 2, 'NV012', 'Dinh Ngoc Anh', '2000-04-05', 'Nu', '0903456789', 'anh.dn@hrm.vn', 'Quan Tan Binh, TP.HCM', 'Nhan vien', '2023-02-20', 'Dang lam viec'),
(13, 3, 'NV013', 'Truong Van Binh', '1998-10-14', 'Nam', '0973456789', 'binh.tv@hrm.vn', 'Tan Quy Tay, Cu Chi, TP.HCM', 'Nhan vien', '2022-09-10', 'Dang lam viec'),
(14, 4, 'NV014', 'Nguyen Thuy Duong', '2001-01-29', 'Nu', '0933456789', 'duong.nt@hrm.vn', 'Quan Phu Nhuan, TP.HCM', 'Nhan vien', '2023-07-01', 'Dang lam viec'),
(15, 5, 'NV015', 'Vu Quoc Cuong', '1999-08-16', 'Nam', '0983456789', 'cuong.vq@hrm.vn', 'An Nhon Tay, Cu Chi, TP.HCM', 'Nhan vien', '2022-11-15', 'Dang lam viec'),
(16, 1, 'NV016', 'Phan Thi Kim Ngan', '2000-11-23', 'Nu', '0914567890', 'ngan.ptk@hrm.vn', 'Quan 12, TP.HCM', 'Nhan vien', '2023-04-10', 'Dang lam viec'),
(17, 2, 'NV017', 'Cao Van Dung', '1997-03-19', 'Nam', '0904567890', 'dung.cv@hrm.vn', 'Thai My, Cu Chi, TP.HCM', 'Nhan vien', '2021-10-05', 'Dang lam viec'),
(18, 3, 'NV018', 'Luong Gia Huy', '2001-05-08', 'Nam', '0974567890', 'huy.lg@hrm.vn', 'Hoc Mon, TP.HCM', 'Nhan vien', '2023-08-15', 'Dang lam viec'),
(19, 4, 'NV019', 'Nguyen Hai Yen', '1998-12-04', 'Nu', '0934567891', 'yen.nh@hrm.vn', 'Quan Go Vap, TP.HCM', 'Nhan vien', '2022-04-20', 'Dang lam viec'),
(20, 5, 'NV020', 'Ta Dinh Phong', '2000-09-17', 'Nam', '0984567890', 'phong.td@hrm.vn', 'Nhuan Duc, Cu Chi, TP.HCM', 'Nhan vien', '2023-05-02', 'Dang lam viec'),
(21, 1, 'NV021', 'Trinh Xuan Bach', '1996-06-21', 'Nam', '0915678901', 'bach.tx@hrm.vn', 'Quan Tan Phu, TP.HCM', 'Nhan vien', '2021-09-01', 'Dang lam viec'),
(22, 2, 'NV022', 'Ngo Bao Chau', '2001-02-14', 'Nu', '0905678901', 'chau.nb@hrm.vn', 'Binh My, Cu Chi, TP.HCM', 'Nhan vien', '2023-09-10', 'Dang lam viec'),
(23, 3, 'NV023', 'Duong Dinh Hung', '1997-10-09', 'Nam', '0975678901', 'hung.dd@hrm.vn', 'Quan 12, TP.HCM', 'Nhan vien', '2022-02-15', 'Dang lam viec'),
(24, 4, 'NV024', 'Le Thanh Hang', '1999-07-28', 'Nu', '0935678901', 'hang.lt@hrm.vn', 'Phu My Hung, Cu Chi, TP.HCM', 'Nhan vien', '2022-12-01', 'Dang lam viec'),
(25, 5, 'NV025', 'Doan Van Hieu', '2000-03-31', 'Nam', '0985678901', 'hieu.dv@hrm.vn', 'Hoc Mon, TP.HCM', 'Nhan vien', '2023-06-15', 'Dang lam viec'),
(26, 1, 'NV026', 'Nguyen Van Khanh', '1998-01-19', 'Nam', '0916789012', 'khanh.nv@hrm.vn', 'Tan Thong Hoi, Cu Chi, TP.HCM', 'Nhan vien', '2022-05-10', 'Dang lam viec'),
(27, 2, 'NV027', 'Pham Thao My', '2002-08-11', 'Nu', '0906789012', 'my.pt@hrm.vn', 'Quan Binh Thanh, TP.HCM', 'Nhan vien', '2024-01-05', 'Dang lam viec'),
(28, 3, 'NV028', 'Nguyen Minh Quan', '1999-04-26', 'Nam', '0976789012', 'quan.nm@hrm.vn', 'Trung An, Cu Chi, TP.HCM', 'Nhan vien', '2023-03-20', 'Dang lam viec'),
(29, 4, 'NV029', 'Tran Dinh Khoa', '2000-12-15', 'Nam', '0936789012', 'khoa.td@hrm.vn', 'Quan 10, TP.HCM', 'Nhan vien', '2023-10-01', 'Dang lam viec'),
(30, 5, 'NV030', 'Vu Van Long', '1997-05-03', 'Nam', '0986789012', 'long.vv@hrm.vn', 'Hoc Mon, TP.HCM', 'Nhan vien', '2022-03-01', 'Dang lam viec'),
(31, 1, 'NV031', 'Nguyen Van Tien', '2001-09-07', 'Nam', '0917890123', 'tien.nv@hrm.vn', 'Hoa Phu, Cu Chi, TP.HCM', 'Nhan vien', '2023-11-15', 'Dang lam viec'),
(32, 2, 'NV032', 'Nguyen Tuyet Mai', '1998-06-25', 'Nu', '0907890123', 'mai.nt@hrm.vn', 'Quan Tan Binh, TP.HCM', 'Nhan vien', '2022-08-01', 'Dang lam viec'),
(33, 3, 'NV033', 'Dang Quoc Dat', '1999-11-18', 'Nam', '0977890123', 'dat.dq@hrm.vn', 'Pham Van Coi, Cu Chi, TP.HCM', 'Nhan vien', '2023-01-10', 'Dang lam viec'),
(34, 4, 'NV034', 'Bui Tien Dung', '2000-02-02', 'Nam', '0937890123', 'dung.bt@hrm.vn', 'Quan 12, TP.HCM', 'Nhan vien', '2023-09-01', 'Dang lam viec'),
(35, 5, 'NV035', 'Nguyen Van Toan', '1998-10-21', 'Nam', '0987890123', 'toan.nv@hrm.vn', 'Hoc Mon, TP.HCM', 'Nhan vien', '2022-07-15', 'Dang lam viec'),
(36, 1, 'NV036', 'Huynh Thanh Nhan', '2001-03-14', 'Nu', '0918901234', 'nhan.ht@hrm.vn', 'Tan An Hoi, Cu Chi, TP.HCM', 'Nhan vien', '2024-02-01', 'Dang lam viec'),
(37, 2, 'NV037', 'Nguyen Duc Thang', '1997-08-30', 'Nam', '0908901234', 'thang.nd@hrm.vn', 'Quan Phu Nhuan, TP.HCM', 'Nhan vien', '2022-04-05', 'Dang lam viec'),
(38, 3, 'NV038', 'Phan Van Duc', '2000-01-07', 'Nam', '0978901234', 'duc.pv@hrm.vn', 'An Phu, Cu Chi, TP.HCM', 'Nhan vien', '2023-06-01', 'Dang lam viec'),
(39, 4, 'NV039', 'Do Duy Manh', '1999-05-12', 'Nam', '0938901234', 'manh.dd@hrm.vn', 'Quan 3, TP.HCM', 'Nhan vien', '2023-02-15', 'Dang lam viec'),
(40, 5, 'NV040', 'Pham Duc Huy', '2001-12-24', 'Nam', '0988901234', 'huy.pd@hrm.vn', 'Hoc Mon, TP.HCM', 'Nhan vien', '2024-03-01', 'Dang lam viec'),
(41, 1, 'NV041', 'Tran Van Kien', '1998-04-16', 'Nam', '0919012345', 'kien.tv@hrm.vn', 'Trung Lap Thuong, Cu Chi, TP.HCM', 'Nhan vien', '2022-10-20', 'Dang lam viec'),
(42, 2, 'NV042', 'Le Thi Diem My', '2002-07-09', 'Nu', '0909012345', 'my.ltd@hrm.vn', 'Quan Go Vap, TP.HCM', 'Nhan vien', '2024-04-15', 'Dang lam viec'),
(43, 3, 'NV043', 'Nguyen Hong Duy', '1999-09-28', 'Nam', '0979012345', 'duy.nh@hrm.vn', 'Phu My Hung, Cu Chi, TP.HCM', 'Nhan vien', '2023-05-10', 'Dang lam viec'),
(44, 4, 'NV044', 'Luong Xuan Truong', '2000-06-03', 'Nam', '0939012345', 'truong.lx@hrm.vn', 'Quan 12, TP.HCM', 'Nhan vien', '2023-11-01', 'Dang lam viec'),
(45, 5, 'NV045', 'Ha Duc Thinh', '2001-10-19', 'Nam', '0989012345', 'thinh.hd@hrm.vn', 'Tan Phu Trung, Cu Chi, TP.HCM', 'Nhan vien', '2024-01-15', 'Dang lam viec'),
(46, 1, 'NV046', 'Nguyen Trong Nghia', '2002-02-28', 'Nam', '0910123456', 'nghia.nt@hrm.vn', 'Thi tran Cu Chi, TP.HCM', 'Nhan vien', '2024-05-02', 'Dang lam viec'),
(47, 2, 'NV047', 'Chuong Thi Kieu', '2001-11-15', 'Nu', '0900123457', 'kieu.ct@hrm.vn', 'Hoc Mon, TP.HCM', 'Nhan vien', '2024-05-10', 'Dang lam viec'),
(48, 3, 'NV048', 'Dang Van Lam', '1998-08-08', 'Nam', '0970123458', 'lam.dv@hrm.vn', 'Quan Binh Thanh, TP.HCM', 'Nhan vien', '2022-12-15', 'Dang lam viec'),
(49, 4, 'NV049', 'Nguyen Tuan Anh', '2002-01-20', 'Nam', '0930123459', 'anh.nt@hrm.vn', 'Tan Thong Hoi, Cu Chi, TP.HCM', 'Nhan vien', '2024-06-01', 'Dang lam viec'),
(50, 5, 'NV050', 'Do Hung Dung', '1999-03-25', 'Nam', '0980123450', 'dung.dh@hrm.vn', 'Quan 10, TP.HCM', 'Nhan vien', '2023-04-01', 'Dang lam viec');
GO

-- 4. HỢP ĐỒNG LAO ĐỘNG
INSERT INTO HOPDONG (HOPDONGID, NHANVIENID, SOHOPDONG, LOAIHOPDONG, TUNGAY, DENNGAY, MUCLUONG, TRANGTHAI) VALUES
(1, 1, 'HD-2020/01-KT', 'Khong xac dinh thoi han', '2020-03-01', NULL, 32000000, 'Con hieu luc'),
(2, 2, 'HD-2019/02-NS', 'Khong xac dinh thoi han', '2019-06-15', NULL, 28000000, 'Con hieu luc'),
(3, 3, 'HD-2018/01-KD', 'Khong xac dinh thoi han', '2018-09-01', NULL, 30000000, 'Con hieu luc'),
(4, 4, 'HD-2020/03-KT', 'Khong xac dinh thoi han', '2020-10-10', NULL, 29000000, 'Con hieu luc'),
(5, 5, 'HD-2021/01-MK', 'Khong xac dinh thoi han', '2021-02-15', NULL, 27000000, 'Con hieu luc'),
(6, 6, 'HD-2021/04-KT', 'Khong xac dinh thoi han', '2021-05-02', NULL, 22000000, 'Con hieu luc'),
(7, 7, 'HD-2022/01-NS', 'Khong xac dinh thoi han', '2022-01-10', NULL, 19000000, 'Con hieu luc'),
(8, 8, 'HD-2020/05-KD', 'Khong xac dinh thoi han', '2020-07-20', NULL, 20000000, 'Con hieu luc'),
(9, 9, 'HD-2021/06-KT', 'Khong xac dinh thoi han', '2021-08-01', NULL, 18500000, 'Con hieu luc'),
(10, 10, 'HD-2022/02-MK', 'Khong xac dinh thoi han', '2022-03-15', NULL, 19500000, 'Con hieu luc'),
(11, 11, 'HD-2022/11-KT', 'Xac dinh thoi han', '2022-06-01', '2024-06-01', 14000000, 'Con hieu luc'),
(12, 12, 'HD-2023/04-NS', 'Xac dinh thoi han', '2023-02-20', '2025-02-20', 12000000, 'Con hieu luc'),
(13, 13, 'HD-2022/15-KD', 'Xac dinh thoi han', '2022-09-10', '2024-09-10', 13000000, 'Con hieu luc'),
(14, 14, 'HD-2023/08-KT', 'Xac dinh thoi han', '2023-07-01', '2025-07-01', 12500000, 'Con hieu luc'),
(15, 15, 'HD-2022/19-MK', 'Xac dinh thoi han', '2022-11-15', '2024-11-15', 13500000, 'Con hieu luc'),
(16, 16, 'HD-2023/12-KT', 'Xac dinh thoi han', '2023-04-10', '2025-04-10', 14500000, 'Con hieu luc'),
(17, 17, 'HD-2021/20-NS', 'Xac dinh thoi han', '2021-10-05', '2023-10-05', 11500000, 'Con hieu luc'),
(18, 18, 'HD-2023/16-KD', 'Xac dinh thoi han', '2023-08-15', '2025-08-15', 13000000, 'Con hieu luc'),
(19, 19, 'HD-2022/22-KT', 'Xac dinh thoi han', '2022-04-20', '2024-04-20', 12000000, 'Con hieu luc'),
(20, 20, 'HD-2023/21-MK', 'Xac dinh thoi han', '2023-05-02', '2025-05-02', 12500000, 'Con hieu luc'),
(21, 21, 'HD-2021/25-KT', 'Xac dinh thoi han', '2021-09-01', '2023-09-01', 15000000, 'Con hieu luc'),
(22, 22, 'HD-2023/24-NS', 'Xac dinh thoi han', '2023-09-10', '2025-09-10', 11000000, 'Con hieu luc'),
(23, 23, 'HD-2022/28-KD', 'Xac dinh thoi han', '2022-02-15', '2024-02-15', 14000000, 'Con hieu luc'),
(24, 24, 'HD-2022/30-KT', 'Xac dinh thoi han', '2022-12-01', '2024-12-01', 13000000, 'Con hieu luc'),
(25, 25, 'HD-2023/27-MK', 'Xac dinh thoi han', '2023-06-15', '2025-06-15', 12000000, 'Con hieu luc'),
(26, 26, 'HD-2022/33-KT', 'Xac dinh thoi han', '2022-05-10', '2024-05-10', 15000000, 'Con hieu luc'),
(27, 27, 'HD-2024/02-NS', 'Xac dinh thoi han', '2024-01-05', '2026-01-05', 11500000, 'Con hieu luc'),
(28, 28, 'HD-2023/31-KD', 'Xac dinh thoi han', '2023-03-20', '2025-03-20', 13500000, 'Con hieu luc'),
(29, 29, 'HD-2023/35-KT', 'Xac dinh thoi han', '2023-10-01', '2025-10-01', 12500000, 'Con hieu luc'),
(30, 30, 'HD-2022/38-MK', 'Xac dinh thoi han', '2022-03-01', '2024-03-01', 13000000, 'Con hieu luc'),
(31, 31, 'HD-2023/40-KT', 'Xac dinh thoi han', '2023-11-15', '2025-11-15', 14000000, 'Con hieu luc'),
(32, 32, 'HD-2022/42-NS', 'Xac dinh thoi han', '2022-08-01', '2024-08-01', 12000000, 'Con hieu luc'),
(33, 33, 'HD-2023/43-KD', 'Xac dinh thoi han', '2023-01-10', '2025-01-10', 14500000, 'Con hieu luc'),
(34, 34, 'HD-2023/45-KT', 'Xac dinh thoi han', '2023-09-01', '2025-09-01', 12500000, 'Con hieu luc'),
(35, 35, 'HD-2022/47-MK', 'Xac dinh thoi han', '2022-07-15', '2024-07-15', 13500000, 'Con hieu luc'),
(36, 36, 'HD-2024/06-KT', 'Xac dinh thoi han', '2024-02-01', '2026-02-01', 14500000, 'Con hieu luc'),
(37, 37, 'HD-2022/49-NS', 'Xac dinh thoi han', '2022-04-05', '2024-04-05', 11000000, 'Con hieu luc'),
(38, 38, 'HD-2023/48-KD', 'Xac dinh thoi han', '2023-06-01', '2025-06-01', 13500000, 'Con hieu luc'),
(39, 39, 'HD-2023/50-KT', 'Xac dinh thoi han', '2023-02-15', '2025-02-15', 13000000, 'Con hieu luc'),
(40, 40, 'HD-2024/09-MK', 'Xac dinh thoi han', '2024-03-01', '2026-03-01', 12000000, 'Con hieu luc'),
(41, 41, 'HD-2022/52-KT', 'Xac dinh thoi han', '2022-10-20', '2024-10-20', 13500000, 'Con hieu luc'),
(42, 42, 'HD-2024/12-NS', 'Xac dinh thoi han', '2024-04-15', '2026-04-15', 11500000, 'Con hieu luc'),
(43, 43, 'HD-2023/55-KD', 'Xac dinh thoi han', '2023-05-10', '2025-05-10', 13000000, 'Con hieu luc'),
(44, 44, 'HD-2023/57-KT', 'Xac dinh thoi han', '2023-11-01', '2025-11-01', 13500000, 'Con hieu luc'),
(45, 45, 'HD-2024/16-MK', 'Xac dinh thoi han', '2024-01-15', '2026-01-15', 12500000, 'Con hieu luc'),
(46, 46, 'HD-2024/TV01', 'Thu viec', '2024-05-02', '2024-07-02', 12000000, 'Con hieu luc'),
(47, 47, 'HD-2024/TV02', 'Thu viec', '2024-05-10', '2024-07-10', 10000000, 'Con hieu luc'),
(48, 48, 'HD-2022/TV03', 'Xac dinh thoi han', '2022-12-15', '2024-12-15', 14500000, 'Con hieu luc'),
(49, 49, 'HD-2024/TV04', 'Thu viec', '2024-06-01', '2024-08-01', 11000000, 'Con hieu luc'),
(50, 50, 'HD-2023/TV05', 'Xac dinh thoi han', '2023-04-01', '2025-04-01', 14000000, 'Con hieu luc');
GO

-- 5. TÀI KHOẢN NGƯỜI DÙNG
INSERT INTO TAIKHOAN (TAIKHOANID, VAITROID, NHANVIENID, TENDANGNHAP, MATKHAU, EMAIL, DANGHOATDONG, NGAYTAO) VALUES 
(1, 1, 1, 'admin', '123456', 'hoang.dm@hrm.vn', 1, '2023-01-01'),
(2, 2, 2, 'hr', '123456', 'ngoc.ntb@hrm.vn', 1, '2023-01-01'),
(3, 3, 3, 'manager', '123456', 'thang.td@hrm.vn', 1, '2023-01-01');
GO

-- 6. ĐƠN NGHỈ PHÉP
INSERT INTO DONNGHIPHEP (DONNGHIPHEPID, NHANVIENID, LOAINGHIPHEP, TUNGAY, DENNGAY, LYDO, TRANGTHAI, NGUOIDUYET, NGAYTAO) VALUES 
(1, 6, 'Nghi phep nam', '2024-06-10', '2024-06-12', 'Giai quyet viec gia dinh', 'Da duyet', 1, '2024-06-05'),
(2, 11, 'Nghi om', '2024-06-18', '2024-06-19', 'Kham benh theo chi dinh', 'Da duyet', 1, '2024-06-17'),
(3, 20, 'Nghi phep nam', '2024-07-01', '2024-07-03', 'Di cong tac ca nhan', 'Cho duyet', 1, '2024-06-25');
GO

-- 7. CHẤM CÔNG
INSERT INTO CHAMCONG (CHAMCONGID, NHANVIENID, NGAYCHAMCONG, GIOVAO, GIORA, TRANGTHAI, GHICHU) VALUES 
(1, 1, '2024-06-20', '2024-06-20 07:55:00', '2024-06-20 17:05:00', 'Dung gio', 'Binh thuong'),
(2, 2, '2024-06-20', '2024-06-20 08:00:00', '2024-06-20 17:00:00', 'Dung gio', 'Binh thuong'),
(3, 3, '2024-06-20', '2024-06-20 08:15:00', '2024-06-20 17:15:00', 'Di tre', 'Ket xe cau vuot'),
(4, 4, '2024-06-20', '2024-06-20 07:50:00', '2024-06-20 17:00:00', 'Dung gio', 'Binh thuong'),
(5, 5, '2024-06-20', '2024-06-20 08:02:00', '2024-06-20 17:05:00', 'Dung gio', 'Binh thuong');
GO

-- 8. ĐÁNH GIÁ KPI
INSERT INTO DANHGIAKPI (DANHGIAID, NHANVIENID, KYDANHGIA, DIEMHIEUSUAT, DIEMCHUYENCAN, DIEMTONGKET, NHANXET, NGUOIDANHGIA, NGAYDANHGIA) VALUES 
(1, 1, 'Q1-2024', 4.5, 4.8, 4.6, 'Quan ly phong ban xuat sac', 1, '2024-03-30'),
(2, 2, 'Q1-2024', 4.2, 4.5, 4.3, 'Tuyen dung vuot chi tieu', 1, '2024-03-30'),
(3, 3, 'Q1-2024', 4.0, 4.2, 4.1, 'Doanh so on dinh', 1, '2024-03-30'),
(4, 6, 'Q1-2024', 4.1, 4.0, 4.0, 'Hoan thanh tien do du an', 1, '2024-03-30'),
(5, 11, 'Q1-2024', 3.8, 4.0, 3.9, 'Can chu dong hon trong cong viec', 1, '2024-03-30');
GO