-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 6 月 26 日 13:30
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_dive_table`
--

CREATE TABLE `gs_dive_table` (
  `id` int(12) NOT NULL,
  `divingNumber` int(12) NOT NULL,
  `date` date NOT NULL,
  `location` text NOT NULL,
  `diveSite` text NOT NULL,
  `rating` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_dive_table`
--

INSERT INTO `gs_dive_table` (`id`, `divingNumber`, `date`, `location`, `diveSite`, `rating`, `comment`) VALUES
(1, 1, '2023-06-18', 'Maldive', 'Mare ', '⭐️⭐️⭐️⭐️⭐️', 'You can see giant mantas in this spot!!'),
(2, 2, '2023-06-19', 'Maldive', 'Dolphin Path', '⭐️⭐️⭐️⭐️⭐️', 'We can saw a family of wild dolphins!'),
(3, 3, '2023-06-25', 'Bali', 'Ubudu  ', '⭐️⭐️⭐️⭐️', 'We saw manbo in the cold current!'),
(4, 4, '2023-06-25', 'ブラジル, Minas Gerais', 'Minas Bay', '⭐️⭐️', 'Rainy and cold, but the water was beatiful'),
(5, 5, '2023-06-26', 'コンゴ民主共和国, チョポ', 'test', '⭐️⭐️⭐️⭐️', 'Enjoy micro creatures'),
(6, 6, '2023-06-26', 'アンゴラ, Lunda Norte', 'Caves', '⭐️⭐️⭐️⭐️', 'Secret and cave zone'),
(7, 7, '2023-06-26', 'キューバ, カマグエイ', 'kamagu', '⭐️⭐️⭐️⭐️', 'pale blue '),
(8, 8, '2023-06-26', 'キューバ, カマグエイ', 'kamagu', '⭐️⭐️⭐️⭐️', 'pale blue ');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_dive_table`
--
ALTER TABLE `gs_dive_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_dive_table`
--
ALTER TABLE `gs_dive_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
