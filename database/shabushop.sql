-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2023 at 12:23 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shabushop`
--

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE `dessert` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(50) NOT NULL,
  `url_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dessert`
--

INSERT INTO `dessert` (`id`, `name`, `price`, `url_img`) VALUES
(1, 'แตงโม', 20, 'https://static.wixstatic.com/media/5ba78c_768feac2c0f34c2a93afbd12cf98f977~mv2.jpg/v1/fill/w_640,h_360,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/5ba78c_768feac2c0f34c2a93afbd12cf98f977~mv2.jpg'),
(2, 'บัวลอย', 25, 'https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/01/dumplings-in-coconut-cream.jpg'),
(3, 'ไอสครีม', 49, 'https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/08/coconut-ice-cream-lead.jpg'),
(5, 'ไอศกรีม รสช็อคโกแลต', 30, 'https://halal.co.th/storages/products/643338.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE `drink` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`id`, `name`, `price`, `img_url`) VALUES
(1, 'น้ำโค้ก', 30, 'https://m.media-amazon.com/images/I/61k2nSwUMGL.jpg'),
(2, 'สไปรท์', 30, 'https://www.dohome.co.th/media/catalog/product/1/0/10155668_bt_p1.jpg'),
(3, 'น้ำเปล่า', 15, 'https://ustatic.priceza.com/img/productgroup/83318-1-l.jpg'),
(4, 'น้ําเก๊กฮวย', 25, 'https://www.bloggang.com/data/z/zentana/picture/1688958872.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `price`, `img_url`) VALUES
(1, 'เนื้อหมู', 229, 'https://img.wongnai.com/p/400x0/2021/08/09/95b3077232994600942469fc0f69e330.jpg'),
(2, 'เนื้อลาย', 229, 'https://static.wixstatic.com/media/886406_1067202bab4340d0afb03e798bafa41e~mv2.jpg/v1/fill/w_640,h_426,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/886406_1067202bab4340d0afb03e798bafa41e~mv2.jpg'),
(3, 'เบคอน', 119, 'https://rawryou.com/wp-content/uploads/2016/05/Pork-Belly-Sliced.jpg'),
(4, 'ปลาหมึกกรอบ', 59, 'https://www.mkrestaurant.com/public/uploads/mk_menu/images/8b5a361c656218992867e8696ab2f593.jpg'),
(5, 'เกี๊ยวหมูทอด', 40, 'https://static.wixstatic.com/media/c7baa0_b51b7f3c449d4e1db3331cafb671029b~mv2_d_1867_2800_s_2.jpg/v1/fill/w_640,h_960,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/c7baa0_b51b7f3c449d4e1db3331cafb671029b~mv2_d_1867_2800_s_2.jpg'),
(6, 'เต้าหู้ทรงปลา', 60, 'https://www.luckyunionfoods.com/assets/media/product/20200512-093704-5eba0bd00d146.jpg'),
(7, 'ไข่ไก่', 20, 'https://resource.nationtv.tv/uploads/images/md/2023/01/F5EcFEFBYSQNh1iNa2QK.webp?x-image-process=style/lg'),
(8, 'กวางตุ้ง', 20, 'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/99/02/0251599/0251599.jpg'),
(9, 'ผักกาดขาว', 20, 'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/65/02/0213365/0213365.jpg'),
(10, 'กะหล่ำปลี', 10, 'https://res.cloudinary.com/freshketimage001/image/upload/v1584505997/sq0hqo0l5wg4jhek3xil.png'),
(11, 'ข้าวโพดหวาน', 15, 'https://img.wongnai.com/p/800x0/2021/08/18/375adab3a7dd4015a61cc24415b9bd5a.jpg'),
(12, 'สาหร่ายวากาเมะ', 15, 'https://chillchilljapan.com/wp-content/uploads/2020/10/pixta_54659457_M.jpg'),
(13, 'เต้าหู้ไข่', 15, 'https://s359.kapook.com/pagebuilder/508514f9-1566-4ef3-b7d2-d9a5eab3e3fe.jpg'),
(14, 'บะหมี่หยก', 45, 'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/20/88/8853281000120/8853281000120_2-20221115171611-.jpg'),
(15, 'เห็ดเข็มทอง', 25, 'https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/02/%E0%B9%80%E0%B8%AB%E0%B9%87%E0%B8%94%E0%B9%80%E0%B8%82%E0%B9%87%E0%B8%A1%E0%B8%97%E0%B8%AD%E0%B8%872.jpg'),
(16, 'เห็ดออรินจิ', 45, 'https://s.isanook.com/he/0/ud/0/4517/istock_63533003_medium.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `drink_id` int(11) DEFAULT NULL,
  `dessert_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `table_id`, `food_id`, `amount`, `total`, `drink_id`, `dessert_id`) VALUES
(1, 1, 2, 5, 600, NULL, NULL),
(4, 2, 2, 5, 700, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `table_id`, `total`, `date`) VALUES
(1, 1, 2, 0, '2023-03-12 00:00:00'),
(2, 2, 7, 0, '2023-12-01 00:00:00'),
(3, 4, 6, 300, '2023-12-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `name`) VALUES
(1, 'A001'),
(2, 'A002'),
(3, 'A003'),
(4, 'A004'),
(5, 'B001'),
(6, 'B002'),
(7, 'B003'),
(8, 'B004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dessert`
--
ALTER TABLE `dessert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `drink`
--
ALTER TABLE `drink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
