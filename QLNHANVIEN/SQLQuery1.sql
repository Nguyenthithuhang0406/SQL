--a/
CREATE DATABASE QuanLyNhanVien;

--b/
CREATE TABLE NHANVIEN(
	MaNV VARCHAR(10) PRIMARY KEY,
	TenNV VARCHAR(35),
	TrinhDo VARCHAR(50),
	ChucVu VARCHAR(35)
);

CREATE TABLE KHOAHOC(
	MaKH VARCHAR(10) PRIMARY KEY,
	TenKH VARCHAR(50),
	DiaDiem VARCHAR(100)
);

CREATE TABLE THAMGIA(
	MaNV VARCHAR(10),
	MaKH VARCHAR(10),
	SoBuoiNghi INT,
	KetQua VARCHAR(50),
	FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV),
	FOREIGN KEY (MaKH) REFERENCES KHOAHOC(MaKH),
	PRIMARY KEY (MaNV, MaKH)
);


--c/
--nh?p d? li?u
INSERT INTO NHANVIEN(MaNV, TenNV, TrinhDo, ChucVu) VALUES
	(N'NV01', N'Tr?n V?n ??c', N'??i h?c', N'Nhân viên'),
	(N'NV02', N'Hoàng V?n Huy', N'??i h?c', N'Tr??ng phòng'),
	(N'NV03', N'Nguy?n Th? Chính', N'Cao ??ng', N'Nhân viên');

INSERT INTO KHOAHOC(MaKH, TenKH, DiaDiem) VALUES
	('KH01', 'Giao ti?p c? b?n', 'Hà N?i'),
	('KH02', 'Giao ti?p nâng cao', 'Hà N?i'),
	('KH03', 'Phân tích s? li?u', 'H? Chí Minh');

INSERT INTO THAMGIA(MaNV, MaKH, SoBuoiNghi, KetQua) VALUES
	('NV01', 'KH01', 1, 'Khá'),
	('NV01', 'KH02', 2, 'Khá'),
	('NV02', 'KH01', 0, 'Gi?i'),
	('NV02', 'KH02', 1, 'Khá'),
	('NV02', 'KH03', 1, 'Trung bình'),
	('NV03', 'KH01', 4, 'Trung bình');


--hi?n th? d? li?u
SELECT*FROM NHANVIEN;

SELECT*FROM KHOAHOC;

SELECT*FROM THAMGIA;


