CREATE DATABASE db_krs;
USE db_krs;

CREATE TABLE mahasiswa (
  idmahasiswa INT NOT NULL AUTO_INCREMENT,
  nama VARCHAR(45) NOT NULL,
  nim VARCHAR(45) NOT NULL,
  PRIMARY KEY (idmahasiswa, nim));


CREATE TABLE dosen (
  iddosen INT NOT NULL AUTO_INCREMENT,
  nama VARCHAR(45) NULL,
  nip VARCHAR(45) NULL,
  PRIMARY KEY (iddosen));

CREATE TABLE matakuliah (
  idmatakuliah INT NOT NULL AUTO_INCREMENT,
  nama_matakuliah VARCHAR(45) NOT NULL,
  sks INT NOT NULL,
  PRIMARY KEY (idmatakuliah));


CREATE TABLE ruangan (
  idruangan INT NOT NULL AUTO_INCREMENT,
  nama_ruangan VARCHAR (45) NOT NULL,
  PRIMARY KEY (idruangan));


CREATE TABLE hari (
  idhari INT NOT NULL AUTO_INCREMENT,
  hari VARCHAR(45) NULL,
  PRIMARY KEY (idhari));

CREATE TABLE waktu (
  idwaktu INT NOT NULL,
  waktu_mulai TIME ,
  waktu_akhir TIME,
  PRIMARY KEY (idwaktu));

CREATE TABLE jadwal (
  idjadwal INT NOT NULL AUTO_INCREMENT,
  idruangan INT NOT NULL,
  idhari INT NOT NULL,
  idwaktu INT NOT NULL,
  PRIMARY KEY (idjadwal, idruangan, idhari, idwaktu),
  CONSTRAINT fk_idruangan_jadwal_idruangan_ruangan
    FOREIGN KEY (idruangan)
    REFERENCES ruangan (idruangan),
    
  CONSTRAINT fk_idhari_jadwal_idhari_hari
    FOREIGN KEY (idhari)
    REFERENCES hari (idhari),
    
  CONSTRAINT fk_idwaktu_jadwal_idwaktu_waktu
    FOREIGN KEY (idwaktu)
    REFERENCES waktu (idwaktu)
    );


CREATE TABLE kelas (
  id_kelas INT NOT NULL AUTO_INCREMENT,
  idmatakuliah INT NOT NULL,
  nama_kelas VARCHAR(45) NULL,
  iddosen INT NOT NULL,
  idjadwal INT NOT NULL,
  PRIMARY KEY (id_kelas, idmatakuliah, iddosen, idjadwal),
  CONSTRAINT fk_idmatakuliah_kelas_idmatakuliah_matakuliah
    FOREIGN KEY (idmatakuliah)
    REFERENCES matakuliah (idmatakuliah),
  CONSTRAINT fk_iddosen_kelas_iddosen_dosen
    FOREIGN KEY (iddosen)
    REFERENCES dosen (iddosen),
  CONSTRAINT fk_idjadwal_kelas_idjadwal_jadwal
    FOREIGN KEY (idjadwal)
    REFERENCES jadwal (idjadwal)
    );

CREATE TABLE kartu_rencana_studi (
   idkrs INT NOT NULL AUTO_INCREMENT,
  idmahasiswa INT NOT NULL,
  id_kelas INT NOT NULL,
  PRIMARY KEY (idkrs, idmahasiswa, id_kelas),
  CONSTRAINT fk_idmahasiswa_krs_idmahasiswa_mahasiswa
    FOREIGN KEY (idmahasiswa)
    REFERENCES mahasiswa (idmahasiswa),
  CONSTRAINT fk_idkelas_krs_idkelas_kelas
    FOREIGN KEY (id_kelas)
    REFERENCES kelas (id_kelas)
   );
    
    
    ALTER TABLE kartu_rencana_studi RENAME TO krs;
    DROP DATABASE labbis

