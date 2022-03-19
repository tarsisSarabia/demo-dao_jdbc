/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE IF NOT EXISTS `department` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

DELETE FROM `department`;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`Id`, `Name`) VALUES
	(1, 'Computers'),
	(2, 'Electronics'),
	(3, 'Fashion'),
	(4, 'Finaceiro'),
	(6, 'Comercial'),
	(8, 'Compras');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `seller` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `BirthDate` datetime NOT NULL,
  `BaseSalary` double NOT NULL,
  `DepartmentId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `DepartmentId` (`DepartmentId`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`DepartmentId`) REFERENCES `department` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

DELETE FROM `seller`;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` (`Id`, `Name`, `Email`, `BirthDate`, `BaseSalary`, `DepartmentId`) VALUES
	(1, 'Robin Hood', 'bob@gmail.com', '1998-04-21 00:00:00', 1000, 1),
	(2, 'Maria Green', 'maria@gmail.com', '1979-12-31 00:00:00', 3500, 2),
	(3, 'Alex Grey', 'alex@gmail.com', '1988-01-15 00:00:00', 2200, 1),
	(4, 'Martha Red', 'martha@gmail.com', '1993-11-30 00:00:00', 3000, 4),
	(5, 'Donald Blue', 'donald@gmail.com', '2000-01-09 00:00:00', 4000, 3),
	(6, 'Alex Pink', 'bob@gmail.com', '1997-03-04 00:00:00', 3000, 2),
	(7, 'Greg', 'greg@gmail.com', '2022-03-19 00:00:00', 4000, 2),
	(8, 'Isaac', 'Isaac@gmail.com', '2022-03-19 00:00:00', 4000, 2),
	(10, 'Isaac', 'Isaac@gmail.com', '2022-03-19 00:00:00', 4000, 2),
	(11, 'Isaac', 'Isaac@gmail.com', '2022-03-19 00:00:00', 4000, 2);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
