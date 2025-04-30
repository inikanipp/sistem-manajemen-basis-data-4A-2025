-- data
INSERT INTO orang_tua (nama_ibu, nama_ayah, alamat, no_hp) VALUES
('Siti Aminah', 'Budi Santoso', 'Jl. Melati No. 10', '081234567001'),
('Rina Marlina', 'Joko Prasetyo', 'Jl. Kenanga No. 3', '081234567002'),
('Tati Suharti', 'Dedi Gunawan', 'Jl. Mawar No. 12', '081234567003'),
('Lilis Komariah', 'Andi Saputra', 'Jl. Dahlia No. 5', '081234567004'),
('Nur Aisyah', 'Agus Salim', 'Jl. Anggrek No. 22', '081234567005'),
('Yeni Marliah', 'Eko Pranoto', 'Jl. Teratai No. 9', '081234567006'),
('Desi Rahayu', 'Roni Firmansyah', 'Jl. Melur No. 7', '081234567007'),
('Reni Astuti', 'Irwan Maulana', 'Jl. Flamboyan No. 4', '081234567008'),
('Sri Lestari', 'Teguh Widodo', 'Jl. Cempaka No. 15', '081234567009'),
('Yuni Wulandari', 'Rahmat Hidayat', 'Jl. Sakura No. 8', '081234567010');



 INSERT INTO balita (nama_balita, tgl_lahir, jenis_kelamin, id_ortu) VALUES
('Adit Pratama', '2021-05-10', 'Laki-laki', 1),
('Rani Andini', '2020-08-15', 'Perempuan', 2),
('Dian Lestari', '2022-01-20', 'Perempuan', 3),
('Fahri Ramadhan', '2021-11-05', 'Laki-laki', 4),
('Salsa Kamila', '2020-07-25', 'Perempuan', 5),
('Rafa Alfarizi', '2021-03-13', 'Laki-laki', 6),
('Intan Permata', '2022-02-28', 'Perempuan', 7),
('Naufal Hadi', '2021-06-30', 'Laki-laki', 8),
('Nadia Zahra', '2020-09-18', 'Perempuan', 9),
('Zidan Prakoso', '2021-10-01', 'Laki-laki', 10);




INSERT INTO jenis_imunisasi (nama_imunisasi, usia_pemberian) VALUES
('BCG', 1),
('Hepatitis B', 1),
('Polio 1', 2),
('Polio 2', 3),
('DPT 1', 3),
('DPT 2', 4),
('Campak', 9),
('MMR', 15),
('Hib', 2),
('Rotavirus', 2);


INSERT INTO imunisasi_balita (id_balita, id_imunisasi, tanggal_pemberian) VALUES
(1, 1, '2021-06-10'),
(2, 2, '2020-09-15'),
(3, 3, '2022-03-20'),
(4, 4, '2021-12-05'),
(5, 5, '2020-10-25'),
(6, 6, '2021-05-13'),
(7, 7, '2022-04-28'),
(8, 8, '2021-08-30'),
(9, 9, '2020-11-18'),
(10, 10, '2021-11-01');


INSERT INTO kader (nama_kader, jabatan, no_hp) VALUES
('Ibu Sulastri', 'Ketua', '081234570001'),
('Ibu Murniati', 'Wakil Ketua', '081234570002'),
('Ibu Kartini', 'Sekretaris', '081234570003'),
('Ibu Yuliana', 'Bendahara', '081234570004'),
('Ibu Dwi Lestari', 'Anggota', '081234570005'),
('Ibu Ratna Dewi', 'Anggota', '081234570006'),
('Ibu Leni Marlina', 'Anggota', '081234570007'),
('Ibu Rohana', 'Anggota', '081234570008'),
('Ibu Erna Sari', 'Anggota', '081234570009'),
('Ibu Tika Ayu', 'Anggota', '081234570010');


INSERT INTO kunjungan_posyandu (id_balita, id_kader, tanggal_kunjungan, berat_badan, tinggi_badan, status_gizi) VALUES
(1, 1, '2023-01-10', 10.5, 85.0, 'Baik'),
(2, 2, '2023-01-12', 9.2, 80.5, 'Kurang'),
(3, 3, '2023-02-01', 8.8, 78.0, 'Baik'),
(4, 4, '2023-02-10', 7.5, 75.0, 'Buruk'),
(5, 5, '2023-03-15', 11.0, 90.0, 'Baik'),
(6, 6, '2023-03-18', 10.0, 82.5, 'Baik'),
(7, 7, '2023-04-05', 9.5, 81.0, 'Kurang'),
(8, 8, '2023-04-08', 12.0, 88.0, 'Lebih'),
(9, 9, '2023-05-01', 7.0, 70.0, 'Buruk'),
(10, 10, '2023-05-10', 10.8, 86.0, 'Baik');

