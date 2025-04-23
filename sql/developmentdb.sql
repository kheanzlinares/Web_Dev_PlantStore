-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 11, 2022 at 06:31 PM
-- Server version: 10.6.5-MariaDB-1:10.6.5+maria~focal
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `developmentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Pots', 'https://wildernisamsterdam.nl/wp-content/uploads/2018/07/Wildernis-Template-Square-1200x1200px.jpg'),
(3, 'Plants', 'https://wildernisamsterdam.nl/wp-content/uploads/2017/11/Wildernis-pots-Nelis-2-e1510708055825.jpg'),
(5, 'Accessories', 'https://c-pf.niceshops.com/upload/image/overview/small/default/30381_6a48caec.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(8000) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `description`, `image`, `category_id`) VALUES
(1, 'Watering can stainless steel 1 liter', '19.75', 'With this fine classic watering can you can give all your plants exactly the water they need. The narrow long pouring spout ensures that you can give dosed water and not accidentally too much.\nWhen watering, always make sure that your plant does not have \'wet feet\'. So if there is still water in the pot or saucer the next day, you should throw it away.', 'https://wildernisamsterdam.nl/wp-content/uploads/2018/05/Gieter-Zilver.jpg', 5),
(3, 'Terrarium 2 Piece Tool Set', '6.75', 'With this 2-piece tool set you can immediately start filling your terrarium. The hoe and rake can be extended so that you can easily reach everything.\r\nAlso take a look at the other terrarium accessories!\r\n\r\nDimensions: L10.4cm x W10.4cm x H19cm\r\nMaterial: stainless steel.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/12/GT163_01.jpeg', 5),
(4, 'Terrarium scissors', '9.95', 'These long terrarium scissors with curved blades are ideal for cutting off runners and leaves in your terrarium.\r\nAlso take a look at the other terrarium accessories!\r\n\r\nDimensions: L1.6cm x W5.6cm x H25cm\r\nMaterial: stainless steel', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/12/GT181_01.png', 5),
(6, 'Brass watering can 1 liter', '29.95', 'With this fine classic watering can you can give all your plants exactly the water they need. The narrow long pouring spout ensures that you can give dosed water and not accidentally too much.\r\nWhen watering, always make sure that your plant does not have \'wet feet\'. So if there is still water in the pot or saucer the next day, you should throw it away.\r\n\r\nWatering can capacity: 1 liter\r\nDimensions: L 13.1 x W 36 x H 17.5\r\nMaterial: zinc with brass finish.', 'https://wildernisamsterdam.nl/wp-content/uploads/2018/05/Gieter-Goud-e1610628511975.jpg', 5),
(7, 'Neem oil', '15.95', 'Neem oil comes from the Azadirachta indica tree, which is native to South Asia. The oil is extracted from the seeds of the tree. It is produced by means of a cold pressing process in which all the active properties of \'Neem\' are preserved. Dilute the water 1:100 with water, and spray on the leaves and the potting soil. Do not spray on the leaves when they are in direct sunlight. The active ingredients of Neem oil begin to break down as soon as they are mixed with water. Only mix what you can use right away (in the next 24 hours) for best results.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/12/Botanopia-Neem-oil-glass-bottle-100ml-600px.jpeg', 5),
(8, 'Mushroom Farm kit', '14.95', 'With this DIY Mushroom farm kit you can grow your own mushrooms super fast, how cool is that!\r\nThe packaging provides a handy explanation of how you can harvest as much as possible from these oyster mushrooms.\r\n\r\nThis kit is good for multiple harvests and is grown on recycled Artis coffee grounds.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/12/Mushroom-farm-kit.png', 5),
(9, 'Soil love', '14.95', 'A bucket of soil love is filled with concentrated worm compost, micro-organisms, minerals and trace elements.\r\nGive a hand per plant.\r\n\r\nThe natural alternative to fertilizer.\r\n\r\n– Makes plants strong, healthy and resilient\r\n– ​​Enriches the soil for a high yield\r\n– Promotes biodiversity and fertility\r\n– Full of nutrients and stimulating soil life\r\n\r\nContent: 1 liter', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/12/Bodemliefde_3l_vierkant-e1640002240616.jpeg', 5),
(10, 'Pot Retro Chrome', '19.75', 'A pot that gives a cozy and homey feeling without drawing the attention of the plant or flowers you want to place in it. Painted in neutral white and light brown with a beautiful chrome colored overflow. Each flower pot is handmade so there may be slight color variations, something that only makes each flower pot unique.\r\n\r\nDimensions:\r\nPot: Ø 10.5cm X 12.5cm\r\n\r\nMaterial: earthenware with glaze', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/11/82050914.jpg', 1),
(11, 'Wall hanger with pot in Ocher', '14.95', 'No more room on cupboards and tables for a new plant? No problem. With this set of a hanger and pot you can easily turn a bare wall into a green paradise.\r\n\r\nAvailable in 3 colours: Dusty pink – Reseda green – Ocher\r\n\r\nDimensions pot: Ø12cm X 13cm\r\nDimensions wall hanger: 24high X13.5 deep 16.5 wide\r\n\r\nPot material: Clay, glaze\r\nWall hanger material: wood, steel.\r\n\r\nPot material: Clay, glaze\r\nWall hanger material: wood, steel.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/02/MG_2162.jpg', 1),
(12, 'Pot Baby Don’t Cry', '29.50', 'Cream colored pot on feet with ocean green drip pattern, each pot is unique and different with its own drip pattern.\r\n\r\nDimensions: Ø 13.5cm X 16cm\r\nMaterial: earthenware with glaze.', 'https://wildernisamsterdam.nl/wp-content/uploads/2018/03/82052525.jpg', 1),
(13, 'Pot Bianka', '24.75', 'Dimensions\r\nInside: D11 x H9.5 cm\r\nOutside: D14 x H11 cm\r\n\r\nDue to the nature of the glaze and the item being hand made, this jar may not be 100% waterproof and color variations may occur.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/09/82047415.jpg', 1),
(14, 'Bohemian two toned clay', '28.00', 'These beautiful bohemian pots are made by hand with 2 colors of natural clay. By Colombian artisans, who have been making traditional terracotta crafts for centuries.\r\nThis handwork makes them rustic and imperfect, the color and finish are always slightly different. Depending on the position in the oven during the baking process, the pots become lighter or darker in color. Each piece is unique!', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/02/IMG_7655-scaled-e1613575659175.jpg', 1),
(15, 'Angobe green pot with freckles', '14.95', 'This Angobe green colored pot with turquoise freckles is handmade in Portugal, each pot is unique and different.\r\n\r\nPot dimensions: Ø12.5cm X 13.5cm\r\nMaterial: Terracotta and glaze\r\n\r\nDue to the glaze technique and the manual work, it is possible that a pot is not 100% waterproof.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/02/Untitled_Artwork-1-scaled.jpg', 1),
(16, 'Hanging pot with drip pattern', '31.95', 'Special hanging pot with rope and a striking dripping pattern in the glaze. Every pot is different and therefore unique. Perfect for (hanging) plants with a pot size of max. 13.5 cm.\r\n\r\nPot dimensions: D13.5 H16 cm\r\nMaterial: Earthenware and glaze', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/02/hangerdruippot.jpg', 1),
(17, 'Pot Juana ocean green', '12.50', 'This ocean-colored pot is double dipped with 2 beautiful glazes and is handmade in Portugal.\r\nEach pot is therefore unique. You can choose from 3 different sizes.\r\n\r\nDiameter Ø17cm – height 19 cm\r\nDiameter Ø14cm- height 16 cm\r\nDiameter Ø12cm – height 12 cm\r\n\r\nMaterial: Terracotta and glaze', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/02/MG_2215-e1612875754718.jpg', 1),
(18, 'Ribbel pot', '15.95', 'This powder yellow colored pot with ridges and legs has a modern and cheerful look.\r\n\r\nPot dimensions: Ø12.5 cm X15cm\r\nMaterial: clay and glaze\r\n\r\nDue to the glaze technique, there may be small differences in the finish.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/03/mica-decorations-florian-pot-round-beige-e1616060060275.jpg', 1),
(19, 'Macrame S – 5 colors', '9.95', 'Are all your cupboards, tables and corners full of plants? With this macrame hanger you can now also hang your plants. It fits a pot size up to approx. 12 cm.\r\nThey are made in Amsterdam at the social workshop in west in 5 colours!\r\n\r\n-Black\r\n-Grey-blue\r\n-Cognac\r\n-Sage\r\n-Off-white\r\n\r\nMaterial: 100% cotton and metal ring.\r\n\r\nLength: approx. 45-50cm', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/12/IMG_5344-e1640101270815.jpg', 3),
(20, 'Pot Rita S', '7.95', 'Hi I\'m Rita. I would describe myself as a chameleon and like to change hairstyles often. What haircut are you giving me?\r\nAlso take a look at my dear friends Paul and Betsy!\r\n\r\nDimensions:\r\nPot S: Ø 8cm X 7cm\r\n\r\nMaterial: earthenware with glaze.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/12/il_794xN.2937452071_8ejd.jpg', 3),
(21, 'Pot Speckled Canvas L', '28.75', 'This gorgeous white pot is covered in brown speckles and has subtle blue undertones.\r\nIt also comes in a smaller size!\r\n\r\nDimensions:\r\nPot L: Ø 16cm X 19cm\r\n\r\nMaterial: earthenware with glaze.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/11/WhatsApp-Image-2021-12-17-at-1.45.29-PM-3.jpeg', 3),
(22, 'Pot Gizmo S', '8.95', 'Beautiful beige pot with light yellow undertones.\r\nAlso available in a larger size!\r\n\r\nDimensions:\r\nPot S: Ø 9cm X 10cm\r\n', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/11/WhatsApp-Image-2021-12-17-at-1.45.29-PM.jpeg', 3),
(23, 'Monstera', '34.95', 'Everyone\'s favourite: the Monstera Deliciosa! Also known as \'hole plant\'. This strong plant with its special leaves is a classic for a reason.\r\nThe plant is already 75 cm high and immediately provides an urban jungle feeling in your home.\r\n\r\nDimensions:\r\nPlant height: 75 cm\r\nPot diameter: 21 cm', 'https://wildernisamsterdam.nl/wp-content/uploads/2020/12/Monstera-deliciosa.jpg', 3),
(24, 'Schefflera Amate XL', '69.95', 'This beautiful large (125 cm) strong plant is super easy. In English, the plant is also called Umbrella tree . It can withstand drought and a lot of (sun) light. Let this Schefflera Amate also be sustainably grown*, and we have a winner. Urban jungle, here we come !\r\n\r\nDimensions:\r\nPlant height: 125 cm\r\nPot diameter: 24 cm', 'https://wildernisamsterdam.nl/wp-content/uploads/2020/12/flora_5ef371343b5b7-e1608296045390.jpeg', 3),
(25, 'DIY terrarium Ginseng', '54.95', 'DIY  – This mini ecosystem comes as a Do It Yourself package. It contains everything you need and step-by-step instructions to get started.\r\n\r\nDimensions:\r\n18x30cm\r\n\r\nBonsai for beginners\r\nYou can recognize the ficus ginseng by its irregularly shaped aerial roots (Gingseng is Chinese for \'carrot\') and shiny oval leaves. Reminiscent of a bonsai tree, this Asian beauty is accompanied by a carefully selected botanical.', 'https://wildernisamsterdam.nl/wp-content/uploads/2021/01/Terrarium-Ginseg.jpg', 3),
(26, 'DIY kit terrarium Biodome', '69.95', 'DIY – This mini ecosystem comes as a Do It Yourself package. It contains everything you need and step-by-step instructions to get started.\r\n\r\nDimensions:\r\n30x30x30cm\r\n\r\nBotanical mix\r\nThe plants in this DIY package are carefully selected for color and diversity. The composition of plants that are available at that time changes every month. As a result, they may differ in colour, shape and size from the image on the webshop.', 'https://wildernisamsterdam.nl/wp-content/uploads/2020/12/Biodome_8720165965298-scaled.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(9, 'nina', '$2y$10$Fv6YQQjKNte/Hoph1aNytu.es60uO82y0/jLxe1KKWsjofEeBtHmS', 'ninak@password.com'),
(10, 'kheanz', '$2y$10$cMgE1u5yb7W20PMkbaKRz.OwkFniQL9TyRxkILbIZFv6b4sqBsCba', 'nina@password.com'),
(11, 'testing', '$2y$10$Yd553Uq1JPZdPyGgTI0dS.C601V5FDCwNE4SVc0.8mEzwjL9e...O', 'testing@account.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
