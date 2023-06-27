create database penjualan_tiket_bus;
create table penumpang 
(id_penumpang varchar (10) primary key not null, nama varchar (45), no_tlp varchar (12) ) ;
create table jadwal_berangkat
(id_jadwal varchar(10) primary key not null, id_armada varchar(10), jam_berangkat time);
create table tiket
(id_tiket varchar(10) primary key not null, id_jadwal varchar(10), id_penumpang varchar(10), no_kursi numeric(10) );
create table transaksi
(id_transaksi varchar(10) primary key not null, id_tiket varchar(10), tanggal date);
create table armada
(id_armada varchar(10) primary key not null,kelas varchar(10), id_rute varchar(10), jumlah_kursi numeric (12), harga int(9) );
create table laporan_transaksi 
(id_laporan varchar(10) primary key not null, tanggal date, jumlah_tiket numeric(12), total_pendapatan numeric(12) );
create table Rute 
( id_rute varchar(10), rute_awal varchar(10), rute_akhir varchar(10) );
