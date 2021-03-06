

 DROP DATABASE IF EXISTS CHECKIN;

 create database CHECKIN;
 use CHECKIN;


CREATE TABLE HOCVIEN(
	MAHV		CHAR(10),
	HO		VARCHAR(40),	
	TEN		VARCHAR(10),
	NGSINH	DATE,
	GIOITINH	VARCHAR(3),
	NOISINH	VARCHAR(40),
	MALOP	CHAR(3),
	PASSWORD VARCHAR(255),
	EMAIL VARCHAR(255),
	TOKEN VARCHAR(255),
	updated_at DATETIME,
	ANH VARCHAR(100),
	MAC VARCHAR(255),
	MACTIME DATETIME,
	PRIMARY KEY(MAHV)
);

CREATE TABLE LOP
(
	MALOP	CHAR(3),
	TENLOP	VARCHAR(40),
	TRGLOP	CHAR(5),
	SISO		INT,
	MAGVCN	CHAR(4),
	PRIMARY KEY(MALOP)
);
CREATE TABLE KHOA
(
	MAKHOA	VARCHAR(4) ,
	TENKHOA	VARCHAR(40),
	NGTLAP	DATE,
	TRGKHOA	CHAR(4),
	PRIMARY KEY(MAKHOA)
);
CREATE TABLE MONHOC
(
	MAMH		VARCHAR(10),
	TENMH	VARCHAR(40),
	TCLT		INT,
	TCTH		INT,
	MAKHOA	VARCHAR(4),
	THU 	INT   ,
	TIET 	VARCHAR(10)  ,
	TOKEN	VARCHAR(255)  ,
	updated_at timestamp,
	PHONG	VARCHAR(10),
	PRIMARY KEY(MAMH)
);
CREATE TABLE DIEUKIEN
(
	MAMH			VARCHAR(10),
	MAMH_TRUOC	VARCHAR(10)
	
);
CREATE TABLE GIAOVIEN
(
	MAGV		CHAR(4),
	HOTEN	VARCHAR(40),
	HOCVI	VARCHAR(10),
	HOCHAM	VARCHAR(10),
	GIOITINH	VARCHAR(3),
	NGSINH	DATE,
	NGVL		DATE,
	HESO		DECIMAL(4,2),
	MUCLUONG	INT,
	MAKHOA	VARCHAR(4)
);
CREATE TABLE GIANGDAY
(
	MALOP	CHAR(3),
	MAMH		VARCHAR(10),
	MAGV		CHAR(4),
	HOCKY	INT,
	NAM		INT,
	TUNGAY	DATE,
	DENNGAY	DATE,
	PRIMARY KEY (MALOP,MAMH)
);

CREATE TABLE KETQUATHI
(
	MAHV		CHAR(10),
	MAMH		VARCHAR(10),
	LANTHI	INT,
	NGTHI	DATE,
	QT		DECIMAL(4,2),
	TH		DECIMAL(4,2),
	GK		DECIMAL(4,2),
	CK		DECIMAL(4,2),
	TB		DECIMAL(4,2),
	KQUA		VARCHAR(10),
	PRIMARY KEY (MAHV,MAMH,LANTHI)
);



INSERT INTO KHOA VALUES('KHMT', 'Khoa hoc may tinh', '2005/6/7', 'GV01');							
INSERT INTO KHOA VALUES('HTTT', 'He thong thong tin', '2005/6/7', 'GV02');							
INSERT INTO KHOA VALUES('CNPM', 'Cong nghe phan mem', '2005/6/7', 'GV04');							
INSERT INTO KHOA VALUES('MTT', 'Mang va truyen thong', '2005/10/20', 'GV03');							
INSERT INTO KHOA VALUES('KTMT', 'Ky thuat may tinh', '2005/12/20', 'Null');		

INSERT INTO HOCVIEN VALUES('17520001', 'Nguyen Van', 'A', '1986/1/27', 'Nam', 'TpHCM', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520001@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520002', 'Trần Văn Như', 'Ý', '1999/4/16', 'Nam', 'Thừa Thiên Huế', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', 'uitappteam@gmail.com', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520003', 'Ha Duy', 'Lap', '1986/4/18', 'Nam', 'Nghe An', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520003@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520004', 'Tran Ngoc', 'Linh', '1986/3/30', 'Nu', 'Tay Ninh', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520004@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520005', 'Tran Minh', 'Long', '1986/2/27', 'Nam', 'TpHCM', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520005@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520006', 'Le Nhat', 'Minh', '1986/1/24', 'Nam', 'TpHCM', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520006@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520007', 'Nguyen Nhu', 'Nhut', '1986/1/27', 'Nam', 'Ha Noi', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520007@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520008', 'Nguyen Manh', 'Tam', '1986/2/27', 'Nam', 'Kien Giang', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520008@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520009', 'Phan Thi Thanh', 'Tam', '1986/1/27', 'Nu', 'Vinh Long', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520009@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520010', 'Le Hoai', 'Thuong', '1986/2/5', 'Nu', 'Can Tho', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520010@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17520011', 'Le Ha', 'Vinh', '1986/12/25', 'Nam', 'Vinh Long', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17520011@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								

INSERT INTO HOCVIEN VALUES('17521006', 'Nguyen Tri', 'Tam', '1986/1/27', 'Nu', 'Vinh Long', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17521006@gm.uit.edu.vn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17521219', 'Pham Nhat', 'Tuan', '1986/2/5', 'Nu', 'Can Tho', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '17521219@gm.uit.edu.vn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('17521287', 'Tran Van Nhu', 'Y', '1986/12/25', 'Nam', 'Vinh Long', 'K11', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', 'uitappteam@gmail.com', null, null,'/assets/avt.jpg', null, null);								

INSERT INTO HOCVIEN VALUES('18520001', 'Nguyen Van', 'B', '1986/2/11', 'Nam', 'TpHCM', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520001@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520002', 'Nguyen Thi Kim', 'Duyen', '1986/1/18', 'Nu', 'TpHCM', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520002@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520003', 'Tran Thi Kim', 'Duyen', '1986/9/17', 'Nu', 'TpHCM', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520003@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520004', 'Truong My', 'Hanh', '1986/5/19', 'Nu', 'Dong Nai', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520004@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520005', 'Nguyen Thanh', 'Nam', '1986/4/17', 'Nam', 'TpHCM', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520005@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520006', 'Nguyen Thi Truc', 'Thanh', '1986/3/4', 'Nu', 'Kien Giang', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520006@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520007', 'Tran Thi Bich', 'Thuy', '1986/2/8', 'Nu', 'Nghe An', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520007@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520008', 'Huynh Thi Kim', 'Trieu', '1986/4/8', 'Nu', 'Tay Ninh', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520008@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520009', 'Pham Thanh', 'Trieu', '1986/2/23', 'Nam', 'TpHCM', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520009@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520010', 'Ngo Thanh', 'Tuan', '1986/2/14', 'Nam', 'TpHCM', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520010@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520011', 'Do Thi', 'Xuan', '1986/3/9', 'Nu', 'Ha Noi', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520011@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('18520012', 'Le Thi Phi', 'Yen', '1986/3/12', 'Nu', 'TpHCM', 'K12', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '18520012@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520001', 'Nguyen Thi Kim', 'Cuc', '1986/6/9', 'Nu', 'Kien Giang', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520001@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520002', 'Truong Thi My', 'Hien', '1986/3/18', 'Nu', 'Nghe An', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520002@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520003', 'Le Duc', 'Hien', '1986/3/21', 'Nam', 'Tay Ninh', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520003@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520004', 'Le Quang', 'Hien', '1986/4/18', 'Nam', 'TpHCM', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520004@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520005', 'Le Thi', 'Huong', '1986/3/27', 'Nu', 'TpHCM', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520005@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520006', 'Nguyen Thai', 'Huu', '1986/3/30', 'Nam', 'Ha Noi', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520006@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520007', 'Tran Minh', 'Man', '1986/5/28', 'Nam', 'TpHCM', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520007@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520008', 'Nguyen Hieu', 'Nghia', '1986/4/8', 'Nam', 'Kien Giang', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520008@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520009', 'Nguyen Trung', 'Nghia', '1987/1/18', 'Nam', 'Nghe An', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520009@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520010', 'Tran Thi Hong', 'Tham', '1986/4/22', 'Nu', 'Tay Ninh', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520010@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520011', 'Tran Minh', 'Thuc', '1986/4/4', 'Nam', 'TpHCM', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520011@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								
INSERT INTO HOCVIEN VALUES('19520012', 'Nguyen Thi Kim', 'Yen', '1986/9/7', 'Nu', 'TpHCM', 'K13', '$2y$10$yFbHOOgqvCR2HSdHiiqYweZ80GOfk0Ies9.XQer5eW8T3UfJUgmle', '19520012@gm.uit.edu.vnnn', null, null,'/assets/avt.jpg', null, null);								


INSERT INTO LOP VALUES('K11','Lop 1 khoa 1','K1108',11,'GV07');					
INSERT INTO LOP VALUES('K12','Lop 2 khoa 1','K1205',12,'GV09');					
INSERT INTO LOP VALUES('K13','Lop 3 khoa 1','K1305',12,'GV14');					

INSERT INTO MONHOC VALUES('THDC', 'Tin học đại cương', 4, 1, 'KHMT', 2, '123', null, null,'E2.3');								
INSERT INTO MONHOC VALUES('CTRR', 'Cấu trúc rời rạc', 5, 0, 'KHMT',2, '678', null, null,'E2.4');								
INSERT INTO MONHOC VALUES('CSDL', 'Cơ sở dữ liệu', 3, 1, 'HTTT', 4, '67890', null, null,'E2.2');								
INSERT INTO MONHOC VALUES('CTDLGT', 'Cấu trúc dữ liệu và giải thuật', 3, 1, 'KHMT', 3, '678', null, null,'E3.2');								
INSERT INTO MONHOC VALUES('DHMT', 'Đồ họa máy tính', 3, 1, 'KHMT', 4, '123', null, null,'E4.3');	
INSERT INTO MONHOC VALUES('HDH', 'Hệ điều hành', 4, 0, 'KTMT', 6, '123', null, null,'A315');	
INSERT INTO MONHOC VALUES('PTUDTTBDD', 'Phát triển ứng dụng di dộng', 4, 0, 'MTT', 3, '12345', null, null,'B406');

INSERT INTO MONHOC VALUES('PTTKTT', 'Phân tích và thiết kế thuật toán', 3, 0, 'KHMT', 3, '12345', null, null,'E3.3');								
							
INSERT INTO MONHOC VALUES('KTMT', 'Kien truc may tinh', 3, 0, 'KTMT', 4, '678', null, null,'C106');								
INSERT INTO MONHOC VALUES('TKCSDL', 'Thiet ke co so du lieu', 3, 1, 'HTTT', 5, '123', null, null,'E11.8');								
INSERT INTO MONHOC VALUES('PTTKHTTT', 'Phan tich thiet ke he thong thong tin', 4, 1, 'HTTT', 5, '678', null, null,'E11.6');								
							
INSERT INTO MONHOC VALUES('NMCNPM', 'Nhap mon cong nghe phan mem', 3, 0, 'CNPM', 3, '678', null, null,'A325');								
INSERT INTO MONHOC VALUES('LTCFW', 'Lap trinh C for win', 3, 1, 'CNPM', 7, '123', null, null,'B7.8');								
INSERT INTO MONHOC VALUES('LTHDT', 'Lap trinh huong doi tuong', 3, 1, 'CNPM', 7, '678', null, null,'E4.2');								

INSERT INTO GIAOVIEN VALUES('GV01','Ho Thanh Son','PTS','GS','Nam','1950/5/2','2004/1/11',5,2250000,'KHMT');										
INSERT INTO GIAOVIEN VALUES('GV02','Trần Thanh Tâm','TS','PGS','Nam','1965/12/17','2004/4/20',4.5,2025000,'HTTT');										
INSERT INTO GIAOVIEN VALUES('GV03','Do Nghiem Phung','TS','GS','Nu','1950/8/1','2004/9/23',4,1800000,'CNPM');										
INSERT INTO GIAOVIEN VALUES('GV04','Trần Nam Sơn','TS','PGS','Nam','1961/2/22','2005/1/12',4.5,2025000,'KTMT');										
INSERT INTO GIAOVIEN VALUES('GV05','Mai Thanh Danh','ThS','GV','Nam','1958/3/12','2005/1/12',3,1350000,'HTTT');										
INSERT INTO GIAOVIEN VALUES('GV06','Tran Doan Hung','TS','GV','Nam','1953/3/11','2005/1/12',4.5,2025000,'KHMT');										
INSERT INTO GIAOVIEN VALUES('GV07','Nguyễn Minh Tiến','ThS','GV','Nam','1971/11/23','2005/3/1',4,1800000,'KHMT');										
INSERT INTO GIAOVIEN VALUES('GV08','Le Thi Tran','KS','Null','Nu','1974/3/26','2005/3/1',1.69,760500,'KHMT');										
INSERT INTO GIAOVIEN VALUES('GV09','Nguyen To Lan','ThS','GV','Nu','1966/12/31','2005/3/1',4,1800000,'HTTT');										
INSERT INTO GIAOVIEN VALUES('GV10','Le Tran Anh Loan','KS','Null','Nu','1972/7/17','2005/3/1',1.86,837000,'CNPM');										
INSERT INTO GIAOVIEN VALUES('GV11','Ho Thanh Tung','CN','GV','Nam','1980/1/12','2005/5/15',2.67,1201500,'MTT');										
INSERT INTO GIAOVIEN VALUES('GV12','Tran Van Anh','CN','Null','Nu','1981/3/29','2005/5/15',1.69,760500,'CNPM');										
INSERT INTO GIAOVIEN VALUES('GV13','Nguyen Linh Dan','CN','Null','Nu','1980/5/23','2005/5/15',1.69,760500,'KTMT');										
INSERT INTO GIAOVIEN VALUES('GV14','Trần Hồng Nghi','ThS','GV','Nu','1976/11/30','2005/5/15',3,1350000,'MTT');										
INSERT INTO GIAOVIEN VALUES('GV15','Lê Hà Thanh','ThS','GV','Nam','1978/5/4','2005/5/15',3,1350000,'KHMT');										


INSERT INTO GIANGDAY VALUES('K11','PTUDTTBDD','GV14',1,2006,'2006/1/2','2006/5/12');		
INSERT INTO GIANGDAY VALUES('K11','THDC','GV07',1,2006,'2006/1/2','2006/5/12');								
INSERT INTO GIANGDAY VALUES('K12','THDC','GV06',1,2006,'2006/1/2','2006/5/12');								
INSERT INTO GIANGDAY VALUES('K13','THDC','GV15',1,2006,'2006/1/2','2006/5/12');								
INSERT INTO GIANGDAY VALUES('K11','CTRR','GV02',1,2006,'2006/1/9','2006/5/17');								
INSERT INTO GIANGDAY VALUES('K12','CTRR','GV02',1,2006,'2006/1/9','2006/5/17');								
INSERT INTO GIANGDAY VALUES('K13','CTRR','GV08',1,2006,'2006/1/9','2006/5/17');								
INSERT INTO GIANGDAY VALUES('K11','CSDL','GV05',2,2006,'2006/6/1','2006/7/15');								
INSERT INTO GIANGDAY VALUES('K12','CSDL','GV09',2,2006,'2006/6/1','2006/7/15');								
INSERT INTO GIANGDAY VALUES('K13','CTDLGT','GV15',2,2006,'2006/6/1','2006/7/15');								
INSERT INTO GIANGDAY VALUES('K13','CSDL','GV05',3,2006,'2006/8/1','2006/12/15');								
INSERT INTO GIANGDAY VALUES('K13','DHMT','GV07',3,2006,'2006/8/1','2006/12/15');								
INSERT INTO GIANGDAY VALUES('K11','CTDLGT','GV15',3,2006,'2006/8/1','2006/12/15');								
INSERT INTO GIANGDAY VALUES('K12','CTDLGT','GV15',3,2006,'2006/8/1','2006/12/15');								
INSERT INTO GIANGDAY VALUES('K11','HDH','GV04',1,2007,'2007/1/2','2007/2/18');								
INSERT INTO GIANGDAY VALUES('K12','HDH','GV04',1,2007,'2007/1/2','2007/3/20');								
INSERT INTO GIANGDAY VALUES('K11','DHMT','GV07',1,2007,'2007/2/18','2007/3/20');								


INSERT INTO DIEUKIEN VALUES('CSDL','CTRR');					
INSERT INTO DIEUKIEN VALUES('CSDL','CTDLGT');					
INSERT INTO DIEUKIEN VALUES('CTDLGT','THDC');					
INSERT INTO DIEUKIEN VALUES('PTTKTT','THDC');					
INSERT INTO DIEUKIEN VALUES('PTTKTT','CTDLGT');					
INSERT INTO DIEUKIEN VALUES('DHMT','THDC');					
INSERT INTO DIEUKIEN VALUES('LTHDT','THDC');					
INSERT INTO DIEUKIEN VALUES('PTTKHTTT','CSDL');					


INSERT INTO KETQUATHI VALUES('17520001','CSDL',1,'2006/7/20',10, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520001','CTDLGT',1,'2006/12/28',9, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520001','THDC',1,'2006/5/20',9, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520001','CTRR',1,'2006/5/13',9.5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520002','CSDL',1,'2006/7/20',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520002','CSDL',2,'2006/7/27',4.25, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520002','CSDL',3,'2006/8/10',4.5, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520002','CTDLGT',1,'2006/12/28',4.5, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520002','CTDLGT',2,'2007/1/5',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520002','CTDLGT',3,'2007/1/15',6, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520002','THDC',1,'2006/5/20',5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520002','CTRR',1,'2006/5/13',7, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520003','CSDL',1,'2006/7/20',3.5, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520003','CSDL',2,'2006/7/27',8.25, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520003','CTDLGT',1,'2006/12/28',7, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520003','THDC',1,'2006/5/20',8, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520003','CTRR',1,'2006/5/13',6.5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('17520004','CSDL',1,'2006/7/20',3.75, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520004','CTDLGT',1,'2006/12/28',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520004','THDC',1,'2006/5/20',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520004','CTRR',1,'2006/5/13',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520004','CTRR',2,'2006/5/20',3.5, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('17520004','CTRR',3,'2006/6/30',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('18520001','CSDL',1,'2006/7/20',6, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520001','CTDLGT',1,'2006/12/28',5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520001','THDC',1,'2006/5/20',8.5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520001','CTRR',1,'2006/5/13',9, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520002','CSDL',1,'2006/7/20',8, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520002','CTDLGT',1,'2006/12/28',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('18520002','CTDLGT',2,'2007/1/5',5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520002','THDC',1,'2006/5/20',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('18520002','THDC',2,'2006/5/27',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('18520002','CTRR',1,'2006/5/13',3, 9, 9, 9.5, null, 'Khong Dat');							


INSERT INTO KETQUATHI VALUES('18520002','CTRR',2,'2006/5/20',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('18520002','CTRR',3,'2006/6/30',6.25, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520003','CSDL',1,'2006/7/20',9.25, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520003','CTDLGT',1,'2006/12/28',9.5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520003','THDC',1,'2006/5/20',10, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520003','CTRR',1,'2006/5/13',10, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520004','CSDL',1,'2006/7/20',8.5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520004','CTDLGT',1,'2006/12/28',6.75, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('18520004','THDC',1,'2006/5/20',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('18520004','CTRR',1,'2006/5/13',6, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520001','CSDL',1,'2006/12/20',4.25, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('19520001','CTDLGT',1,'2006/7/25',8, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520001','THDC',1,'2006/5/20',7.75, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520001','CTRR',1,'2006/5/13',8, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520002','CSDL',1,'2006/12/20',6.75, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520002','CTDLGT',1,'2006/7/25',5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520002','THDC',1,'2006/5/20',8, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520002','CTRR',1,'2006/5/13',8.5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520003','CSDL',1,'2006/12/20',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('19520003','CTDLGT',1,'2006/7/25',4.5, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('19520003','CTDLGT',2,'2006/8/7',4, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('19520003','CTDLGT',3,'2006/8/15',4.25, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('19520003','THDC',1,'2006/5/20',4.5, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('19520003','CTRR',1,'2006/5/13',3.25, 9, 9, 9.5, null, 'Khong Dat');							
INSERT INTO KETQUATHI VALUES('19520003','CTRR',2,'2006/5/20',5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520004','CSDL',1,'2006/12/20',7.75, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520004','CTDLGT',1,'2006/7/25',9.75, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520004','THDC',1,'2006/5/20',5.5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520004','CTRR',1,'2006/5/13',5, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520005','CSDL',1,'2006/12/20',9.25, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520005','CTDLGT',1,'2006/7/25',10, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520005','THDC',1,'2006/5/20',8, 9, 9, 9.5, null, 'Dat');							
INSERT INTO KETQUATHI VALUES('19520005','CTRR',1,'2006/5/13',10, 9, 9, 9.5, null, 'Dat');			

-- DELETE FROM KETQUATHI WHERE LANTHI>1;
-- ALTER TABLE KETQUATHI 
-- DROP COLUMN KQUA;

-- UPDATE KETQUATHI
-- SET TB = QT*0.1 + TH*0.2 + GK*0.2 + CK*0.5;
