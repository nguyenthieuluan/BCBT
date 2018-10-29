/*==============================================================*/
/* Databse : QL_CUAHANGXM                                              */
/*==============================================================*/
use master
go
Create database QL_CUAHANGXM


use  QL_CUAHANGXM
go
/*==============================================================*/
/* Table: BAOHANH                                               */
/*==============================================================*/
create table BAOHANH (
   ID_AUTO				integer              IDENTITY,
   MABH                 char(10)             not null,
   MAPX                 char(10)             not null,
   MANV                 char(10)             null,
   NGAYNHAN             datetime             null,
   NGAYGIAO             datetime             null,
   GHICHU               nvarchar(100)        null,
   constraint PK_BAOHANH primary key nonclustered (MABH)
)
go



/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create table CHUCVU (
   ID_AUTO				integer              IDENTITY,
   MACV                 char(10)             not null,
   TENCV                nvarchar(50)         null,
   HESOLUONG            float                null,
   PHUCAP               float                null,
   constraint PK_CHUCVU primary key nonclustered (MACV)
)
go

/*==============================================================*/
/* Table: CT_DOITRA                                             */
/*==============================================================*/
create table CT_DOITRA (
   IDDT                 integer              IDENTITY,
   MAPX                 char(10)             not null,
   MADT                 char(10)             not null,
   LIDO                 nvarchar(200)        null,
   constraint PK_CT_DOITRA primary key (MAPX,MADT)
)
go



/*==============================================================*/
/* Table: CT_PN                                                 */
/*==============================================================*/
create table CT_PN (
   IDPN                 integer              IDENTITY,
   MAPN                 char(10)             not null,
   MAXE_PT              char(10)             not null,   
   SL_N                 int                  null,
   DG_N                 float                null,
   THANHTIEN_N          float                null,
   constraint PK_CT_PN primary key (MAPN,MAXE_PT)
)
go



/*==============================================================*/
/* Table: CT_PX                                                 */
/*==============================================================*/
create table CT_PX (
   IDPX                 integer              IDENTITY,
   MAPX                 char(10)             not null,
   MAXE_PT             char(10)             not null,
   SOMAY				char(50)			not null,
   SOKHUNG				char(50)			not null,
    SL_X                 int                  null,
   DG_X                 float                null,
   KHUYENMAI            float                null,
   THANHTIEN_X          float                null,
   constraint PK_CT_PX primary key (MAPX,MAXE_PT)
)
go



/*==============================================================*/
/* Table: SUACHUA                                               */
/*==============================================================*/
create table SUACHUA (
   ID_AUTO				integer              IDENTITY,
   MASC                 CHAR(10)                not null,
   TENKH                nvarchar(50)         null,
   SDT					CHAR(12)			NULL,
   DIACHI               nvarchar(50)         null,
   MANV				    CHAR(10)				NOT NULL, 
   MALOAI               char(10)             NOT null,
   TENXE_PT                nvarchar(100)        null,
   NV_SC				CHAR(10)				NOT NULL, 
	NGAYNHAN			DATETIME				NULL,
	NGAYGIAO			DATETIME				NULL,
	HSX					CHAR(10)				NOT NULL,
	BIENSO				CHAR(20)				NULL,
	TIENCONG			FLOAT					NULL,   
   GHICHU               nvarchar(200)        null,
   TONGTIEN_X           float                null,
   constraint PK_SUACHUA primary key nonclustered (MASC)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/

/*==============================================================*/
/* Table: CT_SC                                                 */
/*==============================================================*/
create table CT_SC (
   IDSC                 integer              IDENTITY, 
   MASC                 char(10)                 not null,
   MAXE_PT              char(10)             not null,
   SL_SC                int                  null,
   DG_SC                float                null,
   THANHTIEN_SC         float                null,
   constraint PK_CT_SC primary key (MAXE_PT,MASC)
)
go

/*==============================================================*/
/* Table: CT_THANHTOAN                                          */
/*==============================================================*/
create table CT_THANHTOAN (
   IDTT                 integer              IDENTITY,
   MAPX                 char(10)             not null,
   MAPTTT               char(10)              not null,
   MANV                 char(10)             not null,
   MANH                 char(10)             not null,
   DATHU                float                null,
   CONLAI               float                null,
   TINHTRANG            nvarchar(15)         null,
   HAN                  int                  null,
   SOTHANGDATRA         int                  null,
   NGAYBD               datetime             null,
   KIHENKE              datetime             null,
   TT_HANGTHANG         float                null,
   TIENGOC_THANG		float                null,
   LAISUAT				float                null,
   constraint PK_CT_THANHTOAN primary key (IDTT,MAPX,MAPTTT)
)
go
/*==============================================================*/
/* Table: PHIEUCHI                                               */
/*==============================================================*/
create table PHIEUCHI (
   ID_AUTO				integer              IDENTITY,
   MAPC                 char(10)             not null,
   MAPN                 char(10)             not null,
   MANV                 char(10)             not null,
   NGAYCHI               datetime             null,
   GHICHU                NVARCHAR(500)         null,
   constraint PK_PHIEUCHI primary key nonclustered (MAPC)
)
go

/*==============================================================*/
/* Table: DOITRA                                                */
/*==============================================================*/
create table DOITRA (
   ID_AUTO				integer              IDENTITY,
   MADT                 char(10)             not null,
   MANV                 char(10)             null,
   NGAYDT               datetime             null,
   PHIDT                float                null,
   constraint PK_DOITRA primary key nonclustered (MADT)
)
go



/*==============================================================*/
/* Table: KHACHHANG                                             */
/*==============================================================*/
create table KHACHHANG (
   ID_AUTO				integer              IDENTITY,
   MAKH                 char(10)             not null,
   TENKH                nvarchar(50)         null,
   SDT                  varchar(11)          null,
   DIACHI               nvarchar(50)         null,
   PHAI                 nvarchar(3)          null,
   CMND                 char(12)             null,
   NGAYSINH             datetime             null,
   constraint PK_KHACHHANG primary key nonclustered (MAKH)
)
go

/*==============================================================*/
/* Table: LOAIXE                                                */
/*==============================================================*/
create table LOAIXE (
   ID_AUTO				integer              IDENTITY,
   MALOAI               char(10)             not null,
   TENLOAI              nvarchar(50)         null,
   MOTA                 nvarchar(200)        null,
   constraint PK_LOAIXE primary key nonclustered (MALOAI)
)
go

/*==============================================================*/
/* Table: NHACC                                                 */
/*==============================================================*/
create table NHACC (
   ID_AUTO				integer              IDENTITY,
   MANCC                char(10)             not null,
   TENNCC               nvarchar(50)         null,
   DIACHI               nvarchar(100)        null,
   SDT                  char(11)             null,
   MAIL                 char(30)             null,
   constraint PK_NHACC primary key nonclustered (MANCC)
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   ID_AUTO				integer              IDENTITY,
   MANV                 char(10)             not null,
   MACV                 char(10)             null,
   TENNV                nvarchar(50)         null,
   NGAYSINH				Datetime			 null,
   SDT                  varchar(11)          null,
   DIACHI               nvarchar(50)         null,
   PHAI                 nvarchar(3)          null,
   LUONGCB              float                null,
   ANHNV                image                null,
   constraint PK_NHANVIEN primary key nonclustered (MANV)
)
go


/*==============================================================*/
/* Table: NHASX                                                 */
/*==============================================================*/
create table NHASX (
   ID_AUTO				integer              IDENTITY,
   MASX                 char(10)             not null,
   TENNSX               nvarchar(50)         null,
   QUOCGIA              nvarchar(100)        null,
   constraint PK_NHASX primary key nonclustered (MASX)
)
go

/*==============================================================*/
/* Table: PHIEUNHAP                                             */
/*==============================================================*/
create table PHIEUNHAP (
   ID_AUTO				integer              IDENTITY,
   MAPN                 char(10)             not null,
   MANCC                char(10)             null, 
   MANV                 char(10)             null,
   NGAYNHAP             datetime             null,
   THUE_N               float                null,
   TINHTRANGHD          nvarchar(15)         null,
   TINHTRANGTT          nvarchar(15)         null,
   TONGTIEN_N           float                null,
   constraint PK_PHIEUNHAP primary key nonclustered (MAPN)
)
go



/*==============================================================*/
/* Table: PHIEUXUAT                                             */
/*==============================================================*/
create table PHIEUXUAT (
   ID_AUTO				integer              IDENTITY,
   MAPX                 char(10)             not null,  
   MAKH                 char(10)             null,
   MANV                 char(10)             null,
   NGAYXUAT             datetime             null,
   PHI_DKX              float                null,
   THUE_X               float                null,
   UUDAI                float                null,
   TRANGTHAI_HT         nvarchar(15)         null,
   TONGTIEN_X           float                null,
   constraint PK_PHIEUXUAT primary key nonclustered (MAPX)
)
go


/*==============================================================*/
/* Table: NGANHANG                                      */
/*==============================================================*/
create table NGANHANG (
   ID_AUTO				integer              IDENTITY,
   MANH               char(10)              not null,
   TENNH              nvarchar(50)         null,
   LAISUAT				FLOAT             NULL,	
   constraint PK_NGANHANG primary key nonclustered (MANH)
)
go

/*==============================================================*/
/* Table: PHUONGTHUC_TT                                         */
/*==============================================================*/
create table PHUONGTHUC_TT (
   ID_AUTO				integer              IDENTITY,
   MAPTTT               char(10)              not null,
   MANH				    char(10)              not null,
   TENPTTT              nvarchar(50)         null,   
   constraint PK_PHUONGTHUC_TT primary key nonclustered (MAPTTT)
)
go

/*==============================================================*/
/* Table: QL_DANGNHAP                                           */
/*==============================================================*/
create table QL_DANGNHAP (
   ID_AUTO				integer              IDENTITY,
   TAIKHOAN             char(10)             not null,
   MATKHAU              char(50)             null,
   HOATDONG             bit             null,
   constraint PK_QL_DANGNHAP primary key nonclustered (TAIKHOAN)
)
go

/*==============================================================*/
/* Table: QL_MANHINH                                            */
/*==============================================================*/
create table QL_MANHINH (
   ID_AUTO				integer              IDENTITY,
   MAMH                 char(10)                  not null,
   TENMH                nvarchar(50)         null,
   constraint PK_QL_MANHINH primary key nonclustered (MAMH)
)
go

/*==============================================================*/
/* Table: QL_NHOM                                               */
/*==============================================================*/
create table QL_NHOM (
   ID_AUTO				integer              IDENTITY,
   MANHOM               char(10)             not null,
   TENNHOM              nvarchar(50)         null,
   GHICHU               nvarchar(100)        null,
   constraint PK_QL_NHOM primary key nonclustered (MANHOM)
)
go

/*==============================================================*/
/* Table: QL_NHOMDANGNHAP                                       */
/*==============================================================*/
create table QL_NHOMDANGNHAP (
   ID_AUTO				integer              IDENTITY,
   MANHOM               char(10)             not null,
   TAIKHOAN             char(10)             not null,
   GHICHU               nvarchar(100)        null,
   constraint PK_QL_NHOMDANGNHAP primary key (MANHOM, TAIKHOAN)
)
go



/*==============================================================*/
/* Table: QL_PHANQUYEN                                          */
/*==============================================================*/
create table QL_PHANQUYEN (
   ID_AUTO				integer              IDENTITY,
   MANHOM               char(10)             not null,   
   MAMH                 char(10)             not null,
   QUYEN                bit                  null,
   constraint PK_QL_PHANQUYEN primary key (MANHOM, MAMH)
)
go


/*==============================================================*/
/* Table: XEMAY                                                 */
/*==============================================================*/
create table XEMAY (
   ID_AUTO				integer              IDENTITY,
   MAXE_PT              char(10)             not null,
   MASX                 char(10)             null,
   MALOAI               char(10)             not null,
   TENX_PT              nvarchar(100)        null,
   DT_XILANH           FLOAT                null,
   DT_BINHXANG			FLOAT				 NULL,
   CONGSUAT             VARCHAR(50)			 null,
   LOAIDONGCO           VARCHAR(100)		 null,
   KHOILUONG            INT					 null,
   DAIRONGCAO           VARCHAR(50)			 null,
   DONGIA_N             float                null,
   DVT                  nchar(10)            null,
   TGBH                 int                  null,
   SLTON                int                  null,
   MAU                  Nchar(30)             null,
   NAMSX                int                  null,
   MOTA                 nvarchar(500)        null,
   HINH                 image                null,
   DONGIA_X				float				 null,
   constraint PK_XEMAY primary key nonclustered (MAXE_PT)
)
go



alter table BAOHANH
   add constraint FK_BAOHANH_RELATIONS_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table BAOHANH
   add constraint FK_BAOHANH_RELATIONS_PHIEUXUA foreign key (MAPX)
      references PHIEUXUAT (MAPX)
go

alter table CT_DOITRA
   add constraint FK_CT_DOITR_RELATIONS_PHIEUXUA foreign key (MAPX)
      references PHIEUXUAT (MAPX)
go

alter table CT_DOITRA
   add constraint FK_CT_DOITR_RELATIONS_DOITRA foreign key (MADT)
      references DOITRA (MADT)
go

alter table CT_PN
   add constraint FK_CT_PN_RELATIONS_PHIEUNHA foreign key (MAPN)
      references PHIEUNHAP (MAPN)
go

alter table CT_PN
   add constraint FK_CT_PN_RELATIONS_XEMAY foreign key (MAXE_PT)
      references XEMAY (MAXE_PT)
go

alter table CT_PX
   add constraint FK_CT_PX_RELATIONS_PHIEUXUA foreign key (MAPX)
      references PHIEUXUAT (MAPX)
go

alter table CT_PX
   add constraint FK_CT_PX_RELATIONS_XEMAY foreign key (MAXE_PT)
      references XEMAY (MAXE_PT)
go

alter table CT_SC
   add constraint FK_CT_SC_CT_SC_XEMAY foreign key (MAXE_PT)
      references XEMAY (MAXE_PT)
go

alter table CT_SC
   add constraint FK_CT_SC_RELATIONS_SUACHUA foreign key (MASC)
      references SUACHUA(MASC)
go

alter table CT_THANHTOAN
   add constraint FK_CT_THANH_RELATIONS_PHUONGTH foreign key (MAPTTT)
      references PHUONGTHUC_TT (MAPTTT)
go

alter table CT_THANHTOAN
   add constraint FK_CT_THANH_RELATIONS_PHIEUXUA foreign key (MAPX)
      references PHIEUXUAT (MAPX)
go
alter table CT_THANHTOAN
   add constraint FK_CT_THANH_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go
alter table CT_THANHTOAN
   add constraint FK_CT_THANH_NGANHANG foreign key (MANH)
      references NGANHANG (MANH)
go

alter table PHUONGTHUC_TT
   add constraint FK_CT_THANH_RELATIONS_NGANHANG foreign key (MANH)
      references NGANHANG (MANH)
go 

alter table DOITRA
   add constraint FK_DOITRA_RELATIONS_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_RELATIONS_CHUCVU foreign key (MACV)
      references CHUCVU (MACV)
go

alter table PHIEUNHAP
   add constraint FK_PHIEUNHA_RELATIONS_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table PHIEUNHAP
   add constraint FK_PHIEUNHA_RELATIONS_NHACC foreign key (MANCC)
      references NHACC (MANCC)
go

alter table PHIEUXUAT
   add constraint FK_PHIEUXUA_RELATIONS_KHACHHAN foreign key (MAKH)
      references KHACHHANG (MAKH)
go

go
alter table PHIEUXUAT
   add constraint FK_PHIEUXUA_RELATIONS_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table QL_NHOMDANGNHAP
   add constraint FK_QL_NHOMD_RELATIONS_QL_NHOM foreign key (MANHOM)
      references QL_NHOM (MANHOM)
go

alter table QL_NHOMDANGNHAP
   add constraint FK_QL_NHOMD_RELATIONS_QL_DANGN foreign key (TAIKHOAN)
      references QL_DANGNHAP (TAIKHOAN)
go


alter table QL_PHANQUYEN
   add constraint FK_QL_PHANQ_RELATIONS_QL_MANHI foreign key (MAMH)
      references QL_MANHINH (MAMH)
go
alter table QL_PHANQUYEN
   add constraint FK_QL_PHANQ_RELATIONS_QL_NHOM foreign key (MANHOM)
      references QL_NHOM (MANHOM)
go

alter table SUACHUA
   add constraint FK_SUACHUA_RELATIONS_LOAIXE foreign key (MALOAI)
      references LOAIXE (MALOAI)
go

alter table SUACHUA
   add constraint FK_SUACHUA_RELATIONS_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table XEMAY
   add constraint FK_XEMAY_RELATIONS_LOAIXE foreign key (MALOAI)
      references LOAIXE (MALOAI)
go

alter table XEMAY
   add constraint FK_XEMAY_RELATIONS_NHASX foreign key (MASX)
      references NHASX (MASX)
go
alter table PHIEUCHI
   add constraint FK_PHIEUCHI_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go
alter table PHIEUCHI
   add constraint FK_PHIEUCHI_PHIEUNHAP foreign key (MAPN)
      references PHIEUNHAP (MAPN)
go



Insert into QL_DANGNHAP
values ('NV00000001','ed7de67d31481f40495db3fa11c16f23',1),
('NV00000002','ed7de67d31481f40495db3fa11c16f23',1),
('NV00000003','ed7de67d31481f40495db3fa11c16f23',1),
('NV00000004','ed7de67d31481f40495db3fa11c16f23',1),
('NV00000005','ed7de67d31481f40495db3fa11c16f23',1)



Insert into LOAIXE
values('LX00000001',N'Xe tay ga',null),
('LX00000002',N'Xe số',null),
('LX00000003',	N'Xe côn tay',null)
select *from LOAIXE

Insert into NHASX
values('SX00000001','Honda',N'Việt Nam'),
('SX00000002','Yamaha',N'Việt Nam'),
('SX00000003','Vespa',N'Việt Nam'),
('SX00000004','Suzuki',N'Việt Nam'),
('SX00000005','SYM',N'Việt Nam')
Insert into XEMAY
values('XE00000001','SX00000001','LX00000001',N'SH 125i ABS',125,5.5,N'9,1kW/8750 vòng/phút',N'PGM-FI, xăng, 4 kỳ, 1 xy-lanh, làm mát bằng dung dịch',140,'2.020mm x 725mm x 1.225mm',83500000,N'Chiếc',36,0,N'Black',2017,N'Honda SH125i 2017 một kiệt tác thiết kế mới sang trọng và đẳng cấp hơn với những đường nét đậm chất châu Âu, chinh phục mọi con tim ngay từ ánh nhìn đầu tiên.',null,84000000),
('XE00000002','SX00000001','LX00000001',N'Air Blade đen sơn mờ',125,4.4,N'8,4kW/8.500 vòng/phút',N'PGM-FI, xăng, 4 kỳ, 1 xy lanh, làm mát bằng dung dịch',110,'1.881mm x 687mm x 1.111mm',42740000,N'Chiếc',36,0,N'Black',2016,N'Dấu ấn Air Blade đầy kiêu hãnh được khắc họa với hình ảnh họa tiết logo sơn đỏ đầy cuốn hút, kết hợp cùng logo Black Edition nổi bật và những đường nét màu đỏ sắc cạnh trên thân xe; giúp khẳng định cá tính mạnh mẽ, nam tính và trẻ trung cho người sở hữu.',null,43000000),
('XE00000003','SX00000001','LX00000001',N'Air Blade 125',125,5.5,N'8,4kW/8.500 vòng/phút',N'PGM-FI, xăng, 4 kỳ, 1 xy lanh, làm mát bằng dung dịch',110,'1.881mm x 687mm x 1.111mm',38880000,N'Chiếc',36,0,N'Black',2016,N'Xe máy Honda Air Blade phiên bản thể thao không chỉ mang nhiều tính năng hiện đại, công nghệ tiên tiến dành cho một chiếc xe tay ga mà còn được lột xác hoàn toàn với thiết kế trẻ trung và cá tính. Air Blade phiên bản thể thao mang đến một sự lựa chọn hấp dẫn cho giới trẻ.',null,39000000),
('XE00000004','SX00000001','LX00000001',N'Honda Vision 2016',108.2,5.2,N'8,4kW/8.500 vòng/phút',N'PGM-FI, xăng, 4 kỳ, 1 xi lanh, làm mát bằng không khí',97,'1.863mm x 686mm x 1.088mm',33500000,N'Chiếc',36,0,N'Black',2016,N'Vision mới khoác trên mình lớp sơn đen mờ, cao cấp, mạnh mẽ đầy kiêu hãnh. Vẻ đẹp càng trở nên hoàn hảo nhờ được tô điểm bằng những điểm nhấn gây ấn tượng mạnh mẽ: logo Vision 3D, tay dắt sau, ốp phía bên trong yếm cùng giảm xóc và ngàm phanh đồng bộ một màu đỏ quyến rũ.',null,34000000),
('XE00000005','SX00000001','LX00000001',N'Honda SH Mode',124.9,5.5,N'8,4kW/8.500 vòng/phút',N'PGM-FI, xăng, 4 kỳ, 1 xy lanh, làm mát bằng dung dịch',118,'1.930mm x 669mm x 1.105mm',55290000,N'Chiếc',24,0,N'Blue',2016,N'Loại truyền động: Dây đai, biến thiên vô cấp. Hệ thống khởi động: Điện. Phuộc trước: Ống lồng, giảm chấn thủy lực. Phuộc sau: Lò xo trụ, giảm chấn thủy lực, 5 chế độ tải.',null,56000000),
('XE00000006','SX00000002','LX00000001',N'NVX 125 2017',125,4.6,N'8,8kW (12ps)/8000 vòng/phút',N'4 thì, làm mát dung dịch, SOHC, xi lanh đơn',117,'199 x 70 x 112,5 (cm)',42200000,N'Chiếc',36,0,N'Blue',2017,N'Xe ga thể thao Yamaha NVX 125 2017 có kích thước lớn, hầm hố cùng kiểu dáng khỏe khoắn, ấn tượng. Mô típ thiết kế chữ X trên thân xe NVX thể hiện rõ hai đặc tính nổi bật: sức mạnh vận hành và khả năng kiểm soát. Hai trục chữ X kết hợp mang lại ấn tượng về một chiếc xe đầy mạnh mẽ và tốc độ vượt trội.',null,42500000),
('XE00000007','SX00000002','LX00000001',N'Janus Standard 2017',125,4.2,N'7,0 kW (9,5 PS) / 8.000 vòng /phút',N'Blue Core, 4 thì, SOHC',97,'1.850mm x 705mm',28300000,N'Chiếc',36,0,N'Trắng sữa',2017,N'Sự cân bằng giữa thiết kế thời thượng, trẻ trung cùng với công nghệ hiện đại giúp JANUS thể hiện rõ triết lý Beautility – Vẻ đẹp hài hòa cùng tiện ích của các mẫu xe tay ga Yamaha.',null,28500000),
('XE00000008','SX00000002','LX00000002',N'Sirius FI phanh cơ 2016',115,3.9,N'6,4kW (8,7PS)/7000 vòng/phút',N'4 thì, 2 van SOHC, làm mát bằng không khí',99,'194 x 71,5 x 107,5 (cm)',206600000,N'Chiếc',36,0,N'Black',2016,N'Xe Yamaha Sirius FI phanh cơ 2016 là phiên bản trang bị công nghệ phun xăng điện tử của dòng xe số phổ thông, nổi bật với thiết kế trẻ trung, tiết kiệm nhiên liệu và bền bỉ. Sự phối màu sắc và tem xe có sự tinh chỉnh, tạo nên diện mạo mới cho Sirius FI.',null,207600000),
('XE00000009','SX00000002','LX00000001',N'Acruzo Deluxe 2017',125,5.5,N'6,1 kW (8,3 PS)/6.500 vòng/phút',N'SOHC, 4 thì, 2 van, làm mát bằng không khí',99,'180,5 x 68,5 x 114,5 (cm)',36080000,N'Chiếc',36,0,N'Blue',2017,N' Acruzo định hướng để đáp ứng những nhu cầu đa dạng này với thiết kế thanh lịch giúp người sở hữu vừa thể hiện được phong cách thời trang, đồng thời vẫn đảm bảo những tính năng vô cùng tiện dụng, kinh tế và thiết thực cho nhu cầu sử dụng hàng ngày. Acruzo phiên bản Deluxe 2017 nay có tới 6 màu: nâu, đen nhám, trắng, xanh dương, xanh rêu và đỏ để bạn lựa chọn.',null,36100000),
('XE00000010','SX00000004','LX00000002',N'Suzuki GSX-S150',147.3,11,N'14,1 kW / 10,500 vòng/phút',N'4-thì, làm mát bằng dung dich',130,'2.020 (mm) x 745 (mm) x 1.040 (mm)',55290000,N'Chiếc',36,0,N'Xanh dương',2016,N'GSX-S150 là mẫu xe thể thao hoàn toàn mới và hấp dẫn, có sức mạnh động cơ và khả năng tăng tốc mạnh mẽ trong phân khúc 150cc, nhờ kết hợp hài hòa giữa sức mạnh động cơ và trọng lượng thân xe, cùng với mức tiết kiệm tiêu hao nhiên liệu vượt bậc và khả năng điều khiển linh hoạt.',null,56000000)

Insert into NHACC
values('NCC0000001',N'Honda Việt Nam',N'Tầng 8, Zen Plaza, 54-56 Nguyễn Trãi, Quận 1, Hồ Chí Minh','2839256949','HondaVietNam@gmail.com'),
('NCC0000002',N'Yamaha Motor Việt Nam',N'38 Trương Quốc Dung Phường 10 - Quận Phú Nhuận - TP Hồ Chí Minh','(84)8241876','YamahaMotor@gmail.com')

SET DATEFORMAT DMY
Insert into KHACHHANG
values('KH00000001',N'Nguyễn Minh Khang','0958357512',N'58/1A Nguyễn Ảnh Thủ,Bà Điểm Hóc Môn TPHCM',N'Nam','321583570','12/12/1986'),
('KH00000002',N'Nguyễn Thành Dũng','01648357512',N'Việt Hùng, Long Hòa, Gò Công Tiền Giang',N'Nam','321583589','12/2/1986'),
('KH00000003',N'Lê Thị Hồng Thắm','0958057512',N'149/23 Lũy Bán Bích,Tân Thới Hòa,Tân Phú TPHCM',N'Nữ','321603570','2/10/1986'),
('KH00000004',N'Hoàng Thị Mai Thương','01258357512',N'355/7/2 Mã Lò KP.10 Bình Trị Đông A Bình Tân TPHCM',N'Nữ','321585070','18/12/1986'),
('KH00000005',N'Nguyễn Thị Thu Thảo','0958357590',N'16/07A Tân Phước,Tân Bình,Dĩ An Bình Dương',N'Nữ','371583570','12/01/1986')

Insert into CHUCVU
values('CV00000001',N'Giám Đốc',7.85,0.9),
('CV00000002',N'Nhân viên bán hàng',2.34,0.2),
('CV00000003',N'Thủ Kho',2.34,0.2),
('CV00000004',N'Nhân viên kinh doanh',2.34,0.2),
('CV00000005',N'Nhân viên kế toán',2.34,0.2)


SET DATEFORMAT DMY
insert into NHANVIEN
values('NV00000001','CV00000002',N'Nguyễn Văn Khánh','20/10/1996','01664597523',N'129 Lê Trọng Tấn,Tây Thạnh,Tân Phú TPHCM',N'Nam',1350000,null),
('NV00000002','CV00000002',N'Nguyễn Văn Nam','20/09/1990','01664767523',N'440 Tân Kì Tân Qúy,Tân Phú TPHCM',N'Nam',1350000,null),
('NV00000003','CV00000002',N'Phạm Minh Hà','20/10/1996','01664599523',N'Đường Số 3 Trần Trọng Cung, Tân Thuận Đông, Quận 7',N'Nữ',1350000,null),
('NV00000004','CV00000002',N'Mai Tiến Minh','20/03/1996','01684597593',N' 500 Nguyễn Trãi, P7, Q5, TPHCM',N'Nam',1350000,null),
('NV00000005','CV00000003',N'Nguyễn Thanh Ngân','19/10/1996','01664597993',N'166/8, Đường số 9, Phường 9, Gò Vấp, TPHCM',N'Nữ',1350000,null)
Insert into NGANHANG
values('NH00000001',N'SACOMBANK', 8.0),
('NH00000002',N'VIETCOMBANK',7.5)

Insert into PHUONGTHUC_TT
values('PTT0000001','NH00000001',N'Tiền mặt' ),
('PTT0000002','NH00000001',N'Trả góp')

set dateformat dmy
insert into PHIEUNHAP
values('PN00000001','NCC0000001','NV00000001','1/9/2017',null,NULL,null,167000000),
('PN00000002','NCC0000001','NV00000001','2/10/2017',null,NULL,null,42740000),
('PN00000003','NCC0000001','NV00000001','28/9/2017',null,NULL,null,33800000),
('PN00000004','NCC0000001','NV00000001','1/7/2017',null,NULL,null,33500000),
('PN00000005','NCC0000001','NV00000001','1/9/2017',null,NULL,null,42200000)

insert into CT_PN
values('PN00000001','XE00000002',1,42740000,42740000),
('PN00000001','XE00000001',2,83500000,167000000),
('PN00000002','XE00000002',1,42740000,42740000),
('PN00000003','XE00000003',1,33800000,33800000),
('PN00000004','XE00000004',1,33500000,33500000),
('PN00000005','XE00000005',1,42200000,42200000)

set dateformat dmy
insert into PHIEUXUAT
values('PX00000001','KH00000001','NV00000001','3/9/2017',null,NULL,null,null,84000000),
('PX00000002','KH00000002','NV00000001','2/10/2017',null,NULL,null,null,43000000),
('PX00000003','KH00000002','NV00000001','28/9/2017',null,NULL,null,null,33900000),
('PX00000004','KH00000004','NV00000001','1/7/2017',null,NULL,null,null,34000000),
('PX00000005','KH00000002','NV00000001','1/9/2017',null,NULL,null,null,42500000)


insert into CT_PX
values('PX00000001','XE00000001','SASKADSAJ','123FJSDQ',1,83500000,null,84000000),
('PX00000002','XE00000002','SASKADSAJ','123FJSDQ',1,42740000,null,43000000),
('PX00000003','XE00000003','SASKADSAJ','123FJSDQ',1,33800000,null,33900000),
('PX00000004','XE00000004','SASKADSAJ','123FJSDQ',1,33500000,null,34000000),
('PX00000005','XE00000005','SASKADSAJ','123FJSDQ',1,42200000,null,42500000)

insert into DOITRA
values('DT00000001','NV00000001','29/8/2017',null),
('DT00000002','NV00000001','30/8/2017',null)

insert into CT_DOITRA
values('PX00000001','DT00000001',NULL)



SET DATEFORMAT DMY
insert into BAOHANH
values(1,'PX00000001','NV00000001','3/9/2017','3/9/2017',NULL)

SET DATEFORMAT DMY
INSERT INTO CT_THANHTOAN
values('PX00000001','PTT0000001','NV00000001',20000000,63500000,1,3,1,'3/9/2017','3/10/2017',1000000)

INSERT INTO QL_NHOM
VALUES ('NQ00000001',N'Toàn quyền',N'có quyền trên tất cả các bảng'),
('NQ00000002',N'Xem Xe, Phụ tùng',N'có quyền xem trên bảng Xe, Phụ tùng');

INSERT INTO QL_NHOMDANGNHAP
VALUES ('NQ00000001','NV00000001',N'có quyền trên tất cả các bảng');

INSERT INTO QL_MANHINH
VALUES('CHANGEPASS',N'Chức năng đổi mật khẩu'),
('UPDATE_TK',N'Chức năng cài đặt tài khoản'),
('MH_THONGKE',N'Chức năng thống kê'),
('MH_DM_NV',N'Danh mục nhân viên'),
('MH_DM_XE',N'Danh mục xe máy'),
('MH_DM_PT',N'Danh mục phụ tùng'),
('MH_DM_NCC',N'Danh mục nhà cung cấp'),
('MH_DM_KH',N'Danh mục khách hàng'),
('MH_DM_HSX',N'Danh mục hãng sản xuất'),
('MH_DM_LX',N'Danh mục loại xe'),
('MH_NHAPXE',N'Chức năng nhập xe'),
('MH_BANXE',N'Chức năng bán xe'),
('MH_NHAPPT',N'Chức năng nhập phụ tùng'),
('MH_BANPT',N'Chức năng bán phụ tùng'),
('MH_BAOHANH',N'Chức năng bảo hành'),
('MH_SUACHUA',N'Chức năng sửa chữa'),
('MH_DOITRA',N'Chức năng đổi trả'),
('MH_PC',N'Chức năng lập phiếu chi')

INSERT INTO QL_PHANQUYEN
VALUES ('NQ00000001','UPDATE_TK',1),('NQ00000002','MH_DM_NV',1);

Insert into XEMAY
values('PT00000001','SX00000001','LX00000002',N'Nhông sên dĩa YMR Malaysia HONDA DREAM',null,null,null,null,null,null,835000,N'Chiếc',6,0,null,2017,N' - Nhông: HD 14T - Dĩa: HD 36T - Xích: 428-100',null,900000)

delete from PHUONGTHUC_TT
delete from QL_DANGNHAP
delete from QL_NHOMDANGNHAP
delete from QL_NHOM
delete from QL_PHANQUYEN
delete from QL_MANHINH
delete from NHANVIEN
delete from PHIEUNHAP
DELETE FROM CT_PN
delete from PHIEUXUAT
delete from CT_PX
delete from BAOHANH
delete from DOITRA
delete from CT_DOITRA
delete from CT_THANHTOAN
select * from BAOHANH
select * from CHUCVU
select * from CT_DOITRA
DELETE from CT_SC
DELETE FROM SUACHUA

select * from SUACHUA
select * from BAOHANH
select * from CT_SC
select * from CT_THANHTOAN
select * from DOITRA
select * from KHACHHANG
select * from LOAIXE
select * from NHASX
select * from NHACC
select * from NHANVIEN
select * from PHIEUNHAP
select * from CT_PN
select * from CT_PX
select * from PHIEUXUAT
select * from PHUONGTHUC_TT
select * from QL_DANGNHAP
select * from QL_MANHINH
select * from QL_NHOM
select * from QL_NHOMDANGNHAP
select * from QL_PHANQUYEN
select * from XEMAY
SELECT * FROM NGANHANG
select ROW_NUMBER() OVER (ORDER BY (SELECT 1)),TAIKHOAN, HOATDONG FROM QL_DANGNHAP

DECLARE @MA VARCHAR(10)
SELECT @MA = dbo.sp_AutoIncreaseID_PN()
PRINT @MA

select MAPX,MAPTTT,MANV,DATHU,CONLAI,TINHTRANG,HAN,SOTHANGDATRA,NGAYBD,KIHENKE,TT_HANGTHANG,TIENGOC_THANG,LAISUAT from CT_THANHTOAN where MAPTTT='PTT0000002'
GROUP BY MAPX,MAPTTT,MANV,DATHU,CONLAI,TINHTRANG,HAN,SOTHANGDATRA,NGAYBD,KIHENKE,TT_HANGTHANG,TIENGOC_THANG,LAISUAT
HAVING SOTHANGDATRA=MAX(SOTHANGDATRA)

select * from CT_THANHTOAN where MAPX='PX00000019'

select DISTINCT PX.MAPX FROM PHIEUXUAT PX, CT_THANHTOAN CT WHERE PX.MAPX=CT.MAPX AND MAPTTT='PTT0000002'

DECLARE @NgayChenhLech int
SELECT @NgayChenhLech = dbo.fn_getPX_NgayTre('2017-10-18 00:00:00.000','2017-10-29 00:00:00.000')
PRINT @NgayChenhLech