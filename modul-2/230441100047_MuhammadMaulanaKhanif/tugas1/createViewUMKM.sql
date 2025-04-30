


CREATE VIEW view_umkm_detail AS

SELECT a.nama_usaha, c.nama_lengkap AS nama_pemilik, 
	b.nama_kategori AS kategori,
	d.nama_skala AS skala, 
	e.nama_kabupaten_kota AS kota,
	a.tahun_berdiri 
FROM umkm a JOIN kategori_umkm b ON a.id_kategori=b.id_kategori 
	JOIN pemilik_umkm c ON a.id_pemilik=c.id_pemilik 
	JOIN skala_umkm d ON a.id_skala=d.id_skala 
	JOIN kabupaten_kota e ON a.id_kabupaten_kota=e.id_kabupaten_kota
	
	
	
SELECT * FROM view_umkm_detail

CREATE VIEW view_pemilik_dan_usaha AS
	SELECT nama_lengkap, NIK, jenis_kelamin, 
		nomor_telepon, email, b.nama_usaha
	FROM pemilik_umkm a JOIN
		umkm b ON a.id_pemilik=b.id_pemilik 
		
SELECT * FROM view_pemilik_dan_usaha



CREATE VIEW view_produk_umkm AS SELECT a.nama_usaha, nama_produk,
deskripsi_produk, harga FROM umkm a JOIN produk_umkm b ON a.id_umkm=b.id_umkm

SELECT * FROM view_produk_umkm



CREATE VIEW view_umkm_menengah AS
SELECT nama_usaha, nama_lengkap AS nama_pemilik, total_aset, omzet_per_tahun

	FROM umkm a JOIN pemilik_umkm b ON a.id_pemilik = b.id_pemilik
	JOIN skala_umkm c ON a.id_skala=c.id_skala WHERE c.nama_skala = 'Menengah'

SELECT * FROM view_umkm_menengah

CREATE VIEW view_umkm_per_kota AS
SELECT COUNT(a.id_umkm) AS banyak_umkm, b.nama_kabupaten_kota 
	FROM umkm a JOIN kabupaten_kota b 
	ON a.id_kabupaten_kota=b.id_kabupaten_kota 
	GROUP BY b.nama_kabupaten_kota
	
SELECT * FROM view_umkm_per_kota

