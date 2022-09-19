create database qlbansach;
use qlbansach;

create table khachhang(
makh int auto_increment,
taikhoan int,
matkhau int,
email varchar(255),
diachi varchar(100),
dienthoai varchar(100),
gioitinh varchar(5),
ngaysinh timestamp,
hoten varchar(100),

primary key(makh)
);
create table donhang(
madonhang int auto_increment,
dathanhtoan bool,
ngaygiao timestamp,
ngaydat timestamp,
tinhtranggiaohang varchar(100),
id_makh int,

primary key(madonhang),
foreign key (id_makh) references khachhang(makh)
);
create table sach(
masach int auto_increment,
tensach varchar(100),
soluongton int,
ngaycapnhat timestamp,
anhbia varchar(255),
mota text,
giaban double,

primary key(masach)
);
create table donhang_sach(
soluong int,
dongia float,
id_masach int,
id_madonhang int,

primary key(id_masach,id_madonhang),
foreign key (id_madonhang) references donhang(madonhang),
foreign key (id_masach) references sach(masach)
);
create table tacgia(
matacgia int auto_increment,
tentacgia varchar(100),
dienthoai varchar(100),
tieusu text,
diachi varchar(100),

primary key(matacgia)
);
create table tacgia_sach(
vaitro varchar(100),
vitri varchar(100),
id_masach int,
id_matacgia int,

primary key(id_masach,id_matacgia),
foreign key (id_matacgia) references tacgia(matacgia),
foreign key (id_masach) references sach(masach)
);
create table chude(
machude int auto_increment,
tenchude varchar(100),
id_masach int,

primary key(machude),
foreign key (id_masach) references sach(masach)
);
create table nhaxuatban(
manxb int auto_increment,
tennxb varchar(100),
dienthoai varchar(100),
diachi varchar(100),
id_masach int,

primary key(manxb),
foreign key(id_masach) references sach(masach)
);
