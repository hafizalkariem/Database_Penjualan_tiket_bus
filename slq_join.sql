SELECT penumpang.nama,tiket.no_kursi, jadwal_berangkat.jam_berangkat,rute.rute_awal,rute.rute_akhir, armada.kelas, armada.harga FROM penumpang 
INNER JOIN tiket ON penumpang.id_penumpang = tiket.id_penumpang 
INNER join jadwal_berangkat ON jadwal_berangkat.id_jadwal = tiket.id_jadwal 
INNER JOIN armada on armada.id_armada = jadwal_berangkat.id_armada 
INNER JOIN rute on rute.id_rute = armada.id_rute;

SELECT penumpang.nama,tiket.no_kursi, jadwal_berangkat.jam_berangkat,rute.rute_awal,rute.rute_akhir, armada.kelas, armada.harga FROM penumpang 
LEFT JOIN tiket ON penumpang.id_penumpang = tiket.id_penumpang 
LEFT join jadwal_berangkat ON jadwal_berangkat.id_jadwal = tiket.id_jadwal 
LEFT JOIN armada on armada.id_armada = jadwal_berangkat.id_armada 
LEFT JOIN rute on rute.id_rute = armada.id_rute;

SELECT penumpang.nama,tiket.no_kursi, jadwal_berangkat.jam_berangkat,rute.rute_awal,rute.rute_akhir, armada.kelas, armada.harga FROM penumpang 
RIGHT JOIN tiket ON penumpang.id_penumpang = tiket.id_penumpang 
RIGHT join jadwal_berangkat ON jadwal_berangkat.id_jadwal = tiket.id_jadwal 
RIGHT JOIN armada on armada.id_armada = jadwal_berangkat.id_armada 
RIGHT JOIN rute on rute.id_rute = armada.id_rute;

SELECT penumpang.nama,tiket.no_kursi, jadwal_berangkat.jam_berangkat,rute.rute_awal,rute.rute_akhir ,armada.kelas, armada.harga FROM penumpang 
LEFT JOIN tiket ON penumpang.id_penumpang = tiket.id_penumpang 
LEFT join jadwal_berangkat ON jadwal_berangkat.id_jadwal = tiket.id_jadwal 
LEFT JOIN armada on armada.id_armada = jadwal_berangkat.id_armada 
LEFT JOIN rute on rute.id_rute = armada.id_rute 
UNION SELECT penumpang.nama,tiket.no_kursi, jadwal_berangkat.jam_berangkat,rute.rute_awal,rute.rute_akhir, armada.kelas, armada.harga FROM penumpang 
RIGHT JOIN tiket ON penumpang.id_penumpang = tiket.id_penumpang 
RIGHT join jadwal_berangkat ON jadwal_berangkat.id_jadwal = tiket.id_jadwal 
RIGHT JOIN armada on armada.id_armada = jadwal_berangkat.id_armada 
LEFT JOIN rute on rute.id_rute= armada.id_rute;