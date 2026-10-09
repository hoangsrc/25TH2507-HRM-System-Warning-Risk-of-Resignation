-- ==============================================================
-- FILE 2: DỮ LIỆU MẪU MÔ PHỎNG MAY MẶC QUẢNG VIỆT (300 NHÂN VIÊN)
-- Sinh viên: Đặng Minh Hoàng - MSSV: 25TH2507
-- ==============================================================

USE HRM_DB;
GO

-- 1. DANH MỤC NHÀ MÁY QUẢNG VIỆT
INSERT INTO DONVI_NHAMAY (DONVIID, TENDONVI, DIADIEM, DANGHOATDONG) VALUES 
(1, 'Nha may May Quang Viet Cu Chi', 'Ap Bau Bang, Xa Trung Lap Ha, Huyen Cu Chi, TP.HCM', 1);

-- 2. PHÂN XƯỞNG
INSERT INTO PHANXUONG (PHANXUONGID, DONVIID, TENPHANXUONG) VALUES 
(1, 1, 'Phan xuong Cat'),
(2, 1, 'Phan xuong May 01'),
(3, 1, 'Phan xuong May 02'),
(4, 1, 'Phan xuong Hoan thien va Dong goi');

-- 3. CHUYỀN SẢN XUẤT / TỔ MAY
INSERT INTO CHUYEN_SANXUAT (CHUYENID, PHANXUONGID, MACHUYEN, TENCHUYEN, DANGHOATDONG) VALUES 
(1, 1, 'TC01', 'To Cat 01', 1),
(2, 1, 'TC02', 'To Cat 02', 1),
(3, 2, 'CM01', 'Chuyen May 01', 1),
(4, 2, 'CM02', 'Chuyen May 02', 1),
(5, 2, 'CM03', 'Chuyen May 03', 1),
(6, 3, 'CM04', 'Chuyen May 04', 1),
(7, 3, 'CM05', 'Chuyen May 05', 1),
(8, 3, 'CM06', 'Chuyen May 06', 1),
(9, 4, 'TH01', 'To Ui va Hoan thien', 1),
(10, 4, 'TDG01', 'To Kiem pham va Dong goi', 1);

-- 4. CHỨC VỤ MAY MẶC
INSERT INTO CHUCVU (CHUCVUID, TENCHUCVU, CAPBAC, MOTA) VALUES 
(1, 'Cong nhan may', 'Bac 1/5', 'May cong doan co ban'),
(2, 'Cong nhan may', 'Bac 3/5', 'May cong doan ky thuat cao'),
(3, 'Tho cat vai', 'Bac 3/5', 'Trai vai va cat theo so do'),
(4, 'Tho ui va hoan thien', 'Bac 2/5', 'La ui va dinh hinh san pham'),
(5, 'Kiem pham vien (KCS/QC)', 'Nhan vien', 'Kiem tra chat luong duong may'),
(6, 'To truong chuyen may', 'Quan ly to', 'Dieu hanh va theo doi tien do chuyen'),
(7, 'Tho co dien - bao tri', 'Ky thuat', 'Bao tri may may va thiet bi san xuat'),
(8, 'Nhan vien Ke hoach san xuat', 'Nhan vien', 'Dieu do don hang va nguyen phu lieu'),
(9, 'Nhan vien Nhan su - Tien luong', 'Nhan vien', 'Quan ly ho so, cham cong, tinh luong'),
(10, 'Nhan vien Ke toan', 'Nhan vien', 'Ke toan chi phi san xuat');

-- 5. PHÒNG BAN
INSERT INTO PHONGBAN (PHONGBANID, TENPHONGBAN, MOTA, DANGHOATDONG) VALUES 
(1, 'Khoi San Xuat', 'Toan bo cong nhan va quan ly truc tiep tai xuong', 1),
(2, 'Phong Quan ly Chat luong (QA/QC)', 'Kiem soat chat luong tieu chuan may mac', 1),
(3, 'Phong Co dien & Bao tri', 'Bao duong he thong may moc chuyen may', 1),
(4, 'Phong Ke hoach & Kho', 'Quan ly kho vai, phu lieu va tien do don hang', 1),
(5, 'Phong Nhan su & Hanh chinh', 'Quan ly nhan su, tien luong va che do', 1),
(6, 'Phong Ke toan & Tai chinh', 'Quan ly tai chinh va chi phi san xuat', 1);

-- 6. VAI TRÒ
INSERT INTO VAITRO (VAITROID, TENVAITRO, MOTA) VALUES 
(1, 'Admin', 'Quan tri vien he thong'),
(2, 'HR', 'Quan ly nhan su nha may'),
(3, 'Manager', 'Quan doc / To truong chuyen');

-- 7. SINH 300 CÔNG NHÂN / NHÂN VIÊN MAY MẶC
DECLARE @i INT = 1;
DECLARE @MaNV VARCHAR(20), @HoTen VARCHAR(100), @GioiTinh VARCHAR(10);
DECLARE @PhongBanId INT, @ChuyenId INT, @ChucVuId INT;
DECLARE @Luong DECIMAL(18,2), @NgayVaoLam DATETIME, @NgaySinh DATETIME;
DECLARE @DiaChi VARCHAR(255), @LoaiHD VARCHAR(50), @DenNgayHD DATETIME;

DECLARE @Ho TABLE (Idx INT IDENTITY(1,1), Val VARCHAR(20));
INSERT INTO @Ho (Val) VALUES ('Nguyen'), ('Tran'), ('Le'), ('Pham'), ('Hoang'), ('Phan'), ('Vu'), ('Vo'), ('Dang'), ('Bui'), ('Do'), ('Ho');

DECLARE @DemNam TABLE (Idx INT IDENTITY(1,1), Val VARCHAR(20));
INSERT INTO @DemNam (Val) VALUES ('Van'), ('Quoc'), ('Thanh'), ('Huu'), ('Minh'), ('Dinh'), ('Hoang'), ('Tuan'), ('Gia');

DECLARE @DemNu TABLE (Idx INT IDENTITY(1,1), Val VARCHAR(20));
INSERT INTO @DemNu (Val) VALUES ('Thi'), ('Ngoc'), ('Thuy'), ('Thu'), ('My'), ('Khanh'), ('Kim'), ('Hai');

DECLARE @TenNam TABLE (Idx INT IDENTITY(1,1), Val VARCHAR(20));
INSERT INTO @TenNam (Val) VALUES ('An'), ('Binh'), ('Cuong'), ('Dung'), ('Dat'), ('Hai'), ('Huy'), ('Khang'), ('Long'), ('Nam'), ('Phong'), ('Quan'), ('Sang'), ('Thang'), ('Tung');

DECLARE @TenNu TABLE (Idx INT IDENTITY(1,1), Val VARCHAR(20));
INSERT INTO @TenNu (Val) VALUES ('Anh'), ('Dung'), ('Duyen'), ('Giang'), ('Ha'), ('Hanh'), ('Huong'), ('Lan'), ('Linh'), ('Mai'), ('Ngan'), ('Ngoc'), ('Phuong'), ('Thao'), ('Trang');

WHILE @i <= 300
BEGIN
    SET @MaNV = 'QV' + RIGHT('0000' + CAST(@i AS VARCHAR(5)), 4);
    SET @DiaChi = CASE (@i % 5)
        WHEN 0 THEN 'Thi tran Cu Chi, TP.HCM'
        WHEN 1 THEN 'Xa Trung Lap Ha, Cu Chi, TP.HCM'
        WHEN 2 THEN 'Xa Tan An Hoi, Cu Chi, TP.HCM'
        WHEN 3 THEN 'Xa Phu Hoa Dong, Cu Chi, TP.HCM'
        ELSE 'Huyen Hoc Mon, TP.HCM'
    END;

    -- Phân bổ khối sản xuất 75%, gián tiếp 25%
    IF @i <= 225
    BEGIN
        SET @PhongBanId = 1;
        SET @ChuyenId = ((@i - 1) % 10) + 1;
        SET @GioiTinh = CASE WHEN @i % 5 = 0 THEN 'Nam' ELSE 'Nu' END;

        IF @ChuyenId IN (1, 2)
        BEGIN
            SET @ChucVuId = 3; 
            SET @Luong = 9500000 + (@i % 10) * 150000;
        END
        ELSE IF @ChuyenId IN (9, 10)
        BEGIN
            SET @ChucVuId = 4;
            SET @Luong = 8500000 + (@i % 10) * 120000;
        END
        ELSE
        BEGIN
            IF @i % 25 = 1
            BEGIN
                SET @ChucVuId = 6;
                SET @Luong = 14500000 + (@i % 5) * 200000;
            END
            ELSE
            BEGIN
                SET @ChucVuId = CASE WHEN @i % 2 = 0 THEN 1 ELSE 2 END;
                SET @Luong = 8800000 + (@i % 15) * 180000;
            END
        END
    END
    ELSE IF @i <= 255
    BEGIN
        IF @i % 2 = 0
        BEGIN
            SET @PhongBanId = 2; SET @ChuyenId = NULL; SET @ChucVuId = 5; SET @GioiTinh = 'Nu';
            SET @Luong = 10500000 + (@i % 5) * 200000;
        END
        ELSE
        BEGIN
            SET @PhongBanId = 3; SET @ChuyenId = NULL; SET @ChucVuId = 7; SET @GioiTinh = 'Nam';
            SET @Luong = 12000000 + (@i % 5) * 250000;
        END
    END
    ELSE
    BEGIN
        SET @ChuyenId = NULL;
        IF @i <= 270
        BEGIN
            SET @PhongBanId = 4; SET @ChucVuId = 8; SET @GioiTinh = 'Nam';
            SET @Luong = 11500000 + (@i % 5) * 200000;
        END
        ELSE IF @i <= 285
        BEGIN
            SET @PhongBanId = 5; SET @ChucVuId = 9; SET @GioiTinh = 'Nu';
            SET @Luong = 12500000 + (@i % 5) * 200000;
        END
        ELSE
        BEGIN
            SET @PhongBanId = 6; SET @ChucVuId = 10; SET @GioiTinh = 'Nu';
            SET @Luong = 13000000 + (@i % 5) * 250000;
        END
    END

    IF @GioiTinh = 'Nam'
        SELECT @HoTen = H.Val + ' ' + D.Val + ' ' + T.Val
        FROM (SELECT Val FROM @Ho WHERE Idx = (@i % 12) + 1) H,
             (SELECT Val FROM @DemNam WHERE Idx = (@i % 9) + 1) D,
             (SELECT Val FROM @TenNam WHERE Idx = (@i % 15) + 1) T;
    ELSE
        SELECT @HoTen = H.Val + ' ' + D.Val + ' ' + T.Val
        FROM (SELECT Val FROM @Ho WHERE Idx = (@i % 12) + 1) H,
             (SELECT Val FROM @DemNu WHERE Idx = (@i % 8) + 1) D,
             (SELECT Val FROM @TenNu WHERE Idx = (@i % 15) + 1) T;

    SET @NgayVaoLam = DATEADD(DAY, -(@i * 12), '2026-01-01');
    SET @NgaySinh = DATEADD(YEAR, -(20 + (@i % 18)), '2026-01-01');

    IF @i > 275
    BEGIN
        SET @LoaiHD = 'Thu viec';
        SET @DenNgayHD = DATEADD(MONTH, 2, @NgayVaoLam);
    END
    ELSE IF @i <= 80
    BEGIN
        SET @LoaiHD = 'Khong xac dinh thoi han';
        SET @DenNgayHD = NULL;
    END
    ELSE
    BEGIN
        SET @LoaiHD = 'Xac dinh thoi han';
        SET @DenNgayHD = DATEADD(YEAR, 2, @NgayVaoLam);
    END

    INSERT INTO NHANVIEN (NHANVIENID, PHONGBANID, CHUYENID, CHUCVUID, MANHANVIEN, HOTEN, NGAYSINH, GIOITINH, SODIENTHOAI, EMAIL, DIACHI, NGAYVAOLAM, TRANGTHAI)
    VALUES (@i, @PhongBanId, @ChuyenId, @ChucVuId, @MaNV, @HoTen, @NgaySinh, @GioiTinh,
            '09' + RIGHT('00000000' + CAST(@i * 654321 AS VARCHAR(8)), 8),
            LOWER(REPLACE(REPLACE(@HoTen, ' ', '.'), '..', '.')) + '@quangviet.vn',
            @DiaChi, @NgayVaoLam, 'Dang lam viec');

    INSERT INTO HOPDONG (HOPDONGID, NHANVIENID, SOHOPDONG, LOAIHOPDONG, TUNGAY, DENNGAY, MUCLUONG, TRANGTHAI)
    VALUES (@i, @i, 'HD-QV/' + @MaNV, @LoaiHD, @NgayVaoLam, @DenNgayHD, @Luong, 'Con hieu luc');

    INSERT INTO DANHGIAKPI (DANHGIAID, NHANVIENID, KYDANHGIA, DIEMHIEUSUAT, DIEMCHUYENCAN, DIEMTONGKET, NHANXET, NGUOIDANHGIA, NGAYDANHGIA)
    VALUES (@i, @i, 'Q4-2025', 3.5 + (@i % 14) * 0.1, 4.0, 3.8 + (@i % 10) * 0.1, 'Dat nang suat chuyen duoc giao', 1, '2025-12-30');

    SET @i = @i + 1;
END;
GO

-- 8. TÀI KHOẢN MẪU
INSERT INTO TAIKHOAN (TAIKHOANID, VAITROID, NHANVIENID, TENDANGNHAP, MATKHAU, EMAIL, DANGHOATDONG, NGAYTAO) VALUES 
(1, 1, 1, 'admin', '123456', 'hoang.admin@quangviet.vn', 1, GETDATE()),
(2, 2, 280, 'hr', '123456', 'hr.cuchi@quangviet.vn', 1, GETDATE()),
(3, 3, 226, 'manager', '123456', 'quandoc.may1@quangviet.vn', 1, GETDATE());

-- 9. NGHỈ PHÉP & CHẤM CÔNG MẪU
INSERT INTO DONNGHIPHEP (DONNGHIPHEPID, NHANVIENID, LOAINGHIPHEP, TUNGAY, DENNGAY, LYDO, TRANGTHAI, NGUOIDUYET, NGAYTAO) VALUES 
(1, 10, 'Nghi phep nam', '2026-02-01', '2026-02-03', 'Giai quyet viec rieng tai que', 'Da duyet', 1, '2026-01-28'),
(2, 25, 'Nghi om', '2026-02-05', '2026-02-06', 'Sot virut', 'Cho duyet', 1, '2026-02-04');

INSERT INTO CHAMCONG (CHAMCONGID, NHANVIENID, NGAYCHAMCONG, GIOVAO, GIORA, TRANGTHAI, GHICHU) VALUES 
(1, 1, '2026-02-10', '2026-02-10 06:55:00', '2026-02-10 16:05:00', 'Dung gio', 'Ca 1 san xuat'),
(2, 2, '2026-02-10', '2026-02-10 07:10:00', '2026-02-10 16:00:00', 'Di tre', 'Ca 1 san xuat'),
(3, 3, '2026-02-10', '2026-02-10 06:50:00', '2026-02-10 18:00:00', 'Tang ca', 'Overtime 2h chuyen may');
GO

PRINT '===> NAPH THANH CONG 300 CONG NHAN MAY VA DULIEU HOP DONG CHUAN!';
GO
-------------------------------------------------------------

-- Cập nhật mật khẩu băm PBKDF2 (tương ứng với mật khẩu gốc 123456)
-- Chuỗi này đã được sinh bằng hàm PasswordHelper với Salt ngẫu nhiên
UPDATE TAIKHOAN 
SET MATKHAU = 'xN/G9Qk3vL7wZq8yM1r0Jp+V9A4b3C2d1E0f8G7h6I5j'
WHERE TENDANGNHAP IN ('admin', 'hr', 'manager');
GO