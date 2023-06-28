
## LAPORAN DATABASE PENJUALAN TIKET BUS



#### collabolators

| Nama                   | NIM       |
| :--------              | :-------  |
| Ahmad Hapizhudin       | 312210370 |
| Dzaki Abiyyu           | 312210381 |
| Dafa Alfiana Erlangga | 312210446 |
| Maulana Zidan Perdana  | 312210463 |

#### Tugas




| [ERD](#ERD) | [DDL](#SQL-Data-Definition-Language)  | [SQL CRUD](#SQL-Data-Manipulation-Language-CRUD) |[SQL JOIN](#SQL-JOIN) |
| :---| :------- | :----- | :-------|





## ERD

Dalam tugas kali ini kita dituntut untuk membuat Entity Relationship Diagram dengan beberapa ketentuan sebai berikut:
1. mengelola data armada
2. mengelola jadwal keberangkatan
3. mengelola data penumpang dan posisi tempat duduk
4. transaksi penjualan
5. laporan transaksi

setelah menimbang semua ketentuan diatas maka kita dapatkan ERD yang ada didalam file berikut : [ERD PENUALAN TIKET BUS](ERD_penjualan_tiket_bus.pdf)
![Screenshot 2023-06-27 231956](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/5be98592-056c-4631-88ae-f474c43aedb0)
Dari ERD di atas dapat kita temukan beberapa relasi dan kardinalitas sebagai berikut:

penumpang ---> tiket dengan kardinalitas `one to many`  
jadwal_berangkat ---> tiket dengan kardinalitas `one to many`  
armada ---> jadwal_berangkat dengan kardinalitas `one to many`  
armada ---> rute dengan kardinalitas `many to one`  
transaksi ---> tiket dengan kardinalitas `one to one`  
laporan_transaksi ---> transaksi dengan kardinalitas `one to one`  

## SQL Data Definition Language

untuk melihat keseluruhan query DDL anda dapat melihatnya di : [Script DDL](penjualan_tiket_bus.sql)    
berikut syntak untuk membuat databasenya:
```sql
create database penjualan_tiket_bus;
```
setelah membuatnya tentu agar kita dapat mengoperasikannya kita harus masuk kedalam databasenya dengan perintah :
```sql
use penjualan_tiket_bus;
```
untuk membuat tabel nya,disini saya hanya akan menunjukan syntak membuat salah satu tabelnya yaitu tabel penumpang. berikut syntaknya :
```sql
create table penumpang 
(id_penumpang varchar (10) primary key not null, nama varchar (45), no_tlp varchar (12) ) ;
```
untuk melihat kolom kolomnya beserta tipe datanya kita dapat menggunakan syntak:
```sql
desc penumpang
```
untuk hasil dari tabelnya adalah sebagai berikut:
1. penumpang  
![Screenshot 2023-06-28 223703](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/c019e23e-9f26-4951-b551-512d4abb1071)

2. armada  
![armada](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/4283fcd0-f774-4f5d-ab66-1bc5ec280162)

3. jadwal_berangkat  
![jadwal](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/8f00ca29-bf54-4398-b4e1-712d7b3a235b)

4. rute  
![rute](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/e101addf-d3d1-480e-ab8b-0c2f9b77a6fa)

5. tiket  
![tiket](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/f87f3ee3-3b8b-4e89-96d3-d92b06a9be95)

6. transaksi  
![transaksi](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/f00caf8c-e27e-4fc0-b9b4-525be6b7aa90)

7. laporan_transaksi  
![laporan](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/20fbe913-8bd9-498b-b6bd-9548fee8974c) 



## SQL Data Manipulation Language (CRUD)
setelah membuat tabel tabel diatas maka selanjutnya tentu kita melakukan query CREATE,READ,UPDATE,DELETE    
untuk querynya dapat dilihat di : ......    

Berikut salah satu syntak dari pengisian data dari tabel tabel diatas. disini kita akan mencoba mengisi data penumpang:     

`CREATE`
```sql
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
```
`UPDATE`
```sql
UPDATE penumpang
SET nama = 'hadi', no_tlp = '82212345687'
WHERE id_penumpang = 'P01';
```
`DELETE`
```sql
DELETE FROM penumpang
WHERE nama = 'dito';
```
`READ`
```sql
select * from penumpang;
```

`Screenshoot`
### penumpang
![data penumpang](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/ad244b9c-3d31-45ef-901c-0b0e818231ff)
### armada
![darta armada](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/86dd2de0-6a5e-438e-82ba-9ebb13ea406e)
### jadwal_berangkat
![data jadwal](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/a6de3dcf-d13e-4cfe-995a-5c51e9d5524a)
### tiket
![data apaan ya](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/18a30192-cb0f-4613-96c7-a6b68971028c)
### rute
![data rut3](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/590b48bd-7de6-45b3-a098-95890d7977a7)
### transaksi
![data trans](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/589cc4fa-10e8-468b-9c33-e7e0ada49458)
### laporan_transaksi
![data laporan](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/5583c854-137b-4ac5-994c-93cea7267bba)

## SQL JOIN

