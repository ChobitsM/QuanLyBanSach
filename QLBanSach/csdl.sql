
create database WEBSACH
go
use WEBSACH
go

Create table [DMSACH]
(
	[MaDM] Integer Identity NOT NULL,
	[TenDM] Nvarchar(50) NOT NULL,
Primary Key ([MaDM])
) 
go

Create table [SACH]
(
	[MaSach] Integer Identity NOT NULL,
	[MaDM] Integer NOT NULL,
	[TieuDe] Nvarchar(100) NULL,
	[AnhBia] Nvarchar(100) NULL,
	[GiaBan] Money NOT NULL,
Primary Key ([MaSach])
) 
go

Create table [TAIKHOAN]
(
	[MaTK] Integer Identity NOT NULL,
	[HoTen] Nvarchar(60) NOT NULL,
	[TenDN] Varchar(60) NOT NULL,
	[MatKhau] Varchar(60) NOT NULL,
	[Quyen] Bit NOT NULL,
	[NgaySinh] Datetime NULL,
	[GioiTinh] Nvarchar(10) NULL,
	[DiaChi] Nvarchar(100) NULL,
	[Email] Varchar(60) NULL,
Primary Key ([MaTK])
) 
go

Create table [ChiTiet]
(
	[MaTK] Integer NOT NULL,
	[MaDM] Integer NOT NULL,
Primary Key ([MaTK],[MaDM])
) 
go


Alter table [SACH] add  foreign key([MaDM]) references [DMSACH] ([MaDM])  on update no action on delete no action 
go
Alter table [ChiTiet] add  foreign key([MaDM]) references [DMSACH] ([MaDM])  on update no action on delete no action 
go
Alter table [ChiTiet] add  foreign key([MaTK]) references [TAIKHOAN] ([MaTK])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


