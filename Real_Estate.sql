-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2019 at 11:55 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Real_Estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `AGENCY`
--

CREATE TABLE `AGENCY` (
  `agencylicence` int(10) NOT NULL,
  `agencyname` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AGENCY`
--

INSERT INTO `AGENCY` (`agencylicence`, `agencyname`, `website`, `phone`) VALUES
(153222312, 'House Sellers', 'www.housesellers.org', 432832132),
(153242423, 'Best Real Estate', 'www.bestrealestate.com', 345893232),
(225328623, 'Trusted Real Estate', 'www.trustedrealestate.com', 640797854);

-- --------------------------------------------------------

--
-- Table structure for table `AGENT`
--

CREATE TABLE `AGENT` (
  `agentlicence` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `agency` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AGENT`
--

INSERT INTO `AGENT` (`agentlicence`, `name`, `email`, `mobile`, `agency`) VALUES
(89461765, 'Dan Miller', 'dan.miller@gmail.com', 434232865, 153222312),
(98432371, 'Poh Ling', 'poh.ling@gmail.com', 443232697, 225328623),
(242367744, 'Tim Wang', 'tim.wang@gmail.com', 434443865, 153222312),
(383392365, 'Kelly Jean', 'Kelly.Jean@gmail.com', 232867291, 153242423);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Agent_and_pricesum_for_all_properties_2018`
-- (See below for the actual view)
--
CREATE TABLE `Agent_and_pricesum_for_all_properties_2018` (
`agent` int(15)
,`SUM(price)` decimal(54,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Agent_and_price_for_all_properties_2018`
-- (See below for the actual view)
--
CREATE TABLE `Agent_and_price_for_all_properties_2018` (
`agent` int(15)
,`price` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Agent_and_price_for_properties_2018`
-- (See below for the actual view)
--
CREATE TABLE `Agent_and_price_for_properties_2018` (
`agent` int(15)
,`price` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Agent_and_price_for_sharedproperties_2018`
-- (See below for the actual view)
--
CREATE TABLE `Agent_and_price_for_sharedproperties_2018` (
`agent` int(15)
,`price` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `All_camperdown_rentals`
-- (See below for the actual view)
--
CREATE TABLE `All_camperdown_rentals` (
`stname` varchar(30)
,`sttype` varchar(10)
,`pid` int(11)
,`price` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `All_suburb_with_properties_sold_over_4weeks`
-- (See below for the actual view)
--
CREATE TABLE `All_suburb_with_properties_sold_over_4weeks` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `All_suburb_with_properties_sold_since_2017`
-- (See below for the actual view)
--
CREATE TABLE `All_suburb_with_properties_sold_since_2017` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Apartments_aval_in_parramatta_rd`
-- (See below for the actual view)
--
CREATE TABLE `Apartments_aval_in_parramatta_rd` (
`COUNT(*)` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `average_rent_by_suburb_2014`
-- (See below for the actual view)
--
CREATE TABLE `average_rent_by_suburb_2014` (
`suburb` varchar(30)
,`Price` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `average_rent_by_suburb_2016`
-- (See below for the actual view)
--
CREATE TABLE `average_rent_by_suburb_2016` (
`suburb` varchar(30)
,`Price` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `avg_carspaces_on_pyrmont_bridge_houses`
-- (See below for the actual view)
--
CREATE TABLE `avg_carspaces_on_pyrmont_bridge_houses` (
`AVG(carspaces)` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Best_agent_2018`
-- (See below for the actual view)
--
CREATE TABLE `Best_agent_2018` (
`name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `agency` int(10) NOT NULL,
  `brsuburb` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `Camperdown_property_rentals`
-- (See below for the actual view)
--
CREATE TABLE `Camperdown_property_rentals` (
`stname` varchar(30)
,`sttype` varchar(10)
,`pid` int(9)
,`price` int(9)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Camperdown_sharedproperty_rentals`
-- (See below for the actual view)
--
CREATE TABLE `Camperdown_sharedproperty_rentals` (
`stname` varchar(30)
,`sttype` varchar(10)
,`pid` int(9)
,`price` int(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `LISTING`
--

CREATE TABLE `LISTING` (
  `pid` int(9) NOT NULL,
  `agent` int(15) NOT NULL,
  `datelisted` date NOT NULL,
  `dateclose` date NOT NULL,
  `type` char(4) NOT NULL,
  `price` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LISTING`
--

INSERT INTO `LISTING` (`pid`, `agent`, `datelisted`, `dateclose`, `type`, `price`) VALUES
(100000001, 98432371, '2016-01-23', '2017-01-23', 'Sale', 975000),
(100000002, 98432371, '2015-01-23', '2016-12-02', 'Sale', 975000),
(100000010, 98432371, '2015-01-23', '2016-12-02', 'Sale', 439999),
(100000012, 98432371, '2014-12-21', '2015-05-23', 'Sale', 459999),
(100000022, 98432371, '2016-01-12', '2016-02-21', 'Sale', 459999),
(400000002, 383392365, '2018-12-01', '2018-12-23', 'Rent', 320),
(400000003, 89461765, '2018-02-01', '2018-02-12', 'Rent', 450),
(400000005, 242367744, '2018-05-11', '2018-05-19', 'Rent', 650),
(400000007, 383392365, '2018-04-23', '2018-05-09', 'Rent', 250),
(500000002, 98432371, '2013-12-23', '2014-02-23', 'Rent', 375),
(500000004, 98432371, '2014-12-23', '2015-11-23', 'Rent', 575),
(500000006, 98432371, '2014-08-23', '2014-11-23', 'Rent', 400);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Prices_of_poh_ling_sales`
-- (See below for the actual view)
--
CREATE TABLE `Prices_of_poh_ling_sales` (
`SUM(price)` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `PROPERTY`
--

CREATE TABLE `PROPERTY` (
  `pid` int(9) NOT NULL,
  `stno` int(5) NOT NULL,
  `stname` varchar(30) NOT NULL,
  `sttype` varchar(10) NOT NULL,
  `suburb` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `postcode` int(4) NOT NULL,
  `carspaces` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROPERTY`
--

INSERT INTO `PROPERTY` (`pid`, `stno`, `stname`, `sttype`, `suburb`, `state`, `postcode`, `carspaces`) VALUES
(33345656, 101, 'Derwent', 'Court', 'Annandale', 'QLD', 4814, 3),
(91323323, 101, 'Bicycle', 'Ave', 'Annandale', 'QLD', 4814, 1),
(100000001, 15, 'Premium', 'St', 'Benowa', 'QLD', 4214, 3),
(100000002, 14, 'Premium', 'St', 'Benowa', 'QLD', 4214, 3),
(100000010, 14, 'Forward', 'Ave', 'Thomson', 'QLD', 4101, 3),
(100000012, 22, 'Forward', 'Ave', 'Thomson', 'QLD', 4101, 3),
(100000022, 45, 'Unlock', 'Ave', 'Cardio', 'QLD', 4121, 3),
(123456789, 23, 'Derwent', 'Court', 'Annandale', 'QLD', 4814, 2),
(200000010, 25, 'Parramatta', 'Rd', 'Question', 'QLD', 4168, 2),
(200000011, 26, 'Parramatta', 'Rd', 'Question', 'QLD', 4168, 2),
(223413298, 101, 'Derwent', 'Court', 'Annandale', 'QLD', 4814, 2),
(300000010, 23, 'Pyrmont Bridge', 'Rd', 'Cheque', 'QLD', 4238, 2),
(300000011, 24, 'Pyrmont Bridge', 'Rd', 'Cheque', 'QLD', 4238, 3),
(300000013, 31, 'Pyrmont Bridge', 'Rd', 'Cheque', 'QLD', 4238, 1),
(300000014, 24, 'Pyrmont Bridge', 'Rd', 'Cheque', 'QLD', 4238, 2),
(326453897, 50, 'Academy', 'St', 'Annandale', 'QLD', 4814, 1),
(400000001, 12, 'Downing', 'St', 'Camperdown', 'QLD', 4111, 2),
(400000002, 13, 'Downing', 'St', 'Camperdown', 'QLD', 4111, 2),
(400000003, 14, 'Downing', 'St', 'Camperdown', 'QLD', 4111, 2),
(400000004, 15, 'Morning', 'St', 'Camperdown', 'QLD', 4111, 2),
(400000005, 16, 'Morning', 'St', 'Camperdown', 'QLD', 4111, 2),
(400000006, 17, 'Turning', 'St', 'Camperdown', 'QLD', 4111, 2),
(400000007, 18, 'Turning', 'St', 'Camperdown', 'QLD', 4111, 2),
(500000001, 78, 'Outdoor', 'Court', 'Benowa', 'QLD', 4214, 2),
(500000002, 91, 'Outdoor', 'Court', 'Benowa', 'QLD', 4214, 2),
(500000003, 23, 'Mountain', 'Ave', 'Cardio', 'QLD', 4121, 2),
(500000004, 24, 'Mountain', 'Ave', 'Cardio', 'QLD', 4121, 2),
(500000005, 24, 'Thomson', 'Ave', 'Cardio', 'QLD', 4101, 2),
(500000006, 65, 'Thomson', 'Ave', 'Cardio', 'QLD', 4101, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rent_difference_2014_2016`
-- (See below for the actual view)
--
CREATE TABLE `rent_difference_2014_2016` (
`suburb` varchar(30)
,`Pricediff` decimal(15,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rent_prices_by_suburb_2014`
-- (See below for the actual view)
--
CREATE TABLE `rent_prices_by_suburb_2014` (
`suburb` varchar(30)
,`price` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rent_prices_by_suburb_2016`
-- (See below for the actual view)
--
CREATE TABLE `rent_prices_by_suburb_2016` (
`suburb` varchar(30)
,`price` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `SHAREDLISTING`
--

CREATE TABLE `SHAREDLISTING` (
  `unitno` int(5) NOT NULL,
  `pid` int(9) NOT NULL,
  `agent` int(15) NOT NULL,
  `sdatelisted` date NOT NULL,
  `dateclose` date DEFAULT NULL,
  `type` char(4) NOT NULL,
  `price` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SHAREDLISTING`
--

INSERT INTO `SHAREDLISTING` (`unitno`, `pid`, `agent`, `sdatelisted`, `dateclose`, `type`, `price`) VALUES
(2, 223413298, 383392365, '2016-05-13', '2016-12-13', 'Sale', 457500),
(12, 123456789, 383392365, '2016-01-23', '2016-07-01', 'Sale', 249999),
(12, 400000001, 89461765, '2018-01-23', '2018-02-04', 'Rent', 550),
(15, 91323323, 242367744, '2016-05-09', '2016-06-01', 'Sale', 99900),
(23, 500000001, 98432371, '2014-08-23', '2016-11-23', 'Rent', 400),
(24, 500000001, 98432371, '2014-08-23', '2014-11-23', 'Rent', 400),
(25, 500000001, 98432371, '2014-08-23', '2014-11-23', 'Rent', 400),
(27, 500000003, 98432371, '2014-08-23', '2014-11-23', 'Rent', 250),
(33, 33345656, 242367744, '2016-07-01', '2016-07-12', 'Sale', 120000),
(34, 326453897, 98432371, '2016-02-27', '2017-01-28', 'Sale', 650000),
(101, 500000003, 98432371, '2014-08-23', '2016-11-23', 'Rent', 250),
(111, 200000011, 89461765, '2018-01-23', NULL, 'Rent', 350),
(1001, 200000010, 89461765, '2018-08-23', NULL, 'Rent', 450),
(1001, 400000004, 89461765, '2018-02-23', '2018-02-25', 'Rent', 450),
(1001, 500000005, 98432371, '2014-08-23', '2014-11-23', 'Rent', 550),
(1003, 200000010, 89461765, '2018-08-23', NULL, 'Rent', 450),
(1423, 200000010, 89461765, '2018-08-23', NULL, 'Rent', 450),
(1423, 400000006, 242367744, '2018-12-01', '2018-12-23', 'Sale', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `SHAREDPROPERTY`
--

CREATE TABLE `SHAREDPROPERTY` (
  `unitno` int(5) NOT NULL,
  `pid` int(9) NOT NULL,
  `proptype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SHAREDPROPERTY`
--

INSERT INTO `SHAREDPROPERTY` (`unitno`, `pid`, `proptype`) VALUES
(2, 223413298, 'Townhouse'),
(12, 123456789, 'Townhouse'),
(12, 400000001, 'Townhouse'),
(15, 91323323, 'Townhouse'),
(23, 500000001, 'Townhouse'),
(24, 500000001, 'Townhouse'),
(25, 500000001, 'Townhouse'),
(27, 500000003, 'Apartment'),
(33, 33345656, 'Townhouse'),
(34, 326453897, 'Townhouse'),
(101, 500000003, 'Apartment'),
(111, 200000011, 'Apartment'),
(1001, 200000010, 'Apartment'),
(1001, 400000004, 'Apartment'),
(1001, 500000005, 'Apartment'),
(1003, 200000010, 'Apartment'),
(1321, 400000006, 'Apartment'),
(1423, 200000010, 'Apartment');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Street_with_highest_average_rent`
-- (See below for the actual view)
--
CREATE TABLE `Street_with_highest_average_rent` (
`stname` varchar(30)
,`sttype` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Suburb_that_has_always_sold_under_4weeks`
-- (See below for the actual view)
--
CREATE TABLE `Suburb_that_has_always_sold_under_4weeks` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Suburb_that_have_not_had_sale_since_2017`
-- (See below for the actual view)
--
CREATE TABLE `Suburb_that_have_not_had_sale_since_2017` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `suburb_with_highest_increase_rent`
-- (See below for the actual view)
--
CREATE TABLE `suburb_with_highest_increase_rent` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Suburb_with_properties_sold_over_4weeks`
-- (See below for the actual view)
--
CREATE TABLE `Suburb_with_properties_sold_over_4weeks` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Suburb_with_properties_sold_since_2017`
-- (See below for the actual view)
--
CREATE TABLE `Suburb_with_properties_sold_since_2017` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Suburb_with_sharedproperties_sold_over_4weeks`
-- (See below for the actual view)
--
CREATE TABLE `Suburb_with_sharedproperties_sold_over_4weeks` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Suburb_with_sharedproperties_sold_since_2017`
-- (See below for the actual view)
--
CREATE TABLE `Suburb_with_sharedproperties_sold_since_2017` (
`suburb` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Total_value_sold_by_poh_ling`
-- (See below for the actual view)
--
CREATE TABLE `Total_value_sold_by_poh_ling` (
`TotalValue` decimal(54,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Townhouses_sold_in_2016_Annandale`
-- (See below for the actual view)
--
CREATE TABLE `Townhouses_sold_in_2016_Annandale` (
`unitno` int(5)
,`pid` int(9)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Value_of_property_sold_poh_ling`
-- (See below for the actual view)
--
CREATE TABLE `Value_of_property_sold_poh_ling` (
`SUM(price)` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Value_of_sharedproperty_sold_poh_ling`
-- (See below for the actual view)
--
CREATE TABLE `Value_of_sharedproperty_sold_poh_ling` (
`SUM(price)` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Structure for view `Agent_and_pricesum_for_all_properties_2018`
--
DROP TABLE IF EXISTS `Agent_and_pricesum_for_all_properties_2018`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Agent_and_pricesum_for_all_properties_2018`  AS  (select `Agent_and_price_for_all_properties_2018`.`agent` AS `agent`,sum(`Agent_and_price_for_all_properties_2018`.`price`) AS `SUM(price)` from `Agent_and_price_for_all_properties_2018` group by `Agent_and_price_for_all_properties_2018`.`agent`) ;

-- --------------------------------------------------------

--
-- Structure for view `Agent_and_price_for_all_properties_2018`
--
DROP TABLE IF EXISTS `Agent_and_price_for_all_properties_2018`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Agent_and_price_for_all_properties_2018`  AS  select `Agent_and_price_for_sharedproperties_2018`.`agent` AS `agent`,`Agent_and_price_for_sharedproperties_2018`.`price` AS `price` from `Agent_and_price_for_sharedproperties_2018` union all select `Agent_and_price_for_properties_2018`.`agent` AS `agent`,`Agent_and_price_for_properties_2018`.`price` AS `price` from `Agent_and_price_for_properties_2018` ;

-- --------------------------------------------------------

--
-- Structure for view `Agent_and_price_for_properties_2018`
--
DROP TABLE IF EXISTS `Agent_and_price_for_properties_2018`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Agent_and_price_for_properties_2018`  AS  (select `LISTING`.`agent` AS `agent`,sum(`LISTING`.`price`) AS `price` from `LISTING` where (`LISTING`.`dateclose` between '2018-01-01' and '2018-12-31') group by `LISTING`.`agent`) ;

-- --------------------------------------------------------

--
-- Structure for view `Agent_and_price_for_sharedproperties_2018`
--
DROP TABLE IF EXISTS `Agent_and_price_for_sharedproperties_2018`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Agent_and_price_for_sharedproperties_2018`  AS  (select `SHAREDLISTING`.`agent` AS `agent`,sum(`SHAREDLISTING`.`price`) AS `price` from `SHAREDLISTING` where (`SHAREDLISTING`.`dateclose` between '2018-01-01' and '2018-12-31') group by `SHAREDLISTING`.`agent`) ;

-- --------------------------------------------------------

--
-- Structure for view `All_camperdown_rentals`
--
DROP TABLE IF EXISTS `All_camperdown_rentals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `All_camperdown_rentals`  AS  select `Camperdown_sharedproperty_rentals`.`stname` AS `stname`,`Camperdown_sharedproperty_rentals`.`sttype` AS `sttype`,`Camperdown_sharedproperty_rentals`.`pid` AS `pid`,`Camperdown_sharedproperty_rentals`.`price` AS `price` from `Camperdown_sharedproperty_rentals` union all select `Camperdown_property_rentals`.`stname` AS `stname`,`Camperdown_property_rentals`.`sttype` AS `sttype`,`Camperdown_property_rentals`.`pid` AS `pid`,`Camperdown_property_rentals`.`price` AS `price` from `Camperdown_property_rentals` ;

-- --------------------------------------------------------

--
-- Structure for view `All_suburb_with_properties_sold_over_4weeks`
--
DROP TABLE IF EXISTS `All_suburb_with_properties_sold_over_4weeks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `All_suburb_with_properties_sold_over_4weeks`  AS  select `Suburb_with_properties_sold_over_4weeks`.`suburb` AS `suburb` from `Suburb_with_properties_sold_over_4weeks` union all select `Suburb_with_sharedproperties_sold_over_4weeks`.`suburb` AS `suburb` from `Suburb_with_sharedproperties_sold_over_4weeks` ;

-- --------------------------------------------------------

--
-- Structure for view `All_suburb_with_properties_sold_since_2017`
--
DROP TABLE IF EXISTS `All_suburb_with_properties_sold_since_2017`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `All_suburb_with_properties_sold_since_2017`  AS  select `Suburb_with_sharedproperties_sold_since_2017`.`suburb` AS `suburb` from `Suburb_with_sharedproperties_sold_since_2017` union all select `Suburb_with_properties_sold_since_2017`.`suburb` AS `suburb` from `Suburb_with_properties_sold_since_2017` ;

-- --------------------------------------------------------

--
-- Structure for view `Apartments_aval_in_parramatta_rd`
--
DROP TABLE IF EXISTS `Apartments_aval_in_parramatta_rd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Apartments_aval_in_parramatta_rd`  AS  (select count(0) AS `COUNT(*)` from ((`SHAREDPROPERTY` `S` join `PROPERTY` `P`) join `SHAREDLISTING` `L`) where ((`S`.`pid` = `P`.`pid`) and (`S`.`unitno` = `L`.`unitno`) and (`P`.`stname` = 'Parramatta') and (`P`.`sttype` = 'Rd') and (`S`.`proptype` = 'Apartment') and (`L`.`type` = 'Rent') and isnull(`L`.`dateclose`))) ;

-- --------------------------------------------------------

--
-- Structure for view `average_rent_by_suburb_2014`
--
DROP TABLE IF EXISTS `average_rent_by_suburb_2014`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `average_rent_by_suburb_2014`  AS  (select `rent_prices_by_suburb_2014`.`suburb` AS `suburb`,avg(`rent_prices_by_suburb_2014`.`price`) AS `Price` from `rent_prices_by_suburb_2014` group by `rent_prices_by_suburb_2014`.`suburb`) ;

-- --------------------------------------------------------

--
-- Structure for view `average_rent_by_suburb_2016`
--
DROP TABLE IF EXISTS `average_rent_by_suburb_2016`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `average_rent_by_suburb_2016`  AS  (select `rent_prices_by_suburb_2016`.`suburb` AS `suburb`,avg(`rent_prices_by_suburb_2016`.`price`) AS `Price` from `rent_prices_by_suburb_2016` group by `rent_prices_by_suburb_2016`.`suburb`) ;

-- --------------------------------------------------------

--
-- Structure for view `avg_carspaces_on_pyrmont_bridge_houses`
--
DROP TABLE IF EXISTS `avg_carspaces_on_pyrmont_bridge_houses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `avg_carspaces_on_pyrmont_bridge_houses`  AS  (select avg(`PROPERTY`.`carspaces`) AS `AVG(carspaces)` from `PROPERTY` where ((`PROPERTY`.`stname` = 'Pyrmont Bridge') and (`PROPERTY`.`sttype` = 'Rd') and (not(`PROPERTY`.`pid` in (select `SHAREDPROPERTY`.`pid` from `SHAREDPROPERTY`))))) ;

-- --------------------------------------------------------

--
-- Structure for view `Best_agent_2018`
--
DROP TABLE IF EXISTS `Best_agent_2018`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Best_agent_2018`  AS  (select `AGENT`.`name` AS `name` from `AGENT` where (`AGENT`.`agentlicence` = (select `Agent_and_pricesum_for_all_properties_2018`.`agent` from `Agent_and_pricesum_for_all_properties_2018` where `Agent_and_pricesum_for_all_properties_2018`.`SUM(price)` >= all (select `Agent_and_pricesum_for_all_properties_2018`.`SUM(price)` from `Agent_and_pricesum_for_all_properties_2018`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `Camperdown_property_rentals`
--
DROP TABLE IF EXISTS `Camperdown_property_rentals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Camperdown_property_rentals`  AS  (select `P`.`stname` AS `stname`,`P`.`sttype` AS `sttype`,`L`.`pid` AS `pid`,`L`.`price` AS `price` from (`PROPERTY` `P` join `LISTING` `L`) where ((`P`.`pid` = `L`.`pid`) and (`P`.`suburb` = 'Camperdown') and (`L`.`type` = 'Rent'))) ;

-- --------------------------------------------------------

--
-- Structure for view `Camperdown_sharedproperty_rentals`
--
DROP TABLE IF EXISTS `Camperdown_sharedproperty_rentals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Camperdown_sharedproperty_rentals`  AS  (select `P`.`stname` AS `stname`,`P`.`sttype` AS `sttype`,`S`.`pid` AS `pid`,`S`.`price` AS `price` from (`PROPERTY` `P` join `SHAREDLISTING` `S`) where ((`P`.`pid` = `S`.`pid`) and (`P`.`suburb` = 'Camperdown') and (`S`.`type` = 'Rent'))) ;

-- --------------------------------------------------------

--
-- Structure for view `Prices_of_poh_ling_sales`
--
DROP TABLE IF EXISTS `Prices_of_poh_ling_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Prices_of_poh_ling_sales`  AS  select `Value_of_sharedproperty_sold_poh_ling`.`SUM(price)` AS `SUM(price)` from `Value_of_sharedproperty_sold_poh_ling` union select `Value_of_property_sold_poh_ling`.`SUM(price)` AS `SUM(price)` from `Value_of_property_sold_poh_ling` ;

-- --------------------------------------------------------

--
-- Structure for view `rent_difference_2014_2016`
--
DROP TABLE IF EXISTS `rent_difference_2014_2016`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rent_difference_2014_2016`  AS  (select `A`.`suburb` AS `suburb`,(`A`.`Price` - `B`.`Price`) AS `Pricediff` from (`average_rent_by_suburb_2016` `A` join `average_rent_by_suburb_2014` `B` on((`A`.`suburb` = `B`.`suburb`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `rent_prices_by_suburb_2014`
--
DROP TABLE IF EXISTS `rent_prices_by_suburb_2014`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rent_prices_by_suburb_2014`  AS  select `P`.`suburb` AS `suburb`,`L`.`price` AS `price` from (`PROPERTY` `P` join `LISTING` `L`) where ((`P`.`pid` = `L`.`pid`) and (`L`.`type` = 'Rent') and (`L`.`dateclose` < '2015-01-01')) union all select `P`.`suburb` AS `suburb`,`L`.`price` AS `price` from (`PROPERTY` `P` join `SHAREDLISTING` `L`) where ((`P`.`pid` = `L`.`pid`) and (`L`.`type` = 'Rent') and (`L`.`dateclose` < '2015-01-01')) ;

-- --------------------------------------------------------

--
-- Structure for view `rent_prices_by_suburb_2016`
--
DROP TABLE IF EXISTS `rent_prices_by_suburb_2016`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rent_prices_by_suburb_2016`  AS  select `P`.`suburb` AS `suburb`,`L`.`price` AS `price` from (`PROPERTY` `P` join `LISTING` `L`) where ((`P`.`pid` = `L`.`pid`) and (`L`.`type` = 'Rent') and (`L`.`dateclose` < '2017-01-01')) union all select `P`.`suburb` AS `suburb`,`L`.`price` AS `price` from (`PROPERTY` `P` join `SHAREDLISTING` `L`) where ((`P`.`pid` = `L`.`pid`) and (`L`.`type` = 'Rent') and (`L`.`dateclose` < '2017-01-01')) ;

-- --------------------------------------------------------

--
-- Structure for view `Street_with_highest_average_rent`
--
DROP TABLE IF EXISTS `Street_with_highest_average_rent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Street_with_highest_average_rent`  AS  (select `All_camperdown_rentals`.`stname` AS `stname`,`All_camperdown_rentals`.`sttype` AS `sttype` from `All_camperdown_rentals` group by `All_camperdown_rentals`.`stname`,`All_camperdown_rentals`.`sttype` having avg(`All_camperdown_rentals`.`price`) >= all (select avg(`All_camperdown_rentals`.`price`) from `All_camperdown_rentals` group by `All_camperdown_rentals`.`stname`,`All_camperdown_rentals`.`sttype`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Suburb_that_has_always_sold_under_4weeks`
--
DROP TABLE IF EXISTS `Suburb_that_has_always_sold_under_4weeks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Suburb_that_has_always_sold_under_4weeks`  AS  (select distinct `PROPERTY`.`suburb` AS `suburb` from `PROPERTY` where (not(`PROPERTY`.`suburb` in (select `All_suburb_with_properties_sold_over_4weeks`.`suburb` from `All_suburb_with_properties_sold_over_4weeks`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `Suburb_that_have_not_had_sale_since_2017`
--
DROP TABLE IF EXISTS `Suburb_that_have_not_had_sale_since_2017`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Suburb_that_have_not_had_sale_since_2017`  AS  (select distinct `PROPERTY`.`suburb` AS `suburb` from `PROPERTY` where (not(`PROPERTY`.`suburb` in (select `All_suburb_with_properties_sold_since_2017`.`suburb` from `All_suburb_with_properties_sold_since_2017`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `suburb_with_highest_increase_rent`
--
DROP TABLE IF EXISTS `suburb_with_highest_increase_rent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `suburb_with_highest_increase_rent`  AS  (select `rent_difference_2014_2016`.`suburb` AS `suburb` from `rent_difference_2014_2016` where `rent_difference_2014_2016`.`Pricediff` >= all (select `rent_difference_2014_2016`.`Pricediff` from `rent_difference_2014_2016`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Suburb_with_properties_sold_over_4weeks`
--
DROP TABLE IF EXISTS `Suburb_with_properties_sold_over_4weeks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Suburb_with_properties_sold_over_4weeks`  AS  (select distinct `PROPERTY`.`suburb` AS `suburb` from `PROPERTY` where `PROPERTY`.`pid` in (select `LISTING`.`pid` from `LISTING` where ((`LISTING`.`type` = 'Sale') and ((to_days(`LISTING`.`dateclose`) - to_days(`LISTING`.`datelisted`)) > 28)))) ;

-- --------------------------------------------------------

--
-- Structure for view `Suburb_with_properties_sold_since_2017`
--
DROP TABLE IF EXISTS `Suburb_with_properties_sold_since_2017`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Suburb_with_properties_sold_since_2017`  AS  (select distinct `PROPERTY`.`suburb` AS `suburb` from `PROPERTY` where `PROPERTY`.`pid` in (select `LISTING`.`pid` from `LISTING` where ((`LISTING`.`type` = 'Sale') and (`LISTING`.`dateclose` > '2016-12-31')))) ;

-- --------------------------------------------------------

--
-- Structure for view `Suburb_with_sharedproperties_sold_over_4weeks`
--
DROP TABLE IF EXISTS `Suburb_with_sharedproperties_sold_over_4weeks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Suburb_with_sharedproperties_sold_over_4weeks`  AS  (select distinct `PROPERTY`.`suburb` AS `suburb` from `PROPERTY` where `PROPERTY`.`pid` in (select `SHAREDLISTING`.`pid` from `SHAREDLISTING` where ((`SHAREDLISTING`.`type` = 'Sale') and ((to_days(`SHAREDLISTING`.`dateclose`) - to_days(`SHAREDLISTING`.`sdatelisted`)) > 28)))) ;

-- --------------------------------------------------------

--
-- Structure for view `Suburb_with_sharedproperties_sold_since_2017`
--
DROP TABLE IF EXISTS `Suburb_with_sharedproperties_sold_since_2017`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Suburb_with_sharedproperties_sold_since_2017`  AS  (select distinct `PROPERTY`.`suburb` AS `suburb` from `PROPERTY` where `PROPERTY`.`pid` in (select `SHAREDLISTING`.`pid` from `SHAREDLISTING` where ((`SHAREDLISTING`.`type` = 'Sale') and (`SHAREDLISTING`.`dateclose` > '2016-12-31')))) ;

-- --------------------------------------------------------

--
-- Structure for view `Total_value_sold_by_poh_ling`
--
DROP TABLE IF EXISTS `Total_value_sold_by_poh_ling`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Total_value_sold_by_poh_ling`  AS  (select sum(`Prices_of_poh_ling_sales`.`SUM(price)`) AS `TotalValue` from `Prices_of_poh_ling_sales`) ;

-- --------------------------------------------------------

--
-- Structure for view `Townhouses_sold_in_2016_Annandale`
--
DROP TABLE IF EXISTS `Townhouses_sold_in_2016_Annandale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Townhouses_sold_in_2016_Annandale`  AS  (select `S`.`unitno` AS `unitno`,`S`.`pid` AS `pid` from ((`SHAREDPROPERTY` `S` join `PROPERTY` `P`) join `SHAREDLISTING` `L`) where ((`S`.`pid` = `P`.`pid`) and (`S`.`unitno` = `L`.`unitno`) and (`P`.`suburb` = 'Annandale') and (`L`.`dateclose` between '2016-01-01' and '2016-12-31') and (`S`.`proptype` = 'Townhouse') and (`L`.`type` = 'Sale'))) ;

-- --------------------------------------------------------

--
-- Structure for view `Value_of_property_sold_poh_ling`
--
DROP TABLE IF EXISTS `Value_of_property_sold_poh_ling`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Value_of_property_sold_poh_ling`  AS  (select sum(`LISTING`.`price`) AS `SUM(price)` from `LISTING` where ((`LISTING`.`dateclose` > '2013-12-31') and (`LISTING`.`agent` = (select `AGENT`.`agentlicence` from `AGENT` where ((`AGENT`.`name` = 'Poh Ling') and (`AGENT`.`agency` = (select `AGENCY`.`agencylicence` from `AGENCY` where (`AGENCY`.`agencyname` = 'Trusted Real Estate')))))))) ;

-- --------------------------------------------------------

--
-- Structure for view `Value_of_sharedproperty_sold_poh_ling`
--
DROP TABLE IF EXISTS `Value_of_sharedproperty_sold_poh_ling`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Value_of_sharedproperty_sold_poh_ling`  AS  (select sum(`SHAREDLISTING`.`price`) AS `SUM(price)` from `SHAREDLISTING` where ((`SHAREDLISTING`.`dateclose` > '2013-12-31') and (`SHAREDLISTING`.`agent` = (select `AGENT`.`agentlicence` from `AGENT` where ((`AGENT`.`name` = 'Poh Ling') and (`AGENT`.`agency` = (select `AGENCY`.`agencylicence` from `AGENCY` where (`AGENCY`.`agencyname` = 'Trusted Real Estate')))))))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AGENCY`
--
ALTER TABLE `AGENCY`
  ADD PRIMARY KEY (`agencylicence`);

--
-- Indexes for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD PRIMARY KEY (`agentlicence`),
  ADD KEY `agency` (`agency`);

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`agency`,`brsuburb`),
  ADD KEY `agency` (`agency`);

--
-- Indexes for table `LISTING`
--
ALTER TABLE `LISTING`
  ADD PRIMARY KEY (`pid`,`agent`,`datelisted`),
  ADD KEY `pid` (`pid`,`agent`),
  ADD KEY `FK_agent_listing` (`agent`);

--
-- Indexes for table `PROPERTY`
--
ALTER TABLE `PROPERTY`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `SHAREDLISTING`
--
ALTER TABLE `SHAREDLISTING`
  ADD PRIMARY KEY (`unitno`,`pid`,`agent`,`sdatelisted`),
  ADD KEY `unitno` (`unitno`,`pid`,`agent`),
  ADD KEY `FK_pid_slisting` (`pid`),
  ADD KEY `FK_agent_slisting` (`agent`);

--
-- Indexes for table `SHAREDPROPERTY`
--
ALTER TABLE `SHAREDPROPERTY`
  ADD PRIMARY KEY (`unitno`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD CONSTRAINT `FK_agency_agent` FOREIGN KEY (`agency`) REFERENCES `AGENCY` (`agencylicence`) ON UPDATE CASCADE;

--
-- Constraints for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD CONSTRAINT `FK_agency_branch` FOREIGN KEY (`agency`) REFERENCES `AGENCY` (`agencylicence`) ON UPDATE CASCADE;

--
-- Constraints for table `LISTING`
--
ALTER TABLE `LISTING`
  ADD CONSTRAINT `FK_agent_listing` FOREIGN KEY (`agent`) REFERENCES `AGENT` (`agentlicence`),
  ADD CONSTRAINT `FK_pid_listing` FOREIGN KEY (`pid`) REFERENCES `PROPERTY` (`pid`) ON UPDATE CASCADE;

--
-- Constraints for table `SHAREDLISTING`
--
ALTER TABLE `SHAREDLISTING`
  ADD CONSTRAINT `FK_agent_slisting` FOREIGN KEY (`agent`) REFERENCES `AGENT` (`agentlicence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_pid_slisting` FOREIGN KEY (`pid`) REFERENCES `SHAREDPROPERTY` (`pid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_unitno_slisting` FOREIGN KEY (`unitno`) REFERENCES `SHAREDPROPERTY` (`unitno`) ON UPDATE CASCADE;

--
-- Constraints for table `SHAREDPROPERTY`
--
ALTER TABLE `SHAREDPROPERTY`
  ADD CONSTRAINT `FK_pid_sharedproperty` FOREIGN KEY (`pid`) REFERENCES `PROPERTY` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
