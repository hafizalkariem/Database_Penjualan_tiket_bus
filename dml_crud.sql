create database penjualan_tiket_bus;
create table penumpang 
(id_penumpang varchar (10) primary key not null, nama varchar (45), no_tlp varchar (12) ) ;
insert into penumpang
(id_penumpang,nama,no_tlp)
VALUES ('P01','ahmad','82212345678'),
    ('P02','daffa','82212345679'),
    ('P03','zidan','82212345680'),
    ('P04','zaki','82212345681'),
    ('P05','rafi','82212345682'),
    ('P06','mikael','82212345683'),
    ('P07','gilar','82212345684'),
    ('P08','ricky','82212345685'),
    ('P09','dito','82212345686'),
    ('P10','hadi','82212345687');

UPDATE penumpang
SET nama = 'hadi', no_tlp = '82212345687'
WHERE id_penumpang = 'P01';
SET nama = 'ahmad', no_tlp = '82212345678'
WHERE id_penumpang = 'P10';
DELETE FROM penumpang
WHERE nama = 'dito';

create table jadwal_berangkat
(id_jadwal varchar(10) primary key not null, id_armada varchar(10), jam_berangkat time);

create table transaksi
(id_transaksi varchar(10) primary key not null, id_tiket varchar(10), tanggal date);
INSERT INTO transaksi 
(id_transaksi,id_tiket,tanggal)
VALUES ('TRANS01','T01','2023-06-27'),
	('TRANS02','T02','2023-06-27'),
	('TRANS03','T03','2023-06-27'),
    ('TRANS04','T04','2023-06-27'),
    ('TRANS05','T05','2023-06-28'),
    ('TRANS06','T06','2023-06-28'),
    ('TRANS07','T07','2023-06-29'),
    ('TRANS08','T08','2023-06-29'),
    ('TRANS09','T09','2023-06-29'),
    ('TRANS10','T10','2023-06-29');
UPDATE transaksi 
SET id_tiket = 'T01', tanggal = '2023-06-27'
WHERE id_transaksi = 'TRANS01';
DELETE FROM transaksi
WHERE id_tiket = 'T01';    

create table armada
(id_armada varchar(10) primary key not null,kelas varchar(10), id_rute varchar(10), jumlah_kursi numeric (12), harga varchar(12) );
INSERT INTO armada
	(id_armada,id_rute,kelas,jumlah_kursi,harga)
    VALUES ('ARM01','RUTE01','EXECUTIVE','28','210.000.00'),
    ('ARM02','RUTE01','SUPER EXECUTIVE','21','280.000.00'),
    ('ARM03','RUTE02','EXECUTIVE','28','190.000.00'),
    ('ARM04','RUTE02','SUPER EXECUTIVE','21','270.000.00'),
    ('ARM05','RUTE03','EXECUTIVE','28','250.000.00'),
    ('ARM06','RUTE03','SUPER EXECUTIVE','21','300.000.00'),
    ('ARM07','RUTE04','EXECUTIVE','28','250.000.00'),
    ('ARM08','RUTE04','SUPER EXCUTIVE','21','300.000.00'),
    ('ARM09','RUTE05','EXECUTIVE','28','280.000.00'),
    ('ARM10','RUTE05','SUPER EXECUTIVE','21','340.000.00'),
    ('ARM11','RUTE06','EXECUTIVE','28','260.000.00'),
    ('ARM12','RUTE06','SUPER EXECUTIVE','21','320.000.00'),
    ('ARM13','RUTE07','EXECUTIVE','28','190.000.00'),
    ('ARM14','RUTE07','SUPER EXECUTIVE','21','260.000.00'),
    ('ARM15','RUTE08','EXECUTIVE','28','230.000.00'),
    ('ARM16','RUTE08','SUPER EXECUTIVE','21','300.000.00'),
    ('ARM17','RUTE09','EXECUTIVE','28','260.000.00'),
    ('ARM18','RUTE09','SUPER EXECUTIVE','21','320.000.00'),
    ('ARM19','RUTE20','EXECUTIVE','28','190.000.00'),
    ('ARM20','RUTE20','SUPER EXECUTIVE','21','270.000.00'),
    ('ARM21','RUTE11','EXECUTIVE','28','230.000.00'),
    ('ARM22','RUTE11','SUPER EXECUTIVE','21','280.000.00'),
    ('ARM23','RUTE12','EXECUTIVE','28','240.000.00'),
    ('ARM24','RUTE12','SUPER EXECUTIVE','21','300.000.00');
    UPDATE armada
    SET harga = '350.000.00'
    WHERE id_armada = 'ARM24';
    DELETE FROM armada
    where id_armada = 'ARM24';

CREATE table laporan_transaksi 
(id_laporan varchar(10) primary key not null,id_transaksi varchar(10), tanggal date, jumlah_tiket numeric(12), total_pendapatan numeric(12) );
INSERT INTO laporan_transaksi
(id_laporan,id_transaksi,tanggal,jumlah_tiket,total_pendapatan)
VALUES ('L001','TRANS01','2023-06-27','1','280000'),
('L002','TRANS02','2023-06-27','1','280000'),
('L003','TRANS03','2023-06-27','1','280000'),
('L004','TRANS04','2023-06-27','1','300000'),
('L005','TRANS05','2023-06-28','1','300000'),
('L006','TRANS06','2023-06-28','1','300000'),
('l007','TRANS07','2023-06-29','1','280000'),
('L008','TRANS08','2023-06-29','1','280000'),
('L009','TRANS09','2023-06-29','1','300000'),
('L010','TRANS10','2023-06-29','1','300000');
UPDATE laporan_transaksi
SET jumlah_tiket = '3', total_pendapatan = '900000'
WHERE id_laporan = 'L004';
DELETE FROM laporan_transaksi
WHERE id_laporan = 'L010';
  
create table Rute 
( id_rute varchar(10) primary key not null, rute_awal varchar(50), rute_akhir varchar(50) );
INSERT INTO Rute
(id_rute,rute_awal,rute_akhir)
VALUES ('RUTE01','jakarta,cikarang,karawang','semarang,jepara'),
('RUTE02','cikopo','semarang,jepara'),
('RUTE03','jakarta,cikarang,karawang','ngawi'),
('RUTE04','cikopo','ngawi'),
('RUTE05','jakarta,cikarang,karawang','surabaya'),
('RUTE06','cikopo','surabaya'),
('RUTE07','semarang,jepara','jakarta,cikarang,karawang'),
('RUTE08','ngawi','jakarta,cikarang,karawang'),
('RUTE09','surabaya','jakarta,cikarang,karawang'),
('RUTE10','semarang,jepara','cikopo'),
('RUTE11','ngawi','cikopo'),
('RUTE12','surabaya','cikopo');
UPDATE Rute
SET rute_awal = 'jakarta', rute_akhir = 'semarang,jepara'
WHERE id_rute = 'RUTE10';
DELETE FROM rute
WHERE id_rute = 'RUTE012';
