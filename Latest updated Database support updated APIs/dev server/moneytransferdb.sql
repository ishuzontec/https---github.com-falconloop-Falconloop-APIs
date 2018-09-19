-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 19, 2018 at 08:05 AM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moneytransferdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `AgentId` int(11) NOT NULL,
  `AgentFirstName` varchar(100) NOT NULL,
  `SecondName` varchar(50) DEFAULT NULL,
  `AgentLastName` varchar(50) DEFAULT NULL,
  `SecondLastName` varchar(50) DEFAULT NULL,
  `Company_Id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `SuperAgent` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `AgentCode` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SerialNumberPrefix` varchar(100) NOT NULL,
  `Address1` varchar(200) NOT NULL,
  `Address2` varchar(200) DEFAULT NULL,
  `SerialNumberLength` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `BureauDeChange` tinyint(1) NOT NULL DEFAULT '0',
  `IsAllowedCreateAgent` tinyint(1) NOT NULL DEFAULT '0',
  `AllowedCasiherTellerApproval` tinyint(1) NOT NULL DEFAULT '0',
  `ApproveeachTransByCashierTeller` tinyint(1) NOT NULL DEFAULT '0',
  `CreateComplianceGroup` tinyint(1) NOT NULL DEFAULT '0',
  `AssignAdminToAgent` int(11) NOT NULL DEFAULT '0',
  `CreatedDate` datetime NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `DeletedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`AgentId`, `AgentFirstName`, `SecondName`, `AgentLastName`, `SecondLastName`, `Company_Id`, `country_id`, `SuperAgent`, `Phone`, `AgentCode`, `Email`, `SerialNumberPrefix`, `Address1`, `Address2`, `SerialNumberLength`, `City`, `PostalCode`, `BureauDeChange`, `IsAllowedCreateAgent`, `AllowedCasiherTellerApproval`, `ApproveeachTransByCashierTeller`, `CreateComplianceGroup`, `AssignAdminToAgent`, `CreatedDate`, `IsActive`, `IsDeleted`, `DeletedDate`) VALUES
(-1, 'N/A', 'N/A', 'N/A', 'N/A', 17, 99, 'N/A', '676767676', '4454545', 'na@gmail.com', 'N/A', 'N/A', 'N/A', 'rre', 'N/A', '432234', 0, 0, 0, 0, 0, 0, '2018-03-21 00:00:00', 1, 0, NULL),
(0, 'All', 'All', 'All', 'All', 17, 99, 'All', '8798787465465', 'all01', 'all@gmail.com', '23', 'All', 'All', '2', 'All', '12365', 0, 0, 0, 0, 0, 0, '2018-03-01 00:00:00', 1, 0, NULL),
(1, 'Wallmart', 'Gerry', 'Terry', 'Zurry', 17, 150, 'Marshal', '5879566255', '7008', 'marshal@gmail.com', 'dom', 'delhi', 'Rajouri', '25', 'uuy', '222222', 1, 1, 1, 1, 1, 1, '2018-02-14 07:22:19', 0, 0, NULL),
(2, 'Tinkle', 'Jorg', 'Herry', 'mart', 17, 150, 'Tinkle', '5879566255', '7880', 'tinkle@gmail.com', 'dom', 'delhi', 'Rajouri', '25', 'uuy', '222222', 1, 1, 1, 1, 1, 1, '2018-02-14 07:23:16', 1, 0, NULL),
(3, 'Tijuna', 'mart', 'shop', '36', 17, 230, 'Sendingloop', '8010276833', '0952', 'tijuna@gmail.com', 'mr.', 'usa', 'usa 3', '20', 'Greek test', '25874', 0, 0, 0, 0, 0, 0, '2018-02-14 08:48:36', 1, 0, NULL),
(5, 'Visa Credit Card', 'Visa Credit Card', '.', 'Visa Credit Card', 17, 139, 'Visa Credit Card', '76547654654', '4175', 'visa@gmail.com', 'test', 'Visa', 'Credit', '34', 'Card', '564564', 0, 0, 0, 0, 0, 0, '2018-04-05 08:06:45', 1, 0, NULL),
(6, 'MasterCard Credit Card', 'MasterCard', '.', 'MasterCard', 17, 139, 'MasterCard', '6765756', '7317', 'MasterCard@gmail.com', '34', 'MasterCard', NULL, '3', 'MasterCard', '554456', 0, 0, 0, 0, 0, 0, '2018-04-05 08:08:24', 1, 0, NULL),
(7, 'Visa Debit Card', 'Visa', '.', 'Visa', 17, 139, 'Visa', '55345', '5320', 'Visa@gmail.com', '3', 'Visa', NULL, '4', 'Visa', '2345345', 0, 0, 0, 0, 0, 0, '2018-04-05 08:09:08', 1, 0, NULL),
(8, 'MasterCard Debit Card', 'MasterCard Debit', '.', 'MasterCard Debit', 17, 139, 'MasterCard Debit', '6546546546', '3769', 'MasterCardDebit@gmail.com', '3', 'MasterCard Debit', 'MasterCard Debit', '54', 'MasterCard Debit', '55345345345345', 0, 0, 0, 0, 0, 0, '2018-04-05 08:09:49', 1, 0, NULL),
(9, 'Visa Gift Card', 'Visa', '0', 'Gift', 17, 139, 'Gift', '454354353453453', '3707', 'Gift@gmail.com', '34', 'Gift', 'Gift', '454', 'Gift', '24234234234', 0, 0, 0, 0, 0, 0, '2018-04-05 08:10:24', 1, 0, NULL),
(10, 'MasterCard Gift Card', 'Gift Card', '.', 'Gift Card', 17, 139, 'Gift Card', '355252525235', '5243', 'GiftCard@gmail.com', '34', 'Gift Card', 'Gift Card', '25', 'Gift Card', '523235235325', 0, 0, 0, 0, 0, 0, '2018-04-05 08:11:06', 1, 0, NULL),
(11, 'Visa Voucher', 'Visa Voucher', '.', 'Visa Voucher', 17, 139, 'Visa Voucher', '23325325325', '4287', 'VisaVoucher@gmail.com', '42', 'Visa Voucher', 'Visa Voucher', '43', 'Visa Voucher', '3534534534', 0, 0, 0, 0, 0, 0, '2018-04-05 08:11:36', 1, 0, NULL),
(12, 'MasterCard Voucher', 'MasterCard Voucher', '.', 'MasterCard Voucher', 17, 139, 'MasterCard Voucher', '45345433443435', '5700', 'MasterCardVoucher@gmail.com', '24', 'MasterCard Voucher', 'MasterCard Voucher', '42', 'MasterCard Voucher', '342323325', 0, 0, 0, 0, 0, 0, '2018-04-05 08:12:06', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authorizepaymentsettings`
--

CREATE TABLE `authorizepaymentsettings` (
  `AuthorizePaymentSettingsId` int(11) NOT NULL,
  `PaymentMethodId` int(11) NOT NULL,
  `Mode` varchar(50) NOT NULL,
  `PaymentUrl` varchar(200) NOT NULL,
  `MerchantLoginId` varchar(100) NOT NULL,
  `MerchantTransactionKey` varchar(100) NOT NULL,
  `Server` varchar(100) DEFAULT NULL,
  `Port` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedDate` date NOT NULL,
  `DeletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorizepaymentsettings`
--

INSERT INTO `authorizepaymentsettings` (`AuthorizePaymentSettingsId`, `PaymentMethodId`, `Mode`, `PaymentUrl`, `MerchantLoginId`, `MerchantTransactionKey`, `Server`, `Port`, `IsActive`, `IsDeleted`, `CreatedDate`, `DeletedDate`) VALUES
(1, 1, 'TEST', 'https://test.authorize.net/gateway/transact.dll', 'falconengineer', '8Q6338wTVa647Rfe', NULL, NULL, 0, 0, '2018-02-05', NULL),
(5, 12, 'TEST', 'https://secure.magicpaygateway.com/api/transact.php', 'falconengineer', 'falcon@999', 'secure.magicpaygateway.com', '443', 1, 0, '2018-07-19', NULL),
(6, 15, 'TEST', 'https://secure.magicpaygateway.com/api/transact.php', 'falconengineer', 'falcon@999', 'secure.magicpaygateway.com', '443', 1, 0, '2018-04-09', NULL),
(7, 21, 'TEST', 'https://secure.magicpaygateway.com/api/transact.php', 'magicpay', 'magicpay123', 'secure.magicpaygateway.com', '443', 1, 0, '2018-04-09', NULL),
(8, 22, 'TEST', 'https://secure.magicpaygateway.com/api/transact.php', 'magicpay', 'magicpay123', 'secure.magicpaygateway.com', '443', 1, 0, '2018-04-09', NULL),
(9, 23, 'TEST', 'https://secure.magicpaygateway.com/api/transact.php', 'magicpay', 'magicpay123', 'secure.magicpaygateway.com', '443', 1, 0, '2018-04-09', NULL),
(12, 26, 'TEST', 'https://secure.magicpaygateway.com/api/transact.php', 'magicpay', 'magicpay123', 'secure.magicpaygateway.com', '443', 1, 0, '2018-04-09', NULL),
(13, 29, 'Production', 'https://secure.magicpaygatewa.', 'falconengineer', 'falcon@999', NULL, NULL, 0, 0, '2018-07-19', NULL),
(14, 30, 'TEST', 'www.google.com', 'rtret54', 'rtretretet4565', NULL, NULL, 0, 0, '2018-07-24', NULL),
(15, 32, 'Testing', 'www.falconloo.com', '1234', '1234', NULL, NULL, 0, 0, '2018-08-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

CREATE TABLE `beneficiary` (
  `BeneficiaryId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `BeneficiaryTypeId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address1` varchar(50) NOT NULL,
  `Address2` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZipCode` varchar(50) NOT NULL,
  `CountryId` int(11) NOT NULL,
  `DOB` datetime NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `BankName` varchar(100) DEFAULT NULL,
  `AccountNumber` varchar(100) DEFAULT NULL,
  `RoutingNumber` varchar(100) DEFAULT NULL,
  `BICCode` varchar(100) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedDate` datetime NOT NULL,
  `DeletedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary`
--

INSERT INTO `beneficiary` (`BeneficiaryId`, `CompanyId`, `BeneficiaryTypeId`, `CustomerId`, `FirstName`, `LastName`, `Phone`, `Email`, `Address1`, `Address2`, `City`, `State`, `ZipCode`, `CountryId`, `DOB`, `IsActive`, `BankName`, `AccountNumber`, `RoutingNumber`, `BICCode`, `IsDeleted`, `CreatedDate`, `DeletedDate`) VALUES
(0, 17, 2, 8, 'Test ', 'User', '1234567890', 'testuser@gmail.com', 'test', 'test', 'test', 'test', '12345', 226, '2017-12-20 00:00:00', 1, NULL, NULL, NULL, NULL, 1, '2017-12-04 00:00:00', '2018-01-01 00:00:00'),
(1, 17, 1, 8, 'Ram', 'Rahim', '1234567890', 'ram@gmail.com', 'Ashok Nagar', 'NCR', 'Delhi', 'Delhi NCR', '110027', 98, '2017-01-01 00:00:00', 1, 'Friends bank', '21324564564', '0101234567', '1231231230', 0, '2017-10-30 20:55:22', NULL),
(2, 17, 1, 8, 'Suresh', 'Mohil', '8010276833', 'suresh@gmail.com', 'nahan', 'jamli', 'Kangra', 'HP', '110027', 226, '2017-01-01 00:00:00', 0, 'test bank', '4435435435345', '345435435', '5345435435', 0, '2017-10-31 11:18:19', NULL),
(3, 17, 1, 8, 'abc', 'pindu', '7894561230', 'saa@gmail.com', 'galino 10', 'chd', 'ch', 'UT', '110014', 226, '2017-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 0, '2017-10-31 11:41:45', NULL),
(4, 17, 1, 8, 'uuu', 'yy', '1234567890', 'yy@gmail.com', 'delhi', 'ncr', 'delhi', 'delhi ncr', '110027', 226, '2017-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 0, '2017-10-31 12:53:37', NULL),
(5, 17, 1, 8, 'abu', 'yadav', '1234567890', 'abu@gmail.com', 'delhi', 'ncr', 'delhi', 'delhi ncr', '110027', 226, '2017-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 0, '2017-10-31 16:10:29', NULL),
(6, 17, 1, 8, 'Javed', 'Kumar', '1234567890', 'javed@gmail.com', 'delhi', 'ncr', 'delhi', 'delhi ncr', '110027', 226, '2017-01-01 00:00:00', 1, 'Dena Bank', '1232232213223', '232312323223', '12312323232', 0, '2017-11-03 11:05:39', NULL),
(7, 17, 1, 15, 'dsf', 'terte', '43545435435345', 'dsf@gmail.com', 'retret', 'tretret', 'ertert', 'retert', '435454354', 17, '2017-12-20 00:00:00', 1, 'SBI Bank', '9844578787865', '0125', '54564564564', 0, '2017-12-20 14:06:45', NULL),
(8, 17, 1, 8, 'checktest12', 'User13', '7897824152', 'test12@gmail.com', 'sdfdnmnfgd', '', 'Almora', 'Uttarakhand', '263653', 99, '2017-12-31 00:00:00', 1, NULL, NULL, NULL, NULL, 0, '2018-01-24 14:31:29', NULL),
(9, 17, 1, 26, 'ishu', 'dad', '344324234234', 'daa@gmail.com', 'sdfsdff', 'fsdfs', 'sdfsdf', 'fsfsdf', '3345345', 13, '2018-01-17 00:00:00', 1, NULL, NULL, NULL, NULL, 0, '2018-01-24 14:37:22', NULL),
(10, 17, 1, 8, 'My text customer', 'Test12', '7895129743', 'Customer@gmail.com', 'My First Address', '', 'Almora', 'Uttarakhand', '263653', 99, '2018-01-31 00:00:00', 1, NULL, NULL, NULL, NULL, 0, '2018-01-24 14:44:02', NULL),
(11, 17, 1, 8, 'Elektra', 'Elektra', '2036548753', 'pi@gmail.com', 'sadfs', '', 'sdfsdf', 'sdfas', '96542', 1, '2018-02-08 00:00:00', 0, NULL, NULL, NULL, NULL, 0, '2018-01-31 21:54:59', NULL),
(12, 17, 1, 8, 'rajeev', 'Kumar', '1234567890', 'rk@gmail.com', 'delhi', 'ncr', 'delhi', 'delhi ncr', '110027', 50, '2017-01-01 00:00:00', 1, 'State Bank Of India', '5465456456456465456', '1023', '7798798789798798', 0, '2018-02-06 08:56:30', NULL),
(13, 17, 1, 8, 'ishu', 'kumar', '4354545645645', 'ishu@gmail.com', 'jkhjh', 'jhkjkhjkh', 'jhjkhjkh', 'jhjkhkjh', '7678657', 98, '1988-05-11 00:00:00', 1, 'PNB', '564756454564564', '02252', '5456454564564', 0, '2018-02-06 10:23:42', NULL),
(14, 17, 1, 8, 'manu', 'kumar', '9874563210', 'manu@gmail.com', 'Chandigarh', 'Punjab', 'Dhanas', 'UT', '110028', 98, '1990-02-10 00:00:00', 1, 'ICICI Bank', '98745632002252', '0269', '9871425454564', 0, '2018-02-06 13:59:33', NULL),
(15, 17, 1, 8, 'marry', 'John', '545665456456', 'marry@gmail.com', 'USA', 'zailko', 'King', 'FL', '10028', 230, '1988-05-11 00:00:00', 1, 'Baroda Bank', '4654654564654', '0252', '1232114564564', 0, '2018-02-16 08:48:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiarytype`
--

CREATE TABLE `beneficiarytype` (
  `BeneficiaryTypeId` int(11) NOT NULL,
  `BeneficiaryDescription` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiarytype`
--

INSERT INTO `beneficiarytype` (`BeneficiaryTypeId`, `BeneficiaryDescription`) VALUES
(1, 'Individual'),
(2, 'BillPay');

-- --------------------------------------------------------

--
-- Table structure for table `billpaydetails`
--

CREATE TABLE `billpaydetails` (
  `BillPayId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `TransactionId` varchar(100) NOT NULL,
  `SenderName` varchar(200) NOT NULL,
  `MobileNumber` varchar(50) NOT NULL,
  `Version` varchar(50) NOT NULL,
  `SkuId` varchar(250) NOT NULL,
  `InvoiceNumber` varchar(200) DEFAULT NULL,
  `TransactionDate` datetime NOT NULL,
  `InvoiceAmount` decimal(18,2) NOT NULL,
  `FaceValueAmount` decimal(18,2) NOT NULL,
  `ResponseCode` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billpaydetails`
--

INSERT INTO `billpaydetails` (`BillPayId`, `CompanyId`, `CustomerId`, `TransactionId`, `SenderName`, `MobileNumber`, `Version`, `SkuId`, `InvoiceNumber`, `TransactionDate`, `InvoiceAmount`, `FaceValueAmount`, `ResponseCode`) VALUES
(9, 17, 8, 'txn_12020_	\n4121103465', 'zolly', '919990360164', '1.0', '1161', '80517447', '2018-05-21 16:34:35', '10.00', '0.00', '000'),
(10, 17, 8, 'txn_20eb2_4121314833', 'zolly', '12096030382', '1.0', '322', NULL, '2018-05-21 17:54:48', '10.00', '0.00', '000'),
(11, 17, 8, 'txn_4d77d_4121341406', 'zolly', '523318017417', '1.0', '1142', '80520584', '2018-05-21 18:15:27', '10.00', '0.00', '000');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Company_Id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `country_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `business_fax` varchar(20) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `contact_title` varchar(50) NOT NULL,
  `number_employees` varchar(50) NOT NULL,
  `annual_revenue` double NOT NULL,
  `industry` varchar(50) NOT NULL,
  `sub_industry` varchar(50) NOT NULL,
  `sic_code` varchar(50) NOT NULL,
  `sic_description` varchar(500) NOT NULL,
  `website` varchar(50) NOT NULL,
  `company_number` varchar(50) NOT NULL,
  `business_id` varchar(50) NOT NULL,
  `company_type` varchar(50) NOT NULL,
  `incorporation_date` date DEFAULT NULL,
  `listofficers_duedate` date DEFAULT NULL,
  `businesslicense_expdate` date DEFAULT NULL,
  `created_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_date` date DEFAULT NULL,
  `bankname` varchar(100) DEFAULT NULL,
  `accountnumber` varchar(30) DEFAULT NULL,
  `routingnumber` varchar(50) DEFAULT NULL,
  `biccode` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Company_Id`, `name`, `address1`, `address2`, `city`, `state`, `zip_code`, `country_id`, `email`, `phone`, `business_fax`, `contact_person`, `contact_title`, `number_employees`, `annual_revenue`, `industry`, `sub_industry`, `sic_code`, `sic_description`, `website`, `company_number`, `business_id`, `company_type`, `incorporation_date`, `listofficers_duedate`, `businesslicense_expdate`, `created_date`, `is_active`, `is_deleted`, `deleted_date`, `bankname`, `accountnumber`, `routingnumber`, `biccode`) VALUES
(0, 'Moneytransfer', 'test1', 'test', 'delhi', 'delhi', '110027', 226, 'moneytransfer@gmail.com', '1234567890', '12345', 'money', 'Mr.', '4', 200000, 'it company', 'partnership', '1111', 'test way', 'www.test.com', '11112122', 'tttt', 'test', NULL, NULL, NULL, '2017-10-10', 1, 1, '2017-10-10', NULL, NULL, NULL, NULL),
(17, 'moneyishucase', 'wq', 'test', 'delhi', 'delhi', '110027', 226, 'moneytestcase@gmail.com', '1234567890', '12345', 'moneytestcase', 'Mr.', '40', 102356, 'wqd', 'partnership', '1111', 'test way', 'http://www.test.com', '11112122', 'tttt', 'test', NULL, NULL, NULL, '2018-07-24', 1, 1, '2018-09-06', 'S.B.I', '700000000000466446464', '465464654654646', 'erwe23423423'),
(20, 'Moneytransfer', 'abcd', 'test', 'delhi', 'delhi', '110027', 226, 'testsuper@gmail.com', '1234567890', '12345', 'money', 'Mr.', '4', 200000, 'it company', 'partnership', '1111', 'test way', 'http://www.test.com', '11112122', 'tttt', 'test', NULL, NULL, NULL, '2018-07-24', 1, 1, '2018-09-06', NULL, NULL, NULL, NULL),
(21, 'rajeev', 'Delhi', 'qeqwe', 'New Delhi', 'DELHI', '110027', 98, 'ishu.k@zontecsolutions.com', '1234566789', '3224', 'Rajeev', 'Test', '42', 1, 'wq', 'eqw', 'qwe23', 'wqewqqweqw', 'https://www.google.co.in/', 'Rajeev', '324', 'Test', '2018-07-20', '2018-07-20', '2018-07-28', '2018-07-24', 1, 1, '2018-09-06', NULL, NULL, NULL, NULL),
(22, 'Test tester', 'abcd', 'test', 'delhi', 'delhi', '110027', 100, 'Testtester@gmail.com', '1234567890', '12345', 'money', 'Mr.', '4', 200000, 'it company', 'partnership', '1111', 'test way', 'www.test.com', '11112122', 'tttt', 'test', NULL, NULL, NULL, '2018-08-31', 1, 1, '2018-09-06', 'sbi', '1234567890', '342442', 'ss2424');

-- --------------------------------------------------------

--
-- Table structure for table `companyservices`
--

CREATE TABLE `companyservices` (
  `companyServicesId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `companyServices` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyservices`
--

INSERT INTO `companyservices` (`companyServicesId`, `companyId`, `companyServices`, `createdDate`) VALUES
(1, 17, '2,3,4', '2018-08-02 20:10:35'),
(2, 22, '7,8,9,10,11', '2018-08-31 07:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `iso` varchar(5) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `CountryStatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `iso`, `phonecode`, `currency_name`, `currency_symbol`, `currency_code`, `CountryStatus`) VALUES
(1, 'Afghanistan', 'af', 93, 'Afghan afghani', '؋', 'AFN', 1),
(2, 'Aland Islands', 'ax', 358, '', '', '', 0),
(3, 'Albania', 'al', 355, 'Albanian lek', 'L', 'ALL', 1),
(4, 'Algeria', 'dz', 213, 'Algerian dinar', 'د.ج', 'DZD', 1),
(5, 'AmericanSamoa', 'as', 1684, '', '', '', 1),
(6, 'Andorra', 'ad', 376, 'Euro', '€', 'EUR', 0),
(7, 'Angola', 'ao', 244, 'Angolan kwanza', 'Kz', 'AOA', 1),
(8, 'Anguilla', 'ai', 1264, 'East Caribbean dolla', '$', 'XCD', 1),
(9, 'Antarctica', 'aq', 672, '', '', '', 0),
(10, 'Antigua and Barbuda', 'ag', 1268, 'East Caribbean dolla', '$', 'XCD', 1),
(11, 'Argentina', 'ar', 54, 'Argentine peso', '$', 'ARS', 1),
(12, 'Armenia', 'am', 374, 'Armenian dram', '', 'AMD', 1),
(13, 'Aruba', 'aw', 297, 'Aruban florin', 'ƒ', 'AWG', 1),
(14, 'Australia', 'au', 61, 'Australian dollar', '$', 'AUD', 0),
(15, 'Austria', 'at', 43, 'Euro', '€', 'EUR', 0),
(16, 'Azerbaijan', 'az', 994, 'Azerbaijani manat', '', 'AZN', 1),
(17, 'Bahamas', 'bs', 1242, '', '', '', 1),
(18, 'Bahrain', 'bh', 973, 'Bahraini dinar', '.د.ب', 'BHD', 1),
(19, 'Bangladesh', 'bd', 880, 'Bangladeshi taka', '৳', 'BDT', 1),
(20, 'Barbados', 'bb', 1246, 'Barbadian dollar', '$', 'BBD', 1),
(21, 'Belarus', 'by', 375, 'Belarusian ruble', 'Br', 'BYR', 1),
(22, 'Belgium', 'be', 32, 'Euro', '€', 'EUR', 1),
(23, 'Belize', 'bz', 501, 'Belize dollar', '$', 'BZD', 1),
(24, 'Benin', 'bj', 229, 'West African CFA fra', 'Fr', 'XOF', 1),
(25, 'Bermuda', 'bm', 1441, 'Bermudian dollar', '$', 'BMD', 1),
(26, 'Bhutan', 'bt', 975, 'Bhutanese ngultrum', 'Nu.', 'BTN', 0),
(27, 'Bolivia, Plurination', 'bo', 591, '', '', '', 1),
(28, 'Bosnia and Herzegovi', 'ba', 387, '', '', '', 0),
(29, 'Botswana', 'bw', 267, 'Botswana pula', 'P', 'BWP', 1),
(30, 'Brazil', 'br', 55, 'Brazilian real', 'R$', 'BRL', 1),
(31, 'British Indian Ocean', 'io', 246, '', '', '', 1),
(32, 'Brunei Darussalam', 'bn', 673, '', '', '', 0),
(33, 'Bulgaria', 'bg', 359, 'Bulgarian lev', 'лв', 'BGN', 0),
(34, 'Burkina Faso', 'bf', 226, 'West African CFA fra', 'Fr', 'XOF', 1),
(35, 'Burundi', 'bi', 257, 'Burundian franc', 'Fr', 'BIF', 1),
(36, 'Cambodia', 'kh', 855, 'Cambodian riel', '៛', 'KHR', 1),
(37, 'Cameroon', 'cm', 237, 'Central African CFA ', 'Fr', 'XAF', 1),
(38, 'Canada', 'ca', 1, 'Canadian dollar', '$', 'CAD', 1),
(39, 'Cape Verde', 'cv', 238, 'Cape Verdean escudo', 'Esc or $', 'CVE', 1),
(40, 'Cayman Islands', 'ky', 345, 'Cayman Islands dolla', '$', 'KYD', 1),
(41, 'Central African Repu', 'cf', 236, '', '', '', 1),
(42, 'Chad', 'td', 235, 'Central African CFA ', 'Fr', 'XAF', 0),
(43, 'Chile', 'cl', 56, 'Chilean peso', '$', 'CLP', 1),
(44, 'China', 'cn', 86, 'Chinese yuan', '¥ or 元', 'CNY', 1),
(45, 'Christmas Island', 'cx', 61, '', '', '', 0),
(46, 'Cocos (Keeling) Isla', 'cc', 61, '', '', '', 0),
(47, 'Colombia', 'co', 57, 'Colombian peso', '$', 'COP', 1),
(48, 'Comoros', 'km', 269, 'Comorian franc', 'Fr', 'KMF', 1),
(49, 'Congo', 'cg', 242, '', '', '', 1),
(50, 'Congo, The Democrati', 'cd', 243, '', '', '', 0),
(51, 'Cook Islands', 'ck', 682, 'New Zealand dollar', '$', 'NZD', 0),
(52, 'Costa Rica', 'cr', 506, 'Costa Rican colón', '₡', 'CRC', 1),
(53, 'Cote d\'Ivoire', 'ci', 225, 'West African CFA fra', 'Fr', 'XOF', 0),
(54, 'Croatia', 'hr', 385, 'Croatian kuna', 'kn', 'HRK', 0),
(55, 'Cuba', 'cu', 53, 'Cuban convertible pe', '$', 'CUC', 1),
(56, 'Cyprus', 'cy', 357, 'Euro', '€', 'EUR', 1),
(57, 'Czech Republic', 'cz', 420, 'Czech koruna', 'Kč', 'CZK', 0),
(58, 'Denmark', 'dk', 45, 'Danish krone', 'kr', 'DKK', 0),
(59, 'Djibouti', 'dj', 253, 'Djiboutian franc', 'Fr', 'DJF', 0),
(60, 'Dominica', 'dm', 1767, 'East Caribbean dolla', '$', 'XCD', 1),
(61, 'Dominican Republic', 'do', 1849, 'Dominican peso', '$', 'DOP', 1),
(62, 'Ecuador', 'ec', 593, 'United States dollar', '$', 'USD', 1),
(63, 'Egypt', 'eg', 20, 'Egyptian pound', '£ or ج.م', 'EGP', 1),
(64, 'El Salvador', 'sv', 503, 'United States dollar', '$', 'USD', 1),
(65, 'Equatorial Guinea', 'gq', 240, 'Central African CFA ', 'Fr', 'XAF', 0),
(66, 'Eritrea', 'er', 291, 'Eritrean nakfa', 'Nfk', 'ERN', 0),
(67, 'Estonia', 'ee', 372, 'Euro', '€', 'EUR', 0),
(68, 'Ethiopia', 'et', 251, 'Ethiopian birr', 'Br', 'ETB', 1),
(69, 'Falkland Islands (Ma', 'fk', 500, '', '', '', 0),
(70, 'Faroe Islands', 'fo', 298, 'Danish krone', 'kr', 'DKK', 0),
(71, 'Fiji', 'fj', 679, 'Fijian dollar', '$', 'FJD', 1),
(72, 'Finland', 'fi', 358, 'Euro', '€', 'EUR', 0),
(73, 'France', 'fr', 33, 'Euro', '€', 'EUR', 1),
(74, 'French Guiana', 'gf', 594, '', '', '', 1),
(75, 'French Polynesia', 'pf', 689, 'CFP franc', 'Fr', 'XPF', 0),
(76, 'Gabon', 'ga', 241, 'Central African CFA ', 'Fr', 'XAF', 0),
(77, 'Gambia', 'gm', 220, '', '', '', 1),
(78, 'Georgia', 'ge', 995, 'Georgian lari', 'ლ', 'GEL', 1),
(79, 'Germany', 'de', 49, 'Euro', '€', 'EUR', 1),
(80, 'Ghana', 'gh', 233, 'Ghana cedi', '₵', 'GHS', 1),
(81, 'Gibraltar', 'gi', 350, 'Gibraltar pound', '£', 'GIP', 0),
(82, 'Greece', 'gr', 30, 'Euro', '€', 'EUR', 1),
(83, 'Greenland', 'gl', 299, '', '', '', 0),
(84, 'Grenada', 'gd', 1473, 'East Caribbean dolla', '$', 'XCD', 1),
(85, 'Guadeloupe', 'gp', 590, '', '', '', 0),
(86, 'Guam', 'gu', 1671, '', '', '', 0),
(87, 'Guatemala', 'gt', 502, 'Guatemalan quetzal', 'Q', 'GTQ', 1),
(88, 'Guernsey', 'gg', 44, 'British pound', '£', 'GBP', 0),
(89, 'Guinea', 'gn', 224, 'Guinean franc', 'Fr', 'GNF', 1),
(90, 'Guinea-Bissau', 'gw', 245, 'West African CFA fra', 'Fr', 'XOF', 1),
(91, 'Guyana', 'gy', 595, 'Guyanese dollar', '$', 'GYD', 1),
(92, 'Haiti', 'ht', 509, 'Haitian gourde', 'G', 'HTG', 1),
(93, 'Holy See (Vatican Ci', 'va', 379, '', '', '', 0),
(94, 'Honduras', 'hn', 504, 'Honduran lempira', 'L', 'HNL', 1),
(95, 'Hong Kong', 'hk', 852, 'Hong Kong dollar', '$', 'HKD', 0),
(96, 'Hungary', 'hu', 36, 'Hungarian forint', 'Ft', 'HUF', 0),
(97, 'Iceland', 'is', 354, 'Icelandic króna', 'kr', 'ISK', 0),
(98, 'India', 'in', 91, 'Indian rupee', '₹', 'INR', 1),
(99, 'Indonesia', 'id', 62, 'Indonesian rupiah', 'Rp', 'IDR', 1),
(100, 'Iran, Islamic Republ', 'ir', 98, '', '', '', 0),
(101, 'Iraq', 'iq', 964, 'Iraqi dinar', 'ع.د', 'IQD', 1),
(102, 'Ireland', 'ie', 353, 'Euro', '€', 'EUR', 0),
(103, 'Isle of Man', 'im', 44, 'British pound', '£', 'GBP', 0),
(104, 'Israel', 'il', 972, 'Israeli new shekel', '₪', 'ILS', 0),
(105, 'Italy', 'it', 39, 'Euro', '€', 'EUR', 1),
(106, 'Jamaica', 'jm', 1876, 'Jamaican dollar', '$', 'JMD', 1),
(107, 'Japan', 'jp', 81, 'Japanese yen', '¥', 'JPY', 0),
(108, 'Jersey', 'je', 44, 'British pound', '£', 'GBP', 0),
(109, 'Jordan', 'jo', 962, 'Jordanian dinar', 'د.ا', 'JOD', 1),
(110, 'Kazakhstan', 'kz', 7, 'Kazakhstani tenge', '', 'KZT', 1),
(111, 'Kenya', 'ke', 254, 'Kenyan shilling', 'Sh', 'KES', 1),
(112, 'Kiribati', 'ki', 686, 'Australian dollar', '$', 'AUD', 0),
(113, 'Korea, Democratic Pe', 'kp', 850, '', '', '', 0),
(114, 'Korea, Republic of S', 'kr', 82, '', '', '', 0),
(115, 'Kuwait', 'kw', 965, 'Kuwaiti dinar', 'د.ك', 'KWD', 1),
(116, 'Kyrgyzstan', 'kg', 996, 'Kyrgyzstani som', 'лв', 'KGS', 1),
(117, 'Laos', 'la', 856, 'Lao kip', '₭', 'LAK', 1),
(118, 'Latvia', 'lv', 371, 'Euro', '€', 'EUR', 0),
(119, 'Lebanon', 'lb', 961, 'Lebanese pound', 'ل.ل', 'LBP', 1),
(120, 'Lesotho', 'ls', 266, 'Lesotho loti', 'L', 'LSL', 0),
(121, 'Liberia', 'lr', 231, 'Liberian dollar', '$', 'LRD', 1),
(122, 'Libyan Arab Jamahiri', 'ly', 218, '', '', '', 0),
(123, 'Liechtenstein', 'li', 423, 'Swiss franc', 'Fr', 'CHF', 0),
(124, 'Lithuania', 'lt', 370, 'Euro', '€', 'EUR', 1),
(125, 'Luxembourg', 'lu', 352, 'Euro', '€', 'EUR', 0),
(126, 'Macao', 'mo', 853, '', '', '', 0),
(127, 'Macedonia', 'mk', 389, '', '', '', 0),
(128, 'Madagascar', 'mg', 261, 'Malagasy ariary', 'Ar', 'MGA', 1),
(129, 'Malawi', 'mw', 265, 'Malawian kwacha', 'MK', 'MWK', 1),
(130, 'Malaysia', 'my', 60, 'Malaysian ringgit', 'RM', 'MYR', 1),
(131, 'Maldives', 'mv', 960, 'Maldivian rufiyaa', '.ރ', 'MVR', 0),
(132, 'Mali', 'ml', 223, 'West African CFA fra', 'Fr', 'XOF', 1),
(133, 'Malta', 'mt', 356, 'Euro', '€', 'EUR', 0),
(134, 'Marshall Islands', 'mh', 692, 'United States dollar', '$', 'USD', 0),
(135, 'Martinique', 'mq', 596, '', '', '', 1),
(136, 'Mauritania', 'mr', 222, 'Mauritanian ouguiya', 'UM', 'MRO', 0),
(137, 'Mauritius', 'mu', 230, 'Mauritian rupee', '₨', 'MUR', 0),
(138, 'Mayotte', 'yt', 262, '', '', '', 0),
(139, 'Mexico', 'mx', 52, 'Mexican peso', '$', 'MXN', 1),
(140, 'Micronesia, Federate', 'fm', 691, '', '', '', 0),
(141, 'Moldova', 'md', 373, 'Moldovan leu', 'L', 'MDL', 1),
(142, 'Monaco', 'mc', 377, 'Euro', '€', 'EUR', 0),
(143, 'Mongolia', 'mn', 976, 'Mongolian tögrög', '₮', 'MNT', 0),
(144, 'Montenegro', 'me', 382, 'Euro', '€', 'EUR', 0),
(145, 'Montserrat', 'ms', 1664, 'East Caribbean dolla', '$', 'XCD', 1),
(146, 'Morocco', 'ma', 212, 'Moroccan dirham', 'د.م.', 'MAD', 1),
(147, 'Mozambique', 'mz', 258, 'Mozambican metical', 'MT', 'MZN', 1),
(148, 'Myanmar', 'mm', 95, 'Burmese kyat', 'Ks', 'MMK', 1),
(149, 'Namibia', 'na', 264, 'Namibian dollar', '$', 'NAD', 1),
(150, 'Nauru', 'nr', 674, 'Australian dollar', '$', 'AUD', 1),
(151, 'Nepal', 'np', 977, 'Nepalese rupee', '₨', 'NPR', 1),
(152, 'Netherlands', 'nl', 31, 'Euro', '€', 'EUR', 1),
(153, 'Netherlands Antilles', 'an', 599, '', '', '', 1),
(154, 'New Caledonia', 'nc', 687, 'CFP franc', 'Fr', 'XPF', 0),
(155, 'New Zealand', 'nz', 64, 'New Zealand dollar', '$', 'NZD', 0),
(156, 'Nicaragua', 'ni', 505, 'Nicaraguan córdoba', 'C$', 'NIO', 1),
(157, 'Niger', 'ne', 227, 'West African CFA fra', 'Fr', 'XOF', 1),
(158, 'Nigeria', 'ng', 234, 'Nigerian naira', '₦', 'NGN', 1),
(159, 'Niue', 'nu', 683, 'New Zealand dollar', '$', 'NZD', 0),
(160, 'Norfolk Island', 'nf', 672, '', '', '', 0),
(161, 'Northern Mariana Isl', 'mp', 1670, '', '', '', 0),
(162, 'Norway', 'no', 47, 'Norwegian krone', 'kr', 'NOK', 0),
(163, 'Oman', 'om', 968, 'Omani rial', 'ر.ع.', 'OMR', 1),
(164, 'Pakistan', 'pk', 92, 'Pakistani rupee', '₨', 'PKR', 1),
(165, 'Palau', 'pw', 680, 'Palauan dollar', '$', '', 0),
(166, 'Palestinian Territor', 'ps', 970, '', '', '', 1),
(167, 'Panama', 'pa', 507, 'Panamanian balboa', 'B/.', 'PAB', 1),
(168, 'Papua New Guinea', 'pg', 675, 'Papua New Guinean ki', 'K', 'PGK', 1),
(169, 'Paraguay', 'py', 595, 'Paraguayan guaraní', '₲', 'PYG', 0),
(170, 'Peru', 'pe', 51, 'Peruvian nuevo sol', 'S/.', 'PEN', 1),
(171, 'Philippines', 'ph', 63, 'Philippine peso', '₱', 'PHP', 1),
(172, 'Pitcairn', 'pn', 872, '', '', '', 0),
(173, 'Poland', 'pl', 48, 'Polish z?oty', 'zł', 'PLN', 1),
(174, 'Portugal', 'pt', 351, 'Euro', '€', 'EUR', 1),
(175, 'Puerto Rico', 'pr', 1939, '', '', '', 1),
(176, 'Qatar', 'qa', 974, 'Qatari riyal', 'ر.ق', 'QAR', 1),
(177, 'Romania', 'ro', 40, 'Romanian leu', 'lei', 'RON', 1),
(178, 'Russia', 'ru', 7, 'Russian ruble', '', 'RUB', 1),
(179, 'Rwanda', 'rw', 250, 'Rwandan franc', 'Fr', 'RWF', 1),
(180, 'Reunion', 're', 262, '', '', '', 0),
(181, 'Saint Barthelemy', 'bl', 590, '', '', '', 0),
(182, 'Saint Helena, Ascens', 'sh', 290, '', '', '', 0),
(183, 'Saint Kitts and Nevi', 'kn', 1869, '', '', '', 0),
(184, 'Saint Lucia', 'lc', 1758, 'East Caribbean dolla', '$', 'XCD', 0),
(185, 'Saint Martin', 'mf', 590, '', '', '', 0),
(186, 'Saint Pierre and Miq', 'pm', 508, '', '', '', 0),
(187, 'Saint Vincent and th', 'vc', 1784, '', '', '', 0),
(188, 'Samoa', 'ws', 685, 'Samoan t?l?', 'T', 'WST', 1),
(189, 'San Marino', 'sm', 378, 'Euro', '€', 'EUR', 0),
(190, 'Sao Tome and Princip', 'st', 239, '', '', '', 0),
(191, 'Saudi Arabia', 'sa', 966, 'Saudi riyal', 'ر.س', 'SAR', 1),
(192, 'Senegal', 'sn', 221, 'West African CFA fra', 'Fr', 'XOF', 1),
(193, 'Serbia', 'rs', 381, 'Serbian dinar', 'дин. or din.', 'RSD', 0),
(194, 'Seychelles', 'sc', 248, 'Seychellois rupee', '₨', 'SCR', 0),
(195, 'Sierra Leone', 'sl', 232, 'Sierra Leonean leone', 'Le', 'SLL', 1),
(196, 'Singapore', 'sg', 65, 'Brunei dollar', '$', 'BND', 1),
(197, 'Slovakia', 'sk', 421, 'Euro', '€', 'EUR', 0),
(198, 'Slovenia', 'si', 386, 'Euro', '€', 'EUR', 0),
(199, 'Solomon Islands', 'sb', 677, 'Solomon Islands doll', '$', 'SBD', 0),
(200, 'Somalia', 'so', 252, 'Somali shilling', 'Sh', 'SOS', 0),
(201, 'South Africa', 'za', 27, 'South African rand', 'R', 'ZAR', 1),
(202, 'South Georgia and th', 'gs', 500, '', '', '', 0),
(203, 'Spain', 'es', 34, 'Euro', '€', 'EUR', 1),
(204, 'Sri Lanka', 'lk', 94, 'Sri Lankan rupee', 'Rs or රු', 'LKR', 1),
(205, 'Sudan', 'sd', 249, 'Sudanese pound', 'ج.س.', 'SDG', 0),
(206, 'Suriname', 'sr', 597, 'Surinamese dollar', '$', 'SRD', 1),
(207, 'Svalbard and Jan May', 'sj', 47, '', '', '', 0),
(208, 'Swaziland', 'sz', 268, 'Swazi lilangeni', 'L', 'SZL', 1),
(209, 'Sweden', 'se', 46, 'Swedish krona', 'kr', 'SEK', 0),
(210, 'Switzerland', 'ch', 41, 'Swiss franc', 'Fr', 'CHF', 1),
(211, 'Syrian Arab Republic', 'sy', 963, '', '', '', 0),
(212, 'Taiwan', 'tw', 886, 'New Taiwan dollar', '$', 'TWD', 0),
(213, 'Tajikistan', 'tj', 992, 'Tajikistani somoni', 'ЅМ', 'TJS', 1),
(214, 'Tanzania, United Rep', 'tz', 255, '', '', '', 1),
(215, 'Thailand', 'th', 66, 'Thai baht', '฿', 'THB', 1),
(216, 'Timor-Leste', 'tl', 670, '', '', '', 0),
(217, 'Togo', 'tg', 228, 'West African CFA fra', 'Fr', 'XOF', 1),
(218, 'Tokelau', 'tk', 690, '', '', '', 1),
(219, 'Tonga', 'to', 676, 'Tongan pa?anga', 'T$', 'TOP', 1),
(220, 'Trinidad and Tobago', 'tt', 1868, 'Trinidad and Tobago ', '$', 'TTD', 1),
(221, 'Tunisia', 'tn', 216, 'Tunisian dinar', 'د.ت', 'TND', 1),
(222, 'Turkey', 'tr', 90, 'Turkish lira', '', 'TRY', 1),
(223, 'Turkmenistan', 'tm', 993, 'Turkmenistan manat', 'm', 'TMT', 0),
(224, 'Turks and Caicos Isl', 'tc', 1649, '', '', '', 1),
(225, 'Tuvalu', 'tv', 688, 'Australian dollar', '$', 'AUD', 0),
(226, 'Uganda', 'ug', 256, 'Ugandan shilling', 'Sh', 'UGX', 1),
(227, 'Ukraine', 'ua', 380, 'Ukrainian hryvnia', '₴', 'UAH', 1),
(228, 'United Arab Emirates', 'ae', 971, 'United Arab Emirates', 'د.إ', 'AED', 1),
(229, 'United Kingdom', 'gb', 44, 'British pound', '£', 'GBP', 1),
(230, 'United States', 'us', 1, 'United States dollar', '$', 'USD', 1),
(231, 'Uruguay', 'uy', 598, 'Uruguayan peso', '$', 'UYU', 1),
(232, 'Uzbekistan', 'uz', 998, 'Uzbekistani som', '', 'UZS', 1),
(233, 'Vanuatu', 'vu', 678, 'Vanuatu vatu', 'Vt', 'VUV', 1),
(234, 'Venezuela, Bolivaria', 've', 58, '', '', '', 1),
(235, 'Vietnam', 'vn', 84, 'Vietnamese ??ng', '₫', 'VND', 1),
(236, 'Virgin Islands, Brit', 'vg', 1284, '', '', '', 0),
(237, 'Virgin Islands, U.S.', 'vi', 1340, '', '', '', 0),
(238, 'Wallis and Futuna', 'wf', 681, 'CFP franc', 'Fr', 'XPF', 0),
(239, 'Yemen', 'ye', 967, 'Yemeni rial', '﷼', 'YER', 0),
(240, 'Zambia', 'zm', 260, 'Zambian kwacha', 'ZK', 'ZMW', 1),
(241, 'Zimbabwe', 'zw', 263, 'Botswana pula', 'P', 'BWP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countrytest`
--

CREATE TABLE `countrytest` (
  `country_id` int(11) NOT NULL,
  `iso` varchar(5) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `country_nicename` varchar(80) NOT NULL,
  `iso3` varchar(5) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countrytest`
--

INSERT INTO `countrytest` (`country_id`, `iso`, `country_name`, `country_nicename`, `iso3`, `country_code`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', '4', 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', '8', 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', '12', 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', '16', 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', '20', 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', '24', 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', '66', 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', '', '', 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', '28', 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', '32', 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', '51', 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', '53', 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', '36', 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', '40', 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', '31', 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', '44', 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', '48', 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', '50', 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', '52', 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', '11', 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', '56', 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', '84', 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', '20', 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', '60', 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', '64', 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', '68', 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', '70', 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', '72', 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', '', 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', '76', 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', '', 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', '96', 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', '10', 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', '85', 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', '10', 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', '11', 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', '12', 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', '12', 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', '13', 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', '13', 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', '14', 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', '14', 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', '15', 56),
(44, 'CN', 'CHINA', 'China', 'CHN', '15', 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', '', 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', '', 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', '17', 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', '17', 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', '17', 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', '18', 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', '18', 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', '18', 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', '38', 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', '19', 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', '19', 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', '19', 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', '20', 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', '20', 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', '26', 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', '21', 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', '21', 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', '21', 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', '81', 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', '22', 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', '22', 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', '23', 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', '23', 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', '23', 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', '23', 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', '23', 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', '24', 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', '24', 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', '25', 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', '25', 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', '25', 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', '', 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', '26', 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', '27', 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', '26', 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', '27', 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', '28', 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', '29', 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', '30', 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', '30', 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', '30', 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', '31', 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', '31', 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', '32', 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', '32', 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', '62', 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', '32', 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', '33', 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', '', 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', '33', 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', '34', 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', '34', 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', '34', 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', '35', 354),
(99, 'IN', 'INDIA', 'India', 'IND', '35', 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', '36', 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', '36', 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', '36', 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', '37', 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', '37', 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', '38', 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', '38', 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', '39', 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', '40', 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', '39', 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', '40', 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', '29', 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', '40', 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', '41', 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', '41', 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', '41', 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', '41', 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', '42', 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', '42', 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', '42', 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', '43', 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', '43', 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', '43', 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', '44', 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', '44', 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', '44', 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '80', 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', '45', 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', '45', 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', '45', 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', '46', 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', '46', 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', '47', 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', '58', 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', '47', 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', '47', 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', '48', 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', '', '', 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', '48', 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', '58', 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', '49', 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', '49', 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', '49', 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', '50', 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', '50', 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', '50', 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', '10', 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', '51', 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', '52', 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', '52', 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', '52', 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', '53', 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', '54', 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', '55', 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', '55', 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', '56', 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', '56', 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', '57', 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', '57', 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', '58', 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', '57', 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', '51', 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', '58', 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', '58', 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', '', 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', '59', 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', '59', 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', '60', 595),
(168, 'PE', 'PERU', 'Peru', 'PER', '60', 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', '60', 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', '61', 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', '61', 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', '62', 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', '63', 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', '63', 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', '63', 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', '64', 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', '64', 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', '64', 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', '65', 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', '65', 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', '66', 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', '66', 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', '67', 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', '88', 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', '67', 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', '67', 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', '68', 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', '68', 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', '', '', 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', '69', 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', '69', 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', '70', 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', '70', 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', '70', 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', '90', 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', '70', 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', '71', 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', '', 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', '72', 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', '14', 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', '73', 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', '74', 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', '74', 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', '74', 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', '75', 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', '75', 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', '76', 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', '15', 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', '76', 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', '83', 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', '76', 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', '', 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', '76', 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', '77', 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', '77', 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', '78', 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', '78', 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', '79', 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', '79', 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', '79', 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', '79', 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', '80', 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', '80', 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', '78', 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', '82', 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', '84', 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', '', 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', '85', 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', '86', 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', '54', 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', '86', 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', '70', 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', '92', 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', '85', 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', '87', 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', '73', 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', '88', 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', '89', 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', '71', 263);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `CurrencyId` int(11) NOT NULL,
  `CurrencyTitle` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `CurrencySymbol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`CurrencyId`, `CurrencyTitle`, `country_id`, `CurrencySymbol`) VALUES
(1, 'USD', 230, 'Dollar'),
(2, 'INR', 98, 'Rupees'),
(3, 'MX', 139, 'MX');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_Id` int(11) NOT NULL,
  `Company_Id` int(11) NOT NULL,
  `AccountNumber` varchar(50) DEFAULT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Address1` varchar(100) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `ZipCode` varchar(50) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `ProfileImage` varchar(50) DEFAULT NULL,
  `ActivationCode` varchar(100) DEFAULT NULL,
  `IsAccountActivated` tinyint(1) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `building_number` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `FileName` varchar(50) DEFAULT NULL,
  `FileType` varchar(200) DEFAULT NULL,
  `Side` varchar(50) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedDate` datetime NOT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDocumentUpload` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_Id`, `Company_Id`, `AccountNumber`, `Title`, `FirstName`, `LastName`, `Address1`, `Address2`, `City`, `State`, `ZipCode`, `country_id`, `Phone`, `Email`, `Password`, `DOB`, `ProfileImage`, `ActivationCode`, `IsAccountActivated`, `gender`, `building_number`, `street`, `town`, `FileName`, `FileType`, `Side`, `IsActive`, `IsDeleted`, `CreatedDate`, `DeletedDate`, `IsDocumentUpload`) VALUES
(1, 17, '123456789', 'Mr', 'Ishu', 'Kumar', 'china', 'test', 'china', 'CH', '12345', 99, '123456789', 'oppo@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '2017-10-10', 'fff', 'FALCON01', 1, 'Male', '420', 'pani wla', 'subhash', 'Passport', '', 'front', 1, 1, '2018-04-26 09:59:58', '2018-04-20 09:32:57', 0),
(8, 17, '123456789', 'Mr', 'zolly', 'Singh', 'Rajouri Garden', 'Test by Rajeev', 'test', 'USA', '111111', 98, '8010276833', 'zolly@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '2017-10-10', 'fffa', 'FALCON02', 1, 'Male', 'New York Madison Square', 'RJ/7', 'Model town', 'passport', 'test', 'back', 1, 0, '2018-08-09 06:17:57', NULL, 1),
(9, 17, NULL, NULL, 'Oppo', 'chinese', 'china', 'test', 'china', 'CH', '12345', 226, '6594585215', 'oppo@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '2017-10-10 ', 'fff', 'FALCON03', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-04-27 09:29:59', NULL, 0),
(10, 17, '35434', NULL, 'test', 'test', 'test', 'test', 'test', 'trst', 'tres', 226, '2345324523', 'testre@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '1990-10-10 ', 'test', 'FALCON04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-10-27 11:25:23', '2018-04-20 09:48:17', 0),
(11, 17, '25432', 'Mr', 'Girish', 'test', 'Delhi', 'test', 'tetet', 'etttet', '110033', 98, '968545868', 'Girishtest@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '02/23/1910', 'test', 'FALCON05', 1, 'Male', '1022', 'etetet', 'New delhi', 'passport', 'test', 'front', 1, 1, '2018-05-29 08:49:10', '2018-04-20 11:08:39', 1),
(12, 17, '985458', NULL, 'Ishu Test', 'test', 'address', 'Address2', 'City', 'State', '854854', 226, '8545859654', 'ishutest@gamil.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '1990-10-10 ', 'test', 'FALCON06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2017-10-30 06:27:55', NULL, 0),
(13, 17, NULL, NULL, 'Customer Test', 'test', '', '', '', '', '', 226, '', 'customer@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON07', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-04-23 02:35:34', '2018-04-23 02:35:42', 0),
(14, 17, NULL, NULL, 'Rajeev', 'Verma', 'fdgfd', 'fdgd', 'fdg', 'fdgfd', 'fdgfd', 14, '384293232', 'rajeevdesizn@gmail.com', 'FBB9D4006064889A67EE1D9CAE7EDE26CDE1056C', '', '', 'FALCON08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-04-19 12:42:22', NULL, 0),
(15, 17, NULL, 'Mr', 'adam', 'smith', 'sdfdsfds', 'dfsdfsd', 'sdfds', 'sdf', 'sdf', 180, '54543534534534', 'asmith@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '1911-12-15', '', 'FALCON09', 0, 'Male', 'Delhi', '53', 'New delhi', 'passport', 'test', 'front', 0, 0, '2018-05-29 09:44:19', NULL, 1),
(16, 17, NULL, NULL, 'rajeev', 'verma', '', '', '', '', '', 99, '9732321283', 'ronniedesizn@gmail.com', 'AAFDC23870ECBCD3D557B6423A8982134E17927E', '', '', 'FALCON10', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-01-18 15:55:06', NULL, 0),
(17, 17, NULL, NULL, 'Lhuui', 'Castroe', '', '', '', '', '', 226, '2094704318', 'Rey0825@gmail.com', '171344B753E1D6AFAF7640AD8664E6BF9E2382CC', '', '', 'FALCON11', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-01-22 15:23:36', NULL, 0),
(19, 17, NULL, 'Mr', 'Rishi', 'kumar', 'sdfdsfds', 'jamli', 'Delhi', 'HP', '123456', 99, '123456789', 'rishi@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '12/5/1995', '', 'FALCON12', 0, 'Male', 'Ansal Clisque tower', 'RJ/7', 'town', NULL, NULL, NULL, 0, 0, '2018-05-04 16:13:26', NULL, 0),
(27, 17, NULL, NULL, 'Manju', 'kumar', '', '', '', '', '', 98, '111111111', 'manju@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON13', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-04-18 13:47:59', NULL, 0),
(28, 17, NULL, NULL, 'Amit', 'Singhgania', '', '', '', '', '', 98, '1025874102', 'amit@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON28', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-04-19 06:00:54', NULL, 0),
(29, 17, NULL, NULL, '', '', '', '', '', '', '', 10, '', '', 'DA39A3EE5E6B4B0D3255BFEF95601890AFD80709', '', '', 'FALCON29', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-04-19 11:44:36', '2018-04-19 15:30:34', 0),
(30, 0, NULL, NULL, 'ttfn', 'tln', 'tadrss', 'tadrss2', 'tcity', 'ustate', '453458', 10, '55555', 't@gamil.com', 'B232FFF599430EBA22685C9E25CE9E43A4C966BB', '6/6/97', 'rtrt', 'FALCON30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-04-19 11:46:07', '2018-04-19 13:19:37', 0),
(31, 17, NULL, NULL, 'ggg', 'gg', 'tryr fggdf', 'fdgfd dfgfd', 'fdgfd', 'fgd', '56546', 10, '666666666', 'ggg', '98BA9C557D54E3B62C85A878CA13C9B3C9F7DA04', '5/6/66', '', 'FALCON31', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-04-19 12:03:40', '2018-04-19 13:21:31', 0),
(32, 17, NULL, NULL, 'Test by', 'ss', 'ss', 'ss', 'ss', 'ss', '2233', 91, '', 'testby@gmail.com', '2BE88CA4242C76E8253AC62474851065032D6833', '', 'ss', 'FALCON32', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-04-20 09:10:29', '2018-04-20 09:10:41', 0),
(33, 17, '', NULL, 'ishul', '', '', '', '', 'rtyrtey', '', 13, '', '', '2BE88CA4242C76E8253AC62474851065032D6833', '', '', 'FALCON33', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-04-20 06:06:40', '2018-04-20 05:54:00', 0),
(34, 17, NULL, NULL, 'testing', 'to', 'sfsa', 'xvcxz', 'zcxz', 'zcxzc', 'zcxzc', 9, '513454354', 'test@gmail.com', 'DA39A3EE5E6B4B0D3255BFEF95601890AFD80709', '12-04-2019', '', 'FALCON34', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-04-19 14:47:28', '2018-04-19 14:55:43', 0),
(35, 17, NULL, NULL, 'IshuUber', '', '', '', '', '', '', 12, '', '', '2BE88CA4242C76E8253AC62474851065032D6833', '', '', 'FALCON35', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-04-20 06:36:56', '2018-04-20 09:19:03', 0),
(36, 17, '123456789', NULL, 'Oppo', 'chinese', 'china', 'test', 'china', 'CH', '12345', 99, '000011452', 'oppo@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '2017-10-10', 'fff', 'FALCON36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2018-04-25 07:14:44', NULL, 0),
(37, 17, NULL, NULL, 'rajeev', 'cscs testredretretretretretret', 'sfsdsf', 'sdfssdf', 'asasa', 'saas', '221022', 98, '', 'dsfkaska@sajjasdas.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '21/06/1983', '', 'FALCON37', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-04-25 06:39:19', NULL, 0),
(38, 17, NULL, NULL, 'Rajeev', 'Verma', '', '', '', '', '', 230, '123456', 'abc@abcd.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON38', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-04 16:51:13', NULL, 0),
(39, 17, NULL, NULL, 'Rajeev', 'Verma', '', '', '', '', '', 230, '123456', 'abc@abcdsd.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON39', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-04 16:51:33', NULL, 0),
(40, 17, NULL, NULL, 'temp', 'temp', '', '', '', '', '', 98, '1456465465456', 'temp@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON40', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 06:07:57', NULL, 0),
(41, 17, NULL, NULL, 'temp', 'temp', '', '', '', '', '', 98, '1456465465456', 'temp11@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON41', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 06:08:55', NULL, 0),
(42, 17, NULL, NULL, 'monday', 'monday', '', '', '', '', '', 98, '1222222', 'monday@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON42', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 06:22:23', NULL, 0),
(43, 17, NULL, NULL, 'dd', 'dd', '', '', '', '', '', 98, '111111', 'd@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON43', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 06:23:33', NULL, 0),
(44, 17, NULL, NULL, 'Test customer', 'Monday', '', '', '', '', '', 98, '965845858', 'mon@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 07:29:35', NULL, 0),
(45, 17, NULL, NULL, 'test2', 'Proto', '', '', '', '', '', 98, '8965845854', 'proto@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON45', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 07:32:55', NULL, 0),
(46, 17, NULL, NULL, 'test3', 'Test3', '', '', '', '', '', 98, '9685485684', 'pingu@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON46', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 07:37:48', NULL, 0),
(47, 17, NULL, NULL, 'test3', 'test3last', '', '', '', '', '', 98, '965845845', 'last@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON47', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 07:47:14', NULL, 0),
(48, 17, NULL, NULL, 'last', 'Name', '', '', '', '', '', 98, '9685485458', 'name@gmail.com', '7110EDA4D09E062AA5E4A390B0A572AC0D2C0220', '', '', 'FALCON48', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 07:49:55', NULL, 0),
(49, 17, NULL, NULL, 'test4By', 'testTo', '', '', '', '', '', 98, '965845854', 'BYTO@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON49', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-07 08:02:43', NULL, 0),
(50, 17, NULL, 'Mr', 'ishu', 'Ishu kumar', 'aa', 'aaa', 'aaa', 'UK', '11002', 98, '8010276833', 'name11@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '2018-01-01', '', 'FALCON50', 0, 'Male', 'aaa', 'aaa', 'aaa', NULL, NULL, NULL, 0, 0, '2018-05-08 08:15:19', NULL, 0),
(51, 17, NULL, NULL, 'vvv', 'vv', '', '', '', '', '', 98, '1236564646', 'v@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON51', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-09 06:30:26', NULL, 0),
(52, 17, NULL, NULL, 'vvv00', 'vv', '', '', '', '', '', 98, '1236564646', 'v0@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON52', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-09 06:31:13', NULL, 0),
(53, 17, NULL, NULL, 'nn', 'n', '', '', '', '', '', 98, '343432432432', 'n@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON53', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-09 06:34:53', NULL, 0),
(54, 17, NULL, NULL, 'ggg', 'g', '', '', '', '', '', 98, '212121', 'g@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON54', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-09 06:46:03', NULL, 0),
(55, 17, NULL, NULL, 'M', 'm', '', '', '', '', '', 98, '7765656580', 'm@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON55', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-09 06:47:52', NULL, 0),
(56, 17, NULL, NULL, 'ts', 'st', '', '', '', '', '', 98, '8545875848', 'tsst@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON56', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-05-09 06:53:01', NULL, 0),
(57, 17, NULL, NULL, 'p', 'p', '', '', '', '', '', 98, '121212', 'p@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON57', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-09 07:14:09', '2018-07-19 21:43:03', 0),
(58, 17, NULL, NULL, 'zzx', 'xxxx', '', '', '', '', '', 98, '121456456', 'x@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON58', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-09 15:27:17', '2018-07-19 21:43:01', 0),
(59, 17, NULL, NULL, 'Testing', 'User', '', '', '', '', '', 58, '1234567', 'reste@abc.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON59', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-09 16:08:48', '2018-07-19 21:42:59', 0),
(60, 17, NULL, NULL, 'rara', 'vdsds', '', '', '', '', '', 98, '93223423423', 'radnc1@gmail.com', '7C4A8D09CA3762AF61E59520943DC26494F8941B', '', '', 'FALCON60', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 08:38:44', '2018-07-19 21:42:57', 0),
(61, 17, NULL, NULL, 'my', 'my test', '', '', '', '', '', 98, 'dssdfsdfsdf', 'my@gmail.com', 'DA39A3EE5E6B4B0D3255BFEF95601890AFD80709', '', '', 'FALCON61', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 09:15:58', '2018-07-19 21:41:38', 0),
(62, 17, NULL, NULL, 'ggg', 'g', '', '', '', '', '', 98, 'fddfgdfgd', 'g', 'DA39A3EE5E6B4B0D3255BFEF95601890AFD80709', '', '', 'FALCON62', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 09:19:20', '2018-07-19 21:41:37', 0),
(63, 17, NULL, NULL, 'n', 'n', '', '', '', '', '', 98, 'n', 'n', 'DA39A3EE5E6B4B0D3255BFEF95601890AFD80709', '', '', 'FALCON63', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 09:19:43', '2018-07-19 21:41:35', 0),
(64, 17, NULL, NULL, 'test', 'tr', '', '', '', '', '', 2, '52534645646', 'testG@gmiail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON64', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 10:39:58', '2018-07-19 21:41:34', 0),
(65, 17, NULL, NULL, 'v', '', '', '', '', '', '', 98, 'eeee', 'ff', 'DA39A3EE5E6B4B0D3255BFEF95601890AFD80709', '', '', 'FALCON65', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 11:39:48', '2018-07-19 21:41:32', 0),
(66, 17, NULL, NULL, 'me', 'test', '', '', '', '', '', 98, '4545345353453535000', 'gg@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON66', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 11:41:12', '2018-07-19 21:41:31', 0),
(67, 17, NULL, NULL, 'rishi', 'rich', '', '', '', '', '', 230, '1234567890', 'rich@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON67', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 12:16:31', '2018-07-19 21:41:29', 0),
(68, 17, NULL, NULL, 'dgdf', 'dgf', '', '', '', '', '', 98, '2114454', 'fg@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON68', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 12:16:56', '2018-07-19 21:41:27', 0),
(69, 17, NULL, NULL, 'hgj', 'ghj', '', '', '', '', '', 98, '676767867867', 'hj@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON69', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 14:45:33', '2018-07-19 21:41:26', 0),
(70, 17, NULL, NULL, 'hh', 'h', '', '', '', '', '', 98, '12121212121', 'hh@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON70', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-15 14:50:15', '2018-07-19 21:41:24', 0),
(71, 17, NULL, NULL, 'moh', 'kumr', '', '', '', '', '', 98, '12121332123123', 'mohd@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON71', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-16 08:56:10', '2018-07-19 21:44:06', 0),
(72, 17, NULL, NULL, 'Babangida', 'Adamu', '', '', '', '', '', 158, '8155400096', 'ibnsalih112@gmail.com', 'A3F2539B873F1A4CF5E0A152B3F75D8D878B24D3', '', '', 'FALCON72', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-05-28 15:50:42', '2018-07-19 21:43:30', 0),
(73, 17, NULL, 'Mr', 'shiva', 'test', 'Delhi', 'test', 'test', 'test state', '263621', 98, '7579052252', 'shiva.b@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '1907-04-14', '', 'FALCON73', 0, 'Male', 'test', '2525', 'test', 'passport', 'test', 'front', 0, 1, '2018-05-29 09:37:33', '2018-07-19 21:44:03', 1),
(74, 17, NULL, 'Mr', 'manav', 'kumar', 'Noops', 'online', 'Noida', 'FL', '1269874', 139, '1233233', 'manav@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '2018-05-10', '', 'FALCON74', 0, 'Female', '54', 'sfsfsdf', 'marshal', 'passport', 'Mine test', 'front', 0, 1, '2018-05-29 09:58:05', '2018-07-19 21:44:01', 1),
(75, 17, NULL, NULL, 'Test', 'Tester', '', '', '', '', '', 230, '8652234567', 'noemail@elavon.com', 'D53D494C04B2677B0062B804B1DB399104D1739B', '', '', 'FALCON75', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-07-17 17:20:08', '2018-07-19 21:43:59', 0),
(76, 17, NULL, NULL, 'Rajeev', 'Verma', '', '', '', '', '', 98, '32323432423', 'raj@gmail.com', '7110EDA4D09E062AA5E4A390B0A572AC0D2C0220', '', '', 'FALCON76', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-07-18 17:32:43', NULL, 0),
(77, 17, NULL, NULL, 'neh', 'ver', '', '', '', '', '', 98, '1234', 'neh@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON77', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-07-19 02:35:21', '2018-07-19 21:43:53', 0),
(78, 17, NULL, NULL, 'koa', 'Dav', '', '', '', '', '', 98, '9874651230', 'koa2@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON78', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-07-19 05:51:10', '2018-07-19 21:43:51', 0),
(79, 17, NULL, NULL, 'v', 'v', '', '', '', '', '', 98, '987454546465', 'v11@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON79', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-07-19 09:07:34', '2018-07-19 21:43:50', 0),
(80, 17, NULL, NULL, 'uo', 'kk', '', '', '', '', '', 98, '79666986986', 'uo@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON80', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-07-19 09:09:56', '2018-07-19 21:43:48', 0),
(81, 17, NULL, NULL, 'karan', 'luthra', '', '', '', '', '', 98, '9599902185', 'karaluthra@live.com', '58D32DBCA757DE7B5F3CB1ECCFFF2000D792D7A3', '', '', 'FALCON81', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-07-19 09:17:56', '2018-07-19 21:43:46', 0),
(82, 17, NULL, 'Mr', 'Goldy', 'Dayal', 'Test', '', 'Test', 'Test', '12345', 98, '565465454', 'g11@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '1970-06-24', '', 'FALCON82', 0, 'Female', 'Test', 'Test', 'Test', 'driving_licence', 'test', 'front', 0, 1, '2018-07-19 10:15:24', '2018-07-19 21:43:44', 0),
(83, 17, NULL, NULL, 'raj', 'ver', '', '', '', '', '', 98, '1234', 'adms@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON83', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-07-19 11:15:34', '2018-07-19 21:43:42', 0),
(84, 17, NULL, NULL, 'Test', 'customer', '', '', '', '', '', 98, '9871464771', 'testingcustomer@gmail.com', '8CB2237D0679CA88DB6464EAC60DA96345513964', '', '', 'FALCON84', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-07-19 11:29:18', '2018-07-19 21:43:40', 0),
(85, 17, NULL, 'Mr', 'KARAN', 'LUTHRA', '13/60 2ND FLOOR', '', 'NEW DELHI', 'DELHI', '110027', 98, '9599902185', 'vineetancadd@gmail.com', 'FA03154A734B97594958EF4F6C0D6E0C9B629454', '1987-08-20', '', 'FALCON85', 0, 'Male', '60', 'Subhash Nagar', 'NEW DELHI', 'tax_id', 'test', 'front', 0, 1, '2018-07-19 11:54:15', '2018-07-19 21:43:09', 0),
(86, 17, NULL, NULL, 'neha', 'verma', '', '', '', '', '', 98, '12345678', 'neha@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON86', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-07-19 13:23:01', NULL, 0),
(87, 17, NULL, NULL, 'john', 'adam', '', '', '', '', '', 98, '12345667338', 'john@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON87', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-07-19 14:31:33', NULL, 0),
(88, 17, NULL, 'Mr', 'Amit Kumar', 'Maurya', 'JanangirPuri', 'JanangirPuri', 'New Delhi', 'DELHI', '110033', 98, '8010276833', 'amitmaurya@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '1994-01-01', '', 'FALCON88', 0, 'Male', 'House No i-932', 'North West', 'Delhi', 'national_identity_card', 'Aadhar', 'front', 0, 0, '2018-08-25 12:26:29', NULL, 1),
(89, 17, NULL, 'Mr', 'Ishu', 'Kumar', 'Teh-Dehra', 'Distt-kangra', 'Kangra', 'HP', '176033', 98, '8010276833', 'ishuk@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '1988-05-11', '', 'FALCON89', 0, 'Male', 'v.p.o Nandpur', 'Bhatoli', 'Kangra', 'national_identity_card', 'Aadhar', 'front', 0, 0, '2018-08-25 14:51:15', NULL, 1),
(90, 17, NULL, NULL, 'rajeevTest', 'Kumar', '', '', '', '', '', 98, '9876543210', 'rajeevt@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON90', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-08-27 15:35:45', NULL, 0),
(91, 17, NULL, NULL, 'newuser', 'test', '', '', '', '', '', 98, '123456789', 'newuser@gmail.com', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '', 'FALCON91', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2018-08-29 06:56:36', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_applicant_kyc`
--

CREATE TABLE `customer_applicant_kyc` (
  `CustomerApplicantKYCId` int(11) NOT NULL,
  `ApplicantId` varchar(50) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `IsDocumentUpload` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedDate` datetime NOT NULL,
  `Documentid` varchar(100) DEFAULT NULL,
  `DocumentUploadedDate` datetime DEFAULT NULL,
  `ApplicantCheckId` varchar(50) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `ApplicantCheckDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_applicant_kyc`
--

INSERT INTO `customer_applicant_kyc` (`CustomerApplicantKYCId`, `ApplicantId`, `CustomerId`, `CompanyId`, `IsDocumentUpload`, `CreatedDate`, `Documentid`, `DocumentUploadedDate`, `ApplicantCheckId`, `Status`, `ApplicantCheckDate`) VALUES
(7, '19fe20cc-f3c5-473d-bb2c-2a92141d0abb', 8, 17, 1, '2018-08-09 06:17:58', '8ac2bbe2-4267-4bbc-8532-12d350da3720', '2018-05-29 18:08:43', NULL, NULL, NULL),
(8, '22dd12a3-e4e0-4011-9605-5a96262fd293', 19, 17, 1, '2018-05-04 14:07:13', NULL, NULL, NULL, 'awaiting_applicant', NULL),
(9, 'bf73898b-fea0-4207-a799-3932df38db2d', 9, 17, 1, '2018-05-07 08:57:48', '59348a96-bed1-46df-bc20-5fbde8e33007', '2018-05-28 14:16:00', NULL, NULL, NULL),
(10, '7fe6ba40-2b6c-4936-b6a7-784baea2114e', 12, 17, 0, '2018-05-07 09:30:32', NULL, NULL, NULL, NULL, NULL),
(11, 'bc66059d-1d43-4264-a8ca-6bb5aba2351c', 50, 17, 0, '2018-05-08 08:15:20', NULL, NULL, NULL, NULL, NULL),
(12, '28d39caf-7d56-4f06-bf3f-b64eec935400', 11, 17, 1, '2018-05-29 08:00:56', 'cff4050e-a4d6-41d9-8325-e56e3f1c9112', '2018-05-29 08:00:58', 'ac2cf847-bb66-410b-8c07-92b9bed576c3', 'awaiting_applicant', '2018-05-30 09:17:57'),
(13, '954cd0f0-0e9c-40dc-a427-7f827e4ffb64', 73, 17, 1, '2018-05-29 09:37:34', '0da8adf5-56b6-4606-943f-1c5c4dce84e0', '2018-05-29 09:37:35', NULL, NULL, NULL),
(14, '157b6af5-d6f7-45db-a4d2-2d538960ed45', 15, 17, 1, '2018-05-29 09:44:19', 'c1826aca-28fb-4886-8455-7203bccbf680', '2018-05-29 09:44:01', NULL, NULL, NULL),
(15, '4aef5832-7b05-4ae7-8487-bd4897118246', 74, 17, 1, '2018-05-29 09:58:06', '264f14d0-c7f5-4e2f-8905-71ebbf33e9a6', '2018-05-29 09:58:10', NULL, NULL, NULL),
(16, '4cc268b3-4879-453a-9554-b96b02cf2257', 88, 17, 1, '2018-08-25 12:26:30', 'a43d5754-7077-4865-af7d-f1637ef10815', '2018-08-25 12:26:40', 'c66394ed-2fe2-44ce-a8bd-d7c342056c69', 'awaiting_applicant', '2018-08-25 12:26:42'),
(17, '38f101e7-4b81-4cd6-b4be-a5f36ae0f739', 89, 17, 1, '2018-08-25 14:51:16', '8e7fda1c-41cb-4a11-812c-dbabdd9f7a45', '2018-08-25 14:51:35', NULL, NULL, NULL),
(18, '42d4a649-0d45-4440-81b8-b4e0fa13106f', 90, 17, 0, '2018-08-27 15:36:46', NULL, NULL, '562bc4c5-3f75-45c9-8034-1c7a11c27964', 'awaiting_applicant', '2018-08-27 15:41:51'),
(19, '05280645-6bb2-43b3-9fe5-7c731fb871b3', 91, 17, 0, '2018-08-29 06:58:50', NULL, NULL, '6fef199d-7bd7-4623-8917-75d524395b7b', 'awaiting_applicant', '2018-08-29 06:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `feescategory`
--

CREATE TABLE `feescategory` (
  `FeesCategoryId` int(11) NOT NULL,
  `FeesCategoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feescategory`
--

INSERT INTO `feescategory` (`FeesCategoryId`, `FeesCategoryName`) VALUES
(1, 'MONEY TRANSFER MODULE'),
(2, 'BUSINESS-TO-BUSINESS PAYMENT MODULE'),
(3, 'MERCHANT PAYMENT GATEWAY MODULE'),
(4, 'FOREIGN EXCHANGE CURRENCY MOULE'),
(5, 'BILL PAYMENT MODULE'),
(6, 'MOBILE PHONE TOP-UP MODULE'),
(7, 'MERCHANT SERVICES MODULE'),
(8, 'PREPAID VOUCHER MODULE'),
(9, 'AGENCY BANKING MANAGEMENT MODULE'),
(10, 'GIFT CARD MALL MODULE');

-- --------------------------------------------------------

--
-- Table structure for table `giftcard`
--

CREATE TABLE `giftcard` (
  `GiftCardid` int(11) NOT NULL,
  `GiftCardName` varchar(50) NOT NULL,
  `InitialsPrice` decimal(18,2) NOT NULL,
  `GiftCardPrice` decimal(18,2) NOT NULL,
  `GiftCardCreatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `giftcard`
--

INSERT INTO `giftcard` (`GiftCardid`, `GiftCardName`, `InitialsPrice`, `GiftCardPrice`, `GiftCardCreatedDate`) VALUES
(1, 'Falconloop', '20.00', '20.00', '2018-06-08 00:00:00'),
(2, 'Falconloop', '150.00', '150.00', '2018-06-08 00:00:00'),
(3, 'Falconloop', '50.00', '50.00', '2018-06-07 00:00:00'),
(4, 'Falconloop', '15.00', '15.00', '2018-07-09 00:00:00'),
(5, 'Falconloop', '25.00', '25.00', '2018-07-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `globalexchangerate`
--

CREATE TABLE `globalexchangerate` (
  `GlobalExchangeId` int(11) NOT NULL,
  `PaymentMethodId` int(11) NOT NULL,
  `SourceCountryId` int(11) NOT NULL,
  `DestinationCountryId` int(11) NOT NULL,
  `SpotPrice` varchar(50) NOT NULL,
  `AutoFees` decimal(18,2) NOT NULL,
  `SellSpotPrice` decimal(18,2) NOT NULL,
  `SellingExchangeRate` decimal(18,2) NOT NULL,
  `GlobalExchangeRate` decimal(18,2) NOT NULL,
  `IsActive` tinyint(4) NOT NULL DEFAULT '1',
  `CreatedDate` date NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `SpotMarginBaseCurrency` decimal(18,2) NOT NULL,
  `SpotMarginUSDCurrency` decimal(18,2) NOT NULL,
  `IsDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `DeletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `globalexchangerate`
--

INSERT INTO `globalexchangerate` (`GlobalExchangeId`, `PaymentMethodId`, `SourceCountryId`, `DestinationCountryId`, `SpotPrice`, `AutoFees`, `SellSpotPrice`, `SellingExchangeRate`, `GlobalExchangeRate`, `IsActive`, `CreatedDate`, `Code`, `SpotMarginBaseCurrency`, `SpotMarginUSDCurrency`, `IsDeleted`, `DeletedDate`) VALUES
(1, 12, 230, 139, 'USD', '2.99', '19.28', '-0.03', '19.27', 1, '2018-09-11', 'FLUTSFUSD1', '0.01', '0.00', 1, '2018-04-02'),
(2, 12, 230, 139, 'USD', '0.00', '19.28', '-0.01', '19.28', 1, '2018-09-11', 'FLUTSFUSD2', '0.00', '0.00', 0, NULL),
(3, 13, 230, 139, 'USD', '0.49', '19.28', '1.10', '19.49', 1, '2018-09-11', 'FLUTSFUSD3', '0.20', '0.01', 0, NULL),
(4, 14, 230, 38, 'USD', '4.99', '1.32', '1.00', '1.33', 1, '2018-09-10', 'FLUTSFUSD4', '0.01', '0.01', 0, NULL),
(5, 12, 230, 139, 'USD', '0.69', '19.28', '1.00', '19.47', 1, '2018-09-11', 'FLUTSFUSD5', '0.18', '0.01', 0, NULL),
(6, 13, 230, 139, 'USD', '0.49', '19.28', '-0.10', '19.26', 1, '2018-09-11', 'FLUTSFUSD6', '0.02', '0.00', 0, NULL),
(7, 12, 230, 139, 'USD', '5.99', '19.28', '-0.09', '19.26', 1, '2018-09-11', 'FLUTSFUSD7', '0.02', '0.00', 0, NULL),
(8, 12, 230, 139, 'USD', '5.99', '19.28', '-0.08', '19.26', 1, '2018-09-11', 'FLUTSFUSD8', '0.01', '0.00', 0, NULL),
(9, 12, 230, 139, 'USD', '5.99', '19.28', '-0.01', '19.28', 1, '2018-09-11', 'FLUTSFUSD9', '0.00', '0.00', 0, NULL),
(10, 12, 230, 139, 'USD', '2.99', '19.28', '0.00', '19.28', 1, '2018-09-11', 'FLUTSFUSD10', '0.00', '0.00', 0, NULL),
(11, 12, 230, 139, 'USD', '2.99', '19.28', '0.00', '19.28', 1, '2018-09-11', 'FLUTSFUSD11', '0.00', '0.00', 1, '2018-04-06'),
(12, 12, 230, 139, 'USD', '0.69', '19.28', '0.10', '19.30', 1, '2018-09-11', 'FLUTSFUSD12', '0.02', '0.00', 0, NULL),
(13, 12, 230, 38, 'USD', '0.00', '1.32', '0.00', '1.32', 1, '2018-09-10', 'FLUTSFUSD13', '0.00', '0.00', 1, '2018-04-06'),
(14, 12, 230, 38, 'USD', '0.00', '1.32', '0.20', '1.32', 1, '2018-09-10', 'FLUTSFUSD14', '0.00', '0.00', 0, NULL),
(15, 13, 230, 38, 'USD', '0.00', '1.32', '0.20', '1.32', 1, '2018-09-10', 'FLUTSFUSD15', '0.00', '0.00', 0, NULL),
(16, 12, 230, 107, 'USD', '0.00', '111.13', '0.00', '111.13', 1, '2018-09-10', 'FLUTSFUSD16', '0.00', '0.00', 0, NULL),
(17, 25, 230, 43, 'USD', '0.00', '695.80', '0.00', '695.80', 1, '2018-09-10', 'FLUTSFUSD17', '0.00', '0.00', 0, NULL),
(18, 12, 230, 98, 'USD', '0.00', '69.99', '0.50', '70.34', 1, '2018-08-14', 'FLUTSFUSD18', '0.34', '0.01', 1, '2018-07-23'),
(19, 12, 230, 139, 'USD', '1.19', '19.28', '-0.30', '19.22', 1, '2018-09-11', 'FLUTSFUSD19', '0.06', '0.00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `magicpaydetails`
--

CREATE TABLE `magicpaydetails` (
  `MagicPayId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `TransactionId` varchar(100) NOT NULL,
  `PaymentGatewayTransactionId` varchar(50) NOT NULL,
  `SenderName` varchar(50) NOT NULL,
  `Amount` decimal(18,2) NOT NULL,
  `TransactionDetail` varchar(100) DEFAULT NULL,
  `TransactionDate` datetime NOT NULL,
  `ResponseCode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magicpaydetails`
--

INSERT INTO `magicpaydetails` (`MagicPayId`, `CompanyId`, `CustomerId`, `TransactionId`, `PaymentGatewayTransactionId`, `SenderName`, `Amount`, `TransactionDetail`, `TransactionDate`, `ResponseCode`) VALUES
(11, 17, 8, 'txn_12020_4121103465', '4121103465', 'zolly', '10.00', NULL, '2018-05-21 16:34:35', 'Success'),
(12, 17, 8, 'txn_20eb2_4121314833', '4121314833', 'zolly', '10.00', NULL, '2018-05-21 17:54:48', 'Success'),
(13, 17, 8, 'txn_4d77d_4121341406', '4121341406', 'zolly', '10.00', NULL, '2018-05-21 18:15:27', 'Success'),
(14, 17, 85, 'txn_ebh19_4202265616', '4202265616', 'KARAN', '2.90', 'Test', '2018-07-19 11:55:43', 'Success'),
(15, 17, 85, 'txn_gbh14_4202269009', '4202269009', 'KARAN', '1.45', 'Test', '2018-07-19 12:02:22', 'Success'),
(16, 17, 86, 'txn_qbw78_4202333684', '4202333684', 'neha', '1.45', 'Test', '2018-07-19 13:25:27', 'Success'),
(18, 17, 8, 'txn_qbw78_4202333684', '4240564097', 'zolly', '1.43', 'Test', '2018-08-14 12:23:39', 'Success'),
(19, 17, 8, 'txn_81545_4240606998', '4240606998', 'zolly', '1.43', 'Test', '2018-08-14 12:45:16', 'Success'),
(20, 17, 8, 'txn_dd0bc_4240621349', '4240621349', 'zolly', '1.43', 'Test', '2018-08-14 12:51:38', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `merchantkey`
--

CREATE TABLE `merchantkey` (
  `merchantkeyId` int(11) NOT NULL,
  `Company_Id` int(11) NOT NULL,
  `TestToken` varchar(100) NOT NULL,
  `LiveToken` varchar(100) NOT NULL,
  `CreatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchantkey`
--

INSERT INTO `merchantkey` (`merchantkeyId`, `Company_Id`, `TestToken`, `LiveToken`, `CreatedDate`) VALUES
(1, 0, 'test_9e9b4b73-2b82-4190-b83a-32c5db3f210f', 'live_e03a1782-5c84-4472-8bb0-0ca5a7b37dac', '2018-08-31 07:49:10'),
(2, 17, 'test_3d5c7335-1d4a-4a7f-8f46-9948bdbe07ef', 'live_3ca38bd1-85d3-46d5-8a5c-c84ab3e56c64', '2018-09-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `moduelId` int(11) NOT NULL,
  `moduelName` varchar(50) NOT NULL,
  `moduelDesc` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`moduelId`, `moduelName`, `moduelDesc`, `createdDate`) VALUES
(1, '(RESTRICTED) DASHBOARD MANAGEMENT MODULE', '(RESTRICTED) Dashboard Mgt. Module', '2018-07-27 00:00:00'),
(2, 'COMPANY BUSINESS SERVICES MODULE', 'Company Business Services Module', '2018-07-27 00:00:00'),
(3, 'BUSINESS MANAGEMENT MODULE', 'Business Mgt.Module', '2018-07-27 00:00:00'),
(4, 'COMPLIANCE MODULE', 'Compliance Module', '2018-07-27 00:00:00'),
(5, 'REMITTANCE MODULE', 'Remittance Module', '2018-07-27 00:00:00'),
(6, 'ACCOUNTING MODULE', 'Acconting Module', '2018-07-27 00:00:00'),
(7, 'REPORTS MODULE', 'Reports Module', '2018-07-27 00:00:00'),
(8, 'DOCUMENT DATABASE MODULE', 'Document Database Module', '2018-07-27 00:00:00'),
(9, 'HELP MODULE', 'Help Module', '2018-07-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `paymentfees`
--

CREATE TABLE `paymentfees` (
  `PaymentFessId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `PaymentMethodId` int(11) NOT NULL,
  `SourceCountry` int(11) NOT NULL,
  `DestinationCountry` int(11) NOT NULL,
  `FeesCategoryId` int(11) NOT NULL,
  `PayInAgentId` int(11) NOT NULL,
  `IsPayInAgent` tinyint(4) NOT NULL,
  `PayOutAgentId` int(11) NOT NULL,
  `IsPayOutAgent` tinyint(4) NOT NULL,
  `StartingAmount` decimal(10,2) NOT NULL,
  `EndAmount` decimal(10,2) NOT NULL,
  `FeesType` int(11) NOT NULL,
  `Fees` decimal(10,2) NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `GobalExchangeRateCode` varchar(50) DEFAULT NULL,
  `TransactionFeeSharingCode` varchar(50) DEFAULT NULL,
  `ChargeSendingAmount` tinyint(1) NOT NULL DEFAULT '0',
  `TransactionFeeType` varchar(50) DEFAULT NULL,
  `CreatedDate` date NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `DeletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentfees`
--

INSERT INTO `paymentfees` (`PaymentFessId`, `CompanyId`, `PaymentMethodId`, `SourceCountry`, `DestinationCountry`, `FeesCategoryId`, `PayInAgentId`, `IsPayInAgent`, `PayOutAgentId`, `IsPayOutAgent`, `StartingAmount`, `EndAmount`, `FeesType`, `Fees`, `Code`, `GobalExchangeRateCode`, `TransactionFeeSharingCode`, `ChargeSendingAmount`, `TransactionFeeType`, `CreatedDate`, `IsDeleted`, `DeletedDate`) VALUES
(1, 17, 12, 230, 139, 2, 2, 1, 3, 1, '0.99', '9.99', 1, '0.49', 'FLATUPS1', 'FLUTSFUSD2', 'FLUTSF15', 1, NULL, '2018-04-03', 1, '2018-04-05'),
(2, 17, 12, 230, 139, 2, 1, 0, 3, 0, '10.00', '19.99', 1, '0.59', 'FLATUPS2', 'FLUTSFUSD6', '', 1, NULL, '2018-04-02', 1, '2018-04-05'),
(3, 17, 13, 230, 139, 2, -1, 1, -1, 1, '20.00', '29.99', 1, '0.69', 'FLATUPS3', 'FLUTSFUSD5', '', 1, NULL, '2018-04-02', 1, '2018-04-05'),
(7, 17, 12, 230, 139, 1, -1, 1, -1, 1, '9.99', '99.99', 1, '0.49', 'FLRTS7', 'FLUTSFUSD2', 'FLUTSF15', 1, NULL, '2018-05-24', 1, '2018-09-10'),
(8, 20, 12, 230, 139, 1, 0, 1, 0, 1, '100.00', '299.99', 1, '2.99', 'FLRTS8', NULL, 'FLUTSF18', 1, NULL, '2018-04-03', 1, '2018-09-10'),
(13, 17, 12, 230, 139, 2, 2, 1, 3, 1, '20.00', '30.00', 1, '5.99', 'FLATUPS13', NULL, '', 0, NULL, '2018-04-03', 1, '2018-04-05'),
(15, 17, 13, 230, 139, 2, -1, 1, -1, 1, '31.00', '35.00', 1, '6.99', 'FLATUPS15', NULL, '', 0, NULL, '2018-04-03', 1, '2018-04-05'),
(16, 17, 13, 230, 139, 2, -1, 0, -1, 0, '30.00', '32.00', 1, '100.00', 'FLATUPS16', NULL, '', 0, NULL, '2018-04-03', 1, '2018-04-05'),
(17, 17, 13, 230, 139, 3, -1, 1, -1, 1, '1.00', '10.00', 1, '2.99', 'FLUBPS17', NULL, '', 1, NULL, '2018-04-03', 1, '2018-09-10'),
(18, 17, 12, 230, 139, 2, 5, 0, 5, 0, '10.00', '20.00', 1, '0.69', 'FLATUPS18', NULL, 'FLUTSF18', 1, NULL, '2018-04-06', 1, '2018-09-10'),
(19, 17, 13, 230, 139, 2, -1, 0, -1, 0, '10.00', '20.00', 1, '0.10', 'FLATUPS19', NULL, '', 1, NULL, '2018-04-06', 1, '2018-09-10'),
(20, 17, 21, 230, 139, 2, 0, 0, 0, 0, '1.00', '9.99', 1, '0.49', 'FLATUPS20', NULL, NULL, 1, NULL, '2018-05-18', 1, '2018-09-10'),
(21, 17, 12, 230, 139, 2, 0, 1, 0, 1, '1.00', '9.99', 1, '0.00', 'FLATUPS21', NULL, NULL, 1, NULL, '2018-05-24', 1, '2018-09-10'),
(22, 17, 12, 230, 13, 1, 0, 0, 0, 0, '101.00', '201.00', 1, '1.00', 'FLRTS22', NULL, NULL, 1, NULL, '2018-07-23', 1, '2018-09-10'),
(23, 17, 12, 230, 4, 16, 2, 1, 1, 1, '1.00', '0.00', 2, '7.00', 'FLPTPD23', NULL, NULL, 1, NULL, '2018-07-24', 1, '2018-07-24'),
(24, 17, 12, 230, 139, 6, 0, 1, 0, 1, '1.00', '99.00', 1, '0.99', 'FLPTPD24', 'FLUTSFUSD19', 'FLUTSF21', 1, NULL, '2018-09-06', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethod`
--

CREATE TABLE `paymentmethod` (
  `PaymentMethodId` int(11) NOT NULL,
  `PaymentTypeId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedDate` date NOT NULL,
  `DeletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentmethod`
--

INSERT INTO `paymentmethod` (`PaymentMethodId`, `PaymentTypeId`, `CompanyId`, `Title`, `Description`, `IsActive`, `IsDeleted`, `CreatedDate`, `DeletedDate`) VALUES
(0, 1, 17, 'All', 'all', 1, 1, '2018-03-01', NULL),
(1, 1, 17, 'Authorize', 'my custom method', 0, 1, '2018-02-05', '2018-02-28'),
(11, 3, 17, 'test', 'test ishu', 0, 1, '2018-01-15', '2018-01-16'),
(12, 3, 17, 'Credit/Debit Card', 'MagicPay Payment Gateway', 1, 0, '2018-07-19', NULL),
(13, 4, 17, 'Bank Transfer', 'Bank Transfer', 1, 1, '2018-03-28', NULL),
(14, 5, 17, 'Cash-Pickup', 'Cash-Pickup', 1, 1, '2018-03-28', NULL),
(15, 6, 17, 'Bank Debit (ACH)', 'Bank Debit (ACH)', 1, 1, '2018-04-09', NULL),
(17, 7, 17, 'Bank2Bank', 'Bank2Bank', 1, 1, '2018-03-28', NULL),
(18, 8, 17, 'Gift Card', 'Gift Card', 1, 1, '2018-03-28', NULL),
(19, 9, 17, 'Voucher', 'Voucher', 1, 1, '2018-04-09', NULL),
(20, 10, 17, 'Wallet', 'Wallet', 1, 1, '2018-04-09', NULL),
(21, 11, 17, 'MasterCard Credit Card', 'MasterCard Credit Card', 1, 1, '2018-04-09', NULL),
(22, 12, 17, 'Visa Debit Card', 'Visa Debit Card', 1, 1, '2018-04-09', NULL),
(23, 13, 17, 'MasterCard Debit Card', 'MasterCard Debit Card', 1, 1, '2018-04-09', NULL),
(24, 8, 17, 'Visa Gift Card', 'Visa Gift Card', 1, 1, '2018-04-09', '2018-04-09'),
(25, 8, 17, 'Visa Gift Card', 'Visa Gift Card', 1, 1, '2018-04-09', NULL),
(26, 14, 17, 'MasterCard Gift Card', 'MasterCard Gift Card', 1, 1, '2018-04-09', NULL),
(27, 9, 17, 'Visa Voucher', 'Visa Voucher', 1, 1, '2018-04-09', NULL),
(28, 15, 17, 'MasterCard Voucher', 'MasterCard Voucher', 1, 1, '2018-04-09', NULL),
(29, 11, 0, 'Credit/Debit Card', 'MagicPay Payment Gateway', 0, 0, '2018-07-19', NULL),
(30, 19, 21, 'fdgfd', 'fdgdfg', 0, 1, '2018-07-24', '2018-07-24'),
(31, 1, 0, 'klkjl', '', 0, 0, '2018-07-24', NULL),
(32, 7, 0, 'Testing Payment Gateway', 'Testing', 0, 0, '2018-08-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paymenttype`
--

CREATE TABLE `paymenttype` (
  `PaymentTypeId` int(11) NOT NULL,
  `PaymentType` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `PaymentTypeLogo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymenttype`
--

INSERT INTO `paymenttype` (`PaymentTypeId`, `PaymentType`, `Description`, `PaymentTypeLogo`) VALUES
(1, 'Authorize.net', 'Authorize .net payment gateway', ''),
(3, 'Visa Credit Card', 'Magic Pay Gateway', ''),
(4, 'Bank Transfer', 'Bank Transfer', NULL),
(5, 'Cash-Pickup', 'Cash-Pickup', NULL),
(6, 'Bank Debit (ACH)', 'Bank Debit (ACH)', NULL),
(7, 'Bank2Bank', 'Bank2Bank', NULL),
(8, 'Visa Gift Card', 'Visa Gift Card', NULL),
(9, 'Visa Voucher', 'Visa Voucher', NULL),
(10, 'Wallet2Wallet', 'Wallet2Wallet', NULL),
(11, 'MasterCard Credit Card', 'MasterCard Credit Card', NULL),
(12, 'Visa Debit Card', 'Visa Debit Card', NULL),
(13, 'MasterCard Debit Card', 'MasterCard Debit Card', NULL),
(14, 'MasterCard Gift Card', 'MasterCard Gift Card', NULL),
(15, 'MasterCard Voucher', 'MasterCard Voucher', NULL),
(16, 'Wallet2Bank', 'Wallet2Bank', NULL),
(17, 'Wallet2Visa Credit Card', 'Wallet2Visa Credit Card', NULL),
(18, 'Wallet2MasterCredit Card', 'Wallet2MasterCredit Card', NULL),
(19, 'Wallet2MasterCard Debit Card', 'Wallet2MasterCard Debit Card', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  `permissions` varchar(500) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `role`, `permissions`, `createdDate`) VALUES
(0, 'Owner', 'add,edit,update,delete,search,view', '2018-07-25 00:00:00'),
(1, 'Compliance Officer', 'add,edit,update,delete,search,view', '2018-07-25 00:00:00'),
(3, 'General Manager', 'add,edit,update,delete,search,view', '2018-07-25 00:00:00'),
(4, 'Assistant Manager', 'search,view', '2018-07-25 00:00:00'),
(5, 'Staff', 'search,view', '2018-07-25 00:00:00'),
(6, 'Agent', 'search,view', '2018-07-25 00:00:00'),
(7, 'Cashier', 'search,view', '2018-07-25 00:00:00'),
(9, 'Auditor', 'search,view', '2018-07-25 00:00:00'),
(10, 'Editor', '', '2018-07-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rolesmodules`
--

CREATE TABLE `rolesmodules` (
  `rolesModuleId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `moduelId` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `deletedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rolesmodules`
--

INSERT INTO `rolesmodules` (`rolesModuleId`, `roleId`, `moduelId`, `createdDate`, `isActive`, `IsDeleted`, `deletedDate`) VALUES
(1, 0, '1,2,3,4,5', '2018-07-31 18:33:47', 0, 1, '2018-07-31 18:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `servicesId` int(11) NOT NULL,
  `serviceName` varchar(100) NOT NULL,
  `desc` varchar(250) NOT NULL,
  `createdDate` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleteDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`servicesId`, `serviceName`, `desc`, `createdDate`, `isActive`, `isDeleted`, `deleteDate`) VALUES
(1, 'MONEY TRANSFER MODULE', 'Money Transfer module', '2018-08-02 00:00:00', 1, 0, NULL),
(2, 'BUSINESS-TO-BUSINESS PAYMENT MODULE', 'business to business payment module', '2018-08-02 00:00:00', 1, 0, NULL),
(3, 'MERCHANT PAYMENT GATEWAY MODULE', 'merchant payment gateway module', '2018-08-02 00:00:00', 1, 0, NULL),
(4, 'FOREIGN EXCHANGE CURRENCY MOULE', 'foreign exchange curreny module', '2018-08-02 00:00:00', 1, 0, NULL),
(5, 'BILL PAYMENT MODULE', 'bill payment module', '2018-08-02 00:00:00', 1, 0, NULL),
(6, 'MOBILE PHONE TOP-UP MODULE', 'mobile phone top-up module', '2018-08-02 00:00:00', 1, 0, NULL),
(7, 'MERCHANT SERVICES MODULE', 'merchant services module', '2018-08-02 00:00:00', 1, 0, NULL),
(8, 'PREPAID VOUCHER MODULE', 'prepaid voucher module', '2018-08-02 00:00:00', 1, 0, NULL),
(9, 'AGENCY BANKING MANAGEMENT MODULE', 'agency banking mgt. module', '2018-08-02 00:00:00', 1, 0, NULL),
(10, 'GIFT CARD MALL MODULE', 'gift card module', '2018-08-02 00:00:00', 1, 0, NULL),
(11, 'HELP MODULE', 'help module', '2018-08-02 00:00:00', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetails`
--

CREATE TABLE `transactiondetails` (
  `TransactionId` varchar(100) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `TransactionDetail` varchar(100) NOT NULL,
  `SendingAmount` decimal(18,2) NOT NULL,
  `Charges` decimal(18,2) NOT NULL,
  `Fees` decimal(18,2) NOT NULL,
  `Tax` decimal(18,2) NOT NULL,
  `TransactionDate` datetime NOT NULL,
  `Status` varchar(50) NOT NULL,
  `PaymentGatewayResponse` varchar(500) NOT NULL,
  `PaymentGatewayTransactionId` varchar(50) NOT NULL,
  `SendingCurrencyId` int(11) NOT NULL,
  `ReceivingAmount` decimal(18,2) NOT NULL,
  `ReceivingCurrencytId` int(11) NOT NULL,
  `BeneficiaryId` int(11) NOT NULL,
  `PaymentMethodId` int(11) NOT NULL,
  `DestinationCountryId` int(11) NOT NULL,
  `SourceCountryId` int(11) NOT NULL,
  `IsLive` int(11) NOT NULL,
  `TransferPurpose` varchar(100) NOT NULL,
  `ExchangeRate` decimal(10,0) NOT NULL,
  `DeliveryType` varchar(50) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `IsRefunded` tinyint(1) NOT NULL DEFAULT '0',
  `RefundedDate` datetime DEFAULT NULL,
  `RefundedBy` varchar(100) DEFAULT NULL,
  `GiftCardid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiondetails`
--

INSERT INTO `transactiondetails` (`TransactionId`, `CompanyId`, `CustomerId`, `TransactionDetail`, `SendingAmount`, `Charges`, `Fees`, `Tax`, `TransactionDate`, `Status`, `PaymentGatewayResponse`, `PaymentGatewayTransactionId`, `SendingCurrencyId`, `ReceivingAmount`, `ReceivingCurrencytId`, `BeneficiaryId`, `PaymentMethodId`, `DestinationCountryId`, `SourceCountryId`, `IsLive`, `TransferPurpose`, `ExchangeRate`, `DeliveryType`, `CreatedDate`, `IsRefunded`, `RefundedDate`, `RefundedBy`, `GiftCardid`) VALUES
('txn_12020_4121103465', 17, 8, 'zolly', '10.00', '0.00', '0.00', '0.00', '2018-05-21 16:34:35', 'Success', '1', '4121103465', 3, '0.00', 3, 0, 12, 139, 139, 0, 'Bill Payment', '0', '0', '2018-05-21 16:34:35', 1, NULL, NULL, 0),
('txn_20eb2_4121314833', 17, 8, 'zolly', '10.00', '0.00', '0.00', '0.00', '2018-05-21 17:54:48', 'Success', '1', '4121314833', 3, '0.00', 3, 0, 12, 139, 139, 0, 'Bill Payment', '0', '0', '2018-05-21 17:54:48', 1, NULL, NULL, 0),
('txn_4d77d_4121341406', 17, 8, 'zolly', '10.00', '0.00', '0.00', '0.00', '2018-05-21 18:15:27', 'Success', '1', '4121341406', 3, '0.00', 3, 0, 12, 139, 139, 0, 'Bill Payment', '0', '0', '2018-05-21 18:15:27', 1, NULL, NULL, 0),
('txn_81545_4240606998', 17, 8, 'zolly', '1.43', '0.00', '0.00', '0.00', '2018-08-14 12:45:16', 'Success', '1', '4240606998', 3, '100.00', 3, 0, 12, 139, 139, 0, 'Mobile Recharge', '0', 'Mobile Recharge', '2018-08-14 12:45:16', 1, '2018-08-14 13:10:02', 'admin user', 0),
('txn_c0815_4240564097', 17, 8, 'zolly', '1.43', '0.00', '0.00', '0.00', '2018-08-14 12:23:39', 'Success', '1', '4240564097', 3, '100.00', 3, 0, 12, 139, 139, 0, 'Mobile Recharge', '0', 'Mobile Recharge', '2018-08-14 12:23:39', 1, '2018-08-14 13:10:14', 'admin user', 0),
('txn_dd0bc_4240621349', 17, 8, 'zolly', '1.43', '0.00', '0.00', '0.00', '2018-08-14 12:51:38', 'Success', '1', '4240621349', 3, '100.00', 3, 0, 12, 139, 139, 0, 'Mobile Recharge', '0', 'Mobile Recharge', '2018-08-14 12:51:38', 1, '2018-08-14 13:09:51', 'admin user', 0),
('txn_ebe59_4126396506', 17, 8, 'Test For Rajeev', '1.00', '0.00', '0.00', '0.00', '2018-05-25 00:00:00', 'Success', '1', '4126396506', 3, '1.00', 3, 0, 12, 3, 3, 0, 'Testing', '0', '', '2018-05-25 00:00:00', 1, '2018-05-25 12:54:30', 'admin user', 0),
('txn_ebh19_4202265616', 17, 85, 'KARAN', '2.90', '0.00', '0.00', '0.00', '2018-07-19 11:55:43', 'Success', '1', '4202265616', 3, '200.00', 3, 0, 12, 139, 139, 0, 'Mobile Recharge', '0', 'Mobile Recharge', '2018-07-19 11:55:43', 0, NULL, NULL, 0),
('txn_gbh14_4202269009', 17, 85, 'KARAN', '1.45', '0.00', '0.00', '0.00', '2018-07-19 12:02:22', 'Success', '1', '4202269009', 3, '100.00', 3, 0, 12, 139, 139, 0, 'Mobile Recharge', '0', 'Mobile Recharge', '2018-07-19 12:02:22', 0, NULL, NULL, 0),
('txn_qbw78_4202333684', 17, 86, 'neha', '1.45', '0.00', '0.00', '0.00', '2018-07-19 13:25:27', 'Success', '1', '4202333684', 3, '100.00', 3, 0, 12, 139, 139, 0, 'Mobile Recharge', '0', 'Mobile Recharge', '2018-07-19 13:25:27', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactionfeesharings`
--

CREATE TABLE `transactionfeesharings` (
  `TransactionFeeSharingId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `TransactionFeeType` varchar(50) NOT NULL,
  `PaymentMethodId` int(11) NOT NULL,
  `SourceCountryId` int(11) NOT NULL,
  `DestinationCountryId` int(11) NOT NULL,
  `YourShare` varchar(50) NOT NULL,
  `PayInAgent` int(11) NOT NULL,
  `PayInAgentPer` varchar(50) NOT NULL,
  `PayOutAgent` int(11) NOT NULL,
  `PayOutAgentPer` varchar(50) NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `AutoFees` decimal(18,2) DEFAULT NULL,
  `CreatedDate` date NOT NULL,
  `IsSpecific` tinyint(1) NOT NULL DEFAULT '0',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `DeletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionfeesharings`
--

INSERT INTO `transactionfeesharings` (`TransactionFeeSharingId`, `CompanyId`, `TransactionFeeType`, `PaymentMethodId`, `SourceCountryId`, `DestinationCountryId`, `YourShare`, `PayInAgent`, `PayInAgentPer`, `PayOutAgent`, `PayOutAgentPer`, `Code`, `AutoFees`, `CreatedDate`, `IsSpecific`, `IsDeleted`, `DeletedDate`) VALUES
(15, 17, 'specific', 12, 139, 139, '30', 1, '60', 3, '10', 'FLUTSF15', '0.49', '2018-07-20', 1, 0, NULL),
(16, 17, 'specific', 12, 98, 98, '50', 5, '30', 5, '20', 'FLUTSF16', NULL, '2018-04-10', 1, 0, NULL),
(17, 17, 'specific', 21, 98, 98, '50', 5, '30', 5, '20', 'FLUTSF17', NULL, '2018-04-10', 1, 0, NULL),
(18, 17, 'Universal', 0, 139, 139, '50', 0, '30', 0, '20', 'FLUTSF18', '0.69', '2018-04-11', 0, 0, NULL),
(19, 17, 'Universal', 0, 98, 98, '50', 0, '0', 0, '50', 'FLUTSF19', NULL, '2018-04-10', 1, 0, NULL),
(20, 17, 'specific', 12, 98, 98, '50', 9, '30', 5, '20', 'FLUTSF20', NULL, '2018-04-10', 1, 0, NULL),
(21, 17, 'specific', 12, 230, 139, '100', -1, '0', -1, '0', 'FLUTSF21', '1.19', '2018-05-18', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfertoapi`
--

CREATE TABLE `transfertoapi` (
  `transferttoid` int(11) NOT NULL,
  `api_url` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `createddate` datetime NOT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT '0',
  `deletedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfertoapi`
--

INSERT INTO `transfertoapi` (`transferttoid`, `api_url`, `login`, `token`, `createddate`, `isdeleted`, `deletedate`) VALUES
(1, 'https://airtime.transferto.com/cgi-bin/shop/topup', 'falconloop', '818643611710', '2018-07-06 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfertotransactiondetails`
--

CREATE TABLE `transfertotransactiondetails` (
  `transferttotransid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `transactionId` varchar(100) NOT NULL,
  `senderName` varchar(50) NOT NULL,
  `mobileNumber` varchar(15) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `paymentGatewaytransactionid` varchar(50) NOT NULL,
  `transactionDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfertotransactiondetails`
--

INSERT INTO `transfertotransactiondetails` (`transferttotransid`, `companyid`, `customerid`, `transactionId`, `senderName`, `mobileNumber`, `amount`, `paymentGatewaytransactionid`, `transactionDate`) VALUES
(3, 17, 85, 'txn_ebh19_4202265616', 'KARAN', '919599902185', '200.00', '671981856', '2018-07-19 11:56:08'),
(4, 17, 85, 'txn_gbh14_4202269009', 'KARAN', '919990463270', '100.00', '671984054', '2018-07-19 12:02:35'),
(5, 17, 86, 'txn_qbw78_4202333684', 'neha', '919871464771', '100.00', '672013361', '2018-07-19 13:26:03'),
(7, 17, 8, 'txn_qbw78_4202333684', 'zolly', '918010276833', '100.00', '680493719', '2018-08-14 12:23:51'),
(8, 17, 8, 'txn_81545_4240606998', 'zolly', '919560619127', '100.00', '680501210', '2018-08-14 12:45:28'),
(9, 17, 8, 'txn_dd0bc_4240621349', 'zolly', '919654523415', '100.00', '680503354', '2018-08-14 12:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `Company_Id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` date NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_date` date DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `loginDate` varchar(30) DEFAULT NULL,
  `LogoutDate` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Company_Id`, `first_name`, `last_name`, `email`, `phone`, `password`, `country_id`, `profile_image`, `is_active`, `create_date`, `is_deleted`, `deleted_date`, `roleId`, `loginDate`, `LogoutDate`) VALUES
(2, 0, 'admin', 'user', 'admin@gmail.com', '1234567890', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', 226, '', 1, '2017-10-10', 0, NULL, 10, '2018-09-19 06:05:57', NULL),
(3, 17, 'test@gmail.com', 'kumar', 'test@gmail.com', '9638527410', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', 226, '', 1, '2017-10-25', 1, '2018-02-28', 10, NULL, NULL),
(4, 17, 'Gopal', 'Kumar', 'gopa@gmail.com', '545645454654', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', 98, NULL, 1, '2018-04-18', 1, '2018-04-18', 10, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`AgentId`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `authorizepaymentsettings`
--
ALTER TABLE `authorizepaymentsettings`
  ADD PRIMARY KEY (`AuthorizePaymentSettingsId`),
  ADD KEY `PaymentMethodId` (`PaymentMethodId`);

--
-- Indexes for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD PRIMARY KEY (`BeneficiaryId`),
  ADD KEY `CompanyId` (`CompanyId`),
  ADD KEY `BeneficiaryTypeId` (`BeneficiaryTypeId`),
  ADD KEY `CustomerId` (`CustomerId`),
  ADD KEY `CountryId` (`CountryId`);

--
-- Indexes for table `beneficiarytype`
--
ALTER TABLE `beneficiarytype`
  ADD PRIMARY KEY (`BeneficiaryTypeId`);

--
-- Indexes for table `billpaydetails`
--
ALTER TABLE `billpaydetails`
  ADD PRIMARY KEY (`BillPayId`),
  ADD KEY `CustomerId` (`CustomerId`),
  ADD KEY `CompanyId` (`CompanyId`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Company_Id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `companyservices`
--
ALTER TABLE `companyservices`
  ADD PRIMARY KEY (`companyServicesId`),
  ADD KEY `FK_companyId` (`companyId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `countrytest`
--
ALTER TABLE `countrytest`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`CurrencyId`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_Id`),
  ADD KEY `Company_Id` (`Company_Id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `customer_applicant_kyc`
--
ALTER TABLE `customer_applicant_kyc`
  ADD PRIMARY KEY (`CustomerApplicantKYCId`);

--
-- Indexes for table `feescategory`
--
ALTER TABLE `feescategory`
  ADD PRIMARY KEY (`FeesCategoryId`);

--
-- Indexes for table `giftcard`
--
ALTER TABLE `giftcard`
  ADD PRIMARY KEY (`GiftCardid`);

--
-- Indexes for table `globalexchangerate`
--
ALTER TABLE `globalexchangerate`
  ADD PRIMARY KEY (`GlobalExchangeId`),
  ADD KEY `PaymentMethodId` (`PaymentMethodId`);

--
-- Indexes for table `magicpaydetails`
--
ALTER TABLE `magicpaydetails`
  ADD PRIMARY KEY (`MagicPayId`),
  ADD KEY `CustomerId` (`CustomerId`),
  ADD KEY `CompanyId` (`CompanyId`);

--
-- Indexes for table `merchantkey`
--
ALTER TABLE `merchantkey`
  ADD PRIMARY KEY (`merchantkeyId`),
  ADD KEY `Company_Id` (`Company_Id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`moduelId`);

--
-- Indexes for table `paymentfees`
--
ALTER TABLE `paymentfees`
  ADD PRIMARY KEY (`PaymentFessId`),
  ADD KEY `FeesCategoryId` (`FeesCategoryId`),
  ADD KEY `AgentId` (`PayOutAgentId`),
  ADD KEY `FK_PersonOrder` (`PaymentMethodId`);

--
-- Indexes for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD PRIMARY KEY (`PaymentMethodId`),
  ADD KEY `PaymentTypeId` (`PaymentTypeId`);

--
-- Indexes for table `paymenttype`
--
ALTER TABLE `paymenttype`
  ADD PRIMARY KEY (`PaymentTypeId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `rolesmodules`
--
ALTER TABLE `rolesmodules`
  ADD PRIMARY KEY (`rolesModuleId`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`servicesId`);

--
-- Indexes for table `transactiondetails`
--
ALTER TABLE `transactiondetails`
  ADD PRIMARY KEY (`TransactionId`),
  ADD KEY `CompanyId` (`CompanyId`),
  ADD KEY `CustomerId` (`CustomerId`),
  ADD KEY `BeneficiaryId` (`BeneficiaryId`),
  ADD KEY `PaymentMethodId` (`PaymentMethodId`);

--
-- Indexes for table `transactionfeesharings`
--
ALTER TABLE `transactionfeesharings`
  ADD PRIMARY KEY (`TransactionFeeSharingId`),
  ADD KEY `FK_transactionfeesharing` (`PaymentMethodId`);

--
-- Indexes for table `transfertoapi`
--
ALTER TABLE `transfertoapi`
  ADD PRIMARY KEY (`transferttoid`);

--
-- Indexes for table `transfertotransactiondetails`
--
ALTER TABLE `transfertotransactiondetails`
  ADD PRIMARY KEY (`transferttotransid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `customer_Id` (`Company_Id`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `AgentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `authorizepaymentsettings`
--
ALTER TABLE `authorizepaymentsettings`
  MODIFY `AuthorizePaymentSettingsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `beneficiary`
--
ALTER TABLE `beneficiary`
  MODIFY `BeneficiaryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `beneficiarytype`
--
ALTER TABLE `beneficiarytype`
  MODIFY `BeneficiaryTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `billpaydetails`
--
ALTER TABLE `billpaydetails`
  MODIFY `BillPayId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Company_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `companyservices`
--
ALTER TABLE `companyservices`
  MODIFY `companyServicesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT for table `countrytest`
--
ALTER TABLE `countrytest`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `CurrencyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `customer_applicant_kyc`
--
ALTER TABLE `customer_applicant_kyc`
  MODIFY `CustomerApplicantKYCId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `feescategory`
--
ALTER TABLE `feescategory`
  MODIFY `FeesCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `giftcard`
--
ALTER TABLE `giftcard`
  MODIFY `GiftCardid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `globalexchangerate`
--
ALTER TABLE `globalexchangerate`
  MODIFY `GlobalExchangeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `magicpaydetails`
--
ALTER TABLE `magicpaydetails`
  MODIFY `MagicPayId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `merchantkey`
--
ALTER TABLE `merchantkey`
  MODIFY `merchantkeyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `moduelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `paymentfees`
--
ALTER TABLE `paymentfees`
  MODIFY `PaymentFessId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  MODIFY `PaymentMethodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `paymenttype`
--
ALTER TABLE `paymenttype`
  MODIFY `PaymentTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rolesmodules`
--
ALTER TABLE `rolesmodules`
  MODIFY `rolesModuleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `servicesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `transactionfeesharings`
--
ALTER TABLE `transactionfeesharings`
  MODIFY `TransactionFeeSharingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `transfertoapi`
--
ALTER TABLE `transfertoapi`
  MODIFY `transferttoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transfertotransactiondetails`
--
ALTER TABLE `transfertotransactiondetails`
  MODIFY `transferttotransid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `authorizepaymentsettings`
--
ALTER TABLE `authorizepaymentsettings`
  ADD CONSTRAINT `authorizepaymentsettings_ibfk_1` FOREIGN KEY (`PaymentMethodId`) REFERENCES `paymentmethod` (`PaymentMethodId`);

--
-- Constraints for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD CONSTRAINT `beneficiary_ibfk_1` FOREIGN KEY (`CountryId`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `companyservices`
--
ALTER TABLE `companyservices`
  ADD CONSTRAINT `FK_companyId` FOREIGN KEY (`companyId`) REFERENCES `company` (`Company_Id`);

--
-- Constraints for table `currency`
--
ALTER TABLE `currency`
  ADD CONSTRAINT `currency_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `globalexchangerate`
--
ALTER TABLE `globalexchangerate`
  ADD CONSTRAINT `globalexchangerate_ibfk_5` FOREIGN KEY (`PaymentMethodId`) REFERENCES `paymentmethod` (`PaymentMethodId`);

--
-- Constraints for table `magicpaydetails`
--
ALTER TABLE `magicpaydetails`
  ADD CONSTRAINT `magicpaydetails_ibfk_1` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`customer_Id`),
  ADD CONSTRAINT `magicpaydetails_ibfk_2` FOREIGN KEY (`CompanyId`) REFERENCES `company` (`Company_Id`);

--
-- Constraints for table `merchantkey`
--
ALTER TABLE `merchantkey`
  ADD CONSTRAINT `merchantkey_ibfk_1` FOREIGN KEY (`Company_Id`) REFERENCES `company` (`Company_Id`);

--
-- Constraints for table `paymentfees`
--
ALTER TABLE `paymentfees`
  ADD CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`PaymentMethodId`) REFERENCES `paymentmethod` (`PaymentMethodId`);

--
-- Constraints for table `rolesmodules`
--
ALTER TABLE `rolesmodules`
  ADD CONSTRAINT `rolesmodules_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`);

--
-- Constraints for table `transactionfeesharings`
--
ALTER TABLE `transactionfeesharings`
  ADD CONSTRAINT `FK_transactionfeesharing` FOREIGN KEY (`PaymentMethodId`) REFERENCES `paymentmethod` (`PaymentMethodId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
