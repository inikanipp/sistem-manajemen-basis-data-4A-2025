-- menampilkan nama balita dan nama orangtua 2 tabel

CREATE VIEW view_ortu_balita AS
SELECT nama_ayah, nama_ibu, nama_balita FROM orang_tua a JOIN balita b 
	ON a.id_ortu=b.id_ortu


-- menampilkan balita yang imunisasi Campak 3 tabel
CREATE VIEW view_balita_campak AS
SELECT nama_balita, nama_imunisasi FROM balita a JOIN imunisasi_balita b 
	ON a.id_balita = b.id_balita JOIN jenis_imunisasi c 
	ON c.id_imunisasi=b.id_imunisasi WHERE nama_imunisasi = 'Campak'
	
	
-- menampilkan data balita yang berat badan lebih dari 9kg ketika kunjungan posyandu
CREATE VIEW view_bb_balita AS
SELECT nama_balita, berat_badan FROM balita a JOIN kunjungan_posyandu b 
	ON a.id_balita=b.id_balita WHERE b.berat_badan > 9
	
	
--  menampilkan jumlah balita berdasarkan kategori gizi
CREATE VIEW view_gizi_balita AS
SELECT status_gizi, COUNT(a.id_balita) AS banyak_balita FROM balita a JOIN kunjungan_posyandu b 
	ON a.id_balita=b.id_balita GROUP BY status_gizi
	
	
-- menampilkan data nama orangtua, balita terakhir ke posyandu
CREATE VIEW view_ortu_balita_tgl AS
SELECT a.`nama_ayah`, a.nama_ibu, b.`nama_balita`, MAX(tanggal_kunjungan) AS terakhir_kunjungan
FROM orang_tua a JOIN balita b ON a.id_ortu=b.id_ortu
	JOIN kunjungan_posyandu c ON b.id_balita=c.id_balita GROUP BY b.id_balita