
CREATE TABLE orang_tua (
  id_ortu INT NOT NULL AUTO_INCREMENT,
  nama_ibu VARCHAR(100) NULL DEFAULT NULL,
  nama_ayah VARCHAR(100) NULL DEFAULT NULL,
  alamat TEXT NULL DEFAULT NULL,
  no_hp VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (id_ortu));

CREATE TABLE balita (
  id_balita INT NOT NULL AUTO_INCREMENT,
  nama_balita VARCHAR(100) NULL DEFAULT NULL,
  tgl_lahir DATE NULL DEFAULT NULL,
  jenis_kelamin ENUM('Laki-laki', 'Perempuan') NULL DEFAULT NULL,
  id_ortu INT NULL DEFAULT NULL,
  PRIMARY KEY (id_balita),
  CONSTRAINT fk_idortu_balita_idortu_orangtua
    FOREIGN KEY (id_ortu)
    REFERENCES orang_tua (id_ortu));

CREATE TABLE kader (
  id_kader INT NOT NULL AUTO_INCREMENT,
  nama_kader VARCHAR(100) NULL DEFAULT NULL,
  jabatan VARCHAR(50) NULL DEFAULT NULL,
  no_hp VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (id_kader));


CREATE TABLE jenis_imunisasi (
  id_imunisasi INT NOT NULL AUTO_INCREMENT,
  nama_imunisasi VARCHAR(100) NULL DEFAULT NULL,
  usia_pemberian INT NULL DEFAULT NULL,
  PRIMARY KEY (id_imunisasi));


CREATE TABLE kunjungan_posyandu (
  id_kunjungan INT NOT NULL AUTO_INCREMENT,
  id_balita INT NULL DEFAULT NULL,
  id_kader INT NULL DEFAULT NULL,
  tanggal_kunjungan DATE NULL DEFAULT NULL,
  berat_badan DECIMAL(5,2) NULL DEFAULT NULL,
  tinggi_badan DECIMAL(5,2) NULL DEFAULT NULL,
  status_gizi ENUM('Baik', 'Kurang', 'Buruk', 'Lebih') NULL DEFAULT 'Baik',
  PRIMARY KEY (id_kunjungan),
  CONSTRAINT fk_idbalita_kunjungan_idbalita_balita
    FOREIGN KEY (id_balita)
    REFERENCES balita (id_balita),
  CONSTRAINT fk_idkader_kunjungan_idkader_kader
    FOREIGN KEY (id_kader)
    REFERENCES kader (id_kader));


CREATE TABLE imunisasi_balita (
  id_imunisasi_balita INT NOT NULL AUTO_INCREMENT,
  id_balita INT NULL DEFAULT NULL,
  id_imunisasi INT NULL DEFAULT NULL,
  tanggal_pemberian DATE NULL DEFAULT NULL,
  PRIMARY KEY (id_imunisasi_balita),
  CONSTRAINT fk_idbalita_imunisasi_idbalita_balita
    FOREIGN KEY (id_balita)
    REFERENCES balita (id_balita),
  CONSTRAINT fk_idimunisasi_imunisasi_id_imunisasi_jenis_imunisasi
    FOREIGN KEY (id_imunisasi)
    REFERENCES jenis_imunisasi (id_imunisasi));

