INSERT  INTO mahasiswa(idmahasiswa,nama,nim) VALUES 
(1,'shahaf lanjaya','230441100166'),
(2,'rikhan arbai','230441100192'),
(3,'maulana khanif','230441100047'),
(4,'yahya ahmad','230441100079'),
(5,'isma yafa','230441100081'),
(6,'dylan akhtarezza','230441100027'),
(7,'erlangga satrya','230441100101'),
(8,'naufal fahmi','230441100042'),
(9,'arrafi abqori','230441100026'),
(10,'mujaddid','230441100135');

INSERT  INTO matakuliah(idmatakuliah,nama_matakuliah,sks) VALUES 
(1,'algoritma pemrograman',4),
(2,'logika engineering',3),
(3,'pemrograman web',4),
(4,'pemrograman berorientasi objek',4),
(5,'analisis proses bisnis',3),
(6,'bahasa indonesia',2),
(7,'bahasa inggris',2),
(8,'pemrograman visual',3),
(9,'desain manajemen jaringan',3),
(10,'arsitektur perusahaan',3);

INSERT  INTO dosen(iddosen,nama,nip) VALUES 
(1,'Sri Herawati, S.Kom., M.Kom.','198308282008122002'),
(2,'Wahyudi Agustiono, S.Kom., M.Sc, Ph.D','197808042003121001'),
(3,'Dr. Wahyudi Setiawan, S.Kom., M.Kom.','197809262006041001'),
(4,'Muhammad Yusuf, ST., M.MT.,PhD.','197912152008121002'),
(5,'Mohammad Syarief, S.T., M.Cs.','198003212008011008'),
(6, 'Eza Rahmanita, S.T., M.T.', '197906052003122003'),
(7, 'Doni Abdul Fatah, S.Kom., M.Kom', '198705202019031013'),
(8, 'Firmansyah Adiputra, S.T., M.Cs.', '197805042002121002'),
(9, 'Dr. Budi Dwi Satoto, S.T., M.Kom', '197509092002121001'),
(10, 'Dr. Yeni Kustiyahningsih, S.Kom., M.Kom (Ketua Jurusan T. Informatika)', '197709212008122002');

INSERT  INTO hari(idhari,hari) VALUES 
(5,'JUMAT'),
(4,'KAMIS'),
(3,'RABU'),
(2,'SELASA'),
(1,'SENIN');

INSERT  INTO ruangan(idruangan,nama_ruangan) VALUES 
(1,'RKBF-204'),
(2,'RKBF-208'),
(3,'RKBF-304'),
(4,'RKBF-307'),
(5,'RKBF-308');


INSERT  INTO waktu(idwaktu,waktu_mulai,waktu_akhir) VALUES 
(1,'06:45:00','09:15:00'),
(2,'09:15:00','11:45:00'),
(3,'12:45:00','15:15:00'),
(4,'15:15:00','17:45:00');

INSERT  INTO jadwal(idjadwal,idruangan,idwaktu,idhari) VALUES 
(1,1,1,1),
(2,1,2,1),
(3,2,1,2),
(4,2,3,2),
(5,3,1,3),
(6,3,2,3),
(7,4,1,4),
(8,4,2,4),
(9,5,1,5),
(10,5,3,5);

INSERT  INTO kelas(id_kelas,idmatakuliah,iddosen,idjadwal,nama_kelas) VALUES 
(1,1,2,3,'ALPRO-A'),
(2,2,2,4,'LOGIKA ENGINEERING B'),
(3,2,3,5,'LOGIKA ENGINEERING B'),
(4,3,3,6,'PBW B'),
(5,3,4,7,'PBW B'),
(6,4,4,8,'B.INDONESIA C'),
(7,5,5,9,'APB D');

INSERT  INTO kartu_rencana_studi(idkrs,idmahasiswa,id_kelas) VALUES 
(1,1,2),
(2,2,3),
(3,3,2),
(4,4,1),
(5,5,1),
(6,5,5),
(7,6,5),
(8,7,4),
(9,8,3),
(10,8,4),
(11,9,5),
(12,10,3);


SELECT * FROM mahasiswa
SELECT * FROM matakuliah
SELECT * FROM dosen
SELECT * FROM hari
SELECT * FROM jadwal
SELECT * FROM kelas
SELECT * FROM waktu
SELECT * FROM kartu_rencana_studi
SELECT * FROM ruangan

ALTER TABLE kartu_rencana_studi RENAME TO krs;


SHOW TABLES


