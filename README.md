
## LAPORAN DATABASE PENJUALAN TIKET BUS



#### collabolators

| Nama                   | NIM       |
| :--------              | :-------  |
| Ahmad Hapizhudin       | 312210370 |
| Dzaki Abiyyu           | 312210381 |
| Dafa Alfiana Erlangga | 312210446 |
| Maulana Zidan Perdana  | 312210463 |

#### Tugas




| ERD | DDL  | SQL CRUD |SQL JOIN |
| :---| :------- | :----- | :-------|





## ERD

Dalam tugas kali ini kita dituntut untuk membuat Entity Relationship Diagram dengan beberapa ketentuan sebai berikut:
1. mengelola data armada
2. mengelola jadwal keberangkatan
3. mengelola data penumpang dan posisi tempat duduk
4. transaksi penjualan
5. laporan transaksi

setelah menimbang semua ketentuan diatas maka kita dapatkan ERD yang ada didalam file berikut :
[ERD_penjualan_tiket_bus.pdf](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/files/11884952/ERD_penjualan_tiket_bus.pdf)
![Screenshot 2023-06-27 231956](https://github.com/hafizalkariem/Database_Penjualan_tiket_bus/assets/115614957/5be98592-056c-4631-88ae-f474c43aedb0)
Dari ERD di atas dapat kita temukan beberapa relasi dan kardinalitas sebagai berikut:

penumpang ---> tiket dengan kardinalitas `one to many`  
jadwal_berangkat ---> tiket dengan kardinalitas `one to many`  
armada ---> jadwal_berangkat dengan kardinalitas `one to many`  
armada ---> rute dengan kardinalitas `many to one`  
transaksi ---> tiket dengan kardinalitas `one to one`  
laporan_transaksi ---> transaksi dengan kardinalitas `one to one`  

## SQL Data Definition Language

untuk melihat keseluruhan query DDL anda dapat melihatnya di : .....  
berikut syntaq utama:
```sql
create database penjualan_tiket_bus;
```



