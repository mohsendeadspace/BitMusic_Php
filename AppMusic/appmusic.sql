-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 02, 2018 at 07:36 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `appmusic`
--
CREATE DATABASE IF NOT EXISTS `appmusic` DEFAULT CHARACTER SET utf8 COLLATE utf8_persian_ci;
USE `appmusic`;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` text COLLATE utf8_persian_ci NOT NULL,
  `Music` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE IF NOT EXISTS `music` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8_persian_ci NOT NULL,
  `Artist` text COLLATE utf8_persian_ci NOT NULL,
  `Model` int(11) NOT NULL,
  `Link` text COLLATE utf8_persian_ci NOT NULL,
  `NamesAlbum` text COLLATE utf8_persian_ci NOT NULL,
  `Date` text COLLATE utf8_persian_ci NOT NULL,
  `Img` text COLLATE utf8_persian_ci NOT NULL,
  `View` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`ID`, `Name`, `Artist`, `Model`, `Link`, `NamesAlbum`, `Date`, `Img`, `View`) VALUES
(1, 'از عشق بگو ', 'رضا بهرام ', 0, 'http://dl.rozmusic.com/Music/1397/04/29/Reza%20Bahram%20-%20Az%20Eshgh%20Begoo%20(128).mp3,http://dl.nex1.ir/3/Reza-Bahram_Az-Eshgh-Bego.mp3', '', '1397/05/07', 'http://nex1.ir/public/upload/storge/upload/files/img/1/685.jpg', 38),
(11, 'من خوده آن سیزدهم', 'محسن چاوشی', 2, 'http://dl.nex1music.ir/artists/Mohsen%20Chavoshi/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham%20%5BAlbum%5D/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham%20%5B128%5D.zip,http://dl.nex1music.ir/artists/Mohsen%20Chavoshi/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham%20%5BAlbum%5D/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham.zip,http://dl.nex1music.ir/artists/Mohsen%20Chavoshi/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham%20%5BAlbum%5D/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham/Mohsen%20Chavoshi%20-%20Ghalat%20Kardam.mp3,http://dl.nex1music.ir/artists/Mohsen%20Chavoshi/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham%20%5BAlbum%5D/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham/Mohsen%20Chavoshi%20-%20Ko%20Be%20Ko.mp3,http://dl.nex1music.ir/artists/Mohsen%20Chavoshi/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham%20%5BAlbum%5D/Mohsen%20Chavoshi%20-%20Man%20Khode%20Aan%20Sizdaham/Mohsen%20Chavoshi%20-%20Setamgar.mp3', 'فول آلبوم 128,فول آلبوم 320,غلط کردم,کو به کو,ستمگر', '1397/05/07', 'https://static3.eghtesadnews.com/thumbnail/Hgdly8esmu7Z/kzxwgq-JKBXtdnsW2DbwP_oAq30e7qnHGx738laDN7XPhoXl0VEyjZhvY-9GvqcxywpgzrCJSonkiG3pI_QvVJMtK7Jf75PBXXtok_qeumtLKzLAwCt1eg,,/NgKfQlNBD0JJ.jpg', 29),
(21, 'خوشبختی ', 'سامان جلیلی', 1, 'http://dl.nex1music.ir/1397/05/07/Saman%20Jalili%20-%20Khoshbakhti%20%5BNex1Music.IR%5D%20%5B480%5D.mp4', '', '1397/05/07', 'http://nex1music.ir/upload/153287075161468841saman-jalili-called-khoshbakhti.jpg', 7),
(27, 'چنگیز ', 'محسن چاووشی', 0, 'http://www.sv2.bibakmusic.com/Music/96/bahman/1/Mohsen%20Chavoshi%20Changiz%20128.mp3', '', '1397/05/07', 'http://www.bibakmusic.com/wp-content/uploads/2018/02/Mohsen-Chavoshi-Amir-e-Bi-Gazand.jpg', 0),
(28, 'یوسف', 'محسن چاووشی', 0, 'http://dl.nex1music.ir/1393/07/16/Mohsen%20Chavoshi%20-%20Paroye%20Bi%20Ghayegh/Mohsen%20Chavoshi%20-%20Paroye%20Bi%20Ghayegh%20%5B128%5D/Mohsen%20Chavoshi%20-%20Yousef.mp3', '', '1397/05/07', 'https://nex1music.ir/upload/141278723259925689mohsen-chavoshi-paroye-bi-ghayegh.jpg', 0),
(29, 'قهوه قجری', 'محسن چاووشی', 0, 'http://dl.nex1music.ir/1393/07/16/Mohsen%20Chavoshi%20-%20Paroye%20Bi%20Ghayegh/Mohsen%20Chavoshi%20-%20Paroye%20Bi%20Ghayegh%20%5B128%5D/Mohsen%20Chavoshi%20-%20Ghahveye%20Ghajari.mp3', '', '1397/05/07', 'https://nex1music.ir/upload/141278723259925689mohsen-chavoshi-paroye-bi-ghayegh.jpg', 0),
(30, 'همه اون روزا ', 'رضا صادقی', 0, 'http://dl.rozmusic.com/Music/1396/03/17/Reza%20Sadeghi%20-%20Hame%20On%20Roza%20(128).mp3', '', '1397/05/07', 'http://server4.iranmusic.ir/music/Farshid/Album/Reza%20Sadeghi/Reza%20Sadeghi%20-%20Yani%20Dard/Covers/Reza-Sadeghi4.jpg', 1),
(31, 'جوابم نکن ', 'محسن چاووشی', 0, 'http://dl.myfaza2music.ir/faza/Mohsen%20Chavoshi%20-%20Javabam%20Nakon_1.mp3', '', '1397/05/07', 'http://www.myfaza2music.ir/wp-content/uploads/2017/10/Parchame-Sefid.jpg', 0),
(32, 'لالایی', 'علی زند وکیلی', 0, 'http://dl.nex1.ir/2/Ali-Zand-Vakili-Lalaei-128.mp3', '', '1397/05/07', 'http://nex1.ir/public/upload/storge/upload/files/img/1/448.jpg', 2),
(33, 'لالایی', 'علی زند وکیلی', 1, 'http://dl.nex1.ir/2/Ali-Zand-Vakili_Lalaei.mp4', '', '1397/05/07', 'http://nex1.ir/public/upload/storge/upload/files/img/1/448.jpg', 0),
(34, 'بخشش', 'امیر عباس گلاب و حمید صفت', 1, 'blob:https://www.aparat.com/9bf25cc9-cd1e-41b2-9484-9c953c1491e2', '', '1397/05/07', 'https://upmusics.com/wp-content/uploads/2017/12/xcv.jpg', 1),
(35, 'عشق تو ', 'امیر عباس گلاب', 0, 'http://dl.nex1music.ir/1394/10/24/Amir%20Abbas%20Golab%20-%20Eshghe%20To%20%5B128%5D.mp3', '', '1397/05/07', 'https://nex1music.ir/upload/145278551624174353876e3d6bde3671e.jpg', 37),
(36, 'تمومش کن ', 'محمد رضا عشریه', 0, 'http://dl.tabamusic.com/Music/1397/06/Mohammad%20Reza%20Oshrieh%20-%20Tamoomesh%20Konam%20(128).mp3', '', '1397/05/07', 'http://tabamusic.com/wp-content/uploads/2018/08/Mohammad-Reza-Oshrieh-Tamoomesh-Konam.jpg', 0),
(37, 'عیده بی تو ', 'علی عبدالمالکی', 0, 'http://dl.pop-music.ir/music/Esfand92/Ali%20Abdolmaleki%20-%20Eyde%20Bi%20To%20(128).mp3', '', '1397/05/07', 'http://dl.pop-music.ir/images/Esfand92/Ali%20Abdolmaleki%20-%20Eyde%20Bi%20To.jpg', 2),
(38, 'گمونم ', 'رضا صادقی', 1, 'http://dl.pop-music.ir/music/1397/Farvardin/Reza%20Sadeghi%20-%20Gamoonam%20480p.mp4', '', '1397/05/07', 'http://dl.pop-music.ir/images/1397/Farvardin/Reza-Sadeghi-Gamoonam.jpg', 6),
(39, 'پاروی بی قایق', 'محسن چاوشی', 2, 'http://server2.javanmobile.com/newmusic/1394/7/9/Mohsen%20Chavoshi%20-%20Paroye%20Bi%20Ghayegh%20%5B128%5D.rar,\r\nhttp://server2.javanmobile.com/newmusic/1394/7/9/Mohsen%20Chavoshi%20-%20Paroye%20Bi%20Ghayegh.rar,http://server2.javanmobile.com/newmusic/1394/7/9/Mohsen%20Chavoshi%20-%20Paroye%20Bi%20Ghayegh/Mohsen%20Chavoshi%20-%20Tofange%20SarPor.mp3', 'فول آلبوم 128,فول آلبوم 320,تفنگ سر پر', '1397/05/07', 'http://www.javanmobile.com/wp-content/uploads/2015/10/Mohsen-Chavoshi-Paroye-Bi-Ghayegh.jpg', 1),
(40, 'دیوار ', 'محسن یگانه ', 0, 'http://dl.naslemusic.com/music/1397/06/Mohsen%20Yeganeh%20-%20Divar%20(New%20Version)%20(128).mp3', '', '1397/05/07', 'https://naslemusic.com/image/2018/08/%D9%85%D8%AD%D8%B3%D9%86-%DB%8C%DA%AF%D8%A7%D9%86%D9%87-%D8%AF%DB%8C%D9%88%D8%A7%D8%B1.jpg', 1),
(41, 'کاش خدا بهم یه دختر بده', 'جاستینا', 0, 'http://www.dl.nabmusic.ir/Music/1393/Azar/Justina%20-%20Kash%20Donya%20Behem%20Dokhtar%20Bede%20(128).mp3', '', '1397/05/07', 'http://www.dl.nabmusic.ir/Images/1393/Azar/Justina-Kash-Donya-Behem-Dokhtar-Bede.jpg', 37),
(42, 'بغض', 'یاس', 0, 'http://sv.jenabmusic.com/94/esfand/10/Yas%20Ft.%20Aamin%20-%20Boghz%20Yani%20%5B128%5D.mp3', '', '1397/05/07', 'http://www.jenabmusic.com/wp-content/uploads/2016/03/Yas-Ft-Aamin-Boghz-Yani-300x300.jpg', 37),
(43, 'اخر منو به باد داد ', 'هوروش بند ', 1, 'blob:https://www.aparat.com/e0327f18-4469-4610-b8bb-296d910be5b4', '', '1397/05/07', 'https://nex1music.ir/upload/149365764437736186hoorosh-band-akhar-mano-be-baad-dad.jpg', 6),
(44, 'یه اشتباه', 'هوروش بند ', 0, 'http://dl.nex1music.ir/1397/03/03/Hoorosh%20Band%20-%20Ye%20Eshtebah%20%5B128%5D.mp3', '', '1397/05/07', 'https://nex1music.ir/upload/152717150595876350hoorosh-band-ye-eshtebah.jpg', 37),
(45, 'بد شدم', 'یاس', 0, 'http://sv.jenabmusic.com/93/esfand/7/Yas%20-%20Bad%20Shodam%20(128).mp3', '', '1397/05/07', 'http://www.jenabmusic.com/wp-content/uploads/2015/03/Yas-Bad-Shodam-300x300.jpg', 37);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` text COLLATE utf8_persian_ci NOT NULL,
  `Password` text COLLATE utf8_persian_ci NOT NULL,
  `Vip` int(11) NOT NULL DEFAULT '0',
  `Forgot` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Username`, `Password`, `Vip`, `Forgot`) VALUES
(1, 'admin', '123', 1, 'mohsen'),
(2, 'mahdi', '1234', 0, ''),
(9, 'ali', '123456', 0, 'vvv'),
(11, 'mohsen', '123', 0, 'mohsen');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
