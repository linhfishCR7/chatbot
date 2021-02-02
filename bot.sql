-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for bot
CREATE DATABASE IF NOT EXISTS `bot` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bot`;

-- Dumping structure for table bot.chatbot
CREATE TABLE IF NOT EXISTS `chatbot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queries` varchar(300) DEFAULT NULL,
  `replies` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bot.chatbot: ~2 rows (approximately)
/*!40000 ALTER TABLE `chatbot` DISABLE KEYS */;
REPLACE INTO `chatbot` (`id`, `queries`, `replies`) VALUES
	(1, 'hi|hello|hey|hy', 'Hello there!'),
	(2, 'What', 'What do you want?'),
	(3, 'What is your role?|What is role', 'I am a Ecomerce Chatbot, help everyone find everything easier'),
	(4, 'What your name|What is your name?', 'My name is Chatbot'),
	(5, 'Bạn được tạo ra để làm gì?', 'Tôi được tạo ra để giúp các bạn');
/*!40000 ALTER TABLE `chatbot` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
