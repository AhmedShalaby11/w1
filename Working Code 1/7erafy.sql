-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2017 at 02:01 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `7erafy`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm_usr`
--

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
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CITY_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cntrl_btn`
--

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
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `COUNTRY_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_addr`
--

CREATE TABLE `cst_addr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `ADDR_COMMENT` text,
  `APARTMENT` text NOT NULL,
  `FLOOR` text NOT NULL,
  `BUILDING` text NOT NULL,
  `STREET` text NOT NULL,
  `CITY_ID` int(11) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_cont`
--

CREATE TABLE `cst_cont` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `MOB_NUM` varchar(45) NOT NULL,
  `LL_NUM` varchar(45) DEFAULT NULL,
  `CONT_MTHD_ID` int(11) NOT NULL,
  `FST_NAME` text NOT NULL,
  `MID_NAME` text NOT NULL,
  `LST_NAME` text NOT NULL,
  `NICK_NAME` text,
  `CONT_COMMENT` text,
  `PREFER_CONT_DT_FROM` varchar(45) DEFAULT NULL,
  `PREFER_CONT_DT_TO` varchar(45) DEFAULT NULL,
  `GENDER_ID` int(11) NOT NULL,
  `BIRTH_DATE` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_hit`
--

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

CREATE TABLE `cst_profile` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `CST_STAT` varchar(45) NOT NULL,
  `CST_HIT_ID` int(11) DEFAULT NULL,
  `CST_SGMNT_ID` int(11) DEFAULT NULL,
  `CST_GRP_ID` int(11) DEFAULT NULL,
  `CST_TYPE_ID` int(11) DEFAULT NULL,
  `CST_LOY_ID` int(11) DEFAULT NULL,
  `CST_PROFILE_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cst_sgmnt`
--

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

CREATE TABLE `cst_usr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` datetime NOT NULL,
  `CST_ID` int(11) NOT NULL,
  `USR_STAT` varchar(45) NOT NULL,
  `USR_NAME` varchar(100) NOT NULL,
  `PSWD` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cst_usr`
--

INSERT INTO `cst_usr` (`ID`, `CREATED`, `CREATED_BY`, `LAST_UPD`, `LAST_UPD_BY`, `CST_ID`, `USR_STAT`, `USR_NAME`, `PSWD`) VALUES
(1, '2017-02-12 01:25:36', 1, '2017-02-12 01:25:36', '0000-00-00 00:00:00', 1, 'Active', 'MAGED', 'MAGED'),
(2, '2017-02-12 01:25:36', 2, '2017-02-12 01:25:36', '0000-00-00 00:00:00', 2, 'Active', 'MAGEDD', 'MAGED'),
(3, '2017-02-12 01:42:44', 3, '2017-02-12 01:42:44', '0000-00-00 00:00:00', 3, 'Active', 'MAGEDDDD', 'MAGED'),
(4, '2017-02-12 01:46:29', 4, '2017-02-12 01:46:29', '0000-00-00 00:00:00', 4, 'Active', 'MAGEDsDDD', 'MAGED'),
(5, '2017-02-12 01:59:48', 5, '2017-02-12 01:59:48', '0000-00-00 00:00:00', 5, 'Active', 'MAG5EDsDDD', 'MAGED');

-- --------------------------------------------------------

--
-- Table structure for table `gndr`
--

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
-- Table structure for table `privlege`
--

CREATE TABLE `privlege` (
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
  `EMAIL` varchar(100) NOT NULL,
  `LL_NUM` varchar(45) DEFAULT NULL,
  `SPNSR_CONTR_START_DT` datetime NOT NULL,
  `SPNSR_CONTR_END_DT` datetime DEFAULT NULL,
  `SPNSR_COMMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `STATE_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_addr`
--

CREATE TABLE `tech_addr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `ADDR_COMMENT` text,
  `APARTMENT` text,
  `FLOOR` text,
  `BUILDING` text,
  `STREET` text,
  `CITY_ID` int(11) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_cont`
--

CREATE TABLE `tech_cont` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `MOB_NUM` varchar(45) NOT NULL,
  `LL_NUM` varchar(45) DEFAULT NULL,
  `CONT_MTHD_ID` int(11) NOT NULL,
  `FST_NAME` text NOT NULL,
  `MID_NAME` text NOT NULL,
  `LST_NAME` text NOT NULL,
  `NICK_NAME` text,
  `CONT_COMMENT` text,
  `GENDER_ID` int(11) DEFAULT NULL,
  `BIRTH_DATE` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_email`
--

CREATE TABLE `tech_email` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TECH_ID` int(11) NOT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_hit`
--

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
-- Table structure for table `tech_offr`
--

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

CREATE TABLE `tech_profile` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) NOT NULL,
  `TECH_STAT` varchar(45) NOT NULL,
  `TECH_HIT_ID` int(11) DEFAULT NULL,
  `TECH_SGMNT_ID` int(11) DEFAULT NULL,
  `TECH_GRP_ID` int(11) DEFAULT NULL,
  `TECH_TYPE_ID` int(11) DEFAULT NULL,
  `TECH_LOY_ID` int(11) DEFAULT NULL,
  `SERV_ID` int(11) NOT NULL,
  `TECH_PROFILE_COMMENT` text,
  `TECH_PRICE_AVG` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tech_usr`
--

CREATE TABLE `tech_usr` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `LAST_UPD` datetime NOT NULL,
  `LAST_UPD_BY` int(11) DEFAULT NULL,
  `TECH_ID` int(11) NOT NULL,
  `TECH_USR_NAME` varchar(100) NOT NULL,
  `TECH_PSWD` varchar(45) NOT NULL,
  `TECH_USR_STAT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

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
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`ID`,`CITY_NAME`),
  ADD UNIQUE KEY `CITY_NAME_UNIQUE` (`CITY_NAME`);

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
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`ID`,`COUNTRY_NAME`),
  ADD UNIQUE KEY `COUNTRY_NAME_UNIQUE` (`COUNTRY_NAME`);

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
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `privlege`
--
ALTER TABLE `privlege`
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
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`ID`,`STATE_NAME`),
  ADD UNIQUE KEY `STATE_NAME_UNIQUE` (`STATE_NAME`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
