-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 11:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esp32datatransfer`
--

-- --------------------------------------------------------

--
-- Table structure for table `feed_in_status`
--

CREATE TABLE `feed_in_status` (
  `id` int(10) NOT NULL,
  `_inverter_device_address` int(10) NOT NULL,
  `_feed_Id` int(10) NOT NULL,
  `_feed_Length` int(10) NOT NULL,
  `_Grid_relay_contactor` int(10) NOT NULL,
  `_Total_yield_0` int(10) NOT NULL,
  `_Total_yield_1` int(10) NOT NULL,
  `_Insulation_resistance` double(20,3) NOT NULL,
  `_Total_yield_final` double(40,3) NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed_in_status`
--

INSERT INTO `feed_in_status` (`id`, `_inverter_device_address`, `_feed_Id`, `_feed_Length`, `_Grid_relay_contactor`, `_Total_yield_0`, `_Total_yield_1`, `_Insulation_resistance`, `_Total_yield_final`, `reading_time`) VALUES
(1, 3, 122, 44, 7, 540, 3846, 1730.000, 1730.000, '2021-10-12 04:12:48'),
(2, 1, 432, 43, 9, 546, 1124, 3413.000, 4313.000, '2021-10-12 04:13:00'),
(3, 4, 192, 54, 4, 866, 1456, 4983.000, 4873.000, '2021-10-12 04:13:22'),
(4, 2, 522, 21, 2, 387, 1238, 1233.000, 9713.000, '2021-10-12 04:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `feed_in_status_new`
--

CREATE TABLE `feed_in_status_new` (
  `id` int(10) NOT NULL,
  `_inverter_device_address` int(10) NOT NULL,
  `_feed_Id` int(10) NOT NULL,
  `_feed_Length` int(10) NOT NULL,
  `_Grid_relay_contactor` int(10) NOT NULL,
  `_Total_yield_0` int(10) NOT NULL,
  `_Total_yield_1` int(10) NOT NULL,
  `_Insulation_resistance` double(20,3) NOT NULL,
  `_Total_yield_final` double(40,3) NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instant_values`
--

CREATE TABLE `instant_values` (
  `id` int(10) NOT NULL,
  `_inverter_device_address` int(10) NOT NULL,
  `_int_Id` int(10) NOT NULL,
  `_int_Length` int(10) NOT NULL,
  `_Grid_current_phase_L1` float(10,3) NOT NULL,
  `_Grid_current_phase_L2` float(10,3) NOT NULL,
  `_Grid_current_phase_L3` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L1_against_L2` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L2_against_L3` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L3_against_L1` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L1` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L2` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L3` float(10,3) NOT NULL,
  `_Power` float(10,3) NOT NULL,
  `_Grid_frequency` float(10,3) NOT NULL,
  `_Apparent_Power` int(10) NOT NULL,
  `_Reactive_Power` int(10) NOT NULL,
  `_EEI_displacement_power_factor` float(10,3) NOT NULL,
  `_Internal_temperature` float(10,3) NOT NULL,
  `_Operating_status` int(10) NOT NULL,
  `_Evt1` int(10) NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instant_values`
--

INSERT INTO `instant_values` (`id`, `_inverter_device_address`, `_int_Id`, `_int_Length`, `_Grid_current_phase_L1`, `_Grid_current_phase_L2`, `_Grid_current_phase_L3`, `_Grid_voltage_phase_L1_against_L2`, `_Grid_voltage_phase_L2_against_L3`, `_Grid_voltage_phase_L3_against_L1`, `_Grid_voltage_phase_L1`, `_Grid_voltage_phase_L2`, `_Grid_voltage_phase_L3`, `_Power`, `_Grid_frequency`, `_Apparent_Power`, `_Reactive_Power`, `_EEI_displacement_power_factor`, `_Internal_temperature`, `_Operating_status`, `_Evt1`, `reading_time`) VALUES
(1, 3, 103, 50, 564.000, 563.000, 562.000, 4272.000, 4240.000, 4248.000, 2464.000, 2464.000, 2464.000, 4151.000, 5004.000, 4151, 4151, 1000.000, 493.000, 4, 4, '2021-10-12 04:12:48'),
(2, 4, 103, 60, 64.000, 212.000, 567.000, 8762.000, 6349.000, 3754.000, 2345.000, 2234.000, 784.000, 39.000, 6788.000, 99, 99, 998.000, 469.000, 4, 4, '2021-10-12 04:13:00'),
(3, 1, 103, 70, 34.000, 876.000, 763.000, 4567.000, 3674.000, 6556.000, 2398.000, 2004.000, 234.000, 74.000, 5452.000, 99, 99, 998.000, 469.000, 4, 4, '2021-10-12 04:13:22'),
(4, 2, 103, 20, 84.000, 236.000, 234.000, 6789.000, 7865.000, 4346.000, 9844.000, 5674.000, 9874.000, 35.000, 5325.000, 99, 99, 998.000, 469.000, 4, 4, '2021-10-12 04:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `instant_values_new`
--

CREATE TABLE `instant_values_new` (
  `id` int(10) NOT NULL,
  `_inverter_device_address` int(10) NOT NULL,
  `_int_Id` int(10) NOT NULL,
  `_int_Length` int(10) NOT NULL,
  `_Grid_current_phase_L1` float(10,3) NOT NULL,
  `_Grid_current_phase_L2` float(10,3) NOT NULL,
  `_Grid_current_phase_L3` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L1_against_L2` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L2_against_L3` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L3_against_L1` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L1` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L2` float(10,3) NOT NULL,
  `_Grid_voltage_phase_L3` float(10,3) NOT NULL,
  `_Power` float(10,3) NOT NULL,
  `_Grid_frequency` float(10,3) NOT NULL,
  `_Apparent_Power` int(10) NOT NULL,
  `_Reactive_Power` int(10) NOT NULL,
  `_EEI_displacement_power_factor` float(10,3) NOT NULL,
  `_Internal_temperature` float(10,3) NOT NULL,
  `_Operating_status` int(10) NOT NULL,
  `_Evt1` int(10) NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pv_instant_values`
--

CREATE TABLE `pv_instant_values` (
  `id` int(10) NOT NULL,
  `_inverter_device_address` int(10) NOT NULL,
  `_pv_Id` int(10) NOT NULL,
  `_pv_Length` int(10) NOT NULL,
  `_pv_Global_Events` int(10) NOT NULL,
  `_pv_Number_of_Modules` int(10) NOT NULL,
  `_pv_Input_ID_1` int(10) NOT NULL,
  `_pv_DC_current_input_1` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_1` float(10,3) NOT NULL,
  `_pv_DC_power_input_1` int(10) NOT NULL,
  `_pv_DC_Side_Event_1` int(10) NOT NULL,
  `_pv_Input_ID_2` int(10) NOT NULL,
  `_pv_DC_current_input_2` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_2` float(10,3) NOT NULL,
  `_pv_DC_power_input_2` int(10) NOT NULL,
  `_pv_DC_Side_Event_2` int(10) NOT NULL,
  `_pv_Input_ID_3` int(10) NOT NULL,
  `_pv_DC_current_input_3` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_3` float(10,3) NOT NULL,
  `_pv_DC_power_input_3` int(10) NOT NULL,
  `_pv_DC_Side_Event_3` int(10) NOT NULL,
  `_pv_Input_ID_4` int(10) NOT NULL,
  `_pv_DC_current_input_4` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_4` float(10,3) NOT NULL,
  `_pv_DC_power_input_4` int(10) NOT NULL,
  `_pv_DC_Side_Event_4` int(10) NOT NULL,
  `_pv_Input_ID_5` int(10) NOT NULL,
  `_pv_DC_current_input_5` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_5` float(10,3) NOT NULL,
  `_pv_DC_power_input_5` int(10) NOT NULL,
  `_pv_DC_Side_Event_5` int(10) NOT NULL,
  `_pv_Input_ID_6` int(10) NOT NULL,
  `_pv_DC_current_input_6` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_6` float(10,3) NOT NULL,
  `_pv_DC_power_input_6` int(10) NOT NULL,
  `_pv_DC_Side_Event_6` int(10) NOT NULL,
  `_pv_Input_ID_7` int(10) NOT NULL,
  `_pv_DC_current_input_7` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_7` float(10,3) NOT NULL,
  `_pv_DC_power_input_7` int(10) NOT NULL,
  `_pv_DC_Side_Event_7` int(10) NOT NULL,
  `_pv_Input_ID_8` int(10) NOT NULL,
  `_pv_DC_current_input_8` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_8` float(10,3) NOT NULL,
  `_pv_DC_power_input_8` int(10) NOT NULL,
  `_pv_DC_Side_Event_8` int(10) NOT NULL,
  `_pv_Input_ID_9` int(10) NOT NULL,
  `_pv_DC_current_input_9` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_9` float(10,3) NOT NULL,
  `_pv_DC_power_input_9` int(10) NOT NULL,
  `_pv_DC_Side_Event_9` int(10) NOT NULL,
  `_pv_Input_ID_10` int(10) NOT NULL,
  `_pv_DC_current_input_10` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_10` float(10,3) NOT NULL,
  `_pv_DC_power_input_10` int(10) NOT NULL,
  `_pv_DC_Side_Event_10` int(10) NOT NULL,
  `_pv_Input_ID_11` int(10) NOT NULL,
  `_pv_DC_current_input_11` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_11` float(10,3) NOT NULL,
  `_pv_DC_power_input_11` int(10) NOT NULL,
  `_pv_DC_Side_Event_11` int(10) NOT NULL,
  `_pv_Input_ID_12` int(10) NOT NULL,
  `_pv_DC_current_input_12` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_12` float(10,3) NOT NULL,
  `_pv_DC_power_input_12` int(10) NOT NULL,
  `_pv_DC_Side_Event_12` int(10) NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pv_instant_values`
--

INSERT INTO `pv_instant_values` (`id`, `_inverter_device_address`, `_pv_Id`, `_pv_Length`, `_pv_Global_Events`, `_pv_Number_of_Modules`, `_pv_Input_ID_1`, `_pv_DC_current_input_1`, `_pv_DC_voltage_input_1`, `_pv_DC_power_input_1`, `_pv_DC_Side_Event_1`, `_pv_Input_ID_2`, `_pv_DC_current_input_2`, `_pv_DC_voltage_input_2`, `_pv_DC_power_input_2`, `_pv_DC_Side_Event_2`, `_pv_Input_ID_3`, `_pv_DC_current_input_3`, `_pv_DC_voltage_input_3`, `_pv_DC_power_input_3`, `_pv_DC_Side_Event_3`, `_pv_Input_ID_4`, `_pv_DC_current_input_4`, `_pv_DC_voltage_input_4`, `_pv_DC_power_input_4`, `_pv_DC_Side_Event_4`, `_pv_Input_ID_5`, `_pv_DC_current_input_5`, `_pv_DC_voltage_input_5`, `_pv_DC_power_input_5`, `_pv_DC_Side_Event_5`, `_pv_Input_ID_6`, `_pv_DC_current_input_6`, `_pv_DC_voltage_input_6`, `_pv_DC_power_input_6`, `_pv_DC_Side_Event_6`, `_pv_Input_ID_7`, `_pv_DC_current_input_7`, `_pv_DC_voltage_input_7`, `_pv_DC_power_input_7`, `_pv_DC_Side_Event_7`, `_pv_Input_ID_8`, `_pv_DC_current_input_8`, `_pv_DC_voltage_input_8`, `_pv_DC_power_input_8`, `_pv_DC_Side_Event_8`, `_pv_Input_ID_9`, `_pv_DC_current_input_9`, `_pv_DC_voltage_input_9`, `_pv_DC_power_input_9`, `_pv_DC_Side_Event_9`, `_pv_Input_ID_10`, `_pv_DC_current_input_10`, `_pv_DC_voltage_input_10`, `_pv_DC_power_input_10`, `_pv_DC_Side_Event_10`, `_pv_Input_ID_11`, `_pv_DC_current_input_11`, `_pv_DC_voltage_input_11`, `_pv_DC_power_input_11`, `_pv_DC_Side_Event_11`, `_pv_Input_ID_12`, `_pv_DC_current_input_12`, `_pv_DC_voltage_input_12`, `_pv_DC_power_input_12`, `_pv_DC_Side_Event_12`, `reading_time`) VALUES
(1, 3, 4, 20, 10, 6, 12, 13.780, 15.220, 3, 6, 9, 11.900, 14.220, 5, 7, 8, 37.200, 28.400, 21, 17, 30, 22.240, 20.770, 13, 16, 20, 28.340, 22.700, 3, 7, 6, 31.440, 35.760, 12, 14, 22, 42.130, 34.650, 12, 22, 30, 23.500, 24.310, 12, 22, 28, 14.650, 13.220, 6, 5, 11, 13.210, 14.000, 6, 10, 12, 21.320, 34.650, 20, 25, 22, 32.390, 42.530, 41, 36, '2021-10-13 08:11:24'),
(2, 2, 56, 678, 3456, 578, 65, 34.567, 45.780, 34, 56, 43, 345.567, 765.211, 45, 66, 23, 234.987, 654.234, 45, 98, 80, 345.320, 234.753, 45, 87, 33, 234.809, 345.876, 12, 87, 65, 578.902, 234.499, 23, 87, 54, 345.111, 121.889, 34, 54, 98, 345.098, 334.999, 13, 65, 98, 345.876, 543.409, 54, 98, 34, 477.677, 474.382, 765, 54, 32, 456.098, 765.563, 345, 567, 876, 432.345, 567.876, 456, 986, '2021-10-13 09:32:37'),
(3, 1, 678, 767, 345, 987, 654, 343.945, 234.028, 345, 6543, 321, 456.292, 222.983, 474, 876, 432, 345.098, 765.098, 664, 544, 98, 458.098, 543.289, 234, 456, 198, 344.894, 678.009, 234, 456, 991, 123.003, 345.098, 456, 456, 430, 234.098, 678.987, 456, 887, 121, 234.098, 567.987, 432, 234, 89, 876.543, 343.000, 345, 678, 888, 432.022, 343.988, 98, 32, 54, 345.987, 567.765, 321, 234, 457, 454.876, 237.229, 23, 45, '2021-10-13 09:36:40'),
(4, 4, 668, 917, 995, 487, 65, 763.945, 904.028, 45, 6683, 991, 726.292, 762.983, 804, 736, 432, 345.098, 765.098, 664, 544, 98, 458.098, 543.289, 44, 456, 198, 344.894, 678.009, 234, 456, 991, 993.003, 345.098, 456, 456, 430, 234.098, 678.987, 456, 836, 121, 234.098, 167.987, 102, 234, 89, 876.543, 343.000, 345, 678, 888, 432.022, 993.988, 98, 32, 50, 345.987, 567.765, 355, 664, 467, 664.876, 211.229, 23, 45, '2021-10-13 09:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `pv_instant_values_new`
--

CREATE TABLE `pv_instant_values_new` (
  `id` int(10) NOT NULL,
  `_inverter_device_address` int(10) NOT NULL,
  `_pv_Id` int(10) NOT NULL,
  `_pv_Length` int(10) NOT NULL,
  `_pv_Global_Events` int(10) NOT NULL,
  `_pv_Number_of_Modules` int(10) NOT NULL,
  `_pv_Input_ID_1` int(10) NOT NULL,
  `_pv_DC_current_input_1` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_1` float(10,3) NOT NULL,
  `_pv_DC_power_input_1` int(10) NOT NULL,
  `_pv_DC_Side_Event_1` int(10) NOT NULL,
  `_pv_Input_ID_2` int(10) NOT NULL,
  `_pv_DC_current_input_2` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_2` float(10,3) NOT NULL,
  `_pv_DC_power_input_2` int(10) NOT NULL,
  `_pv_DC_Side_Event_2` int(10) NOT NULL,
  `_pv_Input_ID_3` int(10) NOT NULL,
  `_pv_DC_current_input_3` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_3` float(10,3) NOT NULL,
  `_pv_DC_power_input_3` int(10) NOT NULL,
  `_pv_DC_Side_Event_3` int(10) NOT NULL,
  `_pv_Input_ID_4` int(10) NOT NULL,
  `_pv_DC_current_input_4` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_4` float(10,3) NOT NULL,
  `_pv_DC_power_input_4` int(10) NOT NULL,
  `_pv_DC_Side_Event_4` int(10) NOT NULL,
  `_pv_Input_ID_5` int(10) NOT NULL,
  `_pv_DC_current_input_5` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_5` float(10,3) NOT NULL,
  `_pv_DC_power_input_5` int(10) NOT NULL,
  `_pv_DC_Side_Event_5` int(10) NOT NULL,
  `_pv_Input_ID_6` int(10) NOT NULL,
  `_pv_DC_current_input_6` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_6` float(10,3) NOT NULL,
  `_pv_DC_power_input_6` int(10) NOT NULL,
  `_pv_DC_Side_Event_6` int(10) NOT NULL,
  `_pv_Input_ID_7` int(10) NOT NULL,
  `_pv_DC_current_input_7` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_7` float(10,3) NOT NULL,
  `_pv_DC_power_input_7` int(10) NOT NULL,
  `_pv_DC_Side_Event_7` int(10) NOT NULL,
  `_pv_Input_ID_8` int(10) NOT NULL,
  `_pv_DC_current_input_8` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_8` float(10,3) NOT NULL,
  `_pv_DC_power_input_8` int(10) NOT NULL,
  `_pv_DC_Side_Event_8` int(10) NOT NULL,
  `_pv_Input_ID_9` int(10) NOT NULL,
  `_pv_DC_current_input_9` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_9` float(10,3) NOT NULL,
  `_pv_DC_power_input_9` int(10) NOT NULL,
  `_pv_DC_Side_Event_9` int(10) NOT NULL,
  `_pv_Input_ID_10` int(10) NOT NULL,
  `_pv_DC_current_input_10` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_10` float(10,3) NOT NULL,
  `_pv_DC_power_input_10` int(10) NOT NULL,
  `_pv_DC_Side_Event_10` int(10) NOT NULL,
  `_pv_Input_ID_11` int(10) NOT NULL,
  `_pv_DC_current_input_11` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_11` float(10,3) NOT NULL,
  `_pv_DC_power_input_11` int(10) NOT NULL,
  `_pv_DC_Side_Event_11` int(10) NOT NULL,
  `_pv_Input_ID_12` int(10) NOT NULL,
  `_pv_DC_current_input_12` float(10,3) NOT NULL,
  `_pv_DC_voltage_input_12` float(10,3) NOT NULL,
  `_pv_DC_power_input_12` int(10) NOT NULL,
  `_pv_DC_Side_Event_12` int(10) NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(10) NOT NULL,
  `_inverter_device_address` int(10) NOT NULL,
  `_year` int(10) NOT NULL,
  `_month` int(10) NOT NULL,
  `_date` int(10) NOT NULL,
  `_hour` int(10) NOT NULL,
  `_minute` int(10) NOT NULL,
  `_second` int(10) NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `_inverter_device_address`, `_year`, `_month`, `_date`, `_hour`, `_minute`, `_second`, `reading_time`) VALUES
(1, 1, 2021, 10, 12, 19, 6, 15, '2021-10-12 08:08:03'),
(2, 4, 3671, 87, 61, 39, 7, 10, '2021-10-12 08:08:03'),
(3, 2, 8765, 32, 83, 15, 3, 11, '2021-10-12 08:08:13'),
(4, 3, 8789, 50, 87, 10, 8, 8, '2021-10-12 08:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `system_info_new`
--

CREATE TABLE `system_info_new` (
  `id` int(10) NOT NULL,
  `_inverter_device_address` int(10) NOT NULL,
  `_year` int(10) NOT NULL,
  `_month` int(10) NOT NULL,
  `_date` int(10) NOT NULL,
  `_hour` int(10) NOT NULL,
  `_minute` int(10) NOT NULL,
  `_second` int(10) NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
