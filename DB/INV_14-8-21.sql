/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.23 : Database - invdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`invdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `invdb`;

/*Table structure for table `__efmigrationshistory` */

DROP TABLE IF EXISTS `__efmigrationshistory`;

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `__efmigrationshistory` */

insert  into `__efmigrationshistory`(`MigrationId`,`ProductVersion`) values 
('20210813112330_initj','3.1.8'),
('20210813112501_initje','3.1.8');

/*Table structure for table `aspnetroleclaims` */

DROP TABLE IF EXISTS `aspnetroleclaims`;

CREATE TABLE `aspnetroleclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetroleclaims` */

/*Table structure for table `aspnetroles` */

DROP TABLE IF EXISTS `aspnetroles`;

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetroles` */

insert  into `aspnetroles`(`Id`,`Name`,`NormalizedName`,`ConcurrencyStamp`) values 
('0be225e1-dc14-467b-85de-6d9442bdc4ad','Warehouse','WAREHOUSE','cbcbb224-98d2-4498-b6f0-e085a847715e'),
('139763ea-8d3b-4574-a243-77e042cc8f7e','Payment Receive','PAYMENT RECEIVE','d6d0973b-28ef-414b-b6f9-5dd60497a98c'),
('1b219c7b-bb6f-4e2e-b9bd-172305874f24','Vendor','VENDOR','cef4ed09-f66d-4184-910a-7b335f5ab0d2'),
('26cf9c1e-e1cc-4fb8-9849-f712fafc3bd2','Customer','CUSTOMER','909615b6-8a5c-4f17-9e6a-e96464b544ee'),
('32ee5264-3c62-49c4-ac12-1cd7c7bc1b06','User','USER','fd2deae5-2e9c-4a95-ac78-57b75e66e7c9'),
('431aecda-3bab-4ddf-80db-3ef226c6db5a','Sales Type','SALES TYPE','28dcb505-25f8-42c0-953b-45207cbc90db'),
('4d24a4b7-19a2-47e4-a022-a3732f599236','Bill Type','BILL TYPE','538c9a8d-dbe3-47b7-9c18-e8299fe04cf9'),
('58b7e24a-7684-4eeb-bf73-2452d2f1e8b2','Purchase Type','PURCHASE TYPE','1272de3c-553f-486c-b90e-72444df41767'),
('5f39b5db-4382-45af-b364-27de4a73c473','Sales Order','SALES ORDER','0815a542-3a4e-4b90-ad45-51e18258bc1a'),
('71926817-9a89-4629-8f89-703f6c00069d','Change Password','CHANGE PASSWORD','114afdcf-9177-4598-ba33-0d2771104158'),
('8dadb816-1b87-46c6-a8c8-765532407572','Unit Of Measure','UNIT OF MEASURE','be5ac034-97cb-4c15-b322-8ff2a038e361'),
('8fdb6d67-8278-42a6-93f4-a89ed9b837ae','Shipment Type','SHIPMENT TYPE','b294f6f2-7d08-42f9-968c-6ad9946d5379'),
('a3c34ece-dd56-478a-92dc-15ca19174cbb','Role','ROLE','18a4f039-136c-464d-a055-c406db8001cb'),
('b8428903-93c7-495c-ad20-06731c8f2f65','Product','PRODUCT','17fe1973-8ad0-494c-ab2e-ffbe9a0e0e2b'),
('bee322ce-2713-4f48-bea8-dac4e69303de','Cash Bank','CASH BANK','e25c944d-76b5-4dde-9cbf-2bbf2f0d4532'),
('cb9f7d11-2f83-460b-84a5-65c546713d66','Product Type','PRODUCT TYPE','75899a35-6e2d-4728-8e73-02ef360d6643'),
('cee58952-6dcd-4450-a636-74307e3f4a8e','Customer Type','CUSTOMER TYPE','c1914bb8-1ce3-4215-89da-293061b673e1'),
('d2586c82-f2ec-4be4-b2ba-5c6194f037f1','Currency','CURRENCY','0bbb94cd-4e17-4f83-95ee-4118020089cf'),
('d9b693d2-d74b-4e20-883f-a18f3d8debce','Goods Received Note','GOODS RECEIVED NOTE','ac20339a-7d56-4ccd-a5c7-916ef207d031'),
('da4e84bf-12c4-4f41-9dcd-58a0228cd235','Branch','BRANCH','49b346e1-0616-4e77-bd64-e1bb113e7c80'),
('de78d018-6cfc-4ab4-8db2-6bb2445c2fc6','Shipment','SHIPMENT','4d6bc6ce-f3ca-404a-96ca-765107b3fd2e'),
('deb336c5-be5b-4f0f-9cc8-84b6ce33d0ba','Purchase Order','PURCHASE ORDER','a9f43afc-e92e-4cdb-8a3c-bdab591eb8fd'),
('df64c621-958c-41a4-a0b2-0c70edaeb841','Payment Type','PAYMENT TYPE','6a7f93ff-788e-4be9-b8a0-6c5cf47d03b3'),
('e36e896a-0ff1-4260-a8ab-b8d1d1f5dd83','Invoice Type','INVOICE TYPE','ed0ac404-b6e9-4ad3-bf22-77963e6ff8c9'),
('e37dc1ae-5659-4b19-b19b-704ba4721c88','Payment Voucher','PAYMENT VOUCHER','30615287-0423-487f-be5a-c2f5b9db9ff5'),
('e4972c4e-5fca-4ce4-b608-cf3b9149f146','Dashboard Main','DASHBOARD MAIN','5e828bc8-258e-4345-b4a2-d85b499fb524'),
('e581a8e5-d412-4eb0-b907-29fbc93799af','Invoice','INVOICE','8908e026-cb2b-4d7b-83db-85943a3d58c5'),
('e6a8d33a-48e8-432d-b6eb-4d308028226c','Bill','BILL','78ece468-4af9-4414-b643-a17101c34aec'),
('e8e53b78-f586-463d-962c-192472732f60','Vendor Type','VENDOR TYPE','b2da3cf7-bb34-40f6-9652-ea55eeb14483'),
('fbfd8f1f-0230-41aa-bfe2-a7582fa58b3d','Change Role','CHANGE ROLE','d98a21d9-7126-4c28-a8aa-1b01ff230232');

/*Table structure for table `aspnetuserclaims` */

DROP TABLE IF EXISTS `aspnetuserclaims`;

CREATE TABLE `aspnetuserclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetuserclaims` */

/*Table structure for table `aspnetuserlogins` */

DROP TABLE IF EXISTS `aspnetuserlogins`;

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetuserlogins` */

/*Table structure for table `aspnetuserroles` */

DROP TABLE IF EXISTS `aspnetuserroles`;

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetuserroles` */

insert  into `aspnetuserroles`(`UserId`,`RoleId`) values 
('18ab35d6-47e8-4cdc-a45d-387d45c025db','0be225e1-dc14-467b-85de-6d9442bdc4ad'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','139763ea-8d3b-4574-a243-77e042cc8f7e'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','1b219c7b-bb6f-4e2e-b9bd-172305874f24'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','26cf9c1e-e1cc-4fb8-9849-f712fafc3bd2'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','32ee5264-3c62-49c4-ac12-1cd7c7bc1b06'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','431aecda-3bab-4ddf-80db-3ef226c6db5a'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','4d24a4b7-19a2-47e4-a022-a3732f599236'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','58b7e24a-7684-4eeb-bf73-2452d2f1e8b2'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','5f39b5db-4382-45af-b364-27de4a73c473'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','71926817-9a89-4629-8f89-703f6c00069d'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','8dadb816-1b87-46c6-a8c8-765532407572'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','8fdb6d67-8278-42a6-93f4-a89ed9b837ae'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','a3c34ece-dd56-478a-92dc-15ca19174cbb'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','b8428903-93c7-495c-ad20-06731c8f2f65'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','bee322ce-2713-4f48-bea8-dac4e69303de'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','cb9f7d11-2f83-460b-84a5-65c546713d66'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','cee58952-6dcd-4450-a636-74307e3f4a8e'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','d2586c82-f2ec-4be4-b2ba-5c6194f037f1'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','d9b693d2-d74b-4e20-883f-a18f3d8debce'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','da4e84bf-12c4-4f41-9dcd-58a0228cd235'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','de78d018-6cfc-4ab4-8db2-6bb2445c2fc6'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','deb336c5-be5b-4f0f-9cc8-84b6ce33d0ba'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','df64c621-958c-41a4-a0b2-0c70edaeb841'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','e36e896a-0ff1-4260-a8ab-b8d1d1f5dd83'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','e37dc1ae-5659-4b19-b19b-704ba4721c88'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','e4972c4e-5fca-4ce4-b608-cf3b9149f146'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','e581a8e5-d412-4eb0-b907-29fbc93799af'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','e6a8d33a-48e8-432d-b6eb-4d308028226c'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','e8e53b78-f586-463d-962c-192472732f60'),
('18ab35d6-47e8-4cdc-a45d-387d45c025db','fbfd8f1f-0230-41aa-bfe2-a7582fa58b3d');

/*Table structure for table `aspnetusers` */

DROP TABLE IF EXISTS `aspnetusers`;

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetusers` */

insert  into `aspnetusers`(`Id`,`UserName`,`NormalizedUserName`,`Email`,`NormalizedEmail`,`EmailConfirmed`,`PasswordHash`,`SecurityStamp`,`ConcurrencyStamp`,`PhoneNumber`,`PhoneNumberConfirmed`,`TwoFactorEnabled`,`LockoutEnd`,`LockoutEnabled`,`AccessFailedCount`) values 
('18ab35d6-47e8-4cdc-a45d-387d45c025db','super@admin.com','SUPER@ADMIN.COM','super@admin.com','SUPER@ADMIN.COM',1,'AQAAAAEAACcQAAAAELDR6Ha8VmcG9BRLaj2OHEyiKhrUp+LCZtkLUZIFCAV+uytfCm7GoOA+KPgZMOKt7A==','62HUMAX3XIRXWMID5YEFAY2ABOCULBIR','79da2dd7-20ed-446e-b21b-1506e12c7e70',NULL,0,0,NULL,0,0);

/*Table structure for table `aspnetusertokens` */

DROP TABLE IF EXISTS `aspnetusertokens`;

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetusertokens` */

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `BillId` int NOT NULL AUTO_INCREMENT,
  `BillName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `GoodsReceivedNoteId` int NOT NULL,
  `VendorDONumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `VendorInvoiceNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `BillDate` datetime(6) NOT NULL,
  `BillDueDate` datetime(6) NOT NULL,
  `BillTypeId` int NOT NULL,
  PRIMARY KEY (`BillId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bill` */

/*Table structure for table `billtype` */

DROP TABLE IF EXISTS `billtype`;

CREATE TABLE `billtype` (
  `BillTypeId` int NOT NULL AUTO_INCREMENT,
  `BillTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`BillTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `billtype` */

insert  into `billtype`(`BillTypeId`,`BillTypeName`,`Description`) values 
(1,'Default',NULL);

/*Table structure for table `branch` */

DROP TABLE IF EXISTS `branch`;

CREATE TABLE `branch` (
  `BranchId` int NOT NULL AUTO_INCREMENT,
  `BranchName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `CurrencyId` int NOT NULL,
  `Address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `City` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `State` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ZipCode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Phone` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ContactPerson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`BranchId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `branch` */

insert  into `branch`(`BranchId`,`BranchName`,`Description`,`CurrencyId`,`Address`,`City`,`State`,`ZipCode`,`Phone`,`Email`,`ContactPerson`) values 
(1,'Default',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `cashbank` */

DROP TABLE IF EXISTS `cashbank`;

CREATE TABLE `cashbank` (
  `CashBankId` int NOT NULL AUTO_INCREMENT,
  `CashBankName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`CashBankId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cashbank` */

insert  into `cashbank`(`CashBankId`,`CashBankName`,`Description`) values 
(1,'Default',NULL);

/*Table structure for table `currency` */

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `CurrencyId` int NOT NULL AUTO_INCREMENT,
  `CurrencyName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CurrencyCode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`CurrencyId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `currency` */

insert  into `currency`(`CurrencyId`,`CurrencyName`,`CurrencyCode`,`Description`) values 
(1,'Default','USD',NULL),
(2,'BDT','BDT','BDT');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `CustomerId` int NOT NULL AUTO_INCREMENT,
  `CustomerName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CustomerTypeId` int NOT NULL,
  `Address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `City` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `State` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ZipCode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Phone` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ContactPerson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customer` */

insert  into `customer`(`CustomerId`,`CustomerName`,`CustomerTypeId`,`Address`,`City`,`State`,`ZipCode`,`Phone`,`Email`,`ContactPerson`) values 
(1,'Old World Delicatessen',0,'2743 Bering St.',NULL,NULL,NULL,NULL,NULL,NULL),
(2,'Hungry Coyote Import Store',0,'City Center Plaza 516 Main St.',NULL,NULL,NULL,NULL,NULL,NULL),
(3,'Hungry Owl All-Night Grocers',0,'8 Johnstown Road',NULL,NULL,NULL,NULL,NULL,NULL),
(4,'Island Trading',0,'Garden House Crowther Way',NULL,NULL,NULL,NULL,NULL,NULL),
(5,'Königlich Essen',0,'Maubelstr. 90',NULL,NULL,NULL,NULL,NULL,NULL),
(6,'La corne d\'abondance',0,'67, avenue de l\'Europe',NULL,NULL,NULL,NULL,NULL,NULL),
(7,'La maison d\'Asie',0,'1 rue Alsace-Lorraine',NULL,NULL,NULL,NULL,NULL,NULL),
(8,'Laughing Bacchus Wine Cellars',0,'1900 Oak St.',NULL,NULL,NULL,NULL,NULL,NULL),
(9,'Lazy K Kountry Store',0,'12 Orchestra Terrace',NULL,NULL,NULL,NULL,NULL,NULL),
(10,'Lehmanns Marktstand',0,'Magazinweg 7',NULL,NULL,NULL,NULL,NULL,NULL),
(11,'Let\'s Stop N Shop',0,'87 Polk St. Suite 5',NULL,NULL,NULL,NULL,NULL,NULL),
(12,'LILA-Supermercado',0,'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',NULL,NULL,NULL,NULL,NULL,NULL),
(13,'LINO-Delicateses',0,'Ave. 5 de Mayo Porlamar',NULL,NULL,NULL,NULL,NULL,NULL),
(14,'Lonesome Pine Restaurant',0,'89 Chiaroscuro Rd.',NULL,NULL,NULL,NULL,NULL,NULL),
(15,'Magazzini Alimentari Riuniti',0,'Via Ludovico il Moro 22',NULL,NULL,NULL,NULL,NULL,NULL),
(16,'Maison Dewey',0,'Rue Joseph-Bens 532',NULL,NULL,NULL,NULL,NULL,NULL),
(17,'Mère Paillarde',0,'43 rue St. Laurent',NULL,NULL,NULL,NULL,NULL,NULL),
(18,'Morgenstern Gesundkost',0,'Heerstr. 22',NULL,NULL,NULL,NULL,NULL,NULL),
(19,'HILARION-Abastos',0,'Carrera 22 con Ave. Carlos Soublette #8-35',NULL,NULL,NULL,NULL,NULL,NULL),
(20,'Hanari Carnes',0,'Rua do Paço, 67',NULL,NULL,NULL,NULL,NULL,NULL),
(21,'Tawfiqur Rahman',1,'New Orleans','New Orleans','New Orleans','New Orleans','New Orleans','New Orleans','New Orleans'),
(22,'Anon Parson',2,'Dhaka','Dhaka','Dhaka','Dhaka','Dhaka','Dhaka','Dhaka');

/*Table structure for table `customertype` */

DROP TABLE IF EXISTS `customertype`;

CREATE TABLE `customertype` (
  `CustomerTypeId` int NOT NULL AUTO_INCREMENT,
  `CustomerTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`CustomerTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customertype` */

insert  into `customertype`(`CustomerTypeId`,`CustomerTypeName`,`Description`) values 
(1,'Default',NULL),
(2,'VIP','VIP');

/*Table structure for table `goodsreceivednote` */

DROP TABLE IF EXISTS `goodsreceivednote`;

CREATE TABLE `goodsreceivednote` (
  `GoodsReceivedNoteId` int NOT NULL AUTO_INCREMENT,
  `GoodsReceivedNoteName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PurchaseOrderId` int NOT NULL,
  `GRNDate` datetime(6) NOT NULL,
  `VendorDONumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `VendorInvoiceNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `WarehouseId` int NOT NULL,
  `IsFullReceive` tinyint(1) NOT NULL,
  PRIMARY KEY (`GoodsReceivedNoteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `goodsreceivednote` */

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `InvoiceId` int NOT NULL AUTO_INCREMENT,
  `InvoiceName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShipmentId` int NOT NULL,
  `InvoiceDate` datetime(6) NOT NULL,
  `InvoiceDueDate` datetime(6) NOT NULL,
  `InvoiceTypeId` int NOT NULL,
  PRIMARY KEY (`InvoiceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `invoice` */

/*Table structure for table `invoicetype` */

DROP TABLE IF EXISTS `invoicetype`;

CREATE TABLE `invoicetype` (
  `InvoiceTypeId` int NOT NULL AUTO_INCREMENT,
  `InvoiceTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`InvoiceTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `invoicetype` */

insert  into `invoicetype`(`InvoiceTypeId`,`InvoiceTypeName`,`Description`) values 
(1,'Default',NULL);

/*Table structure for table `numbersequence` */

DROP TABLE IF EXISTS `numbersequence`;

CREATE TABLE `numbersequence` (
  `NumberSequenceId` int NOT NULL AUTO_INCREMENT,
  `NumberSequenceName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Module` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Prefix` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LastNumber` int NOT NULL,
  PRIMARY KEY (`NumberSequenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `numbersequence` */

/*Table structure for table `paymentreceive` */

DROP TABLE IF EXISTS `paymentreceive`;

CREATE TABLE `paymentreceive` (
  `PaymentReceiveId` int NOT NULL AUTO_INCREMENT,
  `PaymentReceiveName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `InvoiceId` int NOT NULL,
  `PaymentDate` datetime(6) NOT NULL,
  `PaymentTypeId` int NOT NULL,
  `PaymentAmount` double NOT NULL,
  `IsFullPayment` tinyint(1) NOT NULL,
  PRIMARY KEY (`PaymentReceiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `paymentreceive` */

/*Table structure for table `paymenttype` */

DROP TABLE IF EXISTS `paymenttype`;

CREATE TABLE `paymenttype` (
  `PaymentTypeId` int NOT NULL AUTO_INCREMENT,
  `PaymentTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`PaymentTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `paymenttype` */

insert  into `paymenttype`(`PaymentTypeId`,`PaymentTypeName`,`Description`) values 
(1,'Default',NULL);

/*Table structure for table `paymentvoucher` */

DROP TABLE IF EXISTS `paymentvoucher`;

CREATE TABLE `paymentvoucher` (
  `PaymentvoucherId` int NOT NULL AUTO_INCREMENT,
  `PaymentVoucherName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `BillId` int NOT NULL,
  `PaymentDate` datetime(6) NOT NULL,
  `PaymentTypeId` int NOT NULL,
  `PaymentAmount` double NOT NULL,
  `CashBankId` int NOT NULL,
  `IsFullPayment` tinyint(1) NOT NULL,
  PRIMARY KEY (`PaymentvoucherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `paymentvoucher` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `ProductId` int NOT NULL AUTO_INCREMENT,
  `ProductName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductCode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Barcode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ProductImageUrl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UnitOfMeasureId` int NOT NULL,
  `DefaultBuyingPrice` double NOT NULL,
  `DefaultSellingPrice` double NOT NULL,
  `BranchId` int NOT NULL,
  `CurrencyId` int NOT NULL,
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product` */

insert  into `product`(`ProductId`,`ProductName`,`ProductCode`,`Barcode`,`Description`,`ProductImageUrl`,`UnitOfMeasureId`,`DefaultBuyingPrice`,`DefaultSellingPrice`,`BranchId`,`CurrencyId`) values 
(1,'Sir Rodney\'s Marmalade',NULL,NULL,NULL,NULL,1,10,12,0,0),
(2,'Aniseed Syrup',NULL,NULL,NULL,NULL,0,0,0,0,0),
(3,'Chef Anton\'s Cajun Seasoning',NULL,NULL,NULL,NULL,0,0,0,0,0),
(4,'Chef Anton\'s Gumbo Mix',NULL,NULL,NULL,NULL,0,0,0,0,0),
(5,'Grandma\'s Boysenberry Spread',NULL,NULL,NULL,NULL,0,0,0,0,0),
(6,'Uncle Bob\'s Organic Dried Pears',NULL,NULL,NULL,NULL,0,0,0,0,0),
(7,'Northwoods Cranberry Sauce',NULL,NULL,NULL,NULL,0,0,0,0,0),
(8,'Mishi Kobe Niku',NULL,NULL,NULL,NULL,0,0,0,0,0),
(9,'Ikura',NULL,NULL,NULL,NULL,0,0,0,0,0),
(10,'Queso Cabrales',NULL,NULL,NULL,NULL,0,0,0,0,0),
(11,'Queso Manchego La Pastora',NULL,NULL,NULL,NULL,0,0,0,0,0),
(12,'Konbu',NULL,NULL,NULL,NULL,0,0,0,0,0),
(13,'Tofu',NULL,NULL,NULL,NULL,0,0,0,0,0),
(14,'Genen Shouyu',NULL,NULL,NULL,NULL,0,0,0,0,0),
(15,'Pavlova',NULL,NULL,NULL,NULL,0,0,0,0,0),
(16,'Alice Mutton',NULL,NULL,NULL,NULL,0,0,0,0,0),
(17,'Carnarvon Tigers',NULL,NULL,NULL,NULL,0,0,0,0,0),
(18,'Teatime Chocolate Biscuits',NULL,NULL,NULL,NULL,0,0,0,0,0),
(19,'Chang',NULL,NULL,NULL,NULL,0,0,0,0,0),
(20,'Chai',NULL,NULL,NULL,NULL,0,0,0,0,0);

/*Table structure for table `producttype` */

DROP TABLE IF EXISTS `producttype`;

CREATE TABLE `producttype` (
  `ProductTypeId` int NOT NULL AUTO_INCREMENT,
  `ProductTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`ProductTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `producttype` */

insert  into `producttype`(`ProductTypeId`,`ProductTypeName`,`Description`) values 
(1,'Default',NULL);

/*Table structure for table `purchaseorder` */

DROP TABLE IF EXISTS `purchaseorder`;

CREATE TABLE `purchaseorder` (
  `PurchaseOrderId` int NOT NULL AUTO_INCREMENT,
  `PurchaseOrderName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `BranchId` int NOT NULL,
  `VendorId` int NOT NULL,
  `OrderDate` datetime(6) NOT NULL,
  `DeliveryDate` datetime(6) NOT NULL,
  `CurrencyId` int NOT NULL,
  `PurchaseTypeId` int NOT NULL,
  `Remarks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Amount` double NOT NULL,
  `SubTotal` double NOT NULL,
  `Discount` double NOT NULL,
  `Tax` double NOT NULL,
  `Freight` double NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`PurchaseOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `purchaseorder` */

/*Table structure for table `purchaseorderline` */

DROP TABLE IF EXISTS `purchaseorderline`;

CREATE TABLE `purchaseorderline` (
  `PurchaseOrderLineId` int NOT NULL AUTO_INCREMENT,
  `PurchaseOrderId` int NOT NULL,
  `ProductId` int NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Quantity` double NOT NULL,
  `Price` double NOT NULL,
  `Amount` double NOT NULL,
  `DiscountPercentage` double NOT NULL,
  `DiscountAmount` double NOT NULL,
  `SubTotal` double NOT NULL,
  `TaxPercentage` double NOT NULL,
  `TaxAmount` double NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`PurchaseOrderLineId`),
  KEY `IX_PurchaseOrderLine_PurchaseOrderId` (`PurchaseOrderId`),
  CONSTRAINT `FK_PurchaseOrderLine_PurchaseOrder_PurchaseOrderId` FOREIGN KEY (`PurchaseOrderId`) REFERENCES `purchaseorder` (`PurchaseOrderId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `purchaseorderline` */

/*Table structure for table `purchasetype` */

DROP TABLE IF EXISTS `purchasetype`;

CREATE TABLE `purchasetype` (
  `PurchaseTypeId` int NOT NULL AUTO_INCREMENT,
  `PurchaseTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`PurchaseTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `purchasetype` */

insert  into `purchasetype`(`PurchaseTypeId`,`PurchaseTypeName`,`Description`) values 
(1,'Default',NULL);

/*Table structure for table `salesorder` */

DROP TABLE IF EXISTS `salesorder`;

CREATE TABLE `salesorder` (
  `SalesOrderId` int NOT NULL AUTO_INCREMENT,
  `SalesOrderName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `BranchId` int NOT NULL,
  `CustomerId` int NOT NULL,
  `OrderDate` datetime(6) NOT NULL,
  `DeliveryDate` datetime(6) NOT NULL,
  `CurrencyId` int NOT NULL,
  `CustomerRefNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SalesTypeId` int NOT NULL,
  `Remarks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Amount` double NOT NULL,
  `SubTotal` double NOT NULL,
  `Discount` double NOT NULL,
  `Tax` double NOT NULL,
  `Freight` double NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`SalesOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `salesorder` */

/*Table structure for table `salesorderline` */

DROP TABLE IF EXISTS `salesorderline`;

CREATE TABLE `salesorderline` (
  `SalesOrderLineId` int NOT NULL AUTO_INCREMENT,
  `SalesOrderId` int NOT NULL,
  `ProductId` int NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Quantity` double NOT NULL,
  `Price` double NOT NULL,
  `Amount` double NOT NULL,
  `DiscountPercentage` double NOT NULL,
  `DiscountAmount` double NOT NULL,
  `SubTotal` double NOT NULL,
  `TaxPercentage` double NOT NULL,
  `TaxAmount` double NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`SalesOrderLineId`),
  KEY `IX_SalesOrderLine_SalesOrderId` (`SalesOrderId`),
  CONSTRAINT `FK_SalesOrderLine_SalesOrder_SalesOrderId` FOREIGN KEY (`SalesOrderId`) REFERENCES `salesorder` (`SalesOrderId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `salesorderline` */

/*Table structure for table `salestype` */

DROP TABLE IF EXISTS `salestype`;

CREATE TABLE `salestype` (
  `SalesTypeId` int NOT NULL AUTO_INCREMENT,
  `SalesTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`SalesTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `salestype` */

insert  into `salestype`(`SalesTypeId`,`SalesTypeName`,`Description`) values 
(1,'Default',NULL),
(2,'Big','Big');

/*Table structure for table `shipment` */

DROP TABLE IF EXISTS `shipment`;

CREATE TABLE `shipment` (
  `ShipmentId` int NOT NULL AUTO_INCREMENT,
  `ShipmentName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SalesOrderId` int NOT NULL,
  `ShipmentDate` datetime(6) NOT NULL,
  `ShipmentTypeId` int NOT NULL,
  `WarehouseId` int NOT NULL,
  `IsFullShipment` tinyint(1) NOT NULL,
  PRIMARY KEY (`ShipmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `shipment` */

/*Table structure for table `shipmenttype` */

DROP TABLE IF EXISTS `shipmenttype`;

CREATE TABLE `shipmenttype` (
  `ShipmentTypeId` int NOT NULL AUTO_INCREMENT,
  `ShipmentTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`ShipmentTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `shipmenttype` */

insert  into `shipmenttype`(`ShipmentTypeId`,`ShipmentTypeName`,`Description`) values 
(1,'Default',NULL);

/*Table structure for table `unitofmeasure` */

DROP TABLE IF EXISTS `unitofmeasure`;

CREATE TABLE `unitofmeasure` (
  `UnitOfMeasureId` int NOT NULL AUTO_INCREMENT,
  `UnitOfMeasureName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UnitOfMeasureId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `unitofmeasure` */

insert  into `unitofmeasure`(`UnitOfMeasureId`,`UnitOfMeasureName`,`Description`) values 
(1,'PCS',NULL);

/*Table structure for table `userprofile` */

DROP TABLE IF EXISTS `userprofile`;

CREATE TABLE `userprofile` (
  `UserProfileId` int NOT NULL AUTO_INCREMENT,
  `FirstName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `LastName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Password` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConfirmPassword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `OldPassword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ProfilePicture` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ApplicationUserId` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserProfileId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `userprofile` */

insert  into `userprofile`(`UserProfileId`,`FirstName`,`LastName`,`Email`,`Password`,`ConfirmPassword`,`OldPassword`,`ProfilePicture`,`ApplicationUserId`) values 
(1,'Super','Admin','super@admin.com',NULL,NULL,NULL,'/upload/c643702e-ce86-416f-9c7d-af82778db62b.png','18ab35d6-47e8-4cdc-a45d-387d45c025db');

/*Table structure for table `vendor` */

DROP TABLE IF EXISTS `vendor`;

CREATE TABLE `vendor` (
  `VendorId` int NOT NULL AUTO_INCREMENT,
  `VendorName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `VendorTypeId` int NOT NULL,
  `Address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `City` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `State` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ZipCode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Phone` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ContactPerson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`VendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `vendor` */

insert  into `vendor`(`VendorId`,`VendorName`,`VendorTypeId`,`Address`,`City`,`State`,`ZipCode`,`Phone`,`Email`,`ContactPerson`) values 
(1,'New England Seafood Cannery',0,'Order Processing Dept. 2100 Paul Revere Blvd.',NULL,NULL,NULL,NULL,NULL,NULL),
(2,'Grandma Kelly\'s Homestead',0,'707 Oxford Rd.',NULL,NULL,NULL,NULL,NULL,NULL),
(3,'Tokyo Traders',0,'9-8 Sekimai Musashino-shi',NULL,NULL,NULL,NULL,NULL,NULL),
(4,'Cooperativa de Quesos \'Las Cabras\'',0,'Calle del Rosal 4',NULL,NULL,NULL,NULL,NULL,NULL),
(5,'Mayumi\'s',0,'92 Setsuko Chuo-ku',NULL,NULL,NULL,NULL,NULL,NULL),
(6,'Pavlova, Ltd.',0,'74 Rose St. Moonie Ponds',NULL,NULL,NULL,NULL,NULL,NULL),
(7,'Specialty Biscuits, Ltd.',0,'29 King\'s Way',NULL,NULL,NULL,NULL,NULL,NULL),
(8,'PB Knäckebröd AB',0,'Kaloadagatan 13',NULL,NULL,NULL,NULL,NULL,NULL),
(9,'New Orleans Cajun Delights',0,'P.O. Box 78934',NULL,NULL,NULL,NULL,NULL,NULL),
(10,'Refrescos Americanas LTDA',0,'Av. das Americanas 12.890',NULL,NULL,NULL,NULL,NULL,NULL),
(11,'Plutzer Lebensmittelgroßmärkte AG',0,'Bogenallee 51',NULL,NULL,NULL,NULL,NULL,NULL),
(12,'Nord-Ost-Fisch Handelsgesellschaft mbH',0,'Frahmredder 112a',NULL,NULL,NULL,NULL,NULL,NULL),
(13,'Formaggi Fortini s.r.l.',0,'Viale Dante, 75',NULL,NULL,NULL,NULL,NULL,NULL),
(14,'Norske Meierier',0,'Hatlevegen 5',NULL,NULL,NULL,NULL,NULL,NULL),
(15,'Bigfoot Breweries',0,'3400 - 8th Avenue Suite 210',NULL,NULL,NULL,NULL,NULL,NULL),
(16,'Svensk Sjöföda AB',0,'Brovallavägen 231',NULL,NULL,NULL,NULL,NULL,NULL),
(17,'Aux joyeux ecclésiastiques',0,'203, Rue des Francs-Bourgeois',NULL,NULL,NULL,NULL,NULL,NULL),
(18,'Heli Süßwaren GmbH & Co. KG',0,'Tiergartenstraße 5',NULL,NULL,NULL,NULL,NULL,NULL),
(19,'Exotic Liquids',0,'49 Gilbert St.',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `vendortype` */

DROP TABLE IF EXISTS `vendortype`;

CREATE TABLE `vendortype` (
  `VendorTypeId` int NOT NULL AUTO_INCREMENT,
  `VendorTypeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`VendorTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `vendortype` */

insert  into `vendortype`(`VendorTypeId`,`VendorTypeName`,`Description`) values 
(1,'Default',NULL),
(2,'VIP','VIP');

/*Table structure for table `warehouse` */

DROP TABLE IF EXISTS `warehouse`;

CREATE TABLE `warehouse` (
  `WarehouseId` int NOT NULL AUTO_INCREMENT,
  `WarehouseName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `BranchId` int NOT NULL,
  PRIMARY KEY (`WarehouseId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `warehouse` */

insert  into `warehouse`(`WarehouseId`,`WarehouseName`,`Description`,`BranchId`) values 
(1,'Default',NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
