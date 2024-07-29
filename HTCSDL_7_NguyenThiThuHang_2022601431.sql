--Câu 7.1
CREATE DATABASE QLBanHang;

GO
USE QLBanHang;
GO

CREATE TABLE CongTy(
MaCT INT PRIMARY KEY,
TenCT NVARCHAR(255) NOT NULL,
TrangThai NVARCHAR(255),
ThanhPho NVARCHAR(255)
);

CREATE TABLE SanPham(
MaSP INT PRIMARY KEY,
TenSP NVARCHAR(255) UNIQUE NOT NULL,
MauSac NVARCHAR(50) DEFAULT 'Đỏ',
Gia DECIMAL(10,2),
SoLuongCo INT
);

CREATE TABLE CungUng(
MaCT INT,
MaSP INT,
SoLuongBan INT CHECK (SoLuongBan > 0),
PRIMARY KEY (MaCT, MaSP),
FOREIGN KEY (MaCT) REFERENCES CongTy(MaCT),
FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
);

--cau7.3
INSERT INTO CongTy (MaCT, TenCT, TrangThai, ThanhPho) VALUES
(1, 'CongTyA', N'Hoạt động', N'Hà Nội'),
(2, 'CongTyB', N'Ngừng hoạt động', N'Hồ Chí Minh'),
(3, 'CongTyC', N'Hoạt động', N'Đà Nẵng');

INSERT INTO SanPham (MaSP, TenSP, MauSac, Gia, SoLuongCo) VALUES
(1, N'Sản phẩm A', 'Xanh', 1000000.00, 50),
(2, N'Sản phẩm B', N'Đỏ', 10000.00, 30),
(3, N'Sản phẩm C', N'Vàng', 3000000.00, 20);

INSERT INTO CungUng (MaCT, MaSP, SoLuongBan) VALUES
(1,1,10),
(1,2,20),
(2,1,15),
(2,3,10),
(3,2, 7),
(3,3,5);

SELECT * FROM CongTy;
SELECT * FROM SanPham;
SELECT * FROM CungUng;
