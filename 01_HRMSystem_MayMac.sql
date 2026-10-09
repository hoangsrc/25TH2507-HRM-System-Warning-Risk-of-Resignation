/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     9/10/2026 4:30:04 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHAMCONG') and o.name = 'FK_CHAMCONG_GHINHANCH_NHANVIEN')
alter table CHAMCONG
   drop constraint FK_CHAMCONG_GHINHANCH_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHUYEN_SANXUAT') and o.name = 'FK_CHUYEN_S_COCHUYENM_PHANXUON')
alter table CHUYEN_SANXUAT
   drop constraint FK_CHUYEN_S_COCHUYENM_PHANXUON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DANHGIAKPI') and o.name = 'FK_DANHGIAK_DUOCDANHG_NHANVIEN')
alter table DANHGIAKPI
   drop constraint FK_DANHGIAK_DUOCDANHG_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONNGHIPHEP') and o.name = 'FK_DONNGHIP_NOPDONNGH_NHANVIEN')
alter table DONNGHIPHEP
   drop constraint FK_DONNGHIP_NOPDONNGH_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOPDONG') and o.name = 'FK_HOPDONG_KYHOPDONG_NHANVIEN')
alter table HOPDONG
   drop constraint FK_HOPDONG_KYHOPDONG_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_DAMNHIEMC_CHUCVU')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_DAMNHIEMC_CHUCVU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_THUOCCHUY_CHUYEN_S')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_THUOCCHUY_CHUYEN_S
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_THUOCPHON_PHONGBAN')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_THUOCPHON_PHONGBAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHANXUONG') and o.name = 'FK_PHANXUON_COPHANXUO_DONVI_NH')
alter table PHANXUONG
   drop constraint FK_PHANXUON_COPHANXUO_DONVI_NH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAIKHOAN') and o.name = 'FK_TAIKHOAN_GANVAITRO_VAITRO')
alter table TAIKHOAN
   drop constraint FK_TAIKHOAN_GANVAITRO_VAITRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAIKHOAN') and o.name = 'FK_TAIKHOAN_SOHUUTAIK_NHANVIEN')
alter table TAIKHOAN
   drop constraint FK_TAIKHOAN_SOHUUTAIK_NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHAMCONG')
            and   name  = 'GHINHANCHAMCONG_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHAMCONG.GHINHANCHAMCONG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHAMCONG')
            and   type = 'U')
   drop table CHAMCONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUCVU')
            and   type = 'U')
   drop table CHUCVU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHUYEN_SANXUAT')
            and   name  = 'COCHUYENMAY_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHUYEN_SANXUAT.COCHUYENMAY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUYEN_SANXUAT')
            and   type = 'U')
   drop table CHUYEN_SANXUAT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DANHGIAKPI')
            and   name  = 'DUOCDANHGIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index DANHGIAKPI.DUOCDANHGIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DANHGIAKPI')
            and   type = 'U')
   drop table DANHGIAKPI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONNGHIPHEP')
            and   name  = 'NOPDONNGHIPHEP_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONNGHIPHEP.NOPDONNGHIPHEP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DONNGHIPHEP')
            and   type = 'U')
   drop table DONNGHIPHEP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DONVI_NHAMAY')
            and   type = 'U')
   drop table DONVI_NHAMAY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOPDONG')
            and   name  = 'KYHOPDONG_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOPDONG.KYHOPDONG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOPDONG')
            and   type = 'U')
   drop table HOPDONG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'THUOCCHUYENMAY_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.THUOCCHUYENMAY_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'DAMNHIEMCHUCVU_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.DAMNHIEMCHUCVU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'THUOCPHONGBAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.THUOCPHONGBAN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHANXUONG')
            and   name  = 'COPHANXUONG_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHANXUONG.COPHANXUONG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHANXUONG')
            and   type = 'U')
   drop table PHANXUONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHONGBAN')
            and   type = 'U')
   drop table PHONGBAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAIKHOAN')
            and   name  = 'SOHUUTAIKHOAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAIKHOAN.SOHUUTAIKHOAN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAIKHOAN')
            and   name  = 'GANVAITRO_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAIKHOAN.GANVAITRO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAIKHOAN')
            and   type = 'U')
   drop table TAIKHOAN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VAITRO')
            and   type = 'U')
   drop table VAITRO
go

/*==============================================================*/
/* Table: CHAMCONG                                              */
/*==============================================================*/
create table CHAMCONG (
   CHAMCONGID           int                  not null,
   NHANVIENID           int                  not null,
   NGAYCHAMCONG         datetime             not null,
   GIOVAO               datetime             null,
   GIORA                datetime             null,
   TRANGTHAI            varchar(30)          not null,
   GHICHU               varchar(255)         null,
   constraint PK_CHAMCONG primary key (CHAMCONGID)
)
go

/*==============================================================*/
/* Index: GHINHANCHAMCONG_FK                                    */
/*==============================================================*/




create nonclustered index GHINHANCHAMCONG_FK on CHAMCONG (NHANVIENID ASC)
go

/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create table CHUCVU (
   CHUCVUID             int                  not null,
   TENCHUCVU            varchar(100)         not null,
   CAPBAC               varchar(50)          null,
   MOTA                 varchar(255)         null,
   constraint PK_CHUCVU primary key (CHUCVUID)
)
go

/*==============================================================*/
/* Table: CHUYEN_SANXUAT                                        */
/*==============================================================*/
create table CHUYEN_SANXUAT (
   CHUYENID             int                  not null,
   PHANXUONGID          int                  not null,
   MACHUYEN             varchar(20)          not null,
   TENCHUYEN            varchar(100)         not null,
   DANGHOATDONG         bit                  not null,
   constraint PK_CHUYEN_SANXUAT primary key (CHUYENID)
)
go

/*==============================================================*/
/* Index: COCHUYENMAY_FK                                        */
/*==============================================================*/




create nonclustered index COCHUYENMAY_FK on CHUYEN_SANXUAT (PHANXUONGID ASC)
go

/*==============================================================*/
/* Table: DANHGIAKPI                                            */
/*==============================================================*/
create table DANHGIAKPI (
   DANHGIAID            int                  not null,
   NHANVIENID           int                  not null,
   KYDANHGIA            varchar(50)          not null,
   DIEMHIEUSUAT         decimal(5,2)         null,
   DIEMCHUYENCAN        decimal(5,2)         null,
   DIEMTONGKET          decimal(5,2)         null,
   NHANXET              varchar(500)         null,
   NGUOIDANHGIA         int                  null,
   NGAYDANHGIA          datetime             not null,
   constraint PK_DANHGIAKPI primary key (DANHGIAID)
)
go

/*==============================================================*/
/* Index: DUOCDANHGIA_FK                                        */
/*==============================================================*/




create nonclustered index DUOCDANHGIA_FK on DANHGIAKPI (NHANVIENID ASC)
go

/*==============================================================*/
/* Table: DONNGHIPHEP                                           */
/*==============================================================*/
create table DONNGHIPHEP (
   DONNGHIPHEPID        int                  not null,
   NHANVIENID           int                  not null,
   LOAINGHIPHEP         varchar(50)          not null,
   TUNGAY               datetime             not null,
   DENNGAY              datetime             not null,
   LYDO                 varchar(500)         null,
   TRANGTHAI            varchar(30)          not null,
   NGUOIDUYET           int                  null,
   NGAYTAO              datetime             not null,
   constraint PK_DONNGHIPHEP primary key (DONNGHIPHEPID)
)
go

/*==============================================================*/
/* Index: NOPDONNGHIPHEP_FK                                     */
/*==============================================================*/




create nonclustered index NOPDONNGHIPHEP_FK on DONNGHIPHEP (NHANVIENID ASC)
go

/*==============================================================*/
/* Table: DONVI_NHAMAY                                          */
/*==============================================================*/
create table DONVI_NHAMAY (
   DONVIID              int                  not null,
   TENDONVI             varchar(100)         not null,
   DIADIEM              varchar(255)         not null,
   DANGHOATDONG         bit                  not null,
   constraint PK_DONVI_NHAMAY primary key (DONVIID)
)
go

/*==============================================================*/
/* Table: HOPDONG                                               */
/*==============================================================*/
create table HOPDONG (
   HOPDONGID            int                  not null,
   NHANVIENID           int                  not null,
   SOHOPDONG            varchar(30)          not null,
   LOAIHOPDONG          varchar(50)          not null,
   TUNGAY               datetime             not null,
   DENNGAY              datetime             null,
   MUCLUONG             decimal(18,2)        not null,
   TRANGTHAI            varchar(30)          not null,
   constraint PK_HOPDONG primary key (HOPDONGID)
)
go

/*==============================================================*/
/* Index: KYHOPDONG_FK                                          */
/*==============================================================*/




create nonclustered index KYHOPDONG_FK on HOPDONG (NHANVIENID ASC)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   NHANVIENID           int                  not null,
   CHUYENID             int                  null,
   PHONGBANID           int                  not null,
   CHUCVUID             int                  not null,
   MANHANVIEN           varchar(20)          not null,
   HOTEN                varchar(100)         not null,
   NGAYSINH             datetime             null,
   GIOITINH             varchar(10)          null,
   SODIENTHOAI          varchar(20)          null,
   EMAIL                varchar(100)         null,
   DIACHI               varchar(255)         null,
   NGAYVAOLAM           datetime             null,
   TRANGTHAI            varchar(30)          not null,
   constraint PK_NHANVIEN primary key (NHANVIENID)
)
go

/*==============================================================*/
/* Index: THUOCPHONGBAN_FK                                      */
/*==============================================================*/




create nonclustered index THUOCPHONGBAN_FK on NHANVIEN (PHONGBANID ASC)
go

/*==============================================================*/
/* Index: DAMNHIEMCHUCVU_FK                                     */
/*==============================================================*/




create nonclustered index DAMNHIEMCHUCVU_FK on NHANVIEN (CHUCVUID ASC)
go

/*==============================================================*/
/* Index: THUOCCHUYENMAY_FK                                     */
/*==============================================================*/




create nonclustered index THUOCCHUYENMAY_FK on NHANVIEN (CHUYENID ASC)
go

/*==============================================================*/
/* Table: PHANXUONG                                             */
/*==============================================================*/
create table PHANXUONG (
   PHANXUONGID          int                  not null,
   DONVIID              int                  not null,
   TENPHANXUONG         varchar(100)         not null,
   constraint PK_PHANXUONG primary key (PHANXUONGID)
)
go

/*==============================================================*/
/* Index: COPHANXUONG_FK                                        */
/*==============================================================*/




create nonclustered index COPHANXUONG_FK on PHANXUONG (DONVIID ASC)
go

/*==============================================================*/
/* Table: PHONGBAN                                              */
/*==============================================================*/
create table PHONGBAN (
   PHONGBANID           int                  not null,
   TENPHONGBAN          varchar(100)         not null,
   MOTA                 varchar(255)         null,
   DANGHOATDONG         bit                  not null,
   constraint PK_PHONGBAN primary key (PHONGBANID)
)
go

/*==============================================================*/
/* Table: TAIKHOAN                                              */
/*==============================================================*/
create table TAIKHOAN (
   TAIKHOANID           int                  not null,
   NHANVIENID           int                  not null,
   VAITROID             int                  not null,
   TENDANGNHAP          varchar(50)          not null,
   MATKHAU              varchar(255)         not null,
   EMAIL                varchar(100)         null,
   DANGHOATDONG         bit                  not null,
   NGAYTAO              datetime             not null,
   constraint PK_TAIKHOAN primary key (TAIKHOANID)
)
go

/*==============================================================*/
/* Index: GANVAITRO_FK                                          */
/*==============================================================*/




create nonclustered index GANVAITRO_FK on TAIKHOAN (VAITROID ASC)
go

/*==============================================================*/
/* Index: SOHUUTAIKHOAN_FK                                      */
/*==============================================================*/




create nonclustered index SOHUUTAIKHOAN_FK on TAIKHOAN (NHANVIENID ASC)
go

/*==============================================================*/
/* Table: VAITRO                                                */
/*==============================================================*/
create table VAITRO (
   VAITROID             int                  not null,
   TENVAITRO            varchar(50)          not null,
   MOTA                 varchar(255)         null,
   constraint PK_VAITRO primary key (VAITROID)
)
go

alter table CHAMCONG
   add constraint FK_CHAMCONG_GHINHANCH_NHANVIEN foreign key (NHANVIENID)
      references NHANVIEN (NHANVIENID)
go

alter table CHUYEN_SANXUAT
   add constraint FK_CHUYEN_S_COCHUYENM_PHANXUON foreign key (PHANXUONGID)
      references PHANXUONG (PHANXUONGID)
go

alter table DANHGIAKPI
   add constraint FK_DANHGIAK_DUOCDANHG_NHANVIEN foreign key (NHANVIENID)
      references NHANVIEN (NHANVIENID)
go

alter table DONNGHIPHEP
   add constraint FK_DONNGHIP_NOPDONNGH_NHANVIEN foreign key (NHANVIENID)
      references NHANVIEN (NHANVIENID)
go

alter table HOPDONG
   add constraint FK_HOPDONG_KYHOPDONG_NHANVIEN foreign key (NHANVIENID)
      references NHANVIEN (NHANVIENID)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_DAMNHIEMC_CHUCVU foreign key (CHUCVUID)
      references CHUCVU (CHUCVUID)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_THUOCCHUY_CHUYEN_S foreign key (CHUYENID)
      references CHUYEN_SANXUAT (CHUYENID)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_THUOCPHON_PHONGBAN foreign key (PHONGBANID)
      references PHONGBAN (PHONGBANID)
go

alter table PHANXUONG
   add constraint FK_PHANXUON_COPHANXUO_DONVI_NH foreign key (DONVIID)
      references DONVI_NHAMAY (DONVIID)
go

alter table TAIKHOAN
   add constraint FK_TAIKHOAN_GANVAITRO_VAITRO foreign key (VAITROID)
      references VAITRO (VAITROID)
go

alter table TAIKHOAN
   add constraint FK_TAIKHOAN_SOHUUTAIK_NHANVIEN foreign key (NHANVIENID)
      references NHANVIEN (NHANVIENID)
go

