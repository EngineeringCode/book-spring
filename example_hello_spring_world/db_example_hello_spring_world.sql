-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.3.28-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- example 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `example` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `example`;

-- 테이블 example.my_data 구조 내보내기
CREATE TABLE IF NOT EXISTS `my_data` (
  `my_data_srl` int(11) NOT NULL AUTO_INCREMENT,
  `my_data_value` varchar(20) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`my_data_srl`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- 테이블 데이터 example.my_data:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `my_data` DISABLE KEYS */;
INSERT INTO `my_data` (`my_data_srl`, `my_data_value`, `registration_date`) VALUES
	(1, '10', '2022-11-26 00:03:35'),
	(2, '10', '2022-11-26 00:04:50'),
	(3, '10', '2022-11-26 00:04:51'),
	(4, '10', '2022-11-26 00:04:52'),
	(5, '10', '2022-11-26 00:04:52'),
	(6, '1', '2022-11-26 00:26:22'),
	(7, '1', '2022-11-26 00:26:24'),
	(8, '1', '2022-11-26 00:26:26');
/*!40000 ALTER TABLE `my_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
