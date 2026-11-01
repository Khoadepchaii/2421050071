create table netflix;
-- phim
-- the_Loai
-- quoc_Gia
-- dien_Vien
-- dao_Dien
-- tap_phim
-- nguoi_Dung


-- table người dùng 
CREATE TABLE nguoi_Dung(
id int AUTO_INCREMENT PRIMARY KEY,
ten_dang_nhap varchar(30) NOT NULL,
mat_khau varchar(30) NOT NULL,
email varchar(30) NOT NULL,
ho_ten varchar(50) NOT NULL,
ngay_sinh date NOT NULL,
so_dien_thoai varchar(10) NOT NULL,
gioi_tinh boolean NOT NULL
)

CREATE TABLE if not exists the_Loai(
id INT AUTO_INCREMENT PRIMARY KEY,
ten_The_Loai varchar(255) not NULL
)

create table if not exists dien_Vien(
id INT AUTO_INCREMENT PRIMARY KEY,
ho_ten varchar(100) not NULL,
ngay_sinh date not NULL
)

create table if not exists phim(
id INT AUTO_INCREMENT PRIMARY KEY,
ten_phim varchar(255) not NULL,
quoc_Gia varchar(100) not NULL,
dao_dien_id int not null, 
nam datetime not null,
do_tuoi int not null,
mo_ta varchar(255) not null
)

create table if not exists phim_the_loai(
id INT AUTO_INCREMENT PRIMARY KEY,
phim_id int not NULL,
the_loai_id int not null,
)

-- phim_dien_vien
create table if not exists phim_dien_vien(
id INT AUTO_INCREMENT PRIMARY KEY,
phim_id int not null,
phim_dien_vien int not null
)

create table if not exists dao_dien(
id INT AUTO_INCREMENT PRIMARY KEY,
ho_ten varchar(100) not null,
ngay_sinh date not null
)
