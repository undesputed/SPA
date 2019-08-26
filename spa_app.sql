-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2019 at 03:55 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spa_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` varchar(11) NOT NULL,
  `appointment_name` varchar(100) NOT NULL,
  `appointment_desc` varchar(300) NOT NULL,
  `transaction_id` varchar(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment_hist`
--

CREATE TABLE `appointment_hist` (
  `hist_id` int(11) NOT NULL,
  `appointment_id` varchar(11) NOT NULL,
  `appointment_name` varchar(100) NOT NULL,
  `appointment_desc` varchar(300) NOT NULL,
  `transaction_id` varchar(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `bus_id` varchar(11) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `bus_logo` blob NOT NULL,
  `bus_address` varchar(300) NOT NULL,
  `bus_email` varchar(30) NOT NULL,
  `bus_contact_no` varchar(20) NOT NULL,
  `maps_latitude` varchar(50) NOT NULL,
  `maps_longitude` varchar(50) NOT NULL,
  `acct_id` varchar(11) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_closed_day`
--

CREATE TABLE `business_closed_day` (
  `bus_closed_id` int(11) NOT NULL,
  `bus_id` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_gallery`
--

CREATE TABLE `business_gallery` (
  `gallery_id` int(11) NOT NULL,
  `bus_id` varchar(11) NOT NULL,
  `photo` blob NOT NULL,
  `caption` varchar(300) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_operating_hr`
--

CREATE TABLE `business_operating_hr` (
  `bus_operating_id` int(11) NOT NULL,
  `bus_id` varchar(11) NOT NULL,
  `open_hr` time(6) NOT NULL,
  `close_hr` time(6) NOT NULL,
  `day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `day_quote` varchar(150) DEFAULT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_service_price`
--

CREATE TABLE `bus_service_price` (
  `bus_service_price_id` int(11) NOT NULL,
  `bus_id` varchar(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_desc` varchar(500) NOT NULL,
  `duration` time(6) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(11) NOT NULL,
  `staff_name` varchar(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `bus_id` varchar(11) NOT NULL,
  `gender` char(1) NOT NULL,
  `address` varchar(300) DEFAULT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave`
--

CREATE TABLE `staff_leave` (
  `staff_leave_id` int(11) NOT NULL,
  `staff_id` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_operating_day`
--

CREATE TABLE `staff_operating_day` (
  `staff_operating_id` int(11) NOT NULL,
  `staff_id` varchar(11) NOT NULL,
  `day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `leave_desc` varchar(30) DEFAULT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_schedule`
--

CREATE TABLE `staff_schedule` (
  `staff_schedule_id` int(11) NOT NULL,
  `staff_id` varchar(11) NOT NULL,
  `staff_service_id` int(11) NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  `day` varchar(15) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_service`
--

CREATE TABLE `staff_service` (
  `staff_service_id` int(11) NOT NULL,
  `staff_id` varchar(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` varchar(11) NOT NULL,
  `client_acct_id` varchar(11) NOT NULL,
  `staff_schedule_id` int(11) NOT NULL,
  `bus_id` varchar(11) NOT NULL,
  `payment_reference_no` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `summary` varchar(300) DEFAULT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_hist`
--

CREATE TABLE `transaction_hist` (
  `hist_id` int(11) NOT NULL,
  `transaction_id` varchar(11) NOT NULL,
  `client_acct_id` varchar(11) NOT NULL,
  `staff_schedule_id` int(11) NOT NULL,
  `bus_id` varchar(11) NOT NULL,
  `payment_reference_no` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `summary` varchar(300) DEFAULT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `acct_id` varchar(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(8) NOT NULL,
  `user_code` varchar(5) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(30) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL,
  `acct_id` varchar(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `home_address` varchar(300) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_updated_by` varchar(15) NOT NULL,
  `last_updated_dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ver_no` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_code` varchar(5) NOT NULL,
  `user_code_name` varchar(15) NOT NULL,
  `user_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_code`, `user_code_name`, `user_description`) VALUES
('BU', 'Spartner', 'Business Registered for Health and Spa services'),
('CU', 'Spacialite', 'Client Customer who requires services from registered health and spa services'),
('FU', 'Sparathist', 'Freelancers who offer spa services on call');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `FK_Transaction_Id` (`transaction_id`);

--
-- Indexes for table `appointment_hist`
--
ALTER TABLE `appointment_hist`
  ADD PRIMARY KEY (`hist_id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`bus_id`),
  ADD KEY `FK_Acct_Id` (`acct_id`);

--
-- Indexes for table `business_closed_day`
--
ALTER TABLE `business_closed_day`
  ADD PRIMARY KEY (`bus_closed_id`),
  ADD KEY `FK_Bus_Id` (`bus_id`);

--
-- Indexes for table `business_gallery`
--
ALTER TABLE `business_gallery`
  ADD PRIMARY KEY (`gallery_id`),
  ADD KEY `FK_Bus_Id_Gallery` (`bus_id`),
  ADD KEY `FK_Service_Id_Gallery` (`service_id`);

--
-- Indexes for table `business_operating_hr`
--
ALTER TABLE `business_operating_hr`
  ADD PRIMARY KEY (`bus_operating_id`),
  ADD KEY `FK_Bus_Id_Operating_Hr` (`bus_id`);

--
-- Indexes for table `bus_service_price`
--
ALTER TABLE `bus_service_price`
  ADD PRIMARY KEY (`bus_service_price_id`),
  ADD KEY `FK_Bus_Id_Service_Price` (`bus_id`),
  ADD KEY `FK_Service_Id_Service_Price` (`service_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `FK_Bus_Id_Staff` (`bus_id`);

--
-- Indexes for table `staff_leave`
--
ALTER TABLE `staff_leave`
  ADD PRIMARY KEY (`staff_leave_id`),
  ADD KEY `FK_Staff_Id` (`staff_id`);

--
-- Indexes for table `staff_operating_day`
--
ALTER TABLE `staff_operating_day`
  ADD PRIMARY KEY (`staff_operating_id`),
  ADD KEY `FK_Staff_Id_Operating_Day` (`staff_id`);

--
-- Indexes for table `staff_schedule`
--
ALTER TABLE `staff_schedule`
  ADD PRIMARY KEY (`staff_schedule_id`),
  ADD KEY `FK_Staff_Id_Staff_Schedule` (`staff_id`),
  ADD KEY `FK_Staff_Service_Id` (`staff_service_id`);

--
-- Indexes for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD PRIMARY KEY (`staff_service_id`),
  ADD KEY `FK_Staff_Id_Staff_Service` (`staff_id`),
  ADD KEY `FK_Service_Id_Staff_Service` (`service_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `FK_Bus_Id_Transaction` (`bus_id`),
  ADD KEY `FK_Client_Acct_Id` (`client_acct_id`),
  ADD KEY `FK_Staff_Schedule_Id` (`staff_schedule_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`acct_id`),
  ADD KEY `FK_User_Code` (`user_code`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_code`),
  ADD UNIQUE KEY `user_code` (`user_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FK_Transaction_Id` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `FK_Acct_Id` FOREIGN KEY (`acct_id`) REFERENCES `user` (`acct_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `business_closed_day`
--
ALTER TABLE `business_closed_day`
  ADD CONSTRAINT `FK_Bus_Id` FOREIGN KEY (`bus_id`) REFERENCES `business` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `business_gallery`
--
ALTER TABLE `business_gallery`
  ADD CONSTRAINT `FK_Bus_Id_Gallery` FOREIGN KEY (`bus_id`) REFERENCES `business` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Service_Id_Gallery` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `business_operating_hr`
--
ALTER TABLE `business_operating_hr`
  ADD CONSTRAINT `FK_Bus_Id_Operating_Hr` FOREIGN KEY (`bus_id`) REFERENCES `business` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bus_service_price`
--
ALTER TABLE `bus_service_price`
  ADD CONSTRAINT `FK_Bus_Id_Service_Price` FOREIGN KEY (`bus_id`) REFERENCES `business` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Service_Id_Service_Price` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `FK_Bus_Id_Staff` FOREIGN KEY (`bus_id`) REFERENCES `business` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_leave`
--
ALTER TABLE `staff_leave`
  ADD CONSTRAINT `FK_Staff_Id` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_operating_day`
--
ALTER TABLE `staff_operating_day`
  ADD CONSTRAINT `FK_Staff_Id_Operating_Day` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_schedule`
--
ALTER TABLE `staff_schedule`
  ADD CONSTRAINT `FK_Staff_Id_Staff_Schedule` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Staff_Service_Id` FOREIGN KEY (`staff_service_id`) REFERENCES `staff_service` (`staff_service_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD CONSTRAINT `FK_Service_Id_Staff_Service` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Staff_Id_Staff_Service` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FK_Bus_Id_Transaction` FOREIGN KEY (`bus_id`) REFERENCES `business` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Client_Acct_Id` FOREIGN KEY (`client_acct_id`) REFERENCES `user` (`acct_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Staff_Schedule_Id` FOREIGN KEY (`staff_schedule_id`) REFERENCES `staff_schedule` (`staff_schedule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_User_Code` FOREIGN KEY (`user_code`) REFERENCES `user_type` (`user_code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
