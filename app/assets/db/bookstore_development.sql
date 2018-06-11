-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2018 at 01:01 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-06-11 04:42:48', '2018-06-11 04:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'Scott', 'Raymond', '2018-06-11 06:39:10', '2018-06-11 06:39:10'),
(2, 'Aneesha', 'Bakharia', '2018-06-11 06:51:15', '2018-06-11 06:51:15'),
(3, 'W. Jason', 'Gilmore', '2018-06-11 07:05:50', '2018-06-11 07:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `buy` varchar(255) DEFAULT NULL,
  `publication` date DEFAULT NULL,
  `excerpt` text,
  `format` varchar(255) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `coverpath` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `category_id`, `author_id`, `publisher_id`, `isbn`, `price`, `buy`, `publication`, `excerpt`, `format`, `pages`, `created_at`, `updated_at`, `coverpath`, `year`) VALUES
(1, 'Ajax on Rails', 1, 1, 1, '9780596527440', '$3.74', 'https://www.ebay.com/itm/Ajax-on-Rails/272858935272?epid=63753157&hash=item3f87a8efe8:g:J5YAAOSw3v5YpN3n', NULL, '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Paperback', 304, '2018-06-11 06:40:51', '2018-06-11 07:18:59', 'covers/ajax_on_rails.jpg', '2007'),
(2, 'Ruby on Rails Power', 1, 2, 2, '9781598632163', '$3.74', 'https://www.ebay.com/itm/Ruby-on-Rails-Power-The-Comprehensive-Guide-Power/272729580483?epid=50789121&hash=item3f7ff323c3:g:GVoAAOSwOgdYv4Cz', NULL, '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Paperback', 448, '2018-06-11 06:53:01', '2018-06-11 06:53:01', 'covers/ruby_on_rails_power.jpg', '2007'),
(3, 'Beginning PHP 5', 2, 3, 3, '9781893115514', '$9.95', 'https://www.ebay.com/itm/Beginning-PHP-5-and-MySQL-From-Novice-to-Professional-by-Gilmore-W-Jason/382471216303?epid=30207584&hash=item590d0f9caf:g:ll8AAOSwcWBbBsQD', NULL, '"Beginning PHP 5 and MySQL: From Novice to Professional" offers a comprehensive introduction to two of the most popular open-source technologies on the planet: the PHP scripting language and the MySQL database server. You are not only exposed to the core features of both technologies, but will also gain valuable insight into how they are used in unison to create dynamic data-driven web applications, not to mention learn about many of the undocumented features of the most recent versions.The first part of the book is devoted to PHP\'s foundational features, with special focus on those new to PHP 5, including the improved object-oriented support, exception handling, SQLite support, SimpleXML, and much more. But PHP 5-specific topics are only part of what\'s covered; you\'ll also learn about the language\'s core capabilities, beginning with a survey of installation and configuration tasks. Early chapters are devoted to basic PHP programming concepts such as variables, datatypes, arrays, string manipulation, and user interaction. Later chapters cover session handling, LDAP integration, the Smarty templating engine, and Web Services support.Next up is a broad overview of the powerful MySQL database server. Among other topics, you\'ll learn about the installation and configuration process, datatypes, key security features, and various administration utilities."', 'Paperback', 408, '2018-06-11 07:08:00', '2018-06-11 07:08:00', 'covers/beginning_php_5.jpg', '2004');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ruby on Rails', '2018-06-11 05:35:32', '2018-06-11 05:35:32'),
(2, 'PHP', '2018-06-11 05:35:48', '2018-06-11 05:35:48'),
(3, 'HTML5', '2018-06-11 05:42:00', '2018-06-11 05:42:00'),
(7, 'JavaScript', '2018-06-11 07:42:06', '2018-06-11 07:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O\'Reilly Media, Incorporated', '2018-06-11 06:39:31', '2018-06-11 06:39:31'),
(2, 'Course Technology', '2018-06-11 06:51:41', '2018-06-11 06:51:41'),
(3, 'Apress L. P.', '2018-06-11 07:06:00', '2018-06-11 07:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180611044057'),
('20180611044240'),
('20180611045328'),
('20180611045503'),
('20180611062523');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
