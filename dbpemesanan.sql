/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.24-MariaDB : Database - dbpemesanan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbpemesanan` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dbpemesanan`;

/*Table structure for table `pemesanan` */

DROP TABLE IF EXISTS `pemesanan`;

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT,
  `tanggal_pemesanan` date NOT NULL,
  `total` int(50) NOT NULL,
  PRIMARY KEY (`id_pemesanan`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pemesanan` */

insert  into `pemesanan`(`id_pemesanan`,`tanggal_pemesanan`,`total`) values (45,'2023-06-27',330000),(47,'2023-06-27',330000),(54,'2023-06-28',135000),(55,'2023-06-28',15000),(56,'2023-06-28',15000),(57,'2023-06-28',135000),(58,'2023-06-28',270000);

/*Table structure for table `pemesanan_tiket` */

DROP TABLE IF EXISTS `pemesanan_tiket`;

CREATE TABLE `pemesanan_tiket` (
  `id_pemesanan_tiket` int(50) NOT NULL AUTO_INCREMENT,
  `id_pemesanan` int(50) NOT NULL,
  `id_rute` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL,
  PRIMARY KEY (`id_pemesanan_tiket`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pemesanan_tiket` */

insert  into `pemesanan_tiket`(`id_pemesanan_tiket`,`id_pemesanan`,`id_rute`,`jumlah`) values (34,48,'27',1),(37,51,'23',1),(39,52,'23',1),(40,53,'33',1),(41,54,'33',1),(43,56,'30',1),(44,57,'33',1),(45,58,'33',2);

/*Table structure for table `tiket_onlybus` */

DROP TABLE IF EXISTS `tiket_onlybus`;

CREATE TABLE `tiket_onlybus` (
  `id_rute` int(50) NOT NULL AUTO_INCREMENT,
  `nama_bus` varchar(50) NOT NULL,
  `jenis_rute` varchar(50) NOT NULL,
  `stok_tiket` int(50) NOT NULL,
  `harga_tiket` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_rute`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tiket_onlybus` */

insert  into `tiket_onlybus`(`id_rute`,`nama_bus`,`jenis_rute`,`stok_tiket`,`harga_tiket`,`gambar`) values (22,'EKA Jurusan Purwokerto-Semarang','AKAP',50,165000,'tiket-bus-eka.jpg'),(23,'EKA Jurusan Purwokerto-Semarang','AKAP',50,150000,'tiket-bus-eka.jpg'),(30,'SANTOSO Jurusan Solo-Madiun Non Ekonomi','AKDP',23,15000,'Agen-Bus-Santoso-Terdekat-Sumber-@abiwslebawslebew-on-Instagram-1024x789.jpg'),(31,'SANTOSO Jurusan Solo-Krapyak Non Ekonomi','AKDP',35,45000,'Agen-Bus-Santoso-Terdekat-Sumber-@abiwslebawslebew-on-Instagram-1024x789.jpg'),(32,'Sugeng Rahayu Jurusan Solo-Purwokerto Non Ekonomi','AKAP',50,125000,'BUS-SUGENG-RAHAYU-CEPAT-700x492.jpg'),(33,'Aragon Semarang-Purwokerto','AKDP',14,135000,'IN_20230126104927_banner-aragon-04.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id_user`,`username`,`password`,`nama_lengkap`,`jenis_kelamin`,`tanggal_lahir`,`alamat`,`hp`,`status`) values (7,'Exo_wday','12345678','joko esteh','Laki-Laki','2000-02-08','Pluto','087365342312','admin'),(8,'heyyou','123456','esterwq','Perempuan','2002-02-07','Purwokerto','0873652342312','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
