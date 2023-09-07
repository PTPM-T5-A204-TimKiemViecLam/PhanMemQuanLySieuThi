CREATE DATABASE DB_VIECLAM
GO

USE DB_VIECLAM
GO

--------------------- BẢNG CÔNG VIỆC
CREATE TABLE CONGVIEC
(
	MACV		INT NOT NULL IDENTITY(1, 1),
	TENCV		NVARCHAR(50),
	MOTA		NVARCHAR(100),	
	YEUCAU		NVARCHAR(50),
	MUCLUONG	DECIMAL(18,0),
	DIADIEM		NVARCHAR(50),
	THOIGIAN	DATE,
	CONSTRAINT PK_CONGVIEC PRIMARY KEY(MACV)
);

--------------------- BẢNG ỨNG VIÊN
CREATE TABLE UNGVIEN
(
	MAUV		INT NOT NULL IDENTITY(1, 1),
	HOTEN		NVARCHAR(50),
	EMAIL		VARCHAR(50),	
	SDT			VARCHAR(10),
	KINHNGHIEM	NVARCHAR(50),
	HOCVAN		NVARCHAR(50),
	CONSTRAINT PK_UNGVIEN PRIMARY KEY(MAUV)
);

--------------------- BẢNG HỒ SƠ ỨNG TUYỂN
CREATE TABLE HOSOUNGTUYEN
(
	MAHSUT		INT NOT NULL IDENTITY(1, 1),
	MAUV		INT,
	TENHS		NVARCHAR(50),	
	MOTA		NVARCHAR(50),
	CONSTRAINT PK_HOSOUNGTUYEN PRIMARY KEY(MAHSUT)
);

--------------------- BẢNG HỒ SƠ TUYỂN DỤNG
CREATE TABLE HOSOTUYENDUNG
(
	MAHSTD		INT NOT NULL IDENTITY(1, 1),
	MACV		INT,
	TENHS		NVARCHAR(50),	
	MOTA		NVARCHAR(50),
	CONSTRAINT PK_HOSOTUYENDUNG PRIMARY KEY(MAHSTD)
);

--------------------- QUYỀN TRUY CẬP
CREATE TABLE QUYENTRUYCAP
(
	MAQUYEN	INT NOT NULL IDENTITY(1, 1),	
	TENQUYEN	NVARCHAR(40),
	CONSTRAINT PK_QUYENTRUYCAP PRIMARY KEY(MAQUYEN)
);