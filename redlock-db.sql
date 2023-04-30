CREATE DATABASE Redlock;
USE Redlock;


CREATE TABLE `users` (
  `ID(PK)` varchar(10) NOT NULL PRIMARY KEY,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Jabatan` varchar(100) NOT NULL
) ;



INSERT INTO `users` (`ID(PK)`, `Nama`, `Alamat`, `Jabatan`) VALUES
('001', 'Hanni', 'Jalan kentang 1', 'manager 1'),
('002', 'Pham', 'Jalan kentang 2', 'manager 2'),
('003', 'Iphone', 'Jalan kentang 3', 'manager 3'),
('004', 'Meong', 'Jalan kentang 4', 'manager 4');



