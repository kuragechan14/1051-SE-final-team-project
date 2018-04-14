-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-12-01 03:34:54
-- 伺服器版本: 10.1.9-MariaDB
-- PHP 版本： 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `se_fin_demo`
--

-- --------------------------------------------------------

--
-- 資料表結構 `branch`
--

CREATE TABLE `branch` (
  `bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `income` int(11) NOT NULL,
  `limit_a` int(11) NOT NULL,
  `limit_b` int(11) NOT NULL,
  `limit_c` int(11) NOT NULL,
  `inventory_a` int(11) NOT NULL,
  `inventory_b` int(11) NOT NULL,
  `inventory_c` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `branch`
--

INSERT INTO `branch` (`bid`, `cid`, `bname`, `income`, `limit_a`, `limit_b`, `limit_c`, `inventory_a`, `inventory_b`, `inventory_c`) VALUES
(1, 1, '分店1', 0, 50, 70, 20, 0, 0, 0),
(2, 1, '分店2', 0, 60, 80, 30, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `company`
--

CREATE TABLE `company` (
  `cid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `cname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `funds` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `inventory_a` int(11) NOT NULL,
  `inventory_b` int(11) NOT NULL,
  `inventory_c` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `company`
--

INSERT INTO `company` (`cid`, `uid`, `cname`, `funds`, `pay`, `inventory_a`, `inventory_b`, `inventory_c`) VALUES
(1, 1, '測試總店', 20000, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `material`
--

CREATE TABLE `material` (
  `mid` int(11) NOT NULL,
  `mname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `delay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `material`
--

INSERT INTO `material` (`mid`, `mname`, `price`, `delay`) VALUES
(1, 'A原料', 50, 5),
(2, 'B原料', 60, 4),
(3, 'C原料', 70, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `orders`
--

INSERT INTO `orders` (`oid`, `cid`, `bid`, `a`, `b`, `c`) VALUES
(1, 1, 1, 50, 70, 20);

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `product`
--

INSERT INTO `product` (`pid`, `mid`, `pname`, `price`) VALUES
(1, 1, '甲', 100),
(2, 2, '乙', 110),
(3, 3, '丙', 120);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `uname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`uid`, `uname`, `account`, `pwd`) VALUES
(1, 'test_user', 'ttt', 'ttt');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`bid`);

--
-- 資料表索引 `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cid`);

--
-- 資料表索引 `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`mid`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `branch`
--
ALTER TABLE `branch`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用資料表 AUTO_INCREMENT `company`
--
ALTER TABLE `company`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `material`
--
ALTER TABLE `material`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
