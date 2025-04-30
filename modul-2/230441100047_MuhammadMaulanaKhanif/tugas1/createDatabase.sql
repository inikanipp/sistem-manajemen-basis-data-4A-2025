CREATE TABLE kategori_umkm (
  id_kategori INT NOT NULL AUTO_INCREMENT,
  nama_kategori VARCHAR(100) NULL,
  deskripsi TEXT NULL,
  PRIMARY KEY (id_kategori));


CREATE TABLE kabupaten_kota (
  id_kabupaten_kota INT NOT NULL AUTO_INCREMENT,
  nama_kabupaten_kota VARCHAR(100) NULL,
  PRIMARY KEY (id_kabupaten_kota));


CREATE TABLE pemilik_umkm (
  id_pemilik INT NOT NULL AUTO_INCREMENT,
  nik VARCHAR(16) NULL,
  nama_lengkap VARCHAR(200) NULL,
  jenis_kelamin ENUM("Laki-Laki", "Perempuan") NULL,
  alamat TEXT NULL,
  nomor_telepon VARCHAR(15) NULL,
  email VARCHAR(100) NULL,
  PRIMARY KEY (id_pemilik),
  UNIQUE INDEX nik_UNIQUE (nik ASC));


CREATE TABLE skala_umkm (
  id_skala INT NOT NULL AUTO_INCREMENT,
  nama_skala VARCHAR(50) NULL,
  batas_aset_bawah DECIMAL(15,2) NULL,
  skala_umkmcol VARCHAR(45) NULL,
  batas_aset_atas DECIMAL(15,2) NULL,
  batas_omzet_bawah DECIMAL(15,2) NULL,
  batas_omzet_atas DECIMAL(15,2) NULL,
  PRIMARY KEY (id_skala));

CREATE TABLE umkm (
  id_umkm INT NOT NULL AUTO_INCREMENT,
  id_kategori INT NOT NULL,
  id_kabupaten_kota INT NOT NULL,
  id_pemilik INT NOT NULL,
  id_skala INT NOT NULL,
  nama_usaha VARCHAR(200) NULL,
  alamat_usaha TEXT NULL,
  nib VARCHAR(50) NULL,
  npwp VARCHAR(20) NULL,
  tahun_berdiri YEAR(4) NULL,
  jumlah_karyawan INT NULL,
  total_aset DECIMAL(15,2) NULL,
  omzet_per_tahun DECIMAL(15,2) NULL,
  deskripsi_usaha TEXT NULL,
  tanggal_registrasi DATE NULL,
  PRIMARY KEY (id_umkm, id_kategori, id_kabupaten_kota, id_pemilik, id_skala),
  INDEX fk_kategori_umkm_has_kabupaten_kota_kabupaten_kota1_idx (id_kabupaten_kota ASC),
  INDEX fk_kategori_umkm_has_kabupaten_kota_kategori_umkm_idx (id_kategori ASC),
  INDEX fk_umkm_pemilik_umkm1_idx (id_pemilik ASC),
  INDEX fk_umkm_skala_umkm1_idx (id_skala ASC),
  CONSTRAINT fk_kategori_umkm_has_kabupaten_kota_kategori_umkm
    FOREIGN KEY (id_kategori)
    REFERENCES kategori_umkm (id_kategori)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_kategori_umkm_has_kabupaten_kota_kabupaten_kota1
    FOREIGN KEY (id_kabupaten_kota)
    REFERENCES kabupaten_kota (id_kabupaten_kota)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_umkm_pemilik_umkm1
    FOREIGN KEY (id_pemilik)
    REFERENCES pemilik_umkm (id_pemilik)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_umkm_skala_umkm1
    FOREIGN KEY (id_skala)
    REFERENCES skala_umkm (id_skala)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE produk_umkm (
  id_produk INT NOT NULL AUTO_INCREMENT,
  nama_produk VARCHAR(200) NULL,
  deskripsi_produk TEXT NULL,
  harga DECIMAL(15,2) NULL,
  id_umkm INT NOT NULL,
  PRIMARY KEY (id_produk, id_umkm),
  INDEX fk_produk_umkm_umkm1_idx (id_umkm ASC),
  CONSTRAINT fk_produk_umkm_umkm1
    FOREIGN KEY (id_umkm)
    REFERENCES umkm (id_umkm)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    
    ALTER TABLE umkm ADD COLUMN id_kategori INT FOREIGN KEY (id_kategori) REFERENCES kategori_umkm(id_kategori)

-- Tambahkan kolom dulu
ALTER TABLE umkm ADD COLUMN id_kategori INT;

-- Lalu tambahkan foreign key constraint-nya
ALTER TABLE umkm 
ADD CONSTRAINT fk_id_kategori 
FOREIGN KEY (id_kategori) REFERENCES kategori_umkm(id_kategori);

