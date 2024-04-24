
CREATE TABLE HANG(
 	idHang int AUTO_INCREMENT NOT NULL PRIMARY KEY,
 	tenHang varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
);

CREATE TABLE HEDIEUHANH(
	idHeDieuHanh int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	tenHeDieuHanh varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
);

CREATE TABLE SANPHAM(
	idSP int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	tenSP varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	giaTien float NOT NULL,
	soLuong int NOT NULL,
	manHinh varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	cameraTruoc varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	cameraSau varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	chip varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	ram varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	duongLuong varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	sim varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	pin varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	moTa text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	anhSP varchar(255),
	idHang int,
	idHeDieuHanh int,
	FOREIGN KEY (idHang) REFERENCES HANG(idHang),
	FOREIGN KEY (idHeDieuHanh) REFERENCES HEDIEUHANH(idHeDieuHanh)
);

CREATE TABLE KHACHHANG(
	idKH int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	hotenKH varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	diachiKH varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
);

CREATE TABLE HOADON(
	idHD int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idKH int,
	diaChiGiaoHang varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	FOREIGN KEY (idKH) REFERENCES KHACHHANG(idKH)
);

CREATE TABLE CHITIETHOADON(
	idSP int,
	idHD int,
	soLuongMua int NOT NULL,
	tongTien float NOT NULL,
	PRIMARY KEY(idSP, idHD),
	FOREIGN KEY (idSP) REFERENCES SANPHAM(idSP),
	FOREIGN KEY (idHD) REFERENCES HOADON(idHD)
);




