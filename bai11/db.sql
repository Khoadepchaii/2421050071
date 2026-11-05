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

INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('Khoadaito','ahihidaingoc','ngk12102006@gmail.com','Nguyễn Đăng Khoa','2006-10-12','0369583755','1');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('Hieuhaihuoc','toilagay','minhhieu123@gmail.com','Nguyễn Minh Hiếu','2006-4-17','0987545621','1');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('Trungtretrau','Quoctuat88','QuocTuat789456@gmail.com','Nguyễn Quốc Trung','2006-11-20','0564987951','1');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('NhungNhiNhanh','Nhungne12345','Nhungthithoi11@gmail.com','Nguyễn Thi Nhung','2006-3-2','0345456978','0');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('NhiNhiNho','Nhine12345','Nhilatoi123@gmail.com','Trần Thị Yến Nhi','2006-9-7','0934567789','0');

INSERT INTO `phim` 
(`ten_phim`, `quoc_Gia`, `dao_dien_id`, `nam`, `do_tuoi`, `mo_ta`) 
VALUES
('Doraemon: Nobita và vùng đất lý tưởng trên bầu trời', 'Nhật Bản', 1, 2023, 0, 'Nobita và những người bạn khám phá vùng đất lý tưởng trên bầu trời.'),
('Avengers: Endgame', 'Mỹ', 2, 2019, 13, 'Các siêu anh hùng hợp sức để đảo ngược hậu quả của Thanos.'),
('Parasite', 'Hàn Quốc', 3, 2019, 18, 'Câu chuyện về hai gia đình thuộc hai tầng lớp xã hội khác nhau.'),
('Your Name', 'Nhật Bản', 4, 2016, 13, 'Hai học sinh xa lạ bất ngờ hoán đổi thân xác cho nhau.'),
('The Conjuring', 'Mỹ', 5, 2013, 18, 'Hai nhà điều tra hiện tượng siêu nhiên khám phá một ngôi nhà ma ám.');
`
SELECT p.ten_phim,dd.ho_ten as 'dao_dien',tl.ten_the_loai FROM `phim` p
join 'dao_dien' dd
on p.dao_dien_id=dd.id 
join 'phim_the_loai' ptl
on p.id=ptl.phim_id
join tl.id=ptl.the_loai_id
WHERE p.id=1;