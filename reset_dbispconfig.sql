-- MySQL dump 10.14  Distrib 5.5.30-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.01    Database: dbispconfig
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aps_instances`
--

DROP TABLE IF EXISTS `aps_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aps_instances` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(4) NOT NULL,
  `package_id` int(4) NOT NULL,
  `instance_status` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aps_instances`
--

LOCK TABLES `aps_instances` WRITE;
/*!40000 ALTER TABLE `aps_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `aps_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aps_instances_settings`
--

DROP TABLE IF EXISTS `aps_instances_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aps_instances_settings` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `instance_id` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aps_instances_settings`
--

LOCK TABLES `aps_instances_settings` WRITE;
/*!40000 ALTER TABLE `aps_instances_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `aps_instances_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aps_packages`
--

DROP TABLE IF EXISTS `aps_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aps_packages` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `version` varchar(20) NOT NULL,
  `release` int(4) NOT NULL,
  `package_url` text NOT NULL,
  `package_status` int(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aps_packages`
--

LOCK TABLES `aps_packages` WRITE;
/*!40000 ALTER TABLE `aps_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `aps_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aps_settings`
--

DROP TABLE IF EXISTS `aps_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aps_settings` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aps_settings`
--

LOCK TABLES `aps_settings` WRITE;
/*!40000 ALTER TABLE `aps_settings` DISABLE KEYS */;
INSERT INTO `aps_settings` VALUES (1,'ignore-php-extension',''),(2,'ignore-php-configuration',''),(3,'ignore-webserver-module','');
/*!40000 ALTER TABLE `aps_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attempts_login`
--

DROP TABLE IF EXISTS `attempts_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attempts_login` (
  `ip` varchar(39) NOT NULL,
  `times` int(11) DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempts_login`
--

LOCK TABLES `attempts_login` WRITE;
/*!40000 ALTER TABLE `attempts_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `attempts_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `client_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `company_name` varchar(64) DEFAULT NULL,
  `company_id` varchar(30) DEFAULT NULL,
  `contact_name` varchar(64) DEFAULT NULL,
  `customer_no` varchar(64) DEFAULT NULL,
  `vat_id` varchar(64) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(32) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `internet` varchar(255) NOT NULL,
  `icq` varchar(16) DEFAULT NULL,
  `notes` text,
  `bank_account_owner` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account_iban` varchar(255) DEFAULT NULL,
  `bank_account_swift` varchar(255) DEFAULT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `default_mailserver` int(11) unsigned NOT NULL DEFAULT '1',
  `limit_maildomain` int(11) NOT NULL DEFAULT '-1',
  `limit_mailbox` int(11) NOT NULL DEFAULT '-1',
  `limit_mailalias` int(11) NOT NULL DEFAULT '-1',
  `limit_mailaliasdomain` int(11) NOT NULL DEFAULT '-1',
  `limit_mailforward` int(11) NOT NULL DEFAULT '-1',
  `limit_mailcatchall` int(11) NOT NULL DEFAULT '-1',
  `limit_mailrouting` int(11) NOT NULL DEFAULT '0',
  `limit_mailfilter` int(11) NOT NULL DEFAULT '-1',
  `limit_fetchmail` int(11) NOT NULL DEFAULT '-1',
  `limit_mailquota` int(11) NOT NULL DEFAULT '-1',
  `limit_spamfilter_wblist` int(11) NOT NULL DEFAULT '0',
  `limit_spamfilter_user` int(11) NOT NULL DEFAULT '0',
  `limit_spamfilter_policy` int(11) NOT NULL DEFAULT '0',
  `default_webserver` int(11) unsigned NOT NULL DEFAULT '1',
  `limit_web_ip` text,
  `limit_web_domain` int(11) NOT NULL DEFAULT '-1',
  `limit_web_quota` int(11) NOT NULL DEFAULT '-1',
  `web_php_options` varchar(255) NOT NULL DEFAULT 'no,fast-cgi,cgi,mod,suphp,php-fpm',
  `limit_cgi` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_ssi` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_perl` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_ruby` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_python` enum('n','y') NOT NULL DEFAULT 'n',
  `force_suexec` enum('n','y') NOT NULL DEFAULT 'y',
  `limit_hterror` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_wildcard` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_ssl` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_web_subdomain` int(11) NOT NULL DEFAULT '-1',
  `limit_web_aliasdomain` int(11) NOT NULL DEFAULT '-1',
  `limit_ftp_user` int(11) NOT NULL DEFAULT '-1',
  `limit_shell_user` int(11) NOT NULL DEFAULT '0',
  `ssh_chroot` varchar(255) NOT NULL DEFAULT 'no,jailkit,ssh-chroot',
  `limit_webdav_user` int(11) NOT NULL DEFAULT '0',
  `limit_aps` int(11) NOT NULL DEFAULT '-1',
  `default_dnsserver` int(11) unsigned NOT NULL DEFAULT '1',
  `limit_dns_zone` int(11) NOT NULL DEFAULT '-1',
  `limit_dns_slave_zone` int(11) NOT NULL DEFAULT '-1',
  `limit_dns_record` int(11) NOT NULL DEFAULT '-1',
  `default_dbserver` int(11) NOT NULL DEFAULT '1',
  `limit_database` int(11) NOT NULL DEFAULT '-1',
  `limit_cron` int(11) NOT NULL DEFAULT '0',
  `limit_cron_type` enum('url','chrooted','full') NOT NULL DEFAULT 'url',
  `limit_cron_frequency` int(11) NOT NULL DEFAULT '5',
  `limit_traffic_quota` int(11) NOT NULL DEFAULT '-1',
  `limit_client` int(11) NOT NULL DEFAULT '0',
  `limit_mailmailinglist` int(11) NOT NULL DEFAULT '-1',
  `limit_openvz_vm` int(11) NOT NULL DEFAULT '0',
  `limit_openvz_vm_template_id` int(11) NOT NULL DEFAULT '0',
  `parent_client_id` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `language` char(2) NOT NULL DEFAULT 'en',
  `usertheme` varchar(32) NOT NULL DEFAULT 'default',
  `template_master` int(11) unsigned NOT NULL DEFAULT '0',
  `template_additional` text NOT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `id_rsa` varchar(2000) NOT NULL DEFAULT '',
  `ssh_rsa` varchar(600) NOT NULL DEFAULT '',
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_circle`
--

DROP TABLE IF EXISTS `client_circle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_circle` (
  `circle_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) NOT NULL DEFAULT '0',
  `sys_groupid` int(11) NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `circle_name` varchar(64) DEFAULT NULL,
  `client_ids` text,
  `description` text,
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`circle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_circle`
--

LOCK TABLES `client_circle` WRITE;
/*!40000 ALTER TABLE `client_circle` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_circle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_template`
--

DROP TABLE IF EXISTS `client_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_template` (
  `template_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_type` varchar(1) NOT NULL DEFAULT 'm',
  `limit_maildomain` int(11) NOT NULL DEFAULT '-1',
  `limit_mailbox` int(11) NOT NULL DEFAULT '-1',
  `limit_mailalias` int(11) NOT NULL DEFAULT '-1',
  `limit_mailaliasdomain` int(11) NOT NULL DEFAULT '-1',
  `limit_mailforward` int(11) NOT NULL DEFAULT '-1',
  `limit_mailcatchall` int(11) NOT NULL DEFAULT '-1',
  `limit_mailrouting` int(11) NOT NULL DEFAULT '0',
  `limit_mailfilter` int(11) NOT NULL DEFAULT '-1',
  `limit_fetchmail` int(11) NOT NULL DEFAULT '-1',
  `limit_mailquota` int(11) NOT NULL DEFAULT '-1',
  `limit_spamfilter_wblist` int(11) NOT NULL DEFAULT '0',
  `limit_spamfilter_user` int(11) NOT NULL DEFAULT '0',
  `limit_spamfilter_policy` int(11) NOT NULL DEFAULT '0',
  `limit_web_ip` text,
  `limit_web_domain` int(11) NOT NULL DEFAULT '-1',
  `limit_web_quota` int(11) NOT NULL DEFAULT '-1',
  `web_php_options` varchar(255) NOT NULL DEFAULT 'no',
  `limit_cgi` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_ssi` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_perl` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_ruby` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_python` enum('n','y') NOT NULL DEFAULT 'n',
  `force_suexec` enum('n','y') NOT NULL DEFAULT 'y',
  `limit_hterror` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_wildcard` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_ssl` enum('n','y') NOT NULL DEFAULT 'n',
  `limit_web_subdomain` int(11) NOT NULL DEFAULT '-1',
  `limit_web_aliasdomain` int(11) NOT NULL DEFAULT '-1',
  `limit_ftp_user` int(11) NOT NULL DEFAULT '-1',
  `limit_shell_user` int(11) NOT NULL DEFAULT '0',
  `ssh_chroot` varchar(255) NOT NULL DEFAULT 'no',
  `limit_webdav_user` int(11) NOT NULL DEFAULT '0',
  `limit_aps` int(11) NOT NULL DEFAULT '-1',
  `limit_dns_zone` int(11) NOT NULL DEFAULT '-1',
  `limit_dns_slave_zone` int(11) NOT NULL DEFAULT '-1',
  `limit_dns_record` int(11) NOT NULL DEFAULT '-1',
  `limit_database` int(11) NOT NULL DEFAULT '-1',
  `limit_cron` int(11) NOT NULL DEFAULT '0',
  `limit_cron_type` enum('url','chrooted','full') NOT NULL DEFAULT 'url',
  `limit_cron_frequency` int(11) NOT NULL DEFAULT '5',
  `limit_traffic_quota` int(11) NOT NULL DEFAULT '-1',
  `limit_client` int(11) NOT NULL DEFAULT '0',
  `limit_mailmailinglist` int(11) NOT NULL DEFAULT '-1',
  `limit_openvz_vm` int(11) NOT NULL DEFAULT '0',
  `limit_openvz_vm_template_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_template`
--

LOCK TABLES `client_template` WRITE;
/*!40000 ALTER TABLE `client_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `iso` char(2) NOT NULL,
  `name` varchar(64) NOT NULL,
  `printable_name` varchar(64) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`iso`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('AF','AFGHANISTAN','Afghanistan','AFG',4),('AL','ALBANIA','Albania','ALB',8),('DZ','ALGERIA','Algeria','DZA',12),('AS','AMERICAN SAMOA','American Samoa','ASM',16),('AD','ANDORRA','Andorra','AND',20),('AO','ANGOLA','Angola','AGO',24),('AI','ANGUILLA','Anguilla','AIA',660),('AQ','ANTARCTICA','Antarctica',NULL,NULL),('AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28),('AR','ARGENTINA','Argentina','ARG',32),('AM','ARMENIA','Armenia','ARM',51),('AW','ARUBA','Aruba','ABW',533),('AU','AUSTRALIA','Australia','AUS',36),('AT','AUSTRIA','Austria','AUT',40),('AZ','AZERBAIJAN','Azerbaijan','AZE',31),('BS','BAHAMAS','Bahamas','BHS',44),('BH','BAHRAIN','Bahrain','BHR',48),('BD','BANGLADESH','Bangladesh','BGD',50),('BB','BARBADOS','Barbados','BRB',52),('BY','BELARUS','Belarus','BLR',112),('BE','BELGIUM','Belgium','BEL',56),('BZ','BELIZE','Belize','BLZ',84),('BJ','BENIN','Benin','BEN',204),('BM','BERMUDA','Bermuda','BMU',60),('BT','BHUTAN','Bhutan','BTN',64),('BO','BOLIVIA','Bolivia','BOL',68),('BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70),('BW','BOTSWANA','Botswana','BWA',72),('BV','BOUVET ISLAND','Bouvet Island',NULL,NULL),('BR','BRAZIL','Brazil','BRA',76),('IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL),('BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96),('BG','BULGARIA','Bulgaria','BGR',100),('BF','BURKINA FASO','Burkina Faso','BFA',854),('BI','BURUNDI','Burundi','BDI',108),('KH','CAMBODIA','Cambodia','KHM',116),('CM','CAMEROON','Cameroon','CMR',120),('CA','CANADA','Canada','CAN',124),('CV','CAPE VERDE','Cape Verde','CPV',132),('KY','CAYMAN ISLANDS','Cayman Islands','CYM',136),('CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140),('TD','CHAD','Chad','TCD',148),('CL','CHILE','Chile','CHL',152),('CN','CHINA','China','CHN',156),('CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL),('CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL),('CO','COLOMBIA','Colombia','COL',170),('KM','COMOROS','Comoros','COM',174),('CG','CONGO','Congo','COG',178),('CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180),('CK','COOK ISLANDS','Cook Islands','COK',184),('CR','COSTA RICA','Costa Rica','CRI',188),('CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384),('HR','CROATIA','Croatia','HRV',191),('CU','CUBA','Cuba','CUB',192),('CY','CYPRUS','Cyprus','CYP',196),('CZ','CZECH REPUBLIC','Czech Republic','CZE',203),('DK','DENMARK','Denmark','DNK',208),('DJ','DJIBOUTI','Djibouti','DJI',262),('DM','DOMINICA','Dominica','DMA',212),('DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214),('EC','ECUADOR','Ecuador','ECU',218),('EG','EGYPT','Egypt','EGY',818),('SV','EL SALVADOR','El Salvador','SLV',222),('GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226),('ER','ERITREA','Eritrea','ERI',232),('EE','ESTONIA','Estonia','EST',233),('ET','ETHIOPIA','Ethiopia','ETH',231),('FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238),('FO','FAROE ISLANDS','Faroe Islands','FRO',234),('FJ','FIJI','Fiji','FJI',242),('FI','FINLAND','Finland','FIN',246),('FR','FRANCE','France','FRA',250),('GF','FRENCH GUIANA','French Guiana','GUF',254),('PF','FRENCH POLYNESIA','French Polynesia','PYF',258),('TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL),('GA','GABON','Gabon','GAB',266),('GM','GAMBIA','Gambia','GMB',270),('GE','GEORGIA','Georgia','GEO',268),('DE','GERMANY','Germany','DEU',276),('GH','GHANA','Ghana','GHA',288),('GI','GIBRALTAR','Gibraltar','GIB',292),('GR','GREECE','Greece','GRC',300),('GL','GREENLAND','Greenland','GRL',304),('GD','GRENADA','Grenada','GRD',308),('GP','GUADELOUPE','Guadeloupe','GLP',312),('GU','GUAM','Guam','GUM',316),('GT','GUATEMALA','Guatemala','GTM',320),('GN','GUINEA','Guinea','GIN',324),('GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624),('GY','GUYANA','Guyana','GUY',328),('HT','HAITI','Haiti','HTI',332),('HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL),('VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336),('HN','HONDURAS','Honduras','HND',340),('HK','HONG KONG','Hong Kong','HKG',344),('HU','HUNGARY','Hungary','HUN',348),('IS','ICELAND','Iceland','ISL',352),('IN','INDIA','India','IND',356),('ID','INDONESIA','Indonesia','IDN',360),('IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364),('IQ','IRAQ','Iraq','IRQ',368),('IE','IRELAND','Ireland','IRL',372),('IL','ISRAEL','Israel','ISR',376),('IT','ITALY','Italy','ITA',380),('JM','JAMAICA','Jamaica','JAM',388),('JP','JAPAN','Japan','JPN',392),('JO','JORDAN','Jordan','JOR',400),('KZ','KAZAKHSTAN','Kazakhstan','KAZ',398),('KE','KENYA','Kenya','KEN',404),('KI','KIRIBATI','Kiribati','KIR',296),('KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408),('KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410),('KW','KUWAIT','Kuwait','KWT',414),('KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417),('LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418),('LV','LATVIA','Latvia','LVA',428),('LB','LEBANON','Lebanon','LBN',422),('LS','LESOTHO','Lesotho','LSO',426),('LR','LIBERIA','Liberia','LBR',430),('LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434),('LI','LIECHTENSTEIN','Liechtenstein','LIE',438),('LT','LITHUANIA','Lithuania','LTU',440),('LU','LUXEMBOURG','Luxembourg','LUX',442),('MO','MACAO','Macao','MAC',446),('MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807),('MG','MADAGASCAR','Madagascar','MDG',450),('MW','MALAWI','Malawi','MWI',454),('MY','MALAYSIA','Malaysia','MYS',458),('MV','MALDIVES','Maldives','MDV',462),('ML','MALI','Mali','MLI',466),('MT','MALTA','Malta','MLT',470),('MH','MARSHALL ISLANDS','Marshall Islands','MHL',584),('MQ','MARTINIQUE','Martinique','MTQ',474),('MR','MAURITANIA','Mauritania','MRT',478),('MU','MAURITIUS','Mauritius','MUS',480),('YT','MAYOTTE','Mayotte',NULL,NULL),('MX','MEXICO','Mexico','MEX',484),('FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583),('MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498),('MC','MONACO','Monaco','MCO',492),('MN','MONGOLIA','Mongolia','MNG',496),('MS','MONTSERRAT','Montserrat','MSR',500),('MA','MOROCCO','Morocco','MAR',504),('MZ','MOZAMBIQUE','Mozambique','MOZ',508),('MM','MYANMAR','Myanmar','MMR',104),('NA','NAMIBIA','Namibia','NAM',516),('NR','NAURU','Nauru','NRU',520),('NP','NEPAL','Nepal','NPL',524),('NL','NETHERLANDS','Netherlands','NLD',528),('AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530),('NC','NEW CALEDONIA','New Caledonia','NCL',540),('NZ','NEW ZEALAND','New Zealand','NZL',554),('NI','NICARAGUA','Nicaragua','NIC',558),('NE','NIGER','Niger','NER',562),('NG','NIGERIA','Nigeria','NGA',566),('NU','NIUE','Niue','NIU',570),('NF','NORFOLK ISLAND','Norfolk Island','NFK',574),('MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580),('NO','NORWAY','Norway','NOR',578),('OM','OMAN','Oman','OMN',512),('PK','PAKISTAN','Pakistan','PAK',586),('PW','PALAU','Palau','PLW',585),('PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL),('PA','PANAMA','Panama','PAN',591),('PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598),('PY','PARAGUAY','Paraguay','PRY',600),('PE','PERU','Peru','PER',604),('PH','PHILIPPINES','Philippines','PHL',608),('PN','PITCAIRN','Pitcairn','PCN',612),('PL','POLAND','Poland','POL',616),('PT','PORTUGAL','Portugal','PRT',620),('PR','PUERTO RICO','Puerto Rico','PRI',630),('QA','QATAR','Qatar','QAT',634),('RE','REUNION','Reunion','REU',638),('RO','ROMANIA','Romania','ROM',642),('RU','RUSSIAN FEDERATION','Russian Federation','RUS',643),('RW','RWANDA','Rwanda','RWA',646),('SH','SAINT HELENA','Saint Helena','SHN',654),('KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659),('LC','SAINT LUCIA','Saint Lucia','LCA',662),('PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666),('VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670),('WS','SAMOA','Samoa','WSM',882),('SM','SAN MARINO','San Marino','SMR',674),('ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678),('SA','SAUDI ARABIA','Saudi Arabia','SAU',682),('SN','SENEGAL','Senegal','SEN',686),('CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL),('SC','SEYCHELLES','Seychelles','SYC',690),('SL','SIERRA LEONE','Sierra Leone','SLE',694),('SG','SINGAPORE','Singapore','SGP',702),('SK','SLOVAKIA','Slovakia','SVK',703),('SI','SLOVENIA','Slovenia','SVN',705),('SB','SOLOMON ISLANDS','Solomon Islands','SLB',90),('SO','SOMALIA','Somalia','SOM',706),('ZA','SOUTH AFRICA','South Africa','ZAF',710),('GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL),('ES','SPAIN','Spain','ESP',724),('LK','SRI LANKA','Sri Lanka','LKA',144),('SD','SUDAN','Sudan','SDN',736),('SR','SURINAME','Suriname','SUR',740),('SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744),('SZ','SWAZILAND','Swaziland','SWZ',748),('SE','SWEDEN','Sweden','SWE',752),('CH','SWITZERLAND','Switzerland','CHE',756),('SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760),('TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158),('TJ','TAJIKISTAN','Tajikistan','TJK',762),('TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834),('TH','THAILAND','Thailand','THA',764),('TL','TIMOR-LESTE','Timor-Leste',NULL,NULL),('TG','TOGO','Togo','TGO',768),('TK','TOKELAU','Tokelau','TKL',772),('TO','TONGA','Tonga','TON',776),('TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780),('TN','TUNISIA','Tunisia','TUN',788),('TR','TURKEY','Turkey','TUR',792),('TM','TURKMENISTAN','Turkmenistan','TKM',795),('TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796),('TV','TUVALU','Tuvalu','TUV',798),('UG','UGANDA','Uganda','UGA',800),('UA','UKRAINE','Ukraine','UKR',804),('AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784),('GB','UNITED KINGDOM','United Kingdom','GBR',826),('US','UNITED STATES','United States','USA',840),('UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL),('UY','URUGUAY','Uruguay','URY',858),('UZ','UZBEKISTAN','Uzbekistan','UZB',860),('VU','VANUATU','Vanuatu','VUT',548),('VE','VENEZUELA','Venezuela','VEN',862),('VN','VIET NAM','Viet Nam','VNM',704),('VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92),('VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850),('WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876),('EH','WESTERN SAHARA','Western Sahara','ESH',732),('YE','YEMEN','Yemen','YEM',887),('ZM','ZAMBIA','Zambia','ZMB',894),('ZW','ZIMBABWE','Zimbabwe','ZWE',716);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron`
--

DROP TABLE IF EXISTS `cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_domain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `type` enum('url','chrooted','full') NOT NULL DEFAULT 'url',
  `command` text NOT NULL,
  `run_min` varchar(100) DEFAULT NULL,
  `run_hour` varchar(100) DEFAULT NULL,
  `run_mday` varchar(100) DEFAULT NULL,
  `run_month` varchar(100) DEFAULT NULL,
  `run_wday` varchar(100) DEFAULT NULL,
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron`
--

LOCK TABLES `cron` WRITE;
/*!40000 ALTER TABLE `cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directive_snippets`
--

DROP TABLE IF EXISTS `directive_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directive_snippets` (
  `directive_snippets_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `snippet` mediumtext,
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`directive_snippets_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directive_snippets`
--

LOCK TABLES `directive_snippets` WRITE;
/*!40000 ALTER TABLE `directive_snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `directive_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_rr`
--

DROP TABLE IF EXISTS `dns_rr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_rr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL,
  `sys_groupid` int(11) unsigned NOT NULL,
  `sys_perm_user` varchar(5) NOT NULL,
  `sys_perm_group` varchar(5) NOT NULL,
  `sys_perm_other` varchar(5) NOT NULL,
  `server_id` int(11) NOT NULL DEFAULT '1',
  `zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` enum('A','AAAA','ALIAS','CNAME','HINFO','MX','NAPTR','NS','PTR','RP','SRV','TXT') DEFAULT NULL,
  `data` varchar(255) NOT NULL,
  `aux` int(11) unsigned NOT NULL DEFAULT '0',
  `ttl` int(11) unsigned NOT NULL DEFAULT '86400',
  `active` enum('N','Y') NOT NULL DEFAULT 'Y',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `serial` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rr` (`zone`,`name`,`type`,`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_rr`
--

LOCK TABLES `dns_rr` WRITE;
/*!40000 ALTER TABLE `dns_rr` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_rr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_slave`
--

DROP TABLE IF EXISTS `dns_slave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_slave` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL,
  `sys_groupid` int(11) unsigned NOT NULL,
  `sys_perm_user` varchar(5) NOT NULL,
  `sys_perm_group` varchar(5) NOT NULL,
  `sys_perm_other` varchar(5) NOT NULL,
  `server_id` int(11) NOT NULL DEFAULT '1',
  `origin` varchar(255) NOT NULL,
  `ns` varchar(255) NOT NULL,
  `active` enum('N','Y') NOT NULL,
  `xfer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slave` (`origin`,`server_id`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_slave`
--

LOCK TABLES `dns_slave` WRITE;
/*!40000 ALTER TABLE `dns_slave` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_slave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_soa`
--

DROP TABLE IF EXISTS `dns_soa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_soa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL,
  `sys_groupid` int(11) unsigned NOT NULL,
  `sys_perm_user` varchar(5) NOT NULL,
  `sys_perm_group` varchar(5) NOT NULL,
  `sys_perm_other` varchar(5) NOT NULL,
  `server_id` int(11) NOT NULL DEFAULT '1',
  `origin` varchar(255) NOT NULL,
  `ns` varchar(255) NOT NULL,
  `mbox` varchar(255) NOT NULL,
  `serial` int(11) unsigned NOT NULL DEFAULT '1',
  `refresh` int(11) unsigned NOT NULL DEFAULT '28800',
  `retry` int(11) unsigned NOT NULL DEFAULT '7200',
  `expire` int(11) unsigned NOT NULL DEFAULT '604800',
  `minimum` int(11) unsigned NOT NULL DEFAULT '86400',
  `ttl` int(11) unsigned NOT NULL DEFAULT '86400',
  `active` enum('N','Y') NOT NULL,
  `xfer` varchar(255) NOT NULL,
  `also_notify` varchar(255) DEFAULT NULL,
  `update_acl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `origin` (`origin`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_soa`
--

LOCK TABLES `dns_soa` WRITE;
/*!40000 ALTER TABLE `dns_soa` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_soa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_template`
--

DROP TABLE IF EXISTS `dns_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_template` (
  `template_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `fields` varchar(255) DEFAULT NULL,
  `template` text,
  `visible` enum('N','Y') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_template`
--

LOCK TABLES `dns_template` WRITE;
/*!40000 ALTER TABLE `dns_template` DISABLE KEYS */;
INSERT INTO `dns_template` VALUES (1,1,1,'riud','riud','','Default','DOMAIN,IP,NS1,NS2,EMAIL','[ZONE]\norigin={DOMAIN}.\nns={NS1}.\nmbox={EMAIL}.\nrefresh=7200\nretry=540\nexpire=604800\nminimum=86400\nttl=3600\n\n[DNS_RECORDS]\nA|{DOMAIN}.|{IP}|0|3600\nA|www|{IP}|0|3600\nA|mail|{IP}|0|3600\nNS|{DOMAIN}.|{NS1}.|0|3600\nNS|{DOMAIN}.|{NS2}.|0|3600\nMX|{DOMAIN}.|mail.{DOMAIN}.|10|3600','Y');
/*!40000 ALTER TABLE `dns_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain` (
  `domain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_group` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_other` varchar(5) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`domain_id`),
  UNIQUE KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain`
--

LOCK TABLES `domain` WRITE;
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firewall`
--

DROP TABLE IF EXISTS `firewall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firewall` (
  `firewall_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `tcp_port` varchar(255) DEFAULT NULL,
  `udp_port` varchar(255) DEFAULT NULL,
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`firewall_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firewall`
--

LOCK TABLES `firewall` WRITE;
/*!40000 ALTER TABLE `firewall` DISABLE KEYS */;
/*!40000 ALTER TABLE `firewall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ftp_user`
--

DROP TABLE IF EXISTS `ftp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ftp_user` (
  `ftp_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_domain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `username_prefix` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(64) DEFAULT NULL,
  `quota_size` bigint(20) NOT NULL DEFAULT '-1',
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  `uid` varchar(64) DEFAULT NULL,
  `gid` varchar(64) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `quota_files` bigint(20) NOT NULL DEFAULT '-1',
  `ul_ratio` int(11) NOT NULL DEFAULT '-1',
  `dl_ratio` int(11) NOT NULL DEFAULT '-1',
  `ul_bandwidth` int(11) NOT NULL DEFAULT '-1',
  `dl_bandwidth` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`ftp_user_id`),
  KEY `active` (`active`),
  KEY `server_id` (`server_id`),
  KEY `username` (`username`),
  KEY `quota_files` (`quota_files`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ftp_user`
--

LOCK TABLES `ftp_user` WRITE;
/*!40000 ALTER TABLE `ftp_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ftp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_faq`
--

DROP TABLE IF EXISTS `help_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_faq` (
  `hf_id` int(11) NOT NULL AUTO_INCREMENT,
  `hf_section` int(11) DEFAULT NULL,
  `hf_order` int(11) DEFAULT '0',
  `hf_question` text,
  `hf_answer` text,
  `sys_userid` int(11) DEFAULT NULL,
  `sys_groupid` int(11) DEFAULT NULL,
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`hf_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_faq`
--

LOCK TABLES `help_faq` WRITE;
/*!40000 ALTER TABLE `help_faq` DISABLE KEYS */;
INSERT INTO `help_faq` VALUES (1,1,0,'I would like to know ...','Yes, of course.',1,1,'riud','riud','r');
/*!40000 ALTER TABLE `help_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_faq_sections`
--

DROP TABLE IF EXISTS `help_faq_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_faq_sections` (
  `hfs_id` int(11) NOT NULL AUTO_INCREMENT,
  `hfs_name` varchar(255) DEFAULT NULL,
  `hfs_order` int(11) DEFAULT '0',
  `sys_userid` int(11) DEFAULT NULL,
  `sys_groupid` int(11) DEFAULT NULL,
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`hfs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_faq_sections`
--

LOCK TABLES `help_faq_sections` WRITE;
/*!40000 ALTER TABLE `help_faq_sections` DISABLE KEYS */;
INSERT INTO `help_faq_sections` VALUES (1,'General',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `help_faq_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iptables`
--

DROP TABLE IF EXISTS `iptables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iptables` (
  `iptables_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(10) unsigned NOT NULL DEFAULT '0',
  `table` varchar(10) DEFAULT NULL COMMENT 'INPUT OUTPUT FORWARD',
  `source_ip` varchar(16) DEFAULT NULL,
  `destination_ip` varchar(16) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT 'TCP' COMMENT 'TCP UDP GRE',
  `singleport` varchar(10) DEFAULT NULL,
  `multiport` varchar(40) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL COMMENT 'NEW ESTABLISHED RECNET etc',
  `target` varchar(10) DEFAULT NULL COMMENT 'ACCEPT DROP REJECT LOG',
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`iptables_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iptables`
--

LOCK TABLES `iptables` WRITE;
/*!40000 ALTER TABLE `iptables` DISABLE KEYS */;
/*!40000 ALTER TABLE `iptables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_access`
--

DROP TABLE IF EXISTS `mail_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_access` (
  `access_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_group` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_other` varchar(5) NOT NULL DEFAULT '',
  `server_id` int(11) NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL,
  `type` set('recipient','sender','client') NOT NULL,
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`access_id`),
  KEY `server_id` (`server_id`,`source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_access`
--

LOCK TABLES `mail_access` WRITE;
/*!40000 ALTER TABLE `mail_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_content_filter`
--

DROP TABLE IF EXISTS `mail_content_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_content_filter` (
  `content_filter_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `pattern` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `active` varchar(255) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`content_filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_content_filter`
--

LOCK TABLES `mail_content_filter` WRITE;
/*!40000 ALTER TABLE `mail_content_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_content_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_domain`
--

DROP TABLE IF EXISTS `mail_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_domain` (
  `domain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_group` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_other` varchar(5) NOT NULL DEFAULT '',
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `active` enum('n','y') NOT NULL,
  PRIMARY KEY (`domain_id`),
  KEY `server_id` (`server_id`,`domain`),
  KEY `domain_active` (`domain`,`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_domain`
--

LOCK TABLES `mail_domain` WRITE;
/*!40000 ALTER TABLE `mail_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_forwarding`
--

DROP TABLE IF EXISTS `mail_forwarding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_forwarding` (
  `forwarding_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_group` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_other` varchar(5) NOT NULL DEFAULT '',
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL,
  `destination` text,
  `type` enum('alias','aliasdomain','forward','catchall') NOT NULL DEFAULT 'alias',
  `active` enum('n','y') NOT NULL,
  PRIMARY KEY (`forwarding_id`),
  KEY `server_id` (`server_id`,`source`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_forwarding`
--

LOCK TABLES `mail_forwarding` WRITE;
/*!40000 ALTER TABLE `mail_forwarding` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_forwarding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_get`
--

DROP TABLE IF EXISTS `mail_get`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_get` (
  `mailget_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `source_server` varchar(255) DEFAULT NULL,
  `source_username` varchar(255) DEFAULT NULL,
  `source_password` varchar(64) DEFAULT NULL,
  `source_delete` varchar(255) NOT NULL DEFAULT 'y',
  `source_read_all` varchar(255) NOT NULL DEFAULT 'y',
  `destination` varchar(255) DEFAULT NULL,
  `active` varchar(255) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`mailget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_get`
--

LOCK TABLES `mail_get` WRITE;
/*!40000 ALTER TABLE `mail_get` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_get` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailinglist`
--

DROP TABLE IF EXISTS `mail_mailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailinglist` (
  `mailinglist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) NOT NULL,
  `sys_perm_group` varchar(5) NOT NULL,
  `sys_perm_other` varchar(5) NOT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `domain` varchar(255) NOT NULL,
  `listname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`mailinglist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailinglist`
--

LOCK TABLES `mail_mailinglist` WRITE;
/*!40000 ALTER TABLE `mail_mailinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_relay_recipient`
--

DROP TABLE IF EXISTS `mail_relay_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_relay_recipient` (
  `relay_recipient_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) NOT NULL DEFAULT '0',
  `sys_groupid` int(11) NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `access` varchar(255) NOT NULL DEFAULT 'OK',
  `active` varchar(255) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`relay_recipient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_relay_recipient`
--

LOCK TABLES `mail_relay_recipient` WRITE;
/*!40000 ALTER TABLE `mail_relay_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_relay_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_traffic`
--

DROP TABLE IF EXISTS `mail_traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_traffic` (
  `traffic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mailuser_id` int(11) unsigned NOT NULL,
  `month` char(7) NOT NULL,
  `traffic` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`traffic_id`),
  KEY `mailuser_id` (`mailuser_id`,`month`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_traffic`
--

LOCK TABLES `mail_traffic` WRITE;
/*!40000 ALTER TABLE `mail_traffic` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_transport`
--

DROP TABLE IF EXISTS `mail_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_transport` (
  `transport_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_group` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_other` varchar(5) NOT NULL DEFAULT '',
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `transport` varchar(255) NOT NULL,
  `sort_order` int(11) unsigned NOT NULL DEFAULT '5',
  `active` enum('n','y') NOT NULL,
  PRIMARY KEY (`transport_id`),
  KEY `server_id` (`server_id`,`transport`),
  KEY `server_id_2` (`server_id`,`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_transport`
--

LOCK TABLES `mail_transport` WRITE;
/*!40000 ALTER TABLE `mail_transport` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_user`
--

DROP TABLE IF EXISTS `mail_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_user` (
  `mailuser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_group` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_other` varchar(5) NOT NULL DEFAULT '',
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `uid` int(11) unsigned NOT NULL DEFAULT '5000',
  `gid` int(11) unsigned NOT NULL DEFAULT '5000',
  `maildir` varchar(255) NOT NULL DEFAULT '',
  `quota` bigint(20) NOT NULL DEFAULT '-1',
  `cc` varchar(255) NOT NULL DEFAULT '',
  `homedir` varchar(255) NOT NULL,
  `autoresponder` enum('n','y') NOT NULL DEFAULT 'n',
  `autoresponder_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autoresponder_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autoresponder_subject` varchar(255) NOT NULL DEFAULT 'Out of office reply',
  `autoresponder_text` mediumtext,
  `move_junk` enum('n','y') NOT NULL DEFAULT 'n',
  `custom_mailfilter` mediumtext,
  `postfix` enum('n','y') NOT NULL,
  `access` enum('n','y') NOT NULL,
  `disableimap` enum('n','y') NOT NULL DEFAULT 'n',
  `disablepop3` enum('n','y') NOT NULL DEFAULT 'n',
  `disabledeliver` enum('n','y') NOT NULL DEFAULT 'n',
  `disablesmtp` enum('n','y') NOT NULL DEFAULT 'n',
  `disablesieve` enum('n','y') NOT NULL DEFAULT 'n',
  `disablelda` enum('n','y') NOT NULL DEFAULT 'n',
  `disabledoveadm` enum('n','y') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`mailuser_id`),
  KEY `server_id` (`server_id`,`email`),
  KEY `email_access` (`email`,`access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_user`
--

LOCK TABLES `mail_user` WRITE;
/*!40000 ALTER TABLE `mail_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_user_filter`
--

DROP TABLE IF EXISTS `mail_user_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_user_filter` (
  `filter_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `mailuser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `rulename` varchar(64) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `searchterm` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_user_filter`
--

LOCK TABLES `mail_user_filter` WRITE;
/*!40000 ALTER TABLE `mail_user_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_user_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitor_data`
--

DROP TABLE IF EXISTS `monitor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monitor_data` (
  `server_id` int(11) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `state` enum('no_state','unknown','ok','info','warning','critical','error') NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`server_id`,`type`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitor_data`
--

LOCK TABLES `monitor_data` WRITE;
/*!40000 ALTER TABLE `monitor_data` DISABLE KEYS */;
INSERT INTO `monitor_data` VALUES (1,'log_clamav',1367076901,'s:6260:\"Sat Apr 27 15:00:01 2013 -> Pid file removed.\nSat Apr 27 15:00:01 2013 -> --- Stopped at Sat Apr 27 15:00:01 2013\nSat Apr 27 15:00:01 2013 -> Socket file removed.\nSat Apr 27 15:00:10 2013 -> +++ Started at Sat Apr 27 15:00:10 2013\nSat Apr 27 15:00:10 2013 -> clamd daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 15:00:10 2013 -> Log file size limited to -1 bytes.\nSat Apr 27 15:00:10 2013 -> Reading databases from /var/lib/clamav\nSat Apr 27 15:00:10 2013 -> Not loading PUA signatures.\nSat Apr 27 15:00:10 2013 -> Bytecode: Security mode set to \"TrustSigned\".\nSat Apr 27 15:00:15 2013 -> Loaded 2204737 signatures.\nSat Apr 27 15:00:16 2013 -> LOCAL: Unix socket file /var/run/clamav/clamd.ctl\nSat Apr 27 15:00:16 2013 -> LOCAL: Setting connection queue length to 15\nSat Apr 27 15:00:16 2013 -> Limits: Global size limit set to 104857600 bytes.\nSat Apr 27 15:00:16 2013 -> Limits: File size limit set to 26214400 bytes.\nSat Apr 27 15:00:16 2013 -> Limits: Recursion level limit set to 16.\nSat Apr 27 15:00:16 2013 -> Limits: Files limit set to 10000.\nSat Apr 27 15:00:16 2013 -> Archive support enabled.\nSat Apr 27 15:00:16 2013 -> Algorithmic detection enabled.\nSat Apr 27 15:00:16 2013 -> Portable Executable support enabled.\nSat Apr 27 15:00:16 2013 -> ELF support enabled.\nSat Apr 27 15:00:16 2013 -> Mail files support enabled.\nSat Apr 27 15:00:16 2013 -> OLE2 support enabled.\nSat Apr 27 15:00:16 2013 -> PDF support enabled.\nSat Apr 27 15:00:16 2013 -> HTML support enabled.\nSat Apr 27 15:00:16 2013 -> Self checking every 3600 seconds.\nSat Apr 27 15:01:17 2013 -> Pid file removed.\nSat Apr 27 15:01:17 2013 -> --- Stopped at Sat Apr 27 15:01:17 2013\nSat Apr 27 15:01:17 2013 -> Socket file removed.\nSat Apr 27 15:01:18 2013 -> +++ Started at Sat Apr 27 15:01:18 2013\nSat Apr 27 15:01:18 2013 -> clamd daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 15:01:18 2013 -> Log file size limited to -1 bytes.\nSat Apr 27 15:01:18 2013 -> Reading databases from /var/lib/clamav\nSat Apr 27 15:01:18 2013 -> Not loading PUA signatures.\nSat Apr 27 15:01:18 2013 -> Bytecode: Security mode set to \"TrustSigned\".\nSat Apr 27 15:01:23 2013 -> Loaded 2204737 signatures.\nSat Apr 27 15:01:24 2013 -> LOCAL: Unix socket file /var/run/clamav/clamd.ctl\nSat Apr 27 15:01:24 2013 -> LOCAL: Setting connection queue length to 15\nSat Apr 27 15:01:24 2013 -> Limits: Global size limit set to 104857600 bytes.\nSat Apr 27 15:01:24 2013 -> Limits: File size limit set to 26214400 bytes.\nSat Apr 27 15:01:24 2013 -> Limits: Recursion level limit set to 16.\nSat Apr 27 15:01:24 2013 -> Limits: Files limit set to 10000.\nSat Apr 27 15:01:24 2013 -> Archive support enabled.\nSat Apr 27 15:01:24 2013 -> Algorithmic detection enabled.\nSat Apr 27 15:01:24 2013 -> Portable Executable support enabled.\nSat Apr 27 15:01:24 2013 -> ELF support enabled.\nSat Apr 27 15:01:24 2013 -> Mail files support enabled.\nSat Apr 27 15:01:24 2013 -> OLE2 support enabled.\nSat Apr 27 15:01:24 2013 -> PDF support enabled.\nSat Apr 27 15:01:24 2013 -> HTML support enabled.\nSat Apr 27 15:01:24 2013 -> Self checking every 3600 seconds.\nSat Apr 27 15:02:33 2013 -> Pid file removed.\nSat Apr 27 15:02:33 2013 -> --- Stopped at Sat Apr 27 15:02:33 2013\nSat Apr 27 15:02:33 2013 -> Socket file removed.\nSat Apr 27 15:09:17 2013 -> +++ Started at Sat Apr 27 15:09:17 2013\nSat Apr 27 15:09:17 2013 -> clamd daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 15:09:17 2013 -> Log file size limited to -1 bytes.\nSat Apr 27 15:09:17 2013 -> Reading databases from /var/lib/clamav\nSat Apr 27 15:09:17 2013 -> Not loading PUA signatures.\nSat Apr 27 15:09:17 2013 -> Bytecode: Security mode set to \"TrustSigned\".\nSat Apr 27 15:09:23 2013 -> Loaded 2204737 signatures.\nSat Apr 27 15:09:24 2013 -> LOCAL: Unix socket file /var/run/clamav/clamd.ctl\nSat Apr 27 15:09:24 2013 -> LOCAL: Setting connection queue length to 15\nSat Apr 27 15:09:24 2013 -> Limits: Global size limit set to 104857600 bytes.\nSat Apr 27 15:09:24 2013 -> Limits: File size limit set to 26214400 bytes.\nSat Apr 27 15:09:24 2013 -> Limits: Recursion level limit set to 16.\nSat Apr 27 15:09:24 2013 -> Limits: Files limit set to 10000.\nSat Apr 27 15:09:24 2013 -> Archive support enabled.\nSat Apr 27 15:09:24 2013 -> Algorithmic detection enabled.\nSat Apr 27 15:09:24 2013 -> Portable Executable support enabled.\nSat Apr 27 15:09:24 2013 -> ELF support enabled.\nSat Apr 27 15:09:24 2013 -> Mail files support enabled.\nSat Apr 27 15:09:24 2013 -> OLE2 support enabled.\nSat Apr 27 15:09:24 2013 -> PDF support enabled.\nSat Apr 27 15:09:24 2013 -> HTML support enabled.\nSat Apr 27 15:09:24 2013 -> Self checking every 3600 seconds.\nSat Apr 27 15:28:31 2013 -> Pid file removed.\nSat Apr 27 15:28:31 2013 -> --- Stopped at Sat Apr 27 15:28:31 2013\nSat Apr 27 15:28:31 2013 -> Socket file removed.\nSat Apr 27 15:28:42 2013 -> +++ Started at Sat Apr 27 15:28:42 2013\nSat Apr 27 15:28:42 2013 -> clamd daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 15:28:42 2013 -> Log file size limited to -1 bytes.\nSat Apr 27 15:28:42 2013 -> Reading databases from /var/lib/clamav\nSat Apr 27 15:28:42 2013 -> Not loading PUA signatures.\nSat Apr 27 15:28:42 2013 -> Bytecode: Security mode set to \"TrustSigned\".\nSat Apr 27 15:28:48 2013 -> Loaded 2204737 signatures.\nSat Apr 27 15:28:49 2013 -> LOCAL: Unix socket file /var/run/clamav/clamd.ctl\nSat Apr 27 15:28:49 2013 -> LOCAL: Setting connection queue length to 15\nSat Apr 27 15:28:49 2013 -> Limits: Global size limit set to 104857600 bytes.\nSat Apr 27 15:28:49 2013 -> Limits: File size limit set to 26214400 bytes.\nSat Apr 27 15:28:49 2013 -> Limits: Recursion level limit set to 16.\nSat Apr 27 15:28:49 2013 -> Limits: Files limit set to 10000.\nSat Apr 27 15:28:49 2013 -> Archive support enabled.\nSat Apr 27 15:28:49 2013 -> Algorithmic detection enabled.\nSat Apr 27 15:28:49 2013 -> Portable Executable support enabled.\nSat Apr 27 15:28:49 2013 -> ELF support enabled.\nSat Apr 27 15:28:49 2013 -> Mail files support enabled.\nSat Apr 27 15:28:49 2013 -> OLE2 support enabled.\nSat Apr 27 15:28:49 2013 -> PDF support enabled.\nSat Apr 27 15:28:49 2013 -> HTML support enabled.\nSat Apr 27 15:28:49 2013 -> Self checking every 3600 seconds.\n\";','ok'),(1,'mailq',1367076901,'a:3:{s:6:\"output\";s:20:\"Mail queue is empty\n\";s:5:\"bytes\";N;s:8:\"requests\";N;}','ok'),(1,'raid_state',1367076901,'a:1:{s:6:\"output\";s:40:\"Personalities : \nunused devices: <none>\n\";}','ok'),(1,'sys_log',1367076901,'a:1:{s:6:\"output\";s:0:\"\";}','ok'),(1,'log_mail_warn',1367076901,'s:33:\"Unable to read /var/log/mail.warn\";','no_state'),(1,'os_info',1367076901,'a:2:{s:4:\"name\";s:6:\"Ubuntu\";s:7:\"version\";s:28:\"12.04 LTS (Precise Pangolin)\";}','no_state'),(1,'log_fail2ban',1367076901,'s:0:\"\";','no_state'),(1,'harddisk_quota',1367076901,'a:0:{}','ok'),(1,'server_load',1367076901,'a:8:{s:7:\"up_days\";d:0;s:8:\"up_hours\";d:0;s:10:\"up_minutes\";d:6;s:6:\"uptime\";s:61:\" 15:35:01 up 6 min,  1 user,  load average: 0.06, 0.12, 0.07\n\";s:11:\"user_online\";i:0;s:6:\"load_1\";d:0.059999999999999998;s:6:\"load_5\";d:0.12;s:7:\"load_15\";d:0.070000000000000007;}','ok'),(1,'ispc_info',1367076901,'a:2:{s:4:\"name\";s:9:\"ISPConfig\";s:7:\"version\";s:7:\"3.0.5.2\";}','no_state'),(1,'cpu_info',1367076901,'a:48:{s:11:\"processor 0\";s:1:\"0\";s:11:\"vendor_id 0\";s:12:\"GenuineIntel\";s:12:\"cpu family 0\";s:1:\"6\";s:7:\"model 0\";s:2:\"42\";s:12:\"model name 0\";s:40:\"Intel(R) Core(TM) i5-2450M CPU @ 2.50GHz\";s:10:\"stepping 0\";s:1:\"7\";s:9:\"cpu MHz 0\";s:8:\"2460.868\";s:12:\"cache size 0\";s:7:\"6144 KB\";s:13:\"physical id 0\";s:1:\"0\";s:10:\"siblings 0\";s:1:\"2\";s:9:\"core id 0\";s:1:\"0\";s:11:\"cpu cores 0\";s:1:\"2\";s:8:\"apicid 0\";s:1:\"0\";s:16:\"initial apicid 0\";s:1:\"0\";s:5:\"fpu 0\";s:3:\"yes\";s:15:\"fpu_exception 0\";s:3:\"yes\";s:13:\"cpuid level 0\";s:1:\"5\";s:4:\"wp 0\";s:3:\"yes\";s:7:\"flags 0\";s:166:\"fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx rdtscp lm constant_tsc rep_good nopl pni ssse3 lahf_lm\";s:10:\"bogomips 0\";s:7:\"4921.73\";s:14:\"clflush size 0\";s:2:\"64\";s:17:\"cache_alignment 0\";s:2:\"64\";s:15:\"address sizes 0\";s:33:\"36 bits physical, 48 bits virtual\";s:18:\"power management 0\";s:0:\"\";s:11:\"processor 1\";s:1:\"1\";s:11:\"vendor_id 1\";s:12:\"GenuineIntel\";s:12:\"cpu family 1\";s:1:\"6\";s:7:\"model 1\";s:2:\"42\";s:12:\"model name 1\";s:40:\"Intel(R) Core(TM) i5-2450M CPU @ 2.50GHz\";s:10:\"stepping 1\";s:1:\"7\";s:9:\"cpu MHz 1\";s:8:\"2460.868\";s:12:\"cache size 1\";s:7:\"6144 KB\";s:13:\"physical id 1\";s:1:\"0\";s:10:\"siblings 1\";s:1:\"2\";s:9:\"core id 1\";s:1:\"1\";s:11:\"cpu cores 1\";s:1:\"2\";s:8:\"apicid 1\";s:1:\"1\";s:16:\"initial apicid 1\";s:1:\"1\";s:5:\"fpu 1\";s:3:\"yes\";s:15:\"fpu_exception 1\";s:3:\"yes\";s:13:\"cpuid level 1\";s:1:\"5\";s:4:\"wp 1\";s:3:\"yes\";s:7:\"flags 1\";s:166:\"fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx rdtscp lm constant_tsc rep_good nopl pni ssse3 lahf_lm\";s:10:\"bogomips 1\";s:7:\"4932.77\";s:14:\"clflush size 1\";s:2:\"64\";s:17:\"cache_alignment 1\";s:2:\"64\";s:15:\"address sizes 1\";s:33:\"36 bits physical, 48 bits virtual\";s:18:\"power management 1\";s:0:\"\";}','no_state'),(1,'log_mail',1367076901,'s:7344:\"Apr 27 14:46:40 precise64 postfix/master[5760]: daemon started -- version 2.9.6, configuration /etc/postfix\nApr 27 14:48:13 precise64 authdaemond: modules=\"authpam\", daemons=5\nApr 27 14:48:13 precise64 authdaemond: Installing libauthpam\nApr 27 14:48:13 precise64 authdaemond: Installation complete: authpam\nApr 27 14:48:15 precise64 authdaemond: stopping authdaemond children\nApr 27 14:48:15 precise64 authdaemond: restarting authdaemond children\nApr 27 14:48:15 precise64 authdaemond: modules=\"authpam\", daemons=5\nApr 27 14:48:15 precise64 authdaemond: Uninstalling authpam\nApr 27 14:48:15 precise64 authdaemond: Installing libauthpam\nApr 27 14:48:15 precise64 authdaemond: Installation complete: authpam\nApr 27 14:49:23 precise64 amavis[31495]: starting.  /usr/sbin/amavisd-new at precise64 amavisd-new-2.6.5 (20110407), Unicode aware, LC_ALL=\"en_US\"\nApr 27 14:49:23 precise64 amavis[31495]: Perl version               5.014002\nApr 27 14:53:33 precise64 postfix/pickup[5761]: E10C63A0A95: uid=0 from=<root>\nApr 27 14:53:33 precise64 postfix/cleanup[15562]: E10C63A0A95: message-id=<20130427145333.E10C63A0A95@precise64>\nApr 27 14:53:33 precise64 postfix/qmgr[5762]: E10C63A0A95: from=<root@precise64>, size=3052, nrcpt=1 (queue active)\nApr 27 14:53:33 precise64 postfix/local[15566]: E10C63A0A95: to=<root@precise64>, orig_to=<root>, relay=local, delay=0.1, delays=0.08/0/0/0.01, dsn=2.0.0, status=sent (delivered to mailbox)\nApr 27 14:53:33 precise64 postfix/qmgr[5762]: E10C63A0A95: removed\nApr 27 14:56:41 precise64 amavis[861]: starting.  /usr/sbin/amavisd-new at precise64 amavisd-new-2.6.5 (20110407), Unicode aware\nApr 27 14:56:41 precise64 amavis[861]: Perl version               5.014002\nApr 27 14:56:49 precise64 authdaemond: modules=\"authpam\", daemons=5\nApr 27 14:56:49 precise64 authdaemond: Installing libauthpam\nApr 27 14:56:49 precise64 authdaemond: Installation complete: authpam\nApr 27 14:56:50 precise64 postfix/master[1576]: daemon started -- version 2.9.6, configuration /etc/postfix\nApr 27 15:00:10 precise64 amavis[856]: starting.  /usr/sbin/amavisd-new at precise64 amavisd-new-2.6.5 (20110407), Unicode aware\nApr 27 15:00:10 precise64 amavis[856]: Perl version               5.014002\nApr 27 15:00:17 precise64 authdaemond: modules=\"authpam\", daemons=5\nApr 27 15:00:17 precise64 authdaemond: Installing libauthpam\nApr 27 15:00:17 precise64 authdaemond: Installation complete: authpam\nApr 27 15:00:18 precise64 postfix/master[1581]: daemon started -- version 2.9.6, configuration /etc/postfix\nApr 27 15:01:12 precise64 postfix/master[1581]: terminating on signal 15\nApr 27 15:01:13 precise64 postfix/master[3214]: daemon started -- version 2.9.6, configuration /etc/postfix\nApr 27 15:01:14 precise64 amavis[3258]: starting.  /usr/sbin/amavisd-new at precise64 amavisd-new-2.6.5 (20110407), Unicode aware, LC_ALL=\"C\"\nApr 27 15:01:14 precise64 amavis[3258]: Perl version               5.014002\nApr 27 15:01:27 precise64 authdaemond: stopping authdaemond children\nApr 27 15:01:27 precise64 authdaemond: modules=\"authmysql\", daemons=5\nApr 27 15:01:27 precise64 authdaemond: Installing libauthmysql\nApr 27 15:01:27 precise64 authdaemond: Installation complete: authmysql\nApr 27 15:09:17 precise64 amavis[850]: starting.  /usr/sbin/amavisd-new at precise64 amavisd-new-2.6.5 (20110407), Unicode aware\nApr 27 15:09:17 precise64 amavis[850]: Perl version               5.014002\nApr 27 15:09:25 precise64 authdaemond: modules=\"authmysql\", daemons=5\nApr 27 15:09:25 precise64 authdaemond: Installing libauthmysql\nApr 27 15:09:26 precise64 authdaemond: Installation complete: authmysql\nApr 27 15:09:26 precise64 postfix/master[1702]: daemon started -- version 2.9.6, configuration /etc/postfix\nApr 27 15:10:12 precise64 pop3d: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:10:12 precise64 pop3d: Disconnected, ip=[::ffff:127.0.0.1]\nApr 27 15:10:12 precise64 imapd: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:10:12 precise64 imapd: Disconnected, ip=[::ffff:127.0.0.1], time=0\nApr 27 15:10:12 precise64 postfix/smtpd[2299]: connect from localhost[127.0.0.1]\nApr 27 15:10:12 precise64 postfix/smtpd[2299]: lost connection after CONNECT from localhost[127.0.0.1]\nApr 27 15:10:12 precise64 postfix/smtpd[2299]: disconnect from localhost[127.0.0.1]\nApr 27 15:15:01 precise64 pop3d: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:15:01 precise64 pop3d: Disconnected, ip=[::ffff:127.0.0.1]\nApr 27 15:15:01 precise64 imapd: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:15:01 precise64 imapd: Disconnected, ip=[::ffff:127.0.0.1], time=0\nApr 27 15:15:01 precise64 postfix/smtpd[3212]: connect from localhost[127.0.0.1]\nApr 27 15:15:01 precise64 postfix/smtpd[3212]: lost connection after CONNECT from localhost[127.0.0.1]\nApr 27 15:15:01 precise64 postfix/smtpd[3212]: disconnect from localhost[127.0.0.1]\nApr 27 15:20:01 precise64 pop3d: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:20:01 precise64 pop3d: Disconnected, ip=[::ffff:127.0.0.1]\nApr 27 15:20:01 precise64 imapd: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:20:01 precise64 imapd: Disconnected, ip=[::ffff:127.0.0.1], time=0\nApr 27 15:20:01 precise64 postfix/smtpd[3310]: connect from localhost[127.0.0.1]\nApr 27 15:20:01 precise64 postfix/smtpd[3310]: lost connection after CONNECT from localhost[127.0.0.1]\nApr 27 15:20:01 precise64 postfix/smtpd[3310]: disconnect from localhost[127.0.0.1]\nApr 27 15:25:01 precise64 imapd: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:25:01 precise64 imapd: Disconnected, ip=[::ffff:127.0.0.1], time=0\nApr 27 15:25:01 precise64 pop3d: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:25:01 precise64 pop3d: Disconnected, ip=[::ffff:127.0.0.1]\nApr 27 15:25:01 precise64 postfix/smtpd[3401]: connect from localhost[127.0.0.1]\nApr 27 15:25:01 precise64 postfix/smtpd[3401]: lost connection after CONNECT from localhost[127.0.0.1]\nApr 27 15:25:01 precise64 postfix/smtpd[3401]: disconnect from localhost[127.0.0.1]\nApr 27 15:28:42 precise64 amavis[913]: starting.  /usr/sbin/amavisd-new at precise64 amavisd-new-2.6.5 (20110407), Unicode aware\nApr 27 15:28:42 precise64 amavis[913]: Perl version               5.014002\nApr 27 15:28:50 precise64 authdaemond: modules=\"authmysql\", daemons=5\nApr 27 15:28:50 precise64 authdaemond: Installing libauthmysql\nApr 27 15:28:50 precise64 authdaemond: Installation complete: authmysql\nApr 27 15:28:51 precise64 postfix/master[1772]: daemon started -- version 2.9.6, configuration /etc/postfix\nApr 27 15:29:04 precise64 postfix/master[1772]: reload -- version 2.9.6, configuration /etc/postfix\nApr 27 15:30:01 precise64 pop3d: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:30:01 precise64 pop3d: Disconnected, ip=[::ffff:127.0.0.1]\nApr 27 15:30:01 precise64 imapd: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:30:01 precise64 imapd: Disconnected, ip=[::ffff:127.0.0.1], time=0\nApr 27 15:30:01 precise64 postfix/smtpd[2778]: connect from localhost[127.0.0.1]\nApr 27 15:30:01 precise64 postfix/smtpd[2778]: lost connection after CONNECT from localhost[127.0.0.1]\nApr 27 15:30:01 precise64 postfix/smtpd[2778]: disconnect from localhost[127.0.0.1]\nApr 27 15:35:01 precise64 pop3d: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:35:01 precise64 pop3d: Disconnected, ip=[::ffff:127.0.0.1]\nApr 27 15:35:01 precise64 imapd: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:35:01 precise64 imapd: Disconnected, ip=[::ffff:127.0.0.1], time=0\n\";','no_state'),(1,'log_mail_err',1367076901,'s:0:\"\";','no_state'),(1,'iptables_rules',1367076901,'a:1:{s:6:\"output\";s:161:\"<h2>iptables -S (ipv4)</h2>-P INPUT ACCEPT\n-P FORWARD ACCEPT\n-P OUTPUT ACCEPT\n<br><h2>ip6tables -S (ipv6)</h2>-P INPUT ACCEPT\n-P FORWARD ACCEPT\n-P OUTPUT ACCEPT\n\";}','no_state'),(1,'email_quota',1367076601,'a:0:{}','ok'),(1,'disk_usage',1367076901,'a:8:{i:1;a:7:{s:2:\"fs\";s:26:\"/dev/mapper/precise64-root\";s:4:\"type\";s:4:\"ext4\";s:4:\"size\";s:3:\"79G\";s:4:\"used\";s:4:\"2.9G\";s:9:\"available\";s:3:\"73G\";s:7:\"percent\";s:2:\"4%\";s:7:\"mounted\";s:1:\"/\";}i:2;a:7:{s:2:\"fs\";s:4:\"udev\";s:4:\"type\";s:8:\"devtmpfs\";s:4:\"size\";s:4:\"174M\";s:4:\"used\";s:3:\"12K\";s:9:\"available\";s:4:\"174M\";s:7:\"percent\";s:2:\"1%\";s:7:\"mounted\";s:4:\"/dev\";}i:3;a:7:{s:2:\"fs\";s:5:\"tmpfs\";s:4:\"type\";s:5:\"tmpfs\";s:4:\"size\";s:3:\"74M\";s:4:\"used\";s:4:\"328K\";s:9:\"available\";s:3:\"73M\";s:7:\"percent\";s:2:\"1%\";s:7:\"mounted\";s:4:\"/run\";}i:4;a:7:{s:2:\"fs\";s:4:\"none\";s:4:\"type\";s:5:\"tmpfs\";s:4:\"size\";s:4:\"5.0M\";s:4:\"used\";s:1:\"0\";s:9:\"available\";s:4:\"5.0M\";s:7:\"percent\";s:2:\"0%\";s:7:\"mounted\";s:9:\"/run/lock\";}i:5;a:7:{s:2:\"fs\";s:4:\"none\";s:4:\"type\";s:5:\"tmpfs\";s:4:\"size\";s:4:\"183M\";s:4:\"used\";s:1:\"0\";s:9:\"available\";s:4:\"183M\";s:7:\"percent\";s:2:\"0%\";s:7:\"mounted\";s:8:\"/run/shm\";}i:6;a:7:{s:2:\"fs\";s:9:\"/dev/sda1\";s:4:\"type\";s:4:\"ext2\";s:4:\"size\";s:4:\"228M\";s:4:\"used\";s:3:\"25M\";s:9:\"available\";s:4:\"192M\";s:7:\"percent\";s:3:\"12%\";s:7:\"mounted\";s:5:\"/boot\";}i:7;a:7:{s:2:\"fs\";s:8:\"/vagrant\";s:4:\"type\";s:6:\"vboxsf\";s:4:\"size\";s:4:\"227G\";s:4:\"used\";s:3:\"54G\";s:9:\"available\";s:4:\"174G\";s:7:\"percent\";s:3:\"24%\";s:7:\"mounted\";s:8:\"/vagrant\";}i:8;a:7:{s:2:\"fs\";s:41:\"/tmp/vagrant-chef-1/chef-solo-1/cookbooks\";s:4:\"type\";s:6:\"vboxsf\";s:4:\"size\";s:4:\"227G\";s:4:\"used\";s:3:\"54G\";s:9:\"available\";s:4:\"174G\";s:7:\"percent\";s:3:\"24%\";s:7:\"mounted\";s:41:\"/tmp/vagrant-chef-1/chef-solo-1/cookbooks\";}}','ok'),(1,'log_messages',1367076901,'s:9235:\"Apr 27 15:28:41 precise64 named[871]: automatic empty zone: B.E.F.IP6.ARPA\nApr 27 15:28:41 precise64 named[871]: automatic empty zone: 8.B.D.0.1.0.0.2.IP6.ARPA\nApr 27 15:28:41 precise64 named[871]: command channel listening on 127.0.0.1#953\nApr 27 15:28:41 precise64 named[871]: command channel listening on ::1#953\nApr 27 15:28:41 precise64 named[871]: zone 0.in-addr.arpa/IN: loaded serial 1\nApr 27 15:28:41 precise64 named[871]: zone 127.in-addr.arpa/IN: loaded serial 1\nApr 27 15:28:41 precise64 named[871]: zone 255.in-addr.arpa/IN: loaded serial 1\nApr 27 15:28:41 precise64 named[871]: zone localhost/IN: loaded serial 2\nApr 27 15:28:41 precise64 named[871]: managed-keys-zone ./IN: loaded serial 2\nApr 27 15:28:41 precise64 named[871]: running\nApr 27 15:28:42 precise64 amavis[913]: starting.  /usr/sbin/amavisd-new at precise64 amavisd-new-2.6.5 (20110407), Unicode aware\nApr 27 15:28:42 precise64 amavis[913]: Perl version               5.014002\nApr 27 15:28:43 precise64 /etc/mysql/debian-start[1189]: Upgrading MySQL tables if necessary.\nApr 27 15:28:43 precise64 /etc/mysql/debian-start[1192]: /usr/bin/mysql_upgrade: the \'--basedir\' option is always ignored\nApr 27 15:28:43 precise64 /etc/mysql/debian-start[1192]: Looking for \'mysql\' as: /usr/bin/mysql\nApr 27 15:28:43 precise64 /etc/mysql/debian-start[1192]: Looking for \'mysqlcheck\' as: /usr/bin/mysqlcheck\nApr 27 15:28:43 precise64 /etc/mysql/debian-start[1192]: This installation of MySQL is already upgraded to 5.5.31, use --force if you still need to run mysql_upgrade\nApr 27 15:28:43 precise64 /etc/mysql/debian-start[1203]: Checking for insecure root accounts.\nApr 27 15:28:43 precise64 /etc/mysql/debian-start[1208]: WARNING: mysql.user contains 3 root accounts without password!\nApr 27 15:28:43 precise64 /etc/mysql/debian-start[1209]: Triggering myisam-recover for all MyISAM tables\nApr 27 15:28:49 precise64 kernel: [   14.532893] eth0: no IPv6 routers present\nApr 27 15:28:50 precise64 kernel: [   15.232162] eth1: no IPv6 routers present\nApr 27 15:28:50 precise64 authdaemond: modules=\"authmysql\", daemons=5\nApr 27 15:28:50 precise64 authdaemond: Installing libauthmysql\nApr 27 15:28:50 precise64 authdaemond: Installation complete: authmysql\nApr 27 15:28:51 precise64 postfix/master[1772]: daemon started -- version 2.9.6, configuration /etc/postfix\nApr 27 15:28:51 precise64 ntpd[1836]: ntpd 4.2.6p3@1.2290-o Tue Jun  5 20:12:08 UTC 2012 (1)\nApr 27 15:28:51 precise64 ntpd[1838]: proto: precision = 4.829 usec\nApr 27 15:28:51 precise64 ntpd[1838]: ntp_io: estimated max descriptors: 1024, initial socket boundary: 16\nApr 27 15:28:51 precise64 ntpd[1838]: unable to bind to wildcard address 0.0.0.0 - another process may be running - EXITING\nApr 27 15:28:51 precise64 kernel: [   16.377182] vboxsf: Successfully loaded version 4.2.0 (interface 0x00010004)\nApr 27 15:28:52 precise64 dhclient: DHCPREQUEST of 10.0.2.15 on eth0 to 255.255.255.255 port 67\nApr 27 15:28:52 precise64 dhclient: DHCPACK of 10.0.2.15 from 10.0.2.2\nApr 27 15:28:52 precise64 dhclient: bound to 10.0.2.15 -- renewal in 33564 seconds.\nApr 27 15:28:52 precise64 dhclient: DHCPDISCOVER on eth1 to 255.255.255.255 port 67 interval 3\nApr 27 15:29:02 precise64 ntpdate[683]: step time server 213.209.109.45 offset 9.699787 sec\nApr 27 15:29:02 precise64 ntpd[2074]: ntpd 4.2.6p3@1.2290-o Tue Jun  5 20:12:08 UTC 2012 (1)\nApr 27 15:29:02 precise64 ntpd[2075]: proto: precision = 4.506 usec\nApr 27 15:29:02 precise64 ntpd[2075]: ntp_io: estimated max descriptors: 1024, initial socket boundary: 16\nApr 27 15:29:02 precise64 ntpd[2075]: Listen and drop on 0 v4wildcard 0.0.0.0 UDP 123\nApr 27 15:29:02 precise64 ntpd[2075]: Listen and drop on 1 v6wildcard :: UDP 123\nApr 27 15:29:02 precise64 ntpd[2075]: Listen normally on 2 lo 127.0.0.1 UDP 123\nApr 27 15:29:02 precise64 ntpd[2075]: Listen normally on 3 eth0 10.0.2.15 UDP 123\nApr 27 15:29:02 precise64 ntpd[2075]: Listen normally on 4 eth1 192.168.2.100 UDP 123\nApr 27 15:29:02 precise64 ntpd[2075]: Listen normally on 5 eth1 fe80::a00:27ff:fe26:1f4 UDP 123\nApr 27 15:29:02 precise64 ntpd[2075]: Listen normally on 6 eth0 fe80::a00:27ff:fe88:ca6 UDP 123\nApr 27 15:29:02 precise64 ntpd[2075]: Listen normally on 7 lo ::1 UDP 123\nApr 27 15:29:02 precise64 ntpd[2075]: peers refreshed\nApr 27 15:29:02 precise64 ntpd[2075]: Listening on routing socket on fd #24 for interface updates\nApr 27 15:29:04 precise64 dhclient: DHCPREQUEST of 192.168.0.104 on eth1 to 255.255.255.255 port 67\nApr 27 15:29:04 precise64 dhclient: DHCPOFFER of 192.168.0.104 from 192.168.0.1\nApr 27 15:29:04 precise64 dhclient: DHCPACK of 192.168.0.104 from 192.168.0.1\nApr 27 15:29:04 precise64 postfix/master[1772]: reload -- version 2.9.6, configuration /etc/postfix\nApr 27 15:29:04 precise64 dhclient: bound to 192.168.0.104 -- renewal in 262273 seconds.\nApr 27 15:29:05 precise64 ntpd[2075]: ntpd exiting on signal 15\nApr 27 15:29:10 precise64 CRON[2300]: (root) CMD (/usr/local/ispconfig/server/server.sh > /dev/null 2>> /var/log/ispconfig/cron.log)\nApr 27 15:29:18 precise64 ntpdate[2183]: step time server 130.149.220.2 offset 0.019525 sec\nApr 27 15:29:18 precise64 ntpd[2344]: ntpd 4.2.6p3@1.2290-o Tue Jun  5 20:12:08 UTC 2012 (1)\nApr 27 15:29:18 precise64 ntpd[2345]: proto: precision = 3.923 usec\nApr 27 15:29:18 precise64 ntpd[2345]: ntp_io: estimated max descriptors: 1024, initial socket boundary: 16\nApr 27 15:29:18 precise64 ntpd[2345]: Listen and drop on 0 v4wildcard 0.0.0.0 UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: Listen and drop on 1 v6wildcard :: UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: Listen normally on 2 lo 127.0.0.1 UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: Listen normally on 3 eth0 10.0.2.15 UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: Listen normally on 4 eth1 192.168.2.100 UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: Listen normally on 5 eth1 192.168.0.104 UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: Listen normally on 6 eth1 fe80::a00:27ff:fe26:1f4 UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: Listen normally on 7 eth0 fe80::a00:27ff:fe88:ca6 UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: Listen normally on 8 lo ::1 UDP 123\nApr 27 15:29:18 precise64 ntpd[2345]: peers refreshed\nApr 27 15:29:18 precise64 ntpd[2345]: Listening on routing socket on fd #25 for interface updates\nApr 27 15:30:01 precise64 CRON[2751]: (root) CMD (/usr/local/ispconfig/server/server.sh > /dev/null 2>> /var/log/ispconfig/cron.log)\nApr 27 15:30:01 precise64 CRON[2752]: (getmail) CMD (/usr/local/bin/run-getmail.sh > /dev/null 2>> /dev/null)\nApr 27 15:30:01 precise64 pop3d: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:30:01 precise64 pop3d: Disconnected, ip=[::ffff:127.0.0.1]\nApr 27 15:30:01 precise64 imapd: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:30:01 precise64 imapd: Disconnected, ip=[::ffff:127.0.0.1], time=0\nApr 27 15:30:01 precise64 postfix/smtpd[2778]: connect from localhost[127.0.0.1]\nApr 27 15:30:01 precise64 postfix/smtpd[2778]: lost connection after CONNECT from localhost[127.0.0.1]\nApr 27 15:30:01 precise64 postfix/smtpd[2778]: disconnect from localhost[127.0.0.1]\nApr 27 15:30:01 precise64 kernel: [   76.868778] ip_tables: (C) 2000-2006 Netfilter Core Team\nApr 27 15:30:01 precise64 kernel: [   76.889673] ip6_tables: (C) 2000-2006 Netfilter Core Team\nApr 27 15:31:01 precise64 CRON[2979]: (root) CMD (/usr/local/ispconfig/server/server.sh > /dev/null 2>> /var/log/ispconfig/cron.log)\nApr 27 15:31:26 precise64 /etc/mysql/debian-start[3040]: Upgrading MySQL tables if necessary.\nApr 27 15:31:26 precise64 /etc/mysql/debian-start[3043]: /usr/bin/mysql_upgrade: the \'--basedir\' option is always ignored\nApr 27 15:31:26 precise64 /etc/mysql/debian-start[3043]: Looking for \'mysql\' as: /usr/bin/mysql\nApr 27 15:31:26 precise64 /etc/mysql/debian-start[3043]: Looking for \'mysqlcheck\' as: /usr/bin/mysqlcheck\nApr 27 15:31:26 precise64 /etc/mysql/debian-start[3043]: This installation of MySQL is already upgraded to 5.5.31, use --force if you still need to run mysql_upgrade\nApr 27 15:31:26 precise64 /etc/mysql/debian-start[3054]: Checking for insecure root accounts.\nApr 27 15:31:26 precise64 /etc/mysql/debian-start[3059]: WARNING: mysql.user contains 3 root accounts without password!\nApr 27 15:31:26 precise64 /etc/mysql/debian-start[3060]: Triggering myisam-recover for all MyISAM tables\nApr 27 15:32:01 precise64 CRON[3271]: (root) CMD (/usr/local/ispconfig/server/server.sh > /dev/null 2>> /var/log/ispconfig/cron.log)\nApr 27 15:33:01 precise64 CRON[3281]: (root) CMD (/usr/local/ispconfig/server/server.sh > /dev/null 2>> /var/log/ispconfig/cron.log)\nApr 27 15:34:01 precise64 CRON[3288]: (root) CMD (/usr/local/ispconfig/server/server.sh > /dev/null 2>> /var/log/ispconfig/cron.log)\nApr 27 15:35:01 precise64 CRON[3297]: (getmail) CMD (/usr/local/bin/run-getmail.sh > /dev/null 2>> /dev/null)\nApr 27 15:35:01 precise64 CRON[3300]: (root) CMD (/usr/local/ispconfig/server/server.sh > /dev/null 2>> /var/log/ispconfig/cron.log)\nApr 27 15:35:01 precise64 pop3d: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:35:01 precise64 pop3d: Disconnected, ip=[::ffff:127.0.0.1]\nApr 27 15:35:01 precise64 imapd: Connection, ip=[::ffff:127.0.0.1]\nApr 27 15:35:01 precise64 imapd: Disconnected, ip=[::ffff:127.0.0.1], time=0\n\";','no_state'),(1,'log_ispconfig',1367076901,'s:0:\"\";','ok'),(1,'mem_usage',1367076901,'a:43:{s:8:\"MemTotal\";i:383238144;s:7:\"MemFree\";i:9035776;s:7:\"Buffers\";i:11030528;s:6:\"Cached\";i:66859008;s:10:\"SwapCached\";i:12558336;s:6:\"Active\";i:134356992;s:8:\"Inactive\";i:185782272;s:12:\"Active(anon)\";i:105127936;s:14:\"Inactive(anon)\";i:138694656;s:12:\"Active(file)\";i:29229056;s:14:\"Inactive(file)\";i:47087616;s:11:\"Unevictable\";i:0;s:7:\"Mlocked\";i:0;s:9:\"SwapTotal\";i:805302272;s:8:\"SwapFree\";i:743178240;s:5:\"Dirty\";i:36864;s:9:\"Writeback\";i:0;s:9:\"AnonPages\";i:232390656;s:6:\"Mapped\";i:22278144;s:5:\"Shmem\";i:1519616;s:4:\"Slab\";i:33034240;s:12:\"SReclaimable\";i:19619840;s:10:\"SUnreclaim\";i:13414400;s:11:\"KernelStack\";i:1196032;s:10:\"PageTables\";i:8196096;s:12:\"NFS_Unstable\";i:0;s:6:\"Bounce\";i:0;s:12:\"WritebackTmp\";i:0;s:11:\"CommitLimit\";i:996921344;s:12:\"Committed_AS\";i:799674368;s:12:\"VmallocTotal\";i:35184372087808;s:11:\"VmallocUsed\";i:22110208;s:12:\"VmallocChunk\";i:35184346722304;s:17:\"HardwareCorrupted\";i:0;s:13:\"AnonHugePages\";i:0;s:15:\"HugePages_Total\";i:0;s:14:\"HugePages_Free\";i:0;s:14:\"HugePages_Rsvd\";i:0;s:14:\"HugePages_Surp\";i:0;s:12:\"Hugepagesize\";i:2097152;s:11:\"DirectMap4k\";i:60751872;s:11:\"DirectMap2M\";i:341835776;s:0:\"\";i:0;}','no_state'),(1,'services',1367076901,'a:7:{s:9:\"webserver\";i:1;s:9:\"ftpserver\";i:0;s:10:\"smtpserver\";i:1;s:10:\"pop3server\";i:1;s:10:\"imapserver\";i:1;s:10:\"bindserver\";i:1;s:11:\"mysqlserver\";i:1;}','error'),(1,'log_freshclam',1367076901,'s:4897:\"Sat Apr 27 14:49:52 2013 -> --------------------------------------\nSat Apr 27 14:49:52 2013 -> freshclam daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 14:49:52 2013 -> ClamAV update process started at Sat Apr 27 14:49:52 2013\nSat Apr 27 14:49:52 2013 -> WARNING: Your ClamAV installation is OUTDATED!\nSat Apr 27 14:49:52 2013 -> WARNING: Local version: 0.97.7 Recommended version: 0.97.8\nSat Apr 27 14:49:52 2013 -> DON\'T PANIC! Read http://www.clamav.net/support/faq\nSat Apr 27 14:50:55 2013 -> Downloading main.cvd [100%]\nSat Apr 27 14:50:59 2013 -> main.cvd updated (version: 54, sigs: 1044387, f-level: 60, builder: sven)\nSat Apr 27 14:52:08 2013 -> Downloading daily.cvd [100%]\nSat Apr 27 14:52:11 2013 -> daily.cvd updated (version: 17103, sigs: 1165722, f-level: 63, builder: neo)\nSat Apr 27 14:52:12 2013 -> Downloading bytecode.cvd [100%]\nSat Apr 27 14:52:12 2013 -> bytecode.cvd updated (version: 214, sigs: 41, f-level: 63, builder: neo)\nSat Apr 27 14:52:14 2013 -> Database updated (2210150 signatures) from db.local.clamav.net (IP: 88.198.17.100)\nSat Apr 27 14:52:14 2013 -> --------------------------------------\nSat Apr 27 14:56:33 2013 -> Update process terminated\nSat Apr 27 14:56:49 2013 -> --------------------------------------\nSat Apr 27 14:56:49 2013 -> freshclam daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 14:56:49 2013 -> ClamAV update process started at Sat Apr 27 14:56:49 2013\nSat Apr 27 14:56:49 2013 -> WARNING: Your ClamAV installation is OUTDATED!\nSat Apr 27 14:56:49 2013 -> WARNING: Local version: 0.97.7 Recommended version: 0.97.8\nSat Apr 27 14:56:49 2013 -> DON\'T PANIC! Read http://www.clamav.net/support/faq\nSat Apr 27 14:56:49 2013 -> main.cvd is up to date (version: 54, sigs: 1044387, f-level: 60, builder: sven)\nSat Apr 27 14:56:49 2013 -> daily.cvd is up to date (version: 17103, sigs: 1165722, f-level: 63, builder: neo)\nSat Apr 27 14:56:49 2013 -> bytecode.cvd is up to date (version: 214, sigs: 41, f-level: 63, builder: neo)\nSat Apr 27 14:56:52 2013 -> --------------------------------------\nSat Apr 27 15:00:01 2013 -> Update process terminated\nSat Apr 27 15:00:17 2013 -> --------------------------------------\nSat Apr 27 15:00:17 2013 -> freshclam daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 15:00:17 2013 -> ClamAV update process started at Sat Apr 27 15:00:17 2013\nSat Apr 27 15:00:17 2013 -> WARNING: Your ClamAV installation is OUTDATED!\nSat Apr 27 15:00:17 2013 -> WARNING: Local version: 0.97.7 Recommended version: 0.97.8\nSat Apr 27 15:00:17 2013 -> DON\'T PANIC! Read http://www.clamav.net/support/faq\nSat Apr 27 15:00:17 2013 -> main.cvd is up to date (version: 54, sigs: 1044387, f-level: 60, builder: sven)\nSat Apr 27 15:00:17 2013 -> daily.cvd is up to date (version: 17103, sigs: 1165722, f-level: 63, builder: neo)\nSat Apr 27 15:00:17 2013 -> bytecode.cvd is up to date (version: 214, sigs: 41, f-level: 63, builder: neo)\nSat Apr 27 15:00:20 2013 -> --------------------------------------\nSat Apr 27 15:02:35 2013 -> Update process terminated\nSat Apr 27 15:09:25 2013 -> --------------------------------------\nSat Apr 27 15:09:25 2013 -> freshclam daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 15:09:25 2013 -> ClamAV update process started at Sat Apr 27 15:09:25 2013\nSat Apr 27 15:09:25 2013 -> WARNING: Your ClamAV installation is OUTDATED!\nSat Apr 27 15:09:25 2013 -> WARNING: Local version: 0.97.7 Recommended version: 0.97.8\nSat Apr 27 15:09:25 2013 -> DON\'T PANIC! Read http://www.clamav.net/support/faq\nSat Apr 27 15:09:25 2013 -> main.cvd is up to date (version: 54, sigs: 1044387, f-level: 60, builder: sven)\nSat Apr 27 15:09:25 2013 -> daily.cvd is up to date (version: 17103, sigs: 1165722, f-level: 63, builder: neo)\nSat Apr 27 15:09:25 2013 -> bytecode.cvd is up to date (version: 214, sigs: 41, f-level: 63, builder: neo)\nSat Apr 27 15:09:39 2013 -> --------------------------------------\nSat Apr 27 15:28:32 2013 -> Update process terminated\nSat Apr 27 15:28:50 2013 -> --------------------------------------\nSat Apr 27 15:28:50 2013 -> freshclam daemon 0.97.7 (OS: linux-gnu, ARCH: x86_64, CPU: x86_64)\nSat Apr 27 15:28:50 2013 -> ClamAV update process started at Sat Apr 27 15:28:50 2013\nSat Apr 27 15:28:50 2013 -> WARNING: Your ClamAV installation is OUTDATED!\nSat Apr 27 15:28:50 2013 -> WARNING: Local version: 0.97.7 Recommended version: 0.97.8\nSat Apr 27 15:28:50 2013 -> DON\'T PANIC! Read http://www.clamav.net/support/faq\nSat Apr 27 15:28:50 2013 -> main.cvd is up to date (version: 54, sigs: 1044387, f-level: 60, builder: sven)\nSat Apr 27 15:28:50 2013 -> daily.cvd is up to date (version: 17103, sigs: 1165722, f-level: 63, builder: neo)\nSat Apr 27 15:28:50 2013 -> bytecode.cvd is up to date (version: 214, sigs: 41, f-level: 63, builder: neo)\nSat Apr 27 15:29:03 2013 -> --------------------------------------\n\";','info'),(1,'log_ispc_cron',1367076901,'s:0:\"\";','no_state');
/*!40000 ALTER TABLE `monitor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvz_ip`
--

DROP TABLE IF EXISTS `openvz_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openvz_ip` (
  `ip_address_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) NOT NULL DEFAULT '0',
  `sys_groupid` int(11) NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(15) DEFAULT NULL,
  `vm_id` int(11) NOT NULL DEFAULT '0',
  `reserved` varchar(255) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`ip_address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvz_ip`
--

LOCK TABLES `openvz_ip` WRITE;
/*!40000 ALTER TABLE `openvz_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `openvz_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvz_ostemplate`
--

DROP TABLE IF EXISTS `openvz_ostemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openvz_ostemplate` (
  `ostemplate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) NOT NULL DEFAULT '0',
  `sys_groupid` int(11) NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `template_file` varchar(255) NOT NULL,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `allservers` varchar(255) NOT NULL DEFAULT 'y',
  `active` varchar(255) NOT NULL DEFAULT 'y',
  `description` text,
  PRIMARY KEY (`ostemplate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvz_ostemplate`
--

LOCK TABLES `openvz_ostemplate` WRITE;
/*!40000 ALTER TABLE `openvz_ostemplate` DISABLE KEYS */;
INSERT INTO `openvz_ostemplate` VALUES (1,1,1,'riud','riud','','Debian minimal','debian-minimal-x86',1,'y','y','Debain minmal image.');
/*!40000 ALTER TABLE `openvz_ostemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvz_template`
--

DROP TABLE IF EXISTS `openvz_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openvz_template` (
  `template_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) NOT NULL DEFAULT '0',
  `sys_groupid` int(11) NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `diskspace` int(11) NOT NULL DEFAULT '0',
  `traffic` int(11) NOT NULL DEFAULT '-1',
  `bandwidth` int(11) NOT NULL DEFAULT '-1',
  `ram` int(11) NOT NULL DEFAULT '0',
  `ram_burst` int(11) NOT NULL DEFAULT '0',
  `cpu_units` int(11) NOT NULL DEFAULT '1000',
  `cpu_num` int(11) NOT NULL DEFAULT '4',
  `cpu_limit` int(11) NOT NULL DEFAULT '400',
  `io_priority` int(11) NOT NULL DEFAULT '4',
  `active` varchar(255) NOT NULL DEFAULT 'y',
  `description` text,
  `numproc` varchar(255) DEFAULT NULL,
  `numtcpsock` varchar(255) DEFAULT NULL,
  `numothersock` varchar(255) DEFAULT NULL,
  `vmguarpages` varchar(255) DEFAULT NULL,
  `kmemsize` varchar(255) DEFAULT NULL,
  `tcpsndbuf` varchar(255) DEFAULT NULL,
  `tcprcvbuf` varchar(255) DEFAULT NULL,
  `othersockbuf` varchar(255) DEFAULT NULL,
  `dgramrcvbuf` varchar(255) DEFAULT NULL,
  `oomguarpages` varchar(255) DEFAULT NULL,
  `privvmpages` varchar(255) DEFAULT NULL,
  `lockedpages` varchar(255) DEFAULT NULL,
  `shmpages` varchar(255) DEFAULT NULL,
  `physpages` varchar(255) DEFAULT NULL,
  `numfile` varchar(255) DEFAULT NULL,
  `avnumproc` varchar(255) DEFAULT NULL,
  `numflock` varchar(255) DEFAULT NULL,
  `numpty` varchar(255) DEFAULT NULL,
  `numsiginfo` varchar(255) DEFAULT NULL,
  `dcachesize` varchar(255) DEFAULT NULL,
  `numiptent` varchar(255) DEFAULT NULL,
  `swappages` varchar(255) DEFAULT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `nameserver` varchar(255) DEFAULT NULL,
  `create_dns` varchar(1) NOT NULL DEFAULT 'n',
  `capability` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvz_template`
--

LOCK TABLES `openvz_template` WRITE;
/*!40000 ALTER TABLE `openvz_template` DISABLE KEYS */;
INSERT INTO `openvz_template` VALUES (1,1,1,'riud','riud','','small',10,-1,-1,256,512,1000,4,400,4,'y','','999999:999999','7999992:7999992','7999992:7999992','65536:65536','2147483646:2147483646','214748160:396774400','214748160:396774400','214748160:396774400','214748160:396774400','65536:65536','131072:131072','999999:999999','65536:65536','0:2147483647','23999976:23999976','180:180','999999:999999','500000:500000','999999:999999','2147483646:2147483646','999999:999999','256000:256000','v{VEID}.test.tld','8.8.8.8 8.8.4.4','n','');
/*!40000 ALTER TABLE `openvz_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvz_traffic`
--

DROP TABLE IF EXISTS `openvz_traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openvz_traffic` (
  `veid` int(11) NOT NULL,
  `traffic_date` date NOT NULL,
  `traffic_bytes` bigint(32) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`veid`,`traffic_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvz_traffic`
--

LOCK TABLES `openvz_traffic` WRITE;
/*!40000 ALTER TABLE `openvz_traffic` DISABLE KEYS */;
/*!40000 ALTER TABLE `openvz_traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvz_vm`
--

DROP TABLE IF EXISTS `openvz_vm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openvz_vm` (
  `vm_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) NOT NULL DEFAULT '0',
  `sys_groupid` int(11) NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `veid` int(10) unsigned NOT NULL,
  `ostemplate_id` int(11) NOT NULL DEFAULT '0',
  `template_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) NOT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `vm_password` varchar(255) DEFAULT NULL,
  `start_boot` varchar(255) NOT NULL DEFAULT 'y',
  `active` varchar(255) NOT NULL DEFAULT 'y',
  `active_until_date` date NOT NULL,
  `description` text,
  `diskspace` int(11) NOT NULL DEFAULT '0',
  `traffic` int(11) NOT NULL DEFAULT '-1',
  `bandwidth` int(11) NOT NULL DEFAULT '-1',
  `ram` int(11) NOT NULL DEFAULT '0',
  `ram_burst` int(11) NOT NULL DEFAULT '0',
  `cpu_units` int(11) NOT NULL DEFAULT '1000',
  `cpu_num` int(11) NOT NULL DEFAULT '4',
  `cpu_limit` int(11) NOT NULL DEFAULT '400',
  `io_priority` int(11) NOT NULL DEFAULT '4',
  `nameserver` varchar(255) NOT NULL DEFAULT '8.8.8.8 8.8.4.4',
  `create_dns` varchar(1) NOT NULL DEFAULT 'n',
  `capability` text NOT NULL,
  `config` mediumtext NOT NULL,
  PRIMARY KEY (`vm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvz_vm`
--

LOCK TABLES `openvz_vm` WRITE;
/*!40000 ALTER TABLE `openvz_vm` DISABLE KEYS */;
/*!40000 ALTER TABLE `openvz_vm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remote_session`
--

DROP TABLE IF EXISTS `remote_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remote_session` (
  `remote_session` varchar(64) NOT NULL,
  `remote_userid` int(11) unsigned NOT NULL,
  `remote_functions` text NOT NULL,
  `tstamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`remote_session`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remote_session`
--

LOCK TABLES `remote_session` WRITE;
/*!40000 ALTER TABLE `remote_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `remote_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remote_user`
--

DROP TABLE IF EXISTS `remote_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remote_user` (
  `remote_userid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `remote_username` varchar(64) NOT NULL,
  `remote_password` varchar(64) NOT NULL,
  `remote_functions` text NOT NULL,
  PRIMARY KEY (`remote_userid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remote_user`
--

LOCK TABLES `remote_user` WRITE;
/*!40000 ALTER TABLE `remote_user` DISABLE KEYS */;
INSERT INTO `remote_user` VALUES(1,0,0,NULL,NULL,NULL,'admin','21232f297a57a5a743894a0e4a801fc3','server_get,get_function_list,client_templates_get_all,server_get_serverid_by_ip,server_ip_add,server_ip_update,server_ip_delete;client_get_all,client_get,client_add,client_update,client_delete,client_get_sites_by_user,client_get_by_username,client_change_password,client_get_id,client_delete_everything;domains_domain_get,domains_domain_add,domains_domain_delete,domains_get_all_by_user;mail_domain_get,mail_domain_add,mail_domain_update,mail_domain_delete,mail_domain_set_status,mail_domain_get_by_domain;mail_aliasdomain_get,mail_aliasdomain_add,mail_aliasdomain_update,mail_aliasdomain_delete;mail_mailinglist_get,mail_mailinglist_add,mail_mailinglist_update,mail_mailinglist_delete;mail_user_get,mail_user_add,mail_user_update,mail_user_delete;mail_alias_get,mail_alias_add,mail_alias_update,mail_alias_delete;mail_forward_get,mail_forward_add,mail_forward_update,mail_forward_delete;mail_catchall_get,mail_catchall_add,mail_catchall_update,mail_catchall_delete;mail_transport_get,mail_transport_add,mail_transport_update,mail_transport_delete;mail_whitelist_get,mail_whitelist_add,mail_whitelist_update,mail_whitelist_delete;mail_blacklist_get,mail_blacklist_add,mail_blacklist_update,mail_blacklist_delete;mail_spamfilter_user_get,mail_spamfilter_user_add,mail_spamfilter_user_update,mail_spamfilter_user_delete;mail_policy_get,mail_policy_add,mail_policy_update,mail_policy_delete;mail_fetchmail_get,mail_fetchmail_add,mail_fetchmail_update,mail_fetchmail_delete;mail_spamfilter_whitelist_get,mail_spamfilter_whitelist_add,mail_spamfilter_whitelist_update,mail_spamfilter_whitelist_delete;mail_spamfilter_blacklist_get,mail_spamfilter_blacklist_add,mail_spamfilter_blacklist_update,mail_spamfilter_blacklist_delete;mail_user_filter_get,mail_user_filter_add,mail_user_filter_update,mail_user_filter_delete;mail_filter_get,mail_filter_add,mail_filter_update,mail_filter_delete;sites_cron_get,sites_cron_add,sites_cron_update,sites_cron_delete;sites_database_get,sites_database_add,sites_database_update,sites_database_delete,sites_database_get_all_by_user,sites_database_user_get,sites_database_user_add,sites_database_user_update,sites_database_user_delete,sites_database_user_get_all_by_user;sites_web_folder_get,sites_web_folder_add,sites_web_folder_update,sites_web_folder_delete,sites_web_folder_user_get,sites_web_folder_user_add,sites_web_folder_user_update,sites_web_folder_user_delete;sites_ftp_user_get,sites_ftp_user_server_get,sites_ftp_user_add,sites_ftp_user_update,sites_ftp_user_delete;sites_shell_user_get,sites_shell_user_add,sites_shell_user_update,sites_shell_user_delete;sites_web_domain_get,sites_web_domain_add,sites_web_domain_update,sites_web_domain_delete,sites_web_domain_set_status;sites_web_aliasdomain_get,sites_web_aliasdomain_add,sites_web_aliasdomain_update,sites_web_aliasdomain_delete;sites_web_subdomain_get,sites_web_subdomain_add,sites_web_subdomain_update,sites_web_subdomain_delete;dns_zone_get,dns_zone_get_id,dns_zone_add,dns_zone_update,dns_zone_delete,dns_zone_set_status,dns_templatezone_add;dns_a_get,dns_a_add,dns_a_update,dns_a_delete;dns_aaaa_get,dns_aaaa_add,dns_aaaa_update,dns_aaaa_delete;dns_alias_get,dns_alias_add,dns_alias_update,dns_alias_delete;dns_cname_get,dns_cname_add,dns_cname_update,dns_cname_delete;dns_hinfo_get,dns_hinfo_add,dns_hinfo_update,dns_hinfo_delete;dns_mx_get,dns_mx_add,dns_mx_update,dns_mx_delete;dns_ns_get,dns_ns_add,dns_ns_update,dns_ns_delete;dns_ptr_get,dns_ptr_add,dns_ptr_update,dns_ptr_delete;dns_rp_get,dns_rp_add,dns_rp_update,dns_rp_delete;dns_srv_get,dns_srv_add,dns_srv_update,dns_srv_delete;dns_txt_get,dns_txt_add,dns_txt_update,dns_txt_delete;vm_openvz'),(2,0,0,NULL,NULL,NULL,'admin','21232f297a57a5a743894a0e4a801fc3','server_get,get_function_list,client_templates_get_all,server_get_serverid_by_ip,server_ip_add,server_ip_update,server_ip_delete;client_get_all,client_get,client_add,client_update,client_delete,client_get_sites_by_user,client_get_by_username,client_change_password,client_get_id,client_delete_everything;domains_domain_get,domains_domain_add,domains_domain_delete,domains_get_all_by_user;mail_domain_get,mail_domain_add,mail_domain_update,mail_domain_delete,mail_domain_set_status,mail_domain_get_by_domain;mail_aliasdomain_get,mail_aliasdomain_add,mail_aliasdomain_update,mail_aliasdomain_delete;mail_mailinglist_get,mail_mailinglist_add,mail_mailinglist_update,mail_mailinglist_delete;mail_user_get,mail_user_add,mail_user_update,mail_user_delete;mail_alias_get,mail_alias_add,mail_alias_update,mail_alias_delete;mail_forward_get,mail_forward_add,mail_forward_update,mail_forward_delete;mail_catchall_get,mail_catchall_add,mail_catchall_update,mail_catchall_delete;mail_transport_get,mail_transport_add,mail_transport_update,mail_transport_delete;mail_whitelist_get,mail_whitelist_add,mail_whitelist_update,mail_whitelist_delete;mail_blacklist_get,mail_blacklist_add,mail_blacklist_update,mail_blacklist_delete;mail_spamfilter_user_get,mail_spamfilter_user_add,mail_spamfilter_user_update,mail_spamfilter_user_delete;mail_policy_get,mail_policy_add,mail_policy_update,mail_policy_delete;mail_fetchmail_get,mail_fetchmail_add,mail_fetchmail_update,mail_fetchmail_delete;mail_spamfilter_whitelist_get,mail_spamfilter_whitelist_add,mail_spamfilter_whitelist_update,mail_spamfilter_whitelist_delete;mail_spamfilter_blacklist_get,mail_spamfilter_blacklist_add,mail_spamfilter_blacklist_update,mail_spamfilter_blacklist_delete;mail_user_filter_get,mail_user_filter_add,mail_user_filter_update,mail_user_filter_delete;mail_filter_get,mail_filter_add,mail_filter_update,mail_filter_delete;sites_cron_get,sites_cron_add,sites_cron_update,sites_cron_delete;sites_database_get,sites_database_add,sites_database_update,sites_database_delete,sites_database_get_all_by_user,sites_database_user_get,sites_database_user_add,sites_database_user_update,sites_database_user_delete,sites_database_user_get_all_by_user;sites_web_folder_get,sites_web_folder_add,sites_web_folder_update,sites_web_folder_delete,sites_web_folder_user_get,sites_web_folder_user_add,sites_web_folder_user_update,sites_web_folder_user_delete;sites_ftp_user_get,sites_ftp_user_server_get,sites_ftp_user_add,sites_ftp_user_update,sites_ftp_user_delete;sites_shell_user_get,sites_shell_user_add,sites_shell_user_update,sites_shell_user_delete;sites_web_domain_get,sites_web_domain_add,sites_web_domain_update,sites_web_domain_delete,sites_web_domain_set_status;sites_web_aliasdomain_get,sites_web_aliasdomain_add,sites_web_aliasdomain_update,sites_web_aliasdomain_delete;sites_web_subdomain_get,sites_web_subdomain_add,sites_web_subdomain_update,sites_web_subdomain_delete;dns_zone_get,dns_zone_get_id,dns_zone_add,dns_zone_update,dns_zone_delete,dns_zone_set_status,dns_templatezone_add;dns_a_get,dns_a_add,dns_a_update,dns_a_delete;dns_aaaa_get,dns_aaaa_add,dns_aaaa_update,dns_aaaa_delete;dns_alias_get,dns_alias_add,dns_alias_update,dns_alias_delete;dns_cname_get,dns_cname_add,dns_cname_update,dns_cname_delete;dns_hinfo_get,dns_hinfo_add,dns_hinfo_update,dns_hinfo_delete;dns_mx_get,dns_mx_add,dns_mx_update,dns_mx_delete;dns_ns_get,dns_ns_add,dns_ns_update,dns_ns_delete;dns_ptr_get,dns_ptr_add,dns_ptr_update,dns_ptr_delete;dns_rp_get,dns_rp_add,dns_rp_update,dns_rp_delete;dns_srv_get,dns_srv_add,dns_srv_update,dns_srv_delete;dns_txt_get,dns_txt_add,dns_txt_update,dns_txt_delete;vm_openvz'),(3,0,0,NULL,NULL,NULL,'admin','21232f297a57a5a743894a0e4a801fc3','server_get,get_function_list,client_templates_get_all,server_get_serverid_by_ip,server_ip_add,server_ip_update,server_ip_delete;client_get_all,client_get,client_add,client_update,client_delete,client_get_sites_by_user,client_get_by_username,client_change_password,client_get_id,client_delete_everything;domains_domain_get,domains_domain_add,domains_domain_delete,domains_get_all_by_user;mail_domain_get,mail_domain_add,mail_domain_update,mail_domain_delete,mail_domain_set_status,mail_domain_get_by_domain;mail_aliasdomain_get,mail_aliasdomain_add,mail_aliasdomain_update,mail_aliasdomain_delete;mail_mailinglist_get,mail_mailinglist_add,mail_mailinglist_update,mail_mailinglist_delete;mail_user_get,mail_user_add,mail_user_update,mail_user_delete;mail_alias_get,mail_alias_add,mail_alias_update,mail_alias_delete;mail_forward_get,mail_forward_add,mail_forward_update,mail_forward_delete;mail_catchall_get,mail_catchall_add,mail_catchall_update,mail_catchall_delete;mail_transport_get,mail_transport_add,mail_transport_update,mail_transport_delete;mail_whitelist_get,mail_whitelist_add,mail_whitelist_update,mail_whitelist_delete;mail_blacklist_get,mail_blacklist_add,mail_blacklist_update,mail_blacklist_delete;mail_spamfilter_user_get,mail_spamfilter_user_add,mail_spamfilter_user_update,mail_spamfilter_user_delete;mail_policy_get,mail_policy_add,mail_policy_update,mail_policy_delete;mail_fetchmail_get,mail_fetchmail_add,mail_fetchmail_update,mail_fetchmail_delete;mail_spamfilter_whitelist_get,mail_spamfilter_whitelist_add,mail_spamfilter_whitelist_update,mail_spamfilter_whitelist_delete;mail_spamfilter_blacklist_get,mail_spamfilter_blacklist_add,mail_spamfilter_blacklist_update,mail_spamfilter_blacklist_delete;mail_user_filter_get,mail_user_filter_add,mail_user_filter_update,mail_user_filter_delete;mail_filter_get,mail_filter_add,mail_filter_update,mail_filter_delete;sites_cron_get,sites_cron_add,sites_cron_update,sites_cron_delete;sites_database_get,sites_database_add,sites_database_update,sites_database_delete,sites_database_get_all_by_user,sites_database_user_get,sites_database_user_add,sites_database_user_update,sites_database_user_delete,sites_database_user_get_all_by_user;sites_web_folder_get,sites_web_folder_add,sites_web_folder_update,sites_web_folder_delete,sites_web_folder_user_get,sites_web_folder_user_add,sites_web_folder_user_update,sites_web_folder_user_delete;sites_ftp_user_get,sites_ftp_user_server_get,sites_ftp_user_add,sites_ftp_user_update,sites_ftp_user_delete;sites_shell_user_get,sites_shell_user_add,sites_shell_user_update,sites_shell_user_delete;sites_web_domain_get,sites_web_domain_add,sites_web_domain_update,sites_web_domain_delete,sites_web_domain_set_status;sites_web_aliasdomain_get,sites_web_aliasdomain_add,sites_web_aliasdomain_update,sites_web_aliasdomain_delete;sites_web_subdomain_get,sites_web_subdomain_add,sites_web_subdomain_update,sites_web_subdomain_delete;dns_zone_get,dns_zone_get_id,dns_zone_add,dns_zone_update,dns_zone_delete,dns_zone_set_status,dns_templatezone_add;dns_a_get,dns_a_add,dns_a_update,dns_a_delete;dns_aaaa_get,dns_aaaa_add,dns_aaaa_update,dns_aaaa_delete;dns_alias_get,dns_alias_add,dns_alias_update,dns_alias_delete;dns_cname_get,dns_cname_add,dns_cname_update,dns_cname_delete;dns_hinfo_get,dns_hinfo_add,dns_hinfo_update,dns_hinfo_delete;dns_mx_get,dns_mx_add,dns_mx_update,dns_mx_delete;dns_ns_get,dns_ns_add,dns_ns_update,dns_ns_delete;dns_ptr_get,dns_ptr_add,dns_ptr_update,dns_ptr_delete;dns_rp_get,dns_rp_add,dns_rp_update,dns_rp_delete;dns_srv_get,dns_srv_add,dns_srv_update,dns_srv_delete;dns_txt_get,dns_txt_add,dns_txt_update,dns_txt_delete;vm_openvz');
/*!40000 ALTER TABLE `remote_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `server_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_group` varchar(5) NOT NULL DEFAULT '',
  `sys_perm_other` varchar(5) NOT NULL DEFAULT '',
  `server_name` varchar(255) NOT NULL DEFAULT '',
  `mail_server` tinyint(1) NOT NULL DEFAULT '0',
  `web_server` tinyint(1) NOT NULL DEFAULT '0',
  `dns_server` tinyint(1) NOT NULL DEFAULT '0',
  `file_server` tinyint(1) NOT NULL DEFAULT '0',
  `db_server` tinyint(1) NOT NULL DEFAULT '0',
  `vserver_server` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_server` tinyint(1) NOT NULL DEFAULT '0',
  `firewall_server` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `updated` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mirror_server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `dbversion` int(11) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`server_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES (1,1,1,'riud','riud','r','precise64',1,1,1,1,1,0,0,1,'[global]\nwebserver=apache\nmailserver=postfix\ndnsserver=mydns\n\n[server]\nauto_network_configuration=n\nip_address=127.0.1.1\nnetmask=255.255.255.0\ngateway=0.0.0.0\nhostname=precise64\nnameservers=8.8.8.8,8.8.4.4\nfirewall=bastille\nloglevel=2\nbackup_dir=/var/backup\nbackup_mode=rootgz\n\n[mail]\nmodule=postfix_mysql\nmaildir_path=/var/vmail/[domain]/[localpart]\nhomedir_path=/var/vmail\npop3_imap_daemon=courier\nmail_filter_syntax=maildrop\nmailuser_uid=5000\nmailuser_gid=5000\nmailuser_name=vmail\nmailuser_group=vmail\nrelayhost=\nrelayhost_user=\nrelayhost_password=\nmailbox_size_limit=0\nmessage_size_limit=0\nmailbox_quota_stats=y\nrealtime_blackhole_list=\n\n[getmail]\ngetmail_config_dir=/etc/getmail\n\n[web]\nserver_type=apache\nwebsite_basedir=/var/www\nwebsite_path=/var/www/clients/client[client_id]/web[website_id]\nwebsite_symlinks=/var/www/[website_domain]/:/var/www/clients/client[client_id]/[website_domain]/\nwebsite_symlinks_rel=n\nvhost_conf_dir=/etc/apache2/sites-available\nvhost_conf_enabled_dir=/etc/apache2/sites-enabled\nnginx_vhost_conf_dir=/etc/nginx/sites-available\nnginx_vhost_conf_enabled_dir=/etc/nginx/sites-enabled\nsecurity_level=20\nuser=www-data\ngroup=www-data\nnginx_user=www-data\nnginx_group=www-data\napps_vhost_port=8081\napps_vhost_ip=_default_\napps_vhost_servername=\nphp_open_basedir=[website_path]/web:[website_path]/private:[website_path]/tmp:/var/www/[website_domain]/web:/srv/www/[website_domain]/web:/usr/share/php5:/usr/share/php:/tmp:/usr/share/phpmyadmin:/etc/phpmyadmin:/var/lib/phpmyadmin:/usr/share/php\nhtaccess_allow_override=All\nawstats_conf_dir=/etc/awstats\nawstats_data_dir=/var/lib/awstats\nawstats_pl=/usr/lib/cgi-bin/awstats.pl\nawstats_buildstaticpages_pl=/usr/share/awstats/tools/awstats_buildstaticpages.pl\nphp_ini_path_apache=/etc/php5/apache2/php.ini\nphp_ini_path_cgi=/etc/php5/cgi/php.ini\ncheck_apache_config=y\nenable_sni=y\nenable_ip_wildcard=y\novertraffic_notify_admin=y\novertraffic_notify_client=y\nnginx_cgi_socket=/var/run/fcgiwrap.socket\nphp_fpm_init_script=php5-fpm\nphp_fpm_ini_path=/etc/php5/fpm/php.ini\nphp_fpm_pool_dir=/etc/php5/fpm/pool.d\nphp_fpm_start_port=9010\nphp_fpm_socket_dir=/var/lib/php5-fpm\nset_folder_permissions_on_update=n\nadd_web_users_to_sshusers_group=y\nconnect_userid_to_webid=n\nconnect_userid_to_webid_start=10000\nweb_folder_protection=y\n\n[dns]\nbind_user=root\nbind_group=bind\nbind_zonefiles_dir=/etc/bind\nnamed_conf_path=/etc/bind/named.conf\nnamed_conf_local_path=/etc/bind/named.conf.local\n\n[fastcgi]\nfastcgi_starter_path=/var/www/php-fcgi-scripts/[system_user]/\nfastcgi_starter_script=.php-fcgi-starter\nfastcgi_alias=/php/\nfastcgi_phpini_path=/etc/php5/cgi/\nfastcgi_children=8\nfastcgi_max_requests=5000\nfastcgi_bin=/usr/bin/php-cgi\nfastcgi_config_syntax=1\n\n[jailkit]\njailkit_chroot_home=/home/[username]\njailkit_chroot_app_sections=basicshell editors extendedshell netutils ssh sftp scp groups jk_lsh\njailkit_chroot_app_programs=/usr/bin/groups /usr/bin/id /usr/bin/dircolors /usr/bin/lesspipe /usr/bin/basename /usr/bin/dirname /usr/bin/nano /usr/bin/pico\njailkit_chroot_cron_programs=/usr/bin/php /usr/bin/perl /usr/share/perl /usr/share/php\n\n[vlogger]\nconfig_dir=/etc\n\n[cron]\ninit_script=cron\ncrontab_dir=/etc/cron.d\nwget=/usr/bin/wget\n\n[rescue]\ntry_rescue=n\ndo_not_try_rescue_httpd=n\ndo_not_try_rescue_mysql=n\ndo_not_try_rescue_mail=n\n\n',0,0,50,1);
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_ip`
--

DROP TABLE IF EXISTS `server_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_ip` (
  `server_ip_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `client_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ip_type` enum('IPv4','IPv6') NOT NULL DEFAULT 'IPv4',
  `ip_address` varchar(39) DEFAULT NULL,
  `virtualhost` enum('n','y') NOT NULL DEFAULT 'y',
  `virtualhost_port` varchar(255) DEFAULT '80,443',
  PRIMARY KEY (`server_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_ip`
--

LOCK TABLES `server_ip` WRITE;
/*!40000 ALTER TABLE `server_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_php`
--

DROP TABLE IF EXISTS `server_php`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_php` (
  `server_php_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `client_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `php_fastcgi_binary` varchar(255) DEFAULT NULL,
  `php_fastcgi_ini_dir` varchar(255) DEFAULT NULL,
  `php_fpm_init_script` varchar(255) DEFAULT NULL,
  `php_fpm_ini_dir` varchar(255) DEFAULT NULL,
  `php_fpm_pool_dir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`server_php_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_php`
--

LOCK TABLES `server_php` WRITE;
/*!40000 ALTER TABLE `server_php` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_php` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shell_user`
--

DROP TABLE IF EXISTS `shell_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shell_user` (
  `shell_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_domain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `username_prefix` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(64) DEFAULT NULL,
  `quota_size` bigint(20) NOT NULL DEFAULT '-1',
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  `puser` varchar(255) DEFAULT NULL,
  `pgroup` varchar(255) DEFAULT NULL,
  `shell` varchar(255) NOT NULL DEFAULT '/bin/bash',
  `dir` varchar(255) DEFAULT NULL,
  `chroot` varchar(255) NOT NULL,
  `ssh_rsa` text NOT NULL,
  PRIMARY KEY (`shell_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shell_user`
--

LOCK TABLES `shell_user` WRITE;
/*!40000 ALTER TABLE `shell_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `shell_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_package`
--

DROP TABLE IF EXISTS `software_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software_package` (
  `package_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `software_repo_id` int(11) unsigned NOT NULL,
  `package_name` varchar(64) NOT NULL,
  `package_title` varchar(64) NOT NULL,
  `package_description` text,
  `package_version` varchar(8) DEFAULT NULL,
  `package_type` enum('ispconfig','app','web') NOT NULL DEFAULT 'app',
  `package_installable` enum('yes','no','key') NOT NULL DEFAULT 'yes',
  `package_requires_db` enum('no','mysql') NOT NULL DEFAULT 'no',
  `package_remote_functions` text,
  `package_key` varchar(255) NOT NULL,
  `package_config` text,
  PRIMARY KEY (`package_id`),
  UNIQUE KEY `package_name` (`package_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_package`
--

LOCK TABLES `software_package` WRITE;
/*!40000 ALTER TABLE `software_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `software_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_repo`
--

DROP TABLE IF EXISTS `software_repo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software_repo` (
  `software_repo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `repo_name` varchar(64) DEFAULT NULL,
  `repo_url` varchar(255) DEFAULT NULL,
  `repo_username` varchar(64) DEFAULT NULL,
  `repo_password` varchar(64) DEFAULT NULL,
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`software_repo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_repo`
--

LOCK TABLES `software_repo` WRITE;
/*!40000 ALTER TABLE `software_repo` DISABLE KEYS */;
INSERT INTO `software_repo` VALUES (1,1,1,'riud','riud','','ISPConfig Addons','http://repo.ispconfig.org/addons/','','','n');
/*!40000 ALTER TABLE `software_repo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_update`
--

DROP TABLE IF EXISTS `software_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software_update` (
  `software_update_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `software_repo_id` int(11) unsigned NOT NULL,
  `package_name` varchar(64) NOT NULL,
  `update_url` varchar(255) NOT NULL,
  `update_md5` varchar(255) NOT NULL,
  `update_dependencies` varchar(255) NOT NULL,
  `update_title` varchar(64) NOT NULL,
  `v1` tinyint(1) NOT NULL DEFAULT '0',
  `v2` tinyint(1) NOT NULL DEFAULT '0',
  `v3` tinyint(1) NOT NULL DEFAULT '0',
  `v4` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('full','update') NOT NULL DEFAULT 'full',
  PRIMARY KEY (`software_update_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_update`
--

LOCK TABLES `software_update` WRITE;
/*!40000 ALTER TABLE `software_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `software_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_update_inst`
--

DROP TABLE IF EXISTS `software_update_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software_update_inst` (
  `software_update_inst_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `software_update_id` int(11) unsigned NOT NULL DEFAULT '0',
  `package_name` varchar(64) NOT NULL,
  `server_id` int(11) unsigned NOT NULL,
  `status` enum('none','installing','installed','deleting','deleted','failed') NOT NULL DEFAULT 'none',
  PRIMARY KEY (`software_update_inst_id`),
  UNIQUE KEY `software_update_id` (`software_update_id`,`package_name`,`server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_update_inst`
--

LOCK TABLES `software_update_inst` WRITE;
/*!40000 ALTER TABLE `software_update_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `software_update_inst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spamfilter_policy`
--

DROP TABLE IF EXISTS `spamfilter_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spamfilter_policy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL,
  `sys_groupid` int(11) unsigned NOT NULL,
  `sys_perm_user` varchar(5) NOT NULL,
  `sys_perm_group` varchar(5) NOT NULL,
  `sys_perm_other` varchar(5) NOT NULL,
  `policy_name` varchar(64) DEFAULT NULL,
  `virus_lover` enum('N','Y') DEFAULT NULL,
  `spam_lover` enum('N','Y') DEFAULT NULL,
  `banned_files_lover` enum('N','Y') DEFAULT NULL,
  `bad_header_lover` enum('N','Y') DEFAULT NULL,
  `bypass_virus_checks` enum('N','Y') DEFAULT NULL,
  `bypass_spam_checks` enum('N','Y') DEFAULT NULL,
  `bypass_banned_checks` enum('N','Y') DEFAULT NULL,
  `bypass_header_checks` enum('N','Y') DEFAULT NULL,
  `spam_modifies_subj` enum('N','Y') DEFAULT NULL,
  `virus_quarantine_to` varchar(255) DEFAULT NULL,
  `spam_quarantine_to` varchar(255) DEFAULT NULL,
  `banned_quarantine_to` varchar(255) DEFAULT NULL,
  `bad_header_quarantine_to` varchar(255) DEFAULT NULL,
  `clean_quarantine_to` varchar(255) DEFAULT NULL,
  `other_quarantine_to` varchar(255) DEFAULT NULL,
  `spam_tag_level` float DEFAULT NULL,
  `spam_tag2_level` float DEFAULT NULL,
  `spam_kill_level` float DEFAULT NULL,
  `spam_dsn_cutoff_level` float DEFAULT NULL,
  `spam_quarantine_cutoff_level` float DEFAULT NULL,
  `addr_extension_virus` varchar(64) DEFAULT NULL,
  `addr_extension_spam` varchar(64) DEFAULT NULL,
  `addr_extension_banned` varchar(64) DEFAULT NULL,
  `addr_extension_bad_header` varchar(64) DEFAULT NULL,
  `warnvirusrecip` enum('N','Y') DEFAULT NULL,
  `warnbannedrecip` enum('N','Y') DEFAULT NULL,
  `warnbadhrecip` enum('N','Y') DEFAULT NULL,
  `newvirus_admin` varchar(64) DEFAULT NULL,
  `virus_admin` varchar(64) DEFAULT NULL,
  `banned_admin` varchar(64) DEFAULT NULL,
  `bad_header_admin` varchar(64) DEFAULT NULL,
  `spam_admin` varchar(64) DEFAULT NULL,
  `spam_subject_tag` varchar(64) DEFAULT NULL,
  `spam_subject_tag2` varchar(64) DEFAULT NULL,
  `message_size_limit` int(11) unsigned DEFAULT NULL,
  `banned_rulenames` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spamfilter_policy`
--

LOCK TABLES `spamfilter_policy` WRITE;
/*!40000 ALTER TABLE `spamfilter_policy` DISABLE KEYS */;
INSERT INTO `spamfilter_policy` VALUES (1,1,0,'riud','riud','r','Non-paying','N','N','N','N','Y','Y','Y','N','Y','','','','','','',3,7,10,0,0,'','','','','N','N','N','','','','','','','',0,''),(2,1,0,'riud','riud','r','Uncensored','Y','Y','Y','Y','N','N','N','N','N',NULL,NULL,NULL,NULL,NULL,NULL,3,999,999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,0,'riud','riud','r','Wants all spam','N','Y','N','N','N','N','N','N','Y',NULL,NULL,NULL,NULL,NULL,NULL,3,999,999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,0,'riud','riud','r','Wants viruses','Y','N','Y','Y','N','N','N','N','Y',NULL,NULL,NULL,NULL,NULL,NULL,3,6.9,6.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,0,'riud','riud','r','Normal','N','N','N','N','N','N','N','N','Y','','','','','','',1,4.5,50,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','***SPAM***',NULL,NULL),(6,1,0,'riud','riud','r','Trigger happy','N','N','N','N','N','N','N','N','Y',NULL,NULL,NULL,NULL,NULL,NULL,3,5,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,0,'riud','riud','r','Permissive','N','N','N','Y','N','N','N','N','Y',NULL,NULL,NULL,NULL,NULL,NULL,3,10,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spamfilter_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spamfilter_users`
--

DROP TABLE IF EXISTS `spamfilter_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spamfilter_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL,
  `sys_groupid` int(11) unsigned NOT NULL,
  `sys_perm_user` varchar(5) NOT NULL,
  `sys_perm_group` varchar(5) NOT NULL,
  `sys_perm_other` varchar(5) NOT NULL,
  `server_id` int(11) unsigned NOT NULL,
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '7',
  `policy_id` int(11) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `fullname` varchar(64) DEFAULT NULL,
  `local` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spamfilter_users`
--

LOCK TABLES `spamfilter_users` WRITE;
/*!40000 ALTER TABLE `spamfilter_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spamfilter_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spamfilter_wblist`
--

DROP TABLE IF EXISTS `spamfilter_wblist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spamfilter_wblist` (
  `wblist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL,
  `sys_groupid` int(11) unsigned NOT NULL,
  `sys_perm_user` varchar(5) NOT NULL,
  `sys_perm_group` varchar(5) NOT NULL,
  `sys_perm_other` varchar(5) NOT NULL,
  `server_id` int(11) unsigned NOT NULL,
  `wb` enum('W','B') NOT NULL DEFAULT 'W',
  `rid` int(11) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `priority` tinyint(3) unsigned NOT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`wblist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spamfilter_wblist`
--

LOCK TABLES `spamfilter_wblist` WRITE;
/*!40000 ALTER TABLE `spamfilter_wblist` DISABLE KEYS */;
/*!40000 ALTER TABLE `spamfilter_wblist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_message`
--

DROP TABLE IF EXISTS `support_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_message` (
  `support_message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `recipient_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`support_message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_message`
--

LOCK TABLES `support_message` WRITE;
/*!40000 ALTER TABLE `support_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `config_id` int(11) unsigned NOT NULL,
  `group` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'db','db_version','3.0.5.2');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_datalog`
--

DROP TABLE IF EXISTS `sys_datalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_datalog` (
  `datalog_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(11) unsigned NOT NULL,
  `dbtable` varchar(255) NOT NULL DEFAULT '',
  `dbidx` varchar(255) NOT NULL DEFAULT '',
  `action` char(1) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `user` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `status` set('pending','ok','warning','error') NOT NULL DEFAULT 'ok',
  PRIMARY KEY (`datalog_id`),
  KEY `server_id` (`server_id`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_datalog`
--

LOCK TABLES `sys_datalog` WRITE;
/*!40000 ALTER TABLE `sys_datalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_datalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dbsync`
--

DROP TABLE IF EXISTS `sys_dbsync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dbsync` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `jobname` varchar(64) NOT NULL DEFAULT '',
  `sync_interval_minutes` int(11) unsigned NOT NULL DEFAULT '0',
  `db_type` varchar(16) NOT NULL DEFAULT '',
  `db_host` varchar(255) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `db_username` varchar(64) NOT NULL DEFAULT '',
  `db_password` varchar(64) NOT NULL DEFAULT '',
  `db_tables` varchar(255) NOT NULL DEFAULT 'admin,forms',
  `empty_datalog` int(11) unsigned NOT NULL DEFAULT '0',
  `sync_datalog_external` int(11) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `last_datalog_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `last_datalog_id` (`last_datalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dbsync`
--

LOCK TABLES `sys_dbsync` WRITE;
/*!40000 ALTER TABLE `sys_dbsync` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_dbsync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filesync`
--

DROP TABLE IF EXISTS `sys_filesync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filesync` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `jobname` varchar(64) NOT NULL DEFAULT '',
  `sync_interval_minutes` int(11) unsigned NOT NULL DEFAULT '0',
  `ftp_host` varchar(255) NOT NULL DEFAULT '',
  `ftp_path` varchar(255) NOT NULL DEFAULT '',
  `ftp_username` varchar(64) NOT NULL DEFAULT '',
  `ftp_password` varchar(64) NOT NULL DEFAULT '',
  `local_path` varchar(255) NOT NULL DEFAULT '',
  `wput_options` varchar(255) NOT NULL DEFAULT '--timestamping --reupload --dont-continue',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filesync`
--

LOCK TABLES `sys_filesync` WRITE;
/*!40000 ALTER TABLE `sys_filesync` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filesync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_group`
--

DROP TABLE IF EXISTS `sys_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_group` (
  `groupid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `client_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_group`
--

LOCK TABLES `sys_group` WRITE;
/*!40000 ALTER TABLE `sys_group` DISABLE KEYS */;
INSERT INTO `sys_group` VALUES (1,'admin','Administrators group',0);
/*!40000 ALTER TABLE `sys_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ini`
--

DROP TABLE IF EXISTS `sys_ini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ini` (
  `sysini_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `config` longtext NOT NULL,
  PRIMARY KEY (`sysini_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ini`
--

LOCK TABLES `sys_ini` WRITE;
/*!40000 ALTER TABLE `sys_ini` DISABLE KEYS */;
INSERT INTO `sys_ini` VALUES (1,'[global]\n\n[admin]\n\n[client]\n\n[dns]\n\n[mail]\nenable_custom_login=n\nmailboxlist_webmail_link=y\nwebmail_url=/webmail\n\n[monitor]\n\n[sites]\ndbname_prefix=c[CLIENTID]\ndbuser_prefix=c[CLIENTID]\nftpuser_prefix=[CLIENTNAME]\nshelluser_prefix=[CLIENTNAME]\nwebdavuser_prefix=[CLIENTNAME]\ndblist_phpmyadmin_link=y\nphpmyadmin_url=/phpmyadmin\nwebftp_url=\nclient_username_web_check_disabled=n\n\n[tools]\n\n[domains]\nuse_domain_module=n\nnew_domain_html=Please contact our support to create a new domain for you.\n\n[misc]\ndashboard_atom_url_admin=http://www.ispconfig.org/atom\ndashboard_atom_url_reseller=http://www.ispconfig.org/atom\ndashboard_atom_url_client=http://www.ispconfig.org/atom\nmonitor_key=\ntab_change_discard=n\ntab_change_warning=n\nuse_loadindicator=y\nuse_combobox=y\nmaintenance_mode=n\n');
/*!40000 ALTER TABLE `sys_ini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `syslog_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `datalog_id` int(11) unsigned NOT NULL DEFAULT '0',
  `loglevel` tinyint(4) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL,
  `message` text,
  PRIMARY KEY (`syslog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_remoteaction`
--

DROP TABLE IF EXISTS `sys_remoteaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_remoteaction` (
  `action_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(11) unsigned NOT NULL,
  `tstamp` int(11) NOT NULL,
  `action_type` varchar(20) NOT NULL,
  `action_param` mediumtext NOT NULL,
  `action_state` enum('pending','ok','warning','error') NOT NULL,
  `response` mediumtext NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `server_id` (`server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_remoteaction`
--

LOCK TABLES `sys_remoteaction` WRITE;
/*!40000 ALTER TABLE `sys_remoteaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_remoteaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_session`
--

DROP TABLE IF EXISTS `sys_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_session` (
  `session_id` varchar(64) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `session_data` longtext,
  PRIMARY KEY (`session_id`),
  KEY `last_updated` (`last_updated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_session`
--

LOCK TABLES `sys_session` WRITE;
/*!40000 ALTER TABLE `sys_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_theme`
--

DROP TABLE IF EXISTS `sys_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_theme` (
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `var_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_name` varchar(32) NOT NULL,
  `username` varchar(64) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  PRIMARY KEY (`var_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_theme`
--

LOCK TABLES `sys_theme` WRITE;
/*!40000 ALTER TABLE `sys_theme` DISABLE KEYS */;
INSERT INTO `sys_theme` VALUES (0,0,NULL,NULL,NULL,1,'default','global','themes/default/images/header_logo.png'),(0,0,NULL,NULL,NULL,2,'default-v2','global','themes/default-v2/images/header_logo.png');
/*!40000 ALTER TABLE `sys_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `userid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '1',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '1',
  `sys_perm_user` varchar(5) NOT NULL DEFAULT 'riud',
  `sys_perm_group` varchar(5) NOT NULL DEFAULT 'riud',
  `sys_perm_other` varchar(5) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `passwort` varchar(64) NOT NULL DEFAULT '',
  `modules` varchar(255) NOT NULL DEFAULT '',
  `startmodule` varchar(255) NOT NULL DEFAULT '',
  `app_theme` varchar(32) NOT NULL DEFAULT 'default',
  `typ` varchar(16) NOT NULL DEFAULT 'user',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `language` varchar(2) NOT NULL DEFAULT 'en',
  `groups` text NOT NULL,
  `default_group` int(11) unsigned NOT NULL DEFAULT '0',
  `client_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id_rsa` varchar(2000) NOT NULL DEFAULT '',
  `ssh_rsa` varchar(600) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,1,0,'riud','riud','','admin','21232f297a57a5a743894a0e4a801fc3','dashboard,admin,client,mail,monitor,sites,dns,vm,tools,help','dashboard','default','admin',1,'en','1,2',1,0,'','');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_backup`
--

DROP TABLE IF EXISTS `web_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_backup` (
  `backup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(10) unsigned NOT NULL,
  `parent_domain_id` int(10) unsigned NOT NULL,
  `backup_type` enum('web','mysql') NOT NULL DEFAULT 'web',
  `backup_mode` varchar(64) NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_backup`
--

LOCK TABLES `web_backup` WRITE;
/*!40000 ALTER TABLE `web_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_database`
--

DROP TABLE IF EXISTS `web_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_database` (
  `database_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_domain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT 'y',
  `database_name` varchar(64) DEFAULT NULL,
  `database_name_prefix` varchar(50) NOT NULL DEFAULT '',
  `database_user_id` int(11) unsigned DEFAULT NULL,
  `database_ro_user_id` int(11) unsigned DEFAULT NULL,
  `database_charset` varchar(64) DEFAULT NULL,
  `remote_access` enum('n','y') NOT NULL DEFAULT 'y',
  `remote_ips` text NOT NULL,
  `backup_interval` varchar(255) NOT NULL DEFAULT 'none',
  `backup_copies` int(11) NOT NULL DEFAULT '1',
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`database_id`),
  KEY `database_user_id` (`database_user_id`),
  KEY `database_ro_user_id` (`database_ro_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_database`
--

LOCK TABLES `web_database` WRITE;
/*!40000 ALTER TABLE `web_database` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_database_user`
--

DROP TABLE IF EXISTS `web_database_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_database_user` (
  `database_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `database_user` varchar(64) DEFAULT NULL,
  `database_user_prefix` varchar(50) NOT NULL DEFAULT '',
  `database_password` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`database_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_database_user`
--

LOCK TABLES `web_database_user` WRITE;
/*!40000 ALTER TABLE `web_database_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_database_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_domain`
--

DROP TABLE IF EXISTS `web_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_domain` (
  `domain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(39) DEFAULT NULL,
  `ipv6_address` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `parent_domain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `vhost_type` varchar(32) DEFAULT NULL,
  `document_root` varchar(255) DEFAULT NULL,
  `web_folder` varchar(100) DEFAULT NULL,
  `system_user` varchar(255) DEFAULT NULL,
  `system_group` varchar(255) DEFAULT NULL,
  `hd_quota` bigint(20) NOT NULL DEFAULT '0',
  `traffic_quota` bigint(20) NOT NULL DEFAULT '-1',
  `cgi` enum('n','y') NOT NULL DEFAULT 'y',
  `ssi` enum('n','y') NOT NULL DEFAULT 'y',
  `suexec` enum('n','y') NOT NULL DEFAULT 'y',
  `errordocs` tinyint(1) NOT NULL DEFAULT '1',
  `is_subdomainwww` tinyint(1) NOT NULL DEFAULT '1',
  `subdomain` enum('none','www','*') NOT NULL DEFAULT 'none',
  `php` varchar(32) NOT NULL DEFAULT 'y',
  `ruby` enum('n','y') NOT NULL DEFAULT 'n',
  `python` enum('n','y') NOT NULL DEFAULT 'n',
  `perl` enum('n','y') NOT NULL DEFAULT 'n',
  `redirect_type` varchar(255) DEFAULT NULL,
  `redirect_path` varchar(255) DEFAULT NULL,
  `seo_redirect` varchar(255) DEFAULT NULL,
  `ssl` enum('n','y') NOT NULL DEFAULT 'n',
  `ssl_state` varchar(255) DEFAULT NULL,
  `ssl_locality` varchar(255) DEFAULT NULL,
  `ssl_organisation` varchar(255) DEFAULT NULL,
  `ssl_organisation_unit` varchar(255) DEFAULT NULL,
  `ssl_country` varchar(255) DEFAULT NULL,
  `ssl_domain` varchar(255) DEFAULT NULL,
  `ssl_request` mediumtext,
  `ssl_cert` mediumtext,
  `ssl_bundle` mediumtext,
  `ssl_key` mediumtext,
  `ssl_action` varchar(16) DEFAULT NULL,
  `stats_password` varchar(255) DEFAULT NULL,
  `stats_type` varchar(255) DEFAULT 'webalizer',
  `allow_override` varchar(255) NOT NULL DEFAULT 'All',
  `apache_directives` mediumtext,
  `nginx_directives` mediumtext,
  `php_fpm_use_socket` enum('n','y') NOT NULL DEFAULT 'n',
  `pm` enum('static','dynamic','ondemand') NOT NULL DEFAULT 'dynamic',
  `pm_max_children` int(11) NOT NULL DEFAULT '10',
  `pm_start_servers` int(11) NOT NULL DEFAULT '2',
  `pm_min_spare_servers` int(11) NOT NULL DEFAULT '1',
  `pm_max_spare_servers` int(11) NOT NULL DEFAULT '5',
  `pm_process_idle_timeout` int(11) NOT NULL DEFAULT '10',
  `pm_max_requests` int(11) NOT NULL DEFAULT '0',
  `php_open_basedir` mediumtext,
  `custom_php_ini` mediumtext,
  `backup_interval` varchar(255) NOT NULL DEFAULT 'none',
  `backup_copies` int(11) NOT NULL DEFAULT '1',
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  `traffic_quota_lock` enum('n','y') NOT NULL DEFAULT 'n',
  `fastcgi_php_version` varchar(255) DEFAULT NULL,
  `proxy_directives` mediumtext,
  PRIMARY KEY (`domain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_domain`
--

LOCK TABLES `web_domain` WRITE;
/*!40000 ALTER TABLE `web_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_folder`
--

DROP TABLE IF EXISTS `web_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_folder` (
  `web_folder_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) NOT NULL DEFAULT '0',
  `sys_groupid` int(11) NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `parent_domain_id` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `active` varchar(255) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`web_folder_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_folder`
--

LOCK TABLES `web_folder` WRITE;
/*!40000 ALTER TABLE `web_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_folder_user`
--

DROP TABLE IF EXISTS `web_folder_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_folder_user` (
  `web_folder_user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) NOT NULL DEFAULT '0',
  `sys_groupid` int(11) NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) NOT NULL DEFAULT '0',
  `web_folder_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` varchar(255) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`web_folder_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_folder_user`
--

LOCK TABLES `web_folder_user` WRITE;
/*!40000 ALTER TABLE `web_folder_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_folder_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_traffic`
--

DROP TABLE IF EXISTS `web_traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_traffic` (
  `hostname` varchar(255) NOT NULL,
  `traffic_date` date NOT NULL,
  `traffic_bytes` bigint(32) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hostname`,`traffic_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_traffic`
--

LOCK TABLES `web_traffic` WRITE;
/*!40000 ALTER TABLE `web_traffic` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webdav_user`
--

DROP TABLE IF EXISTS `webdav_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webdav_user` (
  `webdav_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sys_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_perm_user` varchar(5) DEFAULT NULL,
  `sys_perm_group` varchar(5) DEFAULT NULL,
  `sys_perm_other` varchar(5) DEFAULT NULL,
  `server_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_domain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `username_prefix` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(64) DEFAULT NULL,
  `active` enum('n','y') NOT NULL DEFAULT 'y',
  `dir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`webdav_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webdav_user`
--

LOCK TABLES `webdav_user` WRITE;
/*!40000 ALTER TABLE `webdav_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdav_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-27 17:37:32
