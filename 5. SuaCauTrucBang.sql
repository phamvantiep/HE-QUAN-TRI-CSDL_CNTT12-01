--1.Thêm cột mới vào bảng
--Cú pháp:
--	ALTER  TABLE  tên_bảng
--	ADD  tên_cột  kiểu_dữ_liệu  [RBTV]
--Chú ý: Cột mới thêm vào sẽ nằm ở cuối bảng

--Ví dụ: Thêm cột GhiChu vào bảng Lop
USE QLDIEM
GO
ALTER TABLE Lop
ADD GhiChu NVARCHAR(100)

--2.Xóa cột trong bảng
--Cú pháp:
--	ALTER TABLE tên_bảng
--	DROP COLUMN tên_cột

--Ví dụ: Xóa cột GhiChu trong bảng Lop
USE QLDIEM
GO
ALTER TABLE Lop
DROP COLUMN GhiChu

--3.Sửa đổi kiểu dữ liệu của cột
--Cú pháp:
--	ALTER  TABLE  tên_bảng
--	ALTER  COLUMN  tên_cột	kiểu_dữ_liệu_mới

--Ví dụ:
USE QLDIEM
GO
ALTER TABLE SinhVien
ALTER COLUMN HoTen NVARCHAR(50) 

--4.Bổ sung ràng buộc cho bảng
--Cú pháp:
--	ALTER TABLE tên_bảng
--	ADD CONSTRAINT tên_ràng_buộc loại_ràng_buộc

--Ví dụ: Bổ sung ràng buộc SoDVHT của bảng Mon
USE QLDIEM
GO
ALTER TABLE Mon
ADD CONSTRAINT c_SoDVHT CHECK (SoDVHT>=1 AND SoDVHT<=6)

--5.Tắt/bật các ràng buộc
--Cú pháp:
--	ALTER TABLE tên_bảng
--	NOCHECK CONSTRAINT ALL|tên_ràng_buộc

--	ALTER TABLE tên_bảng
--	CHECK CONSTRAINT ALL|tên_ràng_buộc

--Ví dụ: tắt ràng buộc c_SoDVHT
USE QLDIEM
GO
ALTER TABLE Mon
NOCHECK CONSTRAINT c_SoDVHT
