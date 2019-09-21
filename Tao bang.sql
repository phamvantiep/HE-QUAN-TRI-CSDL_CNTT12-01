--TẠO BẢNG
--1. Khi tạo bảng cần chú ý:
--	+ Bảng tạo ra với mục đích gì?
--	+ Bảng gồm những cột nào, kiểu dữ liệu từng cột
--	+ Cột nào làm khóa chính
--	+ Có quan hệ với bảng khác?
--	+ Có ràng buộc - yêu cầu với từng cột
--2. Cú pháp
--		CREATE TABLE tên_bảng
--		(
--			cột1   kiểu_dữ_liệu	 [RBTV],
--			cột2   kiểu_dữ_liệu  [RBTV],
--			...
--			cộtn   kiểu_dữ_liệu  [RBTV]
--		)
USE QuanLyNhanSu
GO
CREATE TABLE PhongBan
(
	MaPhong VARCHAR(10),
	TenPhong NVARCHAR(50),
	DienThoai VARCHAR(15)
)
