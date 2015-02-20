-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2015 at 04:34 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackrank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `image`) VALUES
(1, 'admin', 'lalithr95@gmail.com', 'c01703628ccb5d965306ffefdf0d82b2', 'f53e2720959de23f352ffe800349fcea');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('16e47a565bdfbe40cb129bac1cb4dfa3', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1424264169, ''),
('678bc1d31715e7846e9366f809e05e55', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1424264171, '');

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE IF NOT EXISTS `contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`id`, `code`, `name`, `starttime`, `endtime`, `content`) VALUES
(1, 'CODE0', 'FEB Challenge', '2015-02-04 00:00:00', '2015-02-07 00:00:00', 'There are algorithmic questions provides in this challenge . No partial marks are alloted . Each problem will awarded with 100 points if all the test cases are satisfied .\n\nAll the Best :)'),
(2, 'CODE1', 'MARCH Challenge', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Algorithmic long challange'),
(3, 'CODE2', 'APRIL Challenge', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Algorithmic challenge'),
(4, 'CODE4', 'MAY Challenge', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 3'),
(5, 'CODE5', 'JUNE Challenge', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 4'),
(6, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 5'),
(7, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 6'),
(8, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 7'),
(9, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 8'),
(10, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 9'),
(11, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 10'),
(12, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 11'),
(13, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 12'),
(14, 'CODE', 'MAR', '2015-02-04 00:00:00', '2015-02-04 00:00:00', 'Testing 123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`) VALUES
(1, 'Lalithr95', 'lalithr95@gmail.com', 'c01703628ccb5d965306ffefdf0d82b2', 'f53e2720959de23f352ffe800349fcea'),
(2, 'test', 'test@gmail.com', 'c01703628ccb5d965306ffefdf0d82b2', '1aedb8d9dc4751e229a335e371db8058'),
(3, 'abhijeth0423', 'dabhijeth@yahoo.com', 'c01703628ccb5d965306ffefdf0d82b2', '053d95cfaefa863c41b218de36767fbd'),
(4, 'test1', 'test1@gmail.com', 'c01703628ccb5d965306ffefdf0d82b2', '245cf079454dc9a3374a7c076de247cc'),
(5, 'SAI GOPI KRISHNA PALISETTY', 'palisettysgkrishna@gmail.com', 'b71c26028cfa8acb663c7d09425ede65', 'cd69b1b60c731b15b77885f5b0900863'),
(6, 'udaykumar chowdada', 'udaylky84@gmail.com', '8de68b1164bbd19601563cffe4dcfab5', '08faf24810bea6eda75eaebd4292364f'),
(7, 'ROHIT.M1994', 'rohit.m1994@hotmail.com', 'c7b143c712a22d7c096b63cf48bb4a7f', '5398afc748eb81b8f8dfa3071ad6fdc5'),
(8, 'ishrathnayeem', 'ishrathnayeem@gmail.com', '5a47cf66b5f06a805242eca8419a38e3', 'a43d8df246060f807f747a7e848f8ff6'),
(9, 'sk', 'neverbackdownsai@gmail.com', '71ceaff1e6d301702a697be0f0518da7', '4335ed333cc10cc9c53105697c063cb7'),
(10, 'Deekshith Reddy', 'y.deekshithreddy@gmail.com', 'af6374bc6dc3118247bfdb0575b5b68e', 'f9cfdec88860f588316ddf4a18123081'),
(11, 'yagnesh.adapa', 'yagnesh.adapa369@gmail.com', '01f8dc7d625127c76fb4cc6deae02a12', '6204075828648db471165b06c65ede2a'),
(12, 'gowtham babu', 'gowthambabu8@gmail.com', '0e94785d3d6a1687eb0af1456ada19a8', 'c82b40b9662c4c63622f63aefb61fa40'),
(13, 'Kiran Lavu', 'kiranlavu9@gmail.com', '7b8794d534a4c90f7422c2702d4c49ac', '91503ffdbf48f36ea900c14d1e9d9589'),
(14, 'aaone', 'cbsirish01@gmail.com', '1b8b5a1221e0fdd7717757fde51b7c29', 'd84a05b1bb0f9415bfac767f4e26319c'),
(15, 'suhailhabibi', 'suhailhabibi.india@gmail.com', 'aafd21ffd3866c303f9f0818de377e62', 'b7584b11ceb78217e39d984ec8ae3953'),
(16, 'abhijeth', 'abhijeth@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '3c6912a6480fdab50f762d43ad1ebbeb'),
(17, 'deepthi', 'deepthianu22@gmail.com', 'e99a18c428cb38d5f260853678922e03', '36a502f0c7bfd939d5ea122effd5ee04'),
(18, 'keerthi madhuri', 'meetmounica@gmail.com', '0195c4ae23de221894f830b09a52c852', '576cb7577406362c7fee0d0eb36042b8'),
(19, 'sreekanth', 'sreekanthdevireddy57@gmail.com', '5b0d615c762d8f7e3231c0776c42480f', 'b65d56a5d7f9ac4e90f9f48e4ad7fe03'),
(20, 'Nishanth Chowdary', 'nishathchowdary@gmail.com', 'c403b4314f5d7069e4bbb8f82874109b', '5802967291e1acb201b35a246f4133ba'),
(21, 'sushma', 'sushmaambatipudi@gmail.com', '9de1add3ecc6850e4ddc57d10b32591d', '8e4f91492c00d81ad61039bd5465ead9'),
(22, 'Rupendra sagar', 'rupendrarebel@gmail.com', 'c2c4f989d8a9e8d577576f943b4df546', '1a0505b7c04d861a601156b283ad72f9'),
(23, 'sairam', 'ssai88884@gmail.com', '0a87cf34d24ec5ddafef54e065bef39d', '2f85377ed3dcdb9e272e92774f362e0d'),
(24, 'team85', 'chaitu94@gmail.com', '1d72acdd5a24819432a564eebbcf52cb', '0ebe520b3962517d3c995b71975a4d6b'),
(25, 'yamini', 'yamini.gurram@gmail.com', '15b93d4dc659b58eb39016ce176ddf9f', '116051baade5319a031fe0c35f7607b9'),
(26, 'vskpsrikar', 'vskpsrikar@gmail.com', '71b00fac79066bee99a1630f6810833a', '38bdfc38d92738456d3d9bc6c04b90bf'),
(27, 'rene', 'reneagnes4119@gmail.com', 'e99cd883fdef29ccde81b8b3382247fc', '81991919a0593d5662ac13ac99ac6af8'),
(28, 'Sai Ganesh', 'saiganesh4185@gmail.com', '891c229392fd94e06adfc14f8526e1e5', 'dcc62fc72b69df85f205d18389544609'),
(29, 'gppst', 'bhargavmandava10@gmail.com', '1d4bbcfed31c6e01e90d8e4099e39eb7', '67c0422d9b7c1b16cbaccb5144544adf'),
(30, 'narendra kumar', 'nanivu999@gmail.com', '8ce6d82ace2b8d443070483c76b519e9', 'c0c5d62734c2ad7c6c0676883786c659'),
(31, 'praveen', 'praveen.jnm112@gmail.com', '45becd6c5dd83e2179cd81df8640cd5a', '65ed24fbe3f8fc3f366f884a83be18db'),
(32, 'Teamvinayaka', 'chaitanyantr@gmail.com', '74b1d48ae0b99c671675b01b19c63bb9', '5efc8e31d92449f286dbf211995a2fb3'),
(33, 'ilu', 'vinayjohnrocks@gmail.com', '1d26b25811a9d05152cbe3791f86dd10', '1ba41cf703c59265e2508b851783911e'),
(34, 'maneesh', 'saileshkurra@gmail.com', '9d4aa2784656c44fbbf8f1ad5f677443', 'becbfd4e5c8fc7c859884bc0a1155b29'),
(35, 'ganesh tavva', 'tavvaganesh7@gmail.com', '1e76793b92f38571bd78940a557584c5', '76287bd6bb9d99b17b31297a1b0aa371'),
(36, 'first_sec_3', 'gade.rohitreddy@gmail.com', 'dbe9ba85b8d736517ed84ee736e3ed4a', '291e7caf921d4990d9d6140e90ae1a69'),
(37, 'young endeavours', 'praveenchandra95@gmail.com', '32a785089c38afb89ae91cd1848cb504', '57ffdfbf6e7669f46a51b31f52022de3'),
(38, 'akiil kiiran', 'chandraa002@gmail.com', 'f2eaefd3fac8e7752f5b468aa8c9dea3', 'b7eb914549803f51d03dc2c1b5cdf1c6'),
(39, 'rvschaitanya', 'ranvachaitanya@gmail.com', 'f5d168bcb0c969d4a642c33e6655d31a', '48beac4a9838d9a2ffd6036c1264a755'),
(40, 'black_rider', 'achyutuniharsha@gmail.com', '6a93bfb8e8dabb889a52b6a53257f06b', 'f97241ad0fa4375130f9416cbd9de4eb'),
(41, 'amar satya', 'amarchum125@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '6e51e4471939bed08a01dac1848fd2c3'),
(42, 'Snehit Garre', 'snehit.garre@gmail.com', '0e8c1f2b37c5666debc85647c2a3f7c9', '4a81baefcc1093dfefe8a3a5ade552f6'),
(43, 'pavan nath', 'uniquepavan4@yahoo.in', '1d72acdd5a24819432a564eebbcf52cb', '31b125fcc60216543ab908e9a243e1a6'),
(44, 'sreeram charan', 'sreeramcharan6394@gmail.com', '4b906267e2daebcef917515be5763b3d', '1b0cb0a63a04c4cbf6a9ed9290af4f60'),
(45, 'nkalayshavali', 'nkalayshavali9202@gmail.com', '4df709afacde78ffd0f446ad6bb5bc14', '36c62f3f1625f0afb396f652ca7ba513'),
(46, 'Alwayz Pradeep', 'ksatyapradeep@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2e66fe3356f14482c672c41ec1a1135f'),
(47, 'yashtej', 'yasasvinia@gmail.com', 'e0bb3077186ea9290e6713053b5a9de8', '29ec194609cc02d043cf59a87c7fd59e'),
(48, 'NANI', 'nanitriu181814@gmail.com', '944a3b30197a89038554438b719539a6', 'e5b3c79a5885a61994395f5a48c6296c'),
(49, 'team36', 'venkateshchandra.a@gmail.com', '8f50fb155f8426bba8045ab260692a14', 'd57eafb431a8380abc8ee07b1d80b03b'),
(50, 'fazal', 'shaikfazal7143@gmail.com', '9ad9b4560f13ed972cefebe090b9a274', '287c9cbdccbe87aac3af5a1992cfa41b'),
(51, 'uppalapatimanoj', 'uppalapatimanoj45@yahoo.com', 'bcb1121cb3bfe939705e812308069082', 'b6547e3da738b58d7070398b64a4299a'),
(52, 'SriHarsha', 'sri.harsha293@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'da51504e501ba911efa29be4a9c8c40c'),
(53, 'mouni', 'koushi528@gmail.com', '10fdfff5ac7003832d4f8ab03a3551ea', 'e70b0edcc0917e522274628f5b85cb01'),
(54, 'vlits1228', 'vlits1228@gmail.com', '91adbae5316c1d83608078e717c3719c', 'f487d889e3a131dca8f961496a3c4e59'),
(55, 'yatish', 'yatish.adapa369@gmail.com', '238c9a20e3a9de1e59f918d2fad64d69', '6d02bd91449066c5cfa1b0172d59b1c6'),
(56, 'siva', 'sivakrishna359@gmail.com', '801a6a26074afe5ef334221561b7ee5b', '0aac92532e4548c8ab30e8e22541de7f'),
(57, 'vishnu reddy', 'rcvishnuvardhan@gmail.com', '4f1e4d6bab118a4d7bf24f69c6573548', 'b39f1e70c35c09be95e0f2e194fd7d33'),
(58, 'srikanth', 'srikanthchowdary9510@gmail.com', '66f034a60596b1b546074967d70a023a', 'ab07f103d43103e958e9e0e42897581f'),
(59, 'Vinay_Shailesh', '00sendmail00@gmail.com', '671ef0c860cdf3cd6672deb8ae675705', 'a2b997852925319129d1f2ba7b1fbdf1'),
(60, 'praveen.jnm112', 'praveen.janjanam@gmail.com', '45becd6c5dd83e2179cd81df8640cd5a', '622f4d3f9dd6bcbb2b057e73628cf7a1'),
(61, 'vamshi sreedher', 'aakula.uppara@gmail.com', 'bd72d3ba9de45e69af606f568c4f5b19', '67db513c25432879ad7aea9bc2ed74da'),
(62, 'k.saikumar', 'k.saikumarchowdary@gmail.com', '3285da94bb0d3499730c49c622be0dec', '35a099dbf43c79f2523831ea5b4420d7'),
(63, 'nanak kumar', 'nanak.unstoppable@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '08c6694cb3a0e3db4a06d07f09eb51e9'),
(64, 'priyanka', 'priyankaravi03@gmail.com', 'd221d48e25732456800d1a317b923f6e', '9f727b5146e4bae49c94f86c8e65f6c5'),
(65, 'bhavyathopuri', 'bhavyabujji48@gmail.com', '13709d37bb464230bd336cb3fa766ebc', '7eb741979e9fbb49d456f51c7a7e9f63'),
(66, 'Bhanu Prakash', 'bunny.8500.net@gmail.com', 'aa677ceb80fe12bed770264fb5162085', 'bb22bc1005c56646897aa9b341081cf4'),
(67, 'sailesh', 'manbhattiprolu@gmail.com', 'a9575efd6da5a277322853c68081ab88', '389ddd8a68d80933ea1b57956da95283'),
(68, 'sujay', 'sujaykamals@gmail.com', '66e5454fda80a56992d1e16d8c4c477c', 'dd3d5d8e56b82c9f9c3e28222439af16'),
(69, 'isugudi', 'isugudi@gmail.com', '3ce3988bf646b0f1d5b0c01b2ca2d768', 'c8a5b36e1edb47ad5603a014613537ae'),
(70, 'swathi', 'swaths.mannem@gmail.com', '4da9ba6a227861e409b0a08735d5384d', '4ab1d10f79852ba261e695190da2ca6f'),
(71, 'deepika', 'deepikachowdary401@gmail.com', '3dcec89bbac898667700f0d73db88a90', '04d43bdd124ec0ef25f813630ae42679'),
(72, 'prathyusha', 'sure9223@gmail.com', 'd2e1ae40c35851ac87a47820fb43483d', '367b979c7efd97686b2484e21f29b0cd'),
(73, 'ramakrishnavenkat', 'ramakrishnavenkat16@gmail.com', 'e35cf7b66449df565f93c607d5a81d09', 'da68d6df6bfeab495fd984d724c1c45f'),
(74, 'phanendra', 'phanindranath51@gmail.com', '553c09bad8802c637019d1c1b597aa0f', 'a1652dbbf806641f95901a565185327b'),
(75, 'manojuppalapati', 'uppalapatimanoj54@yahoo.com', 'fea74ee235311cb8de9594314b2f03b5', '55c1f6213dda78fa96fd443e866b06b0'),
(76, 'pradeep shakmuri', 'pradeepshakamuri2@gmail.com', 'febc8f8ac083f5fc27e032c81e7b536a', 'aaadc0840c12495a82d72545e90123a3'),
(77, 'manikanta', 'manikantamukkapati567@gmail.com', '1232f87b040356b99e3e062d22047d9c', '264f2fd423492a0326100bfcbb4a4129'),
(78, 'krishna', 'krishna.chilukuri009@gmail.com', '243bd1ce0387f18005abfc43b001646a', '21fed8fb7932ddbcfeaf6b62efba5464'),
(79, 'sai', 'krishna.chilukuri7207283472@gmail.com', '243bd1ce0387f18005abfc43b001646a', '7e1ae2e0846bd34e0e775f4183aa7eeb'),
(80, 'mounica', 'kamalsai94@gmail.com', '0195c4ae23de221894f830b09a52c852', '37540ca702f077a84a8e4fa1ed50d143'),
(81, 'p.eswarraja', 'p.eswarraja66@gmail.com', '83c2d3e5ebe28a781c0a3e0e80819d3b', '03ae2de611775248d5f9a81debe40e18'),
(82, 'narendra', 'narendra.035@gmail.com', 'd1aa4e4587854dd80b76b07cf76c4a0d', '8d76fc18c37d5b55ca63b62fa94e328b'),
(83, 'saivinod', 'saivinod440@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '14f3b4780082746f5d4e3c1401b1f869');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
