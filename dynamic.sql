-- Generation Time: Mar 3, 2023 at 03:44 PM
 

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dynamic`
--

-- --------------------------------------------------------

--
-- Table structure for table `addserver`
--
create database dynamic;

use dynamic;

CREATE TABLE IF NOT EXISTS `addserver` (
  `username` varchar(50) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `aggrement` varchar(20) NOT NULL,
  `allocated` varchar(20) NOT NULL,
  `server` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `addserver` (`username`, `sitename`, `aggrement`, `allocated`, `server`) VALUES
('rohith', 'www.liotech.in', '1year', '30KB', 'serverA'),
('deepak', 'www.ibm.com', '6months', '20KB', 'serverC');


CREATE TABLE IF NOT EXISTS `domainreg` (
  `username` varchar(50) NOT NULL,
  `domainname` varchar(50) NOT NULL,
  `plan` varchar(20) NOT NULL,
  `memory` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `domainreg` (`username`, `domainname`, `plan`, `memory`, `address`, `city`, `country`, `phoneno`) VALUES
('rohith', 'www.liotech.in', '1year', '30KB', 'guntur', 'guntur@gmail.com', 'india', '9177112268'),
('deepak', 'www.ibm.com', '6months', '20KB', 'guntur', 'guntur', 'india', '9992234561');



CREATE TABLE IF NOT EXISTS `payment` (
  `webhostingplan` varchar(50) NOT NULL,
  `domainname` varchar(50) NOT NULL,
  `paymenttype` varchar(50) NOT NULL,
  `cardno` varchar(50) NOT NULL,
  `cardexpiration` varchar(50) NOT NULL,
  `cvv` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `payment` (`webhostingplan`, `domainname`, `paymenttype`, `cardno`, `cardexpiration`, `cvv`) VALUES
('mot', 'liotech.in', 'sch', '123456', '07/23', '123'),
('pet', 'www.ibm.com', 'pet', '12567823', '22/22', '123');



CREATE TABLE IF NOT EXISTS `servicreg` (
  `email` varchar(50) NOT NULL,
  `providername` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpwd` varchar(50) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `servicreg` (`email`, `providername`, `password`, `cpwd`, `phoneno`, `question`, `answer`) VALUES
('rajesh@gmail.com', 'rajesh', 'rajesh', 'rajesh', '9177112268', 'sch', 'zph'),
('liotech@gmail.com', 'liotech', 'liotech', 'liotech', '8812357129', 'sch', 'zph');



CREATE TABLE IF NOT EXISTS `sitereg` (
  `sitename` varchar(50) NOT NULL,
  `file` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `sitereg` (`sitename`, `file`) VALUES
('www.liotech.in', 'LIOTech.html'),
('www.ibm.com', 'ibm.html');


CREATE TABLE IF NOT EXISTS `userreg` (
  `id` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpwd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `userreg` (`id`, `username`, `password`, `cpwd`, `email`, `phoneno`) VALUES
('74', 'rohith', 'rohith', 'rohith', 'rohith@gmail.com', '9177112268'),
('18', 'deepak', 'deepak', 'deepak', 'deepak@gmail.com', '9992234561');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
