-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2017 at 10:36 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `7erafy`
--
CREATE DATABASE IF NOT EXISTS `7erafy` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `7erafy`;

-- --------------------------------------------------------

--
-- Table structure for table `adm_usr`
--

DROP TABLE IF EXISTS `adm_usr`;
CREATE TABLE `adm_usr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `USR_STAT` varchar(45) NOT NULL,
  `USR_NAME` varchar(100) NOT NULL,
  `PSWD` text NOT NULL,
  `USR_STAT_DT` datetime NOT NULL,
  `USR_END_DT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `city_ar_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `city_ar_name`) VALUES
(1, 'Alexandria', 'الاسكندرية'),
(2, 'Giza', 'الجيزة'),
(3, 'Cairo', 'القاهرة');

-- --------------------------------------------------------

--
-- Table structure for table `cntrl_btn`
--

DROP TABLE IF EXISTS `cntrl_btn`;
CREATE TABLE `cntrl_btn` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CNTRL_NAME` varchar(100) NOT NULL,
  `PAR_VIEW_ID` int(11) NOT NULL,
  `CNTRL_BTN_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cntrl_srch_key_wrd`
--

DROP TABLE IF EXISTS `cntrl_srch_key_wrd`;
CREATE TABLE `cntrl_srch_key_wrd` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `SRCH_KEY_WRD` text,
  `CITY_ID` int(11) DEFAULT NULL,
  `STATE_ID` int(11) DEFAULT NULL,
  `SRCH_SERV_ID` int(11) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cntrl_upld`
--

DROP TABLE IF EXISTS `cntrl_upld`;
CREATE TABLE `cntrl_upld` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `UPLD_NAME` varchar(100) NOT NULL,
  `PAR_VIEW_ID` int(11) NOT NULL,
  `CNTRL_UPLD_COMMENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cntrl_view`
--

DROP TABLE IF EXISTS `cntrl_view`;
CREATE TABLE `cntrl_view` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `VIEW_NAME` varchar(100) NOT NULL,
  `VIEW_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cont_mthd`
--

DROP TABLE IF EXISTS `cont_mthd`;
CREATE TABLE `cont_mthd` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CONT_MTHD_TYPE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_addr`
--

DROP TABLE IF EXISTS `cst_addr`;
CREATE TABLE `cst_addr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_UPD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_BY` varchar(100) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `ADDR_COMMENT` text,
  `APARTMENT` text,
  `FLOOR_NUMBER` text,
  `BUILDING` text,
  `STREET` text,
  `CITY_ID` int(11) NOT NULL,
  `Zone_ID` int(11) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cst_addr`
--

INSERT INTO `cst_addr` (`ID`, `CREATED`, `CREATED_BY`, `LAST_UPD`, `LAST_UPD_BY`, `CST_ID`, `ADDR_COMMENT`, `APARTMENT`, `FLOOR_NUMBER`, `BUILDING`, `STREET`, `CITY_ID`, `Zone_ID`, `COUNTRY_ID`) VALUES
(1, '2017-02-23 23:44:26', 'GuestUsr', '2017-02-23 23:44:26', 'GuestUsr', 1, NULL, NULL, NULL, NULL, NULL, 2, 48, NULL),
(2, '2017-02-23 23:45:55', 'GuestUsr', '2017-02-23 23:45:55', 'GuestUsr', 2, NULL, NULL, NULL, NULL, NULL, 3, 109, NULL),
(3, '2017-02-23 23:52:54', 'GuestUsr', '2017-02-23 23:52:54', 'GuestUsr', 3, NULL, NULL, NULL, NULL, NULL, 2, 47, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cst_cont`
--

DROP TABLE IF EXISTS `cst_cont`;
CREATE TABLE `cst_cont` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_UPD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_BY` varchar(100) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `MOB_NUM` varchar(45) NOT NULL,
  `LL_NUM` varchar(45) DEFAULT NULL,
  `CONT_MTHD_ID` int(11) DEFAULT NULL,
  `CST_NAME` text NOT NULL,
  `NICK_NAME` text,
  `CONT_COMMENT` text,
  `PREFER_CONT_DT_FROM` varchar(45) DEFAULT NULL,
  `PREFER_CONT_DT_TO` varchar(45) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `BIRTH_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cst_cont`
--

INSERT INTO `cst_cont` (`ID`, `CREATED`, `CREATED_BY`, `LAST_UPD`, `LAST_UPD_BY`, `CST_ID`, `MOB_NUM`, `LL_NUM`, `CONT_MTHD_ID`, `CST_NAME`, `NICK_NAME`, `CONT_COMMENT`, `PREFER_CONT_DT_FROM`, `PREFER_CONT_DT_TO`, `GENDER`, `BIRTH_DATE`) VALUES
(1, '2017-02-23 23:44:26', 'GuestUsr', '2017-02-23 23:44:26', 'GuestUsr', 1, '1000170944', NULL, NULL, 'abdelrahman', 'fares', NULL, NULL, NULL, 'male', '2015-04-03'),
(2, '2017-02-23 23:45:55', 'GuestUsr', '2017-02-23 23:45:55', 'GuestUsr', 2, '01005172000', NULL, NULL, 'Amr ', 'Hegazy', NULL, NULL, NULL, 'male', '1979-06-16'),
(3, '2017-02-23 23:52:54', 'GuestUsr', '2017-02-23 23:52:54', 'GuestUsr', 3, '201003099516', NULL, NULL, 'احمد', 'شلبي', NULL, NULL, NULL, 'male', '1991-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `cst_hit`
--

DROP TABLE IF EXISTS `cst_hit`;
CREATE TABLE `cst_hit` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `BTN_CNT` int(11) DEFAULT NULL,
  `LOGIN_CNT` int(11) DEFAULT NULL,
  `VIEW_CNT` int(11) DEFAULT NULL,
  `UPLD_CNT` int(11) DEFAULT NULL,
  `SRCH_CNT` int(11) DEFAULT NULL,
  `TECH_CNT` int(11) DEFAULT NULL,
  `TOTAL_CNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_hit_log`
--

DROP TABLE IF EXISTS `cst_hit_log`;
CREATE TABLE `cst_hit_log` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_HIT_ID` int(11) NOT NULL,
  `BTN_ID` int(11) DEFAULT NULL,
  `SRCH_KEY_WRD_ID` int(11) DEFAULT NULL,
  `VIEW_ID` int(11) DEFAULT NULL,
  `UPLD_ID` int(11) DEFAULT NULL,
  `LOGIN_VIEW_ID` int(11) DEFAULT NULL,
  `TECH_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_offr`
--

DROP TABLE IF EXISTS `cst_offr`;
CREATE TABLE `cst_offr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `OFFR_ID` int(11) NOT NULL,
  `START_DT` datetime NOT NULL,
  `END_DT` datetime DEFAULT NULL,
  `CST_OFFR_STAT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_profile`
--

DROP TABLE IF EXISTS `cst_profile`;
CREATE TABLE `cst_profile` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_UPD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_BY` varchar(100) NOT NULL,
  `CST_STAT` varchar(45) NOT NULL,
  `CST_HIT_ID` int(11) DEFAULT NULL,
  `CST_SGMNT_ID` int(11) DEFAULT NULL,
  `CST_GRP_ID` int(11) DEFAULT NULL,
  `CST_TYPE_ID` int(11) DEFAULT NULL,
  `CST_LOY_ID` int(11) DEFAULT NULL,
  `CST_PROFILE_COMMENT` text,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cst_profile`
--

INSERT INTO `cst_profile` (`ID`, `CREATED`, `CREATED_BY`, `LAST_UPD`, `LAST_UPD_BY`, `CST_STAT`, `CST_HIT_ID`, `CST_SGMNT_ID`, `CST_GRP_ID`, `CST_TYPE_ID`, `CST_LOY_ID`, `CST_PROFILE_COMMENT`, `email`) VALUES
(1, '2017-02-23 23:44:26', 'GuestUsr', '2017-02-23 23:44:26', 'GuestUsr', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'a-fares@live.com'),
(3, '2017-02-23 23:52:54', 'GuestUsr', '2017-02-23 23:52:54', 'GuestUsr', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'ahmedismaiel@live.com'),
(2, '2017-02-23 23:45:55', 'GuestUsr', '2017-02-23 23:45:55', 'GuestUsr', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'amr.hegazy2012@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cst_sgmnt`
--

DROP TABLE IF EXISTS `cst_sgmnt`;
CREATE TABLE `cst_sgmnt` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `SGMNT_NAME` varchar(100) NOT NULL,
  `SGMNT_STAT` varchar(45) NOT NULL,
  `SGMNT_START_DT` datetime NOT NULL,
  `SGMNT_END_DT` datetime DEFAULT NULL,
  `SGMNT_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_tech_req`
--

DROP TABLE IF EXISTS `cst_tech_req`;
CREATE TABLE `cst_tech_req` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `SERV_ID` int(11) NOT NULL,
  `TECH_ID` int(11) DEFAULT NULL,
  `PRICE_FROM` int(11) DEFAULT '0',
  `PRICE_TO` int(11) DEFAULT '0',
  `CITY_ID` int(11) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL,
  `REQ_STAT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_tech_req_log`
--

DROP TABLE IF EXISTS `cst_tech_req_log`;
CREATE TABLE `cst_tech_req_log` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_TECH_REQ_ID` int(11) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `TECH_REQ_APPRV` varchar(45) DEFAULT NULL,
  `TECH_REQ_APPRV_DT` datetime DEFAULT NULL,
  `END_DT` datetime NOT NULL,
  `TECH_REQ_APPRV_PRICE` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_usr`
--

DROP TABLE IF EXISTS `cst_usr`;
CREATE TABLE `cst_usr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_UPD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_BY` varchar(100) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `USR_STAT` varchar(45) NOT NULL,
  `USR_NAME` varchar(45) NOT NULL,
  `PSWD` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cst_usr`
--

INSERT INTO `cst_usr` (`ID`, `CREATED`, `CREATED_BY`, `LAST_UPD`, `LAST_UPD_BY`, `CST_ID`, `USR_STAT`, `USR_NAME`, `PSWD`) VALUES
(1, '2017-02-23 23:44:26', 'GuestUsr', '2017-02-23 23:44:26', 'GuestUsr', 1, 'Active', 'a-fares@live.com', '12'),
(2, '2017-02-23 23:45:55', 'GuestUsr', '2017-02-23 23:45:55', 'GuestUsr', 2, 'Active', 'amr.hegazy2012@gmail.com', '123456'),
(3, '2017-02-23 23:52:54', 'GuestUsr', '2017-02-23 23:52:54', 'GuestUsr', 3, 'Active', 'ahmedismaiel@live.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `gndr`
--

DROP TABLE IF EXISTS `gndr`;
CREATE TABLE `gndr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `GNDR_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grp`
--

DROP TABLE IF EXISTS `grp`;
CREATE TABLE `grp` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `GRP_NAME` varchar(100) NOT NULL,
  `GRP_STAT` varchar(45) NOT NULL,
  `GRP_START_DT` datetime NOT NULL,
  `GRP_END_DT` datetime DEFAULT NULL,
  `GRP_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loy`
--

DROP TABLE IF EXISTS `loy`;
CREATE TABLE `loy` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `CST_HIT_ID` int(11) DEFAULT NULL,
  `CST_SGMNT_ID` int(11) NOT NULL,
  `GCST_GRP_ID` int(11) NOT NULL,
  `CST_TYPE_ID` int(11) NOT NULL,
  `LOY_PRG_ID` int(11) NOT NULL,
  `ENRLMNT_DT` datetime NOT NULL,
  `LOY_STAT` datetime NOT NULL,
  `LOY_END_DT` datetime DEFAULT NULL,
  `LOY_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loy_prg`
--

DROP TABLE IF EXISTS `loy_prg`;
CREATE TABLE `loy_prg` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `LOY_PRG_NAME` varchar(100) NOT NULL,
  `LOY_PRG_STAT` varchar(45) NOT NULL,
  `LOY_PRG_SATRT_DT` datetime NOT NULL,
  `LOY_PRG_END_DT` datetime DEFAULT NULL,
  `LOY_PRG_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offr`
--

DROP TABLE IF EXISTS `offr`;
CREATE TABLE `offr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `OFFR_NAME` varchar(100) NOT NULL,
  `OFFR_STAT` varchar(45) NOT NULL,
  `OFFR_SART_DT` datetime NOT NULL,
  `OFFR_END_DT` datetime DEFAULT NULL,
  `OFFR_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `privilige`
--

DROP TABLE IF EXISTS `privilige`;
CREATE TABLE `privilige` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `ADM_USR_ID` int(11) NOT NULL,
  `PRIVLEGE_TYPE` text NOT NULL,
  `PRIVLEGE_TYPE_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `serv`
--

DROP TABLE IF EXISTS `serv`;
CREATE TABLE `serv` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `LAST_UPD` datetime DEFAULT NULL,
  `LAST_UPD_BY` int(11) DEFAULT NULL,
  `SERV_NAME` text,
  `SERV_TYPE` text,
  `PRICE_FROM` int(11) DEFAULT '0',
  `PRICE_TO` int(11) DEFAULT '0',
  `SERV_RATE` int(11) DEFAULT '0',
  `SERV_TECH_CNT` int(11) DEFAULT '0',
  `SERV_STAT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spnsr`
--

DROP TABLE IF EXISTS `spnsr`;
CREATE TABLE `spnsr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `LAST_UPD` datetime DEFAULT NULL,
  `LAST_UPD_BY` int(11) DEFAULT NULL,
  `SPNSR_NAME` text NOT NULL,
  `INDSTRY` text NOT NULL,
  `MOB_NUM` varchar(45) NOT NULL,
  `CONT_PRSN_NAME` text NOT NULL,
  `ADDR` text NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `LL_NUM` varchar(45) DEFAULT NULL,
  `SPNSR_CONTR_START_DT` datetime NOT NULL,
  `SPNSR_CONTR_END_DT` datetime DEFAULT NULL,
  `SPNSR_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_addr`
--

DROP TABLE IF EXISTS `tech_addr`;
CREATE TABLE `tech_addr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL,
  `LAST_UPD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_BY` varchar(50) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `ADDR_COMMENT` text,
  `APARTMENT` text,
  `FLOOR` text,
  `BUILDING` text,
  `STREET` text,
  `CITY_ID` int(11) NOT NULL,
  `ZONE_ID` int(11) NOT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_cont`
--

DROP TABLE IF EXISTS `tech_cont`;
CREATE TABLE `tech_cont` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL,
  `LAST_UPD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_BY` varchar(50) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `MOB_NUM` varchar(45) NOT NULL,
  `LL_NUM` varchar(45) DEFAULT NULL,
  `CONT_MTHD_ID` int(11) DEFAULT NULL,
  `TEC_NAME` text NOT NULL,
  `MID_NAME` text,
  `LST_NAME` text,
  `NICK_NAME` text,
  `CONT_COMMENT` text,
  `GENDER_ID` int(11) DEFAULT NULL,
  `BIRTH_DATE` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_email`
--

DROP TABLE IF EXISTS `tech_email`;
CREATE TABLE `tech_email` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `EMAIL` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_hit`
--

DROP TABLE IF EXISTS `tech_hit`;
CREATE TABLE `tech_hit` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `BTN_CNT` int(11) DEFAULT NULL,
  `LOGIN_CNT` int(11) DEFAULT NULL,
  `VIEW_CNT` int(11) DEFAULT NULL,
  `UPLD_CNT` int(11) DEFAULT NULL,
  `SRCH_CNT` int(11) DEFAULT NULL,
  `TOTAL_CNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_hit_log`
--

DROP TABLE IF EXISTS `tech_hit_log`;
CREATE TABLE `tech_hit_log` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TECH_HIT_ID` int(11) NOT NULL,
  `BTN_ID` int(11) DEFAULT NULL,
  `SRCH_KEY_WRD_ID` int(11) DEFAULT NULL,
  `VIEW_ID` int(11) DEFAULT NULL,
  `UPLD_ID` int(11) DEFAULT NULL,
  `LOGIN_VIEW_ID` int(11) DEFAULT NULL,
  `CST_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_jobs`
--

DROP TABLE IF EXISTS `tech_jobs`;
CREATE TABLE `tech_jobs` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tech_jobs`
--

INSERT INTO `tech_jobs` (`id`, `job_name`) VALUES
(1, 'سباكة'),
(2, 'كهرباء'),
(3, 'نقاشة'),
(4, 'الومييتال'),
(5, 'جبس'),
(6, 'جبسوم بورد'),
(7, 'سيراميك'),
(8, 'نجارة'),
(9, 'محارة'),
(10, 'رخام');

-- --------------------------------------------------------

--
-- Table structure for table `tech_offr`
--

DROP TABLE IF EXISTS `tech_offr`;
CREATE TABLE `tech_offr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `OFFR_ID` int(11) NOT NULL,
  `START_DT` datetime NOT NULL,
  `END_DT` datetime DEFAULT NULL,
  `TECH_OFFR_STAT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_profile`
--

DROP TABLE IF EXISTS `tech_profile`;
CREATE TABLE `tech_profile` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL,
  `LAST_UPD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_BY` varchar(50) NOT NULL,
  `TECH_STAT` varchar(45) NOT NULL,
  `TECH_HIT_ID` int(11) DEFAULT NULL,
  `TECH_SGMNT_ID` int(11) DEFAULT NULL,
  `TECH_GRP_ID` int(11) DEFAULT NULL,
  `TECH_TYPE_ID` int(11) DEFAULT NULL,
  `TECH_LOY_ID` int(11) DEFAULT NULL,
  `SERV_ID` int(11) DEFAULT NULL,
  `TECH_PROFILE_COMMENT` text,
  `TECH_PRICE_AVG` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_usr`
--

DROP TABLE IF EXISTS `tech_usr`;
CREATE TABLE `tech_usr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL,
  `LAST_UPD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_BY` varchar(50) DEFAULT NULL,
  `TECH_ID` int(11) NOT NULL,
  `TECH_USR_NAME` varchar(100) NOT NULL,
  `TECH_PSWD` varchar(45) NOT NULL,
  `TECH_USR_STAT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TYPE_NAME` varchar(100) NOT NULL,
  `TYPE_STAT` varchar(45) NOT NULL,
  `TYPE_START_DT` datetime NOT NULL,
  `TYPE_END_DT` datetime DEFAULT NULL,
  `TYPE_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

DROP TABLE IF EXISTS `values`;
CREATE TABLE `values` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `PAR_ID` int(11) DEFAULT NULL,
  `NAME` text NOT NULL,
  `TYPE` text NOT NULL,
  `VAL` text NOT NULL,
  `DESC_TXT` text,
  `VAL_STAT` tinyint(1) NOT NULL,
  `CODE` text,
  `ORDER` text,
  `HIGH` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
CREATE TABLE `zones` (
  `id` int(11) NOT NULL,
  `city_id` int(100) DEFAULT NULL,
  `zone` varchar(100) DEFAULT NULL,
  `arabic_zone` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `city_id`, `zone`, `arabic_zone`) VALUES
(1, 1, NULL, 'ابوقير'),
(2, 1, NULL, 'الازاريطة'),
(3, 1, NULL, 'الجمرك'),
(4, 1, NULL, 'الحضرة '),
(5, 1, NULL, 'الدخلية'),
(6, 1, NULL, 'السيوف '),
(7, 1, NULL, 'الصالحية'),
(8, 1, NULL, 'الظاهرية'),
(9, 1, NULL, 'العامرية'),
(10, 1, NULL, 'العصافرة'),
(11, 1, NULL, 'العطارين'),
(12, 1, NULL, 'العوايد'),
(13, 1, NULL, 'القباري '),
(14, 1, NULL, 'اللبان'),
(15, 1, NULL, 'المعمورة'),
(16, 1, NULL, 'المكس'),
(17, 1, NULL, 'المنتزة'),
(18, 1, NULL, 'المندرة'),
(19, 1, NULL, 'المنشية '),
(20, 1, NULL, 'النخيل'),
(21, 1, NULL, 'النزهة'),
(22, 1, NULL, 'الورديان'),
(23, 1, NULL, 'باكوس'),
(24, 1, NULL, 'بحري'),
(25, 1, NULL, 'برج العرب'),
(26, 1, NULL, 'بلوكلي'),
(27, 1, NULL, 'جليم'),
(28, 1, NULL, 'جناكليس'),
(29, 1, NULL, 'راس التين'),
(30, 1, NULL, 'زيزنيا'),
(31, 1, NULL, 'سان ستيفانو'),
(32, 1, NULL, 'سبورتينج'),
(33, 1, NULL, 'ستانلي'),
(34, 1, NULL, 'سموحة'),
(35, 1, NULL, 'سيدي بشر'),
(36, 1, NULL, 'سيدي جابر'),
(37, 1, NULL, 'فكتوريا'),
(38, 1, NULL, 'كامب شيزار'),
(39, 1, NULL, 'كفرعبده'),
(40, 1, NULL, 'كليوباترا'),
(41, 1, NULL, 'كوم الدكة'),
(42, 1, NULL, 'لوران'),
(43, 1, NULL, 'محرم بيك'),
(44, 1, NULL, 'محطةالرمل'),
(45, 1, NULL, 'ميامي'),
(46, 1, NULL, 'مينا البصل '),
(47, 2, NULL, '6 اكتوبر'),
(48, 2, NULL, 'ابورواش'),
(49, 2, NULL, 'اوسيم'),
(50, 2, NULL, 'امبابة'),
(51, 2, NULL, 'البدرشين'),
(52, 2, NULL, 'البراجيل'),
(53, 2, NULL, 'الحرانية'),
(54, 2, NULL, 'الحوامدية'),
(55, 2, NULL, 'الدقي'),
(56, 2, NULL, 'الرماية'),
(57, 2, NULL, 'الشيخ زايد'),
(59, 2, NULL, 'الصف'),
(60, 2, NULL, 'العجوزة'),
(61, 2, NULL, 'العزيزية'),
(62, 2, NULL, 'العمرانية'),
(63, 2, NULL, 'الكيت كات'),
(64, 2, NULL, 'المنصورية '),
(65, 2, NULL, 'المنيب '),
(66, 2, NULL, 'المهندسين'),
(67, 2, NULL, 'الهرم'),
(68, 2, NULL, 'الوراق'),
(69, 2, NULL, 'بشتيل'),
(70, 2, NULL, 'بولاق الدكرور'),
(71, 2, NULL, 'ترسا'),
(72, 2, NULL, 'حدائق الاهرام'),
(73, 2, NULL, 'دهشور'),
(74, 2, NULL, 'ساقية مكي'),
(75, 2, NULL, 'سقارة'),
(76, 2, NULL, 'صفط'),
(77, 2, NULL, 'فيصل'),
(78, 2, NULL, 'كرداسة'),
(79, 2, NULL, 'كفر طهرمس'),
(80, 2, NULL, 'ميت عقبا'),
(81, 2, NULL, 'ناهيا'),
(82, 3, NULL, 'المرج'),
(83, 3, NULL, 'المطرية'),
(84, 3, NULL, 'عين شمس'),
(85, 3, NULL, 'السلام'),
(86, 3, NULL, 'النزهة'),
(87, 3, NULL, 'مصر الجديدة'),
(88, 3, NULL, 'مدينة نصر'),
(89, 3, NULL, ' الوايلى'),
(90, 3, NULL, 'باب الشعرية'),
(91, 3, NULL, 'الموسكي'),
(92, 3, NULL, 'وسط البلد'),
(93, 3, NULL, 'الازبكية'),
(94, 3, NULL, 'عابدين'),
(95, 3, NULL, 'بولاق'),
(96, 3, NULL, 'الزيتون'),
(97, 3, NULL, 'حدائق القبة'),
(98, 3, NULL, 'الزاوية الحمراء'),
(99, 3, NULL, 'الشرابية'),
(100, 3, NULL, 'الساحل'),
(101, 3, NULL, 'شبرا'),
(102, 3, NULL, 'روض الفرج'),
(103, 3, NULL, 'السيدة زينب'),
(104, 3, NULL, 'مصر القديمة'),
(105, 3, NULL, 'الخليفة'),
(106, 3, NULL, 'المقطم'),
(107, 3, NULL, 'البساتين'),
(108, 3, NULL, 'دار السلام'),
(109, 3, NULL, 'المعادي وطرة'),
(110, 3, NULL, 'حلوان'),
(111, 3, NULL, ' التبين'),
(112, 3, NULL, '15 مايو');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_usr`
--
ALTER TABLE `adm_usr`
  ADD PRIMARY KEY (`ID`,`EMAIL`,`USR_NAME`),
  ADD UNIQUE KEY `USR_NAME_UNIQUE` (`USR_NAME`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_name`,`city_ar_name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `cntrl_btn`
--
ALTER TABLE `cntrl_btn`
  ADD PRIMARY KEY (`ID`,`CNTRL_NAME`),
  ADD UNIQUE KEY `CNTRL_NAME_UNIQUE` (`CNTRL_NAME`);

--
-- Indexes for table `cntrl_srch_key_wrd`
--
ALTER TABLE `cntrl_srch_key_wrd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cntrl_upld`
--
ALTER TABLE `cntrl_upld`
  ADD PRIMARY KEY (`ID`,`UPLD_NAME`),
  ADD UNIQUE KEY `UPLD_NAME_UNIQUE` (`UPLD_NAME`);

--
-- Indexes for table `cntrl_view`
--
ALTER TABLE `cntrl_view`
  ADD PRIMARY KEY (`ID`,`VIEW_NAME`),
  ADD UNIQUE KEY `VIEW_NAME_UNIQUE` (`VIEW_NAME`);

--
-- Indexes for table `cont_mthd`
--
ALTER TABLE `cont_mthd`
  ADD PRIMARY KEY (`ID`,`CONT_MTHD_TYPE`),
  ADD UNIQUE KEY `CONT_MTHD_TYPE_UNIQUE` (`CONT_MTHD_TYPE`);

--
-- Indexes for table `cst_addr`
--
ALTER TABLE `cst_addr`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cst_cont`
--
ALTER TABLE `cst_cont`
  ADD PRIMARY KEY (`ID`,`CST_ID`),
  ADD UNIQUE KEY `CST_ID_UNIQUE` (`CST_ID`);

--
-- Indexes for table `cst_hit`
--
ALTER TABLE `cst_hit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CST_ID_UNIQUE` (`CST_ID`);

--
-- Indexes for table `cst_hit_log`
--
ALTER TABLE `cst_hit_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cst_offr`
--
ALTER TABLE `cst_offr`
  ADD PRIMARY KEY (`ID`,`CST_ID`),
  ADD UNIQUE KEY `CST_ID_UNIQUE` (`CST_ID`);

--
-- Indexes for table `cst_profile`
--
ALTER TABLE `cst_profile`
  ADD PRIMARY KEY (`email`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `cst_sgmnt`
--
ALTER TABLE `cst_sgmnt`
  ADD PRIMARY KEY (`ID`,`SGMNT_NAME`),
  ADD UNIQUE KEY `SGMNT_NAME_UNIQUE` (`SGMNT_NAME`);

--
-- Indexes for table `cst_tech_req`
--
ALTER TABLE `cst_tech_req`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cst_tech_req_log`
--
ALTER TABLE `cst_tech_req_log`
  ADD PRIMARY KEY (`ID`,`CST_TECH_REQ_ID`),
  ADD UNIQUE KEY `CST_TECH_REQ_ID_UNIQUE` (`CST_TECH_REQ_ID`);

--
-- Indexes for table `cst_usr`
--
ALTER TABLE `cst_usr`
  ADD PRIMARY KEY (`ID`,`USR_NAME`),
  ADD UNIQUE KEY `CST_ID_UNIQUE` (`CST_ID`),
  ADD UNIQUE KEY `USR_NAME_UNIQUE` (`USR_NAME`);

--
-- Indexes for table `gndr`
--
ALTER TABLE `gndr`
  ADD PRIMARY KEY (`ID`,`GNDR_NAME`),
  ADD UNIQUE KEY `GNDR_NAME_UNIQUE` (`GNDR_NAME`);

--
-- Indexes for table `grp`
--
ALTER TABLE `grp`
  ADD PRIMARY KEY (`ID`,`GRP_NAME`),
  ADD UNIQUE KEY `GRP_NAME_UNIQUE` (`GRP_NAME`);

--
-- Indexes for table `loy`
--
ALTER TABLE `loy`
  ADD PRIMARY KEY (`ID`,`CST_ID`),
  ADD UNIQUE KEY `CST_ID_UNIQUE` (`CST_ID`);

--
-- Indexes for table `loy_prg`
--
ALTER TABLE `loy_prg`
  ADD PRIMARY KEY (`ID`,`LOY_PRG_NAME`),
  ADD UNIQUE KEY `LOY_PRG_NAME_UNIQUE` (`LOY_PRG_NAME`);

--
-- Indexes for table `offr`
--
ALTER TABLE `offr`
  ADD PRIMARY KEY (`ID`,`OFFR_NAME`),
  ADD UNIQUE KEY `OFFR_NAME_UNIQUE` (`OFFR_NAME`);

--
-- Indexes for table `privilige`
--
ALTER TABLE `privilige`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `serv`
--
ALTER TABLE `serv`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `spnsr`
--
ALTER TABLE `spnsr`
  ADD PRIMARY KEY (`ID`,`EMAIL`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`);

--
-- Indexes for table `tech_addr`
--
ALTER TABLE `tech_addr`
  ADD PRIMARY KEY (`ID`,`TECH_ID`),
  ADD UNIQUE KEY `TECH_ID_UNIQUE` (`TECH_ID`);

--
-- Indexes for table `tech_cont`
--
ALTER TABLE `tech_cont`
  ADD PRIMARY KEY (`ID`,`TECH_ID`),
  ADD UNIQUE KEY `TECH_ID_UNIQUE` (`TECH_ID`);

--
-- Indexes for table `tech_email`
--
ALTER TABLE `tech_email`
  ADD PRIMARY KEY (`ID`,`TECH_ID`,`EMAIL`),
  ADD UNIQUE KEY `TECH_ID_UNIQUE` (`TECH_ID`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`);

--
-- Indexes for table `tech_hit`
--
ALTER TABLE `tech_hit`
  ADD PRIMARY KEY (`ID`,`TECH_ID`),
  ADD UNIQUE KEY `TECH_ID_UNIQUE` (`TECH_ID`);

--
-- Indexes for table `tech_hit_log`
--
ALTER TABLE `tech_hit_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tech_jobs`
--
ALTER TABLE `tech_jobs`
  ADD PRIMARY KEY (`job_name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tech_offr`
--
ALTER TABLE `tech_offr`
  ADD PRIMARY KEY (`ID`,`TECH_ID`),
  ADD UNIQUE KEY `TECH_ID_UNIQUE` (`TECH_ID`);

--
-- Indexes for table `tech_profile`
--
ALTER TABLE `tech_profile`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tech_usr`
--
ALTER TABLE `tech_usr`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TECH_ID_UNIQUE` (`TECH_ID`),
  ADD UNIQUE KEY `TECH_USR_NAME_UNIQUE` (`TECH_USR_NAME`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID`,`TYPE_NAME`),
  ADD UNIQUE KEY `TYPE_NAME_UNIQUE` (`TYPE_NAME`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cst_addr`
--
ALTER TABLE `cst_addr`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cst_cont`
--
ALTER TABLE `cst_cont`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cst_profile`
--
ALTER TABLE `cst_profile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cst_usr`
--
ALTER TABLE `cst_usr`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tech_addr`
--
ALTER TABLE `tech_addr`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tech_cont`
--
ALTER TABLE `tech_cont`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tech_jobs`
--
ALTER TABLE `tech_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tech_profile`
--
ALTER TABLE `tech_profile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tech_usr`
--
ALTER TABLE `tech_usr`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
