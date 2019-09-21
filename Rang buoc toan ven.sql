--	RÀNG BUỘC TOÀN VẸN
-- 1. Ràng buộc CHECK
-- Sử dụng nhằm chỉ định điều kiện hợp lệ đối với dữ liệu
-- Cú pháp:
-- [CONSTRAINT tên_ràng_buộc] CHECK (điều_kiện)
-- Ví dụ:
USE QuanLyNhanSu
GO
CREATE TABLE NhanVien
(
	MaNV VARCHAR(10),
	HoTen NVARCHAR(30),
	Tuoi INT CONSTRAINT c_Tuoi CHECK (Tuoi >= 18 AND Tuoi <=60)
)

--2. Ràng buộc NOT NULL
--Sử dụng để bắt buộc phải nhập giá trị cho cột khi thêm dữ liệu
--vào bảng
-- Cú pháp:
--	tên_cột	  kiểu_dữ_liệu  NOT NULL
--Ví dụ:
CREATE TABLE ChucVu
(
	MaChucVu VARCHAR(10) NOT NULL,
	TenChucVu NVARCHAR(50) NOT NULL
)

--3. Ràng buộc PRIMARY KEY
-- Được sử dụng để định nghĩa khóa chính của bảng
-- Cú pháp:
--	[CONSTRAINT tên_ràng_buộc] PRIMARY KEY ([ds_cột])
--Ví dụ:
USE QuanLyNhanSu
GO
CREATE TABLE HocVan
(
	MaHV VARCHAR(10) PRIMARY KEY,
	TenHV NVARCHAR(100) NOT NULL,
	GhiChu NVARCHAR(100)
)

--4. Ràng buộc DEFAULT
-- Được sử dụng để thiết lập giá trị mặc định cho cột
-- Cú pháp:
-- [CONSTRAINT tên_ràng_buộc] DEFAULT (giá_trị)
-- Ví dụ:
USE QuanLyNhanSu
GO
CREATE TABLE LanhDao
(
	MaLD VARCHAR(10) PRIMARY KEY,
	HoTen NVARCHAR(30) NOT NULL,
	NgayVaoDang DATETIME DEFAULT(GETDATE())
)

--5.Ràng buộc UNIQUE
-- Được sử dụng khi quy định một cột nào đó cho phép nhập giá trị
-- duy nhất trên từng dòng
-- Cú pháp: [CONSTRAINT tên_ràng_buộc] UNIQUE (Danh_sách_cột)
--Ví dụ:
USE QuanLyNhanSu
GO
CREATE TABLE TinhThanh
(
	MaTinh VARCHAR(10) PRIMARY KEY,
	TenTinh NVARCHAR(30) UNIQUE,
	GhiChu NVARCHAR(10)
)

--6. Ràng buộc FOREIGN KEY
-- Được sử dụng để đảm bảo việc nhập dữ liệu cho 1 cột phù hợp tham
-- chiếu tới 1 quan hệ khác
-- Cú pháp:
--	[CONSTRAINT tên_ràng_buộc] FOREIGN KEY (ds_cột)
--	REFERENCES tên_bảng_tham_chiếu(ds_cột_tham_chiếu)
USE QuanLyNhanSu
GO
CREATE TABLE QuanHuyen
(
	MaQH VARCHAR(10) PRIMARY KEY,
	TenQH NVARCHAR(30) NOT NULL,
	MaTinh VARCHAR(10) FOREIGN KEY REFERENCES TinhThanh(MaTinh)
)

--7. Ràng buộc IDENTITY
--Được sử dụng khi muốn 1 cột nào đó sẽ tự động tăng giá trị
--khi thêm mới vào bảng
--Cú pháp: [CONSTRAINT tên_ràng_buộc] IDENTITY [(start, step)]
USE QuanLyNhanSu
GO
CREATE TABLE NguoiDung
(
	ID INT IDENTITY,
	MaNguoiDung VARCHAR(10) PRIMARY KEY,
	TenNguoiDung NVARCHAR(30) NOT NULL,
	MatKhau NVARCHAR(30)
)