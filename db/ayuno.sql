-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 11:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Honda CB750', ' Often considered the first modern superbike, the Honda CB750 revolutionized the motorcycle industry with its inline-four engine, electric starter, and disc brakes. It set a new standard for performance and reliability upon its release in 1969.\r\n\r\n', 105000, 105000, 100, 'https://imgs.search.brave.com/jPZdpV5Y12-6eRm2iw71aEsDrxMJleXZrKteE2VlEAw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9raWNr/c3RhcnQuYmlrZWV4/aWYuY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDI0LzA0L2N1/c3RvbS1ob25kYS1j/Yjc1MC1oaW1vcmEt/NzQ1eDQ5Ny5qcGc', '2024-05-12 00:00:00'),
(2, 'Ducati Panigale V4', ' Renowned for its breathtaking performance and Italian craftsmanship, the Ducati Panigale V4 is a pinnacle of sportbike engineering. With its powerful V4 engine, advanced electronics, and aerodynamic design, it offers unparalleled speed and agility on the track.\r\n\r\n', 670000, 670000, 333, 'https://imgs.search.brave.com/gmQI2p96qmIBCoERUOAG3_8eZXjgH78PBnZXt_eI_-8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9iZC5n/YWFkaWNkbi5jb20v/cHJvY2Vzc2VkaW1h/Z2VzL2R1Y2F0aS9w/YW5pZ2FsZS12NC9z/b3VyY2UvcGFuaWdh/bGUtdjQ2MzBkYWM0/YzY0OTU3LmpwZz9p/bXdpZHRoPTg4MA', '2024-05-12 00:00:00'),
(3, 'BMW R1250GS', 'As the flagship model of BMW Motorrad\'s GS lineup, the R1250GS is the epitome of adventure touring motorcycles. Equipped with a potent boxer engine, advanced suspension system, and a suite of rider aids, it excels both on and off-road, making it a favorite among adventure riders worldwide.\r\n\r\n', 470000, 470000, 96, 'https://imgs.search.brave.com/DPhUFC1-Jauiu6VtJLBXVHcMscjELUmiggy_kZ2Gwiw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/d2ViYmlrZXdvcmxk/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMy8wMi8xXzUx/NTM0NC5qcGc', '2024-05-12 00:00:00'),
(4, 'Triumph Bonneville T120', 'A modern classic with timeless styling, the Triumph Bonneville T120 pays homage to the iconic British motorcycles of the past. Its parallel-twin engine delivers smooth power delivery, while its retro design cues evoke a sense of nostalgia for enthusiasts.\r\n\r\n', 320000, 320000, 40, 'https://imgs.search.brave.com/aMdRxTkBPjz_YD507Ni4-kKou0l2pEKlt75xombu5NU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9yaWRl/cm1hZ2F6aW5lLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MS8wMi8yMDIxLVRy/aXVtcGgtQm9ubmV2/aWxsZS1UMTIwLUJs/YWNrLTYuanBn', '2024-05-12 00:00:00'),
(5, 'Kawasaki Ninja ZX-10R', 'Known for its dominance in the World Superbike Championship, the Kawasaki Ninja ZX-10R is a formidable sportbike that offers exceptional performance on the street and track. With its potent inline-four engine, race-inspired chassis, and advanced electronics, it\'s a favorite among thrill-seekers and track enthusiasts.\r\n\r\n', 410000, 410000, 30, 'https://imgs.search.brave.com/IyPGTFkjQCe0tY2Tx9lSPFVMxyumKVFP9536VDb_IWg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZHAu/YXp1cmVlZGdlLm5l/dC9wcm9kdWN0cy9V/U0EvS0EvMjAyNC9N/Qy9TVVBFUlNQT1JU/L05JTkpBX1pYLTZS/LzUwL1BFQVJMX1JP/Qk9USUNfV0hJVEVf/LV9NRVRBTExJQ19H/UkFQSElURV9HUkFZ/LzIwMDAwMDAwMjFf/NDgwcHguanBn', '2024-05-12 00:00:00'),
(6, 'Harley-Davidson Sportster', 'A cultural icon synonymous with American motorcycling, the Harley-Davidson Sportster has been a mainstay in the motorcycle world for decades. With its classic styling, rumbling V-twin engine, and customizable options, it continues to capture the hearts of riders looking for a blend of heritage and performance.', 270000, 270000, 30, 'https://imgs.search.brave.com/YBAWX0HLvocg-njLuTyVNMX3f6Am1QbSGbLmlHO96dE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZHAu/YXp1cmVlZGdlLm5l/dC9wcm9kdWN0cy9V/U0EvSEQvMjAyMy9N/Qy9TUE9SVFNURVIv/U1BPUlRTVEVSX1Mv/NTAvV0hJVEVfU0FO/RF9QRUFSTC8yMDAw/MDAwMDA2XzQ4MHB4/LmpwZw', '2024-05-12 00:00:00'),
(7, 'Yamaha YZF-R6', 'Renowned for its track-focused performance and razor-sharp handling, the Yamaha YZF-R6 is a top choice for riders seeking adrenaline-pumping thrills. Its high-revving inline-four engine, race-derived chassis, and advanced electronics make it a formidable competitor in the supersport segment.', 700000, 700000, 36, 'https://imgs.search.brave.com/nRo8su7rhryatS4EJMmGgaRhhiloxZ9_owLkR16DVKM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdG9y/YWdlLmdvb2dsZWFw/aXMuY29tL21oaW1n/L3AvMzIzNC84MDUz/MjM0L2M0NWNfcy5q/cGc', '2024-05-12 00:00:00'),
(8, 'Suzuki SV650', 'A versatile and approachable motorcycle, the Suzuki SV650 is beloved by riders of all skill levels for its user-friendly nature and engaging performance. Whether commuting in the city or carving through twisty roads, its V-twin engine, lightweight chassis, and agile handling make every ride enjoyable.', 259000, 259000, 30, 'https://imgs.search.brave.com/ZOHPi5P74Xe93bXnNJjvuBOB0ze0bzgUNR8NZN_mPoY/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/d2ViYmlrZXdvcmxk/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAxOS8xMi8yMDIw/LXN1enVraS1zdjY1/MC0wMS5qcGc', '2024-05-12 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
