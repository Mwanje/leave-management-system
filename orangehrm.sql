-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2018 at 02:21 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orangehrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `abstract_display_field`
--

CREATE TABLE `abstract_display_field` (
  `id` bigint(20) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_alias` varchar(255) DEFAULT NULL,
  `is_sortable` varchar(10) NOT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_property` text NOT NULL,
  `width` varchar(255) NOT NULL,
  `is_exportable` varchar(10) DEFAULT NULL,
  `text_alignment_style` varchar(20) DEFAULT NULL,
  `is_value_list` tinyint(1) NOT NULL,
  `display_field_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `is_encrypted` tinyint(1) NOT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_config`
--

CREATE TABLE `hs_hr_config` (
  `key` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(512) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_config`
--

INSERT INTO `hs_hr_config` (`key`, `value`) VALUES
('admin.default_workshift_end_time', '17:00'),
('admin.default_workshift_start_time', '09:00'),
('admin.localization.default_date_format', 'Y-m-d'),
('admin.localization.default_language', 'en_US'),
('admin.localization.use_browser_language', 'No'),
('admin.product_type', 'os'),
('attendanceEmpEditSubmitted', 'No'),
('attendanceSupEditSubmitted', 'No'),
('authorize_user_role_manager_class', 'BasicUserRoleManager'),
('beacon.activation_acceptance_status', 'off'),
('beacon.activiation_status', 'off'),
('beacon.company_name', ''),
('beacon.flash_period', '120'),
('beacon.lock', 'unlocked'),
('beacon.next_flash_time', '0000-00-00'),
('beacon.uuid', '0'),
('csrf_secret', '3f65aa5b3ee82a90531e39aee95a30494e6b199eb3066e8da0940d0cf1ca31bfff5a328ff8594ef5a49fba47fa8ff59e484ba09ca6862e'),
('domain.name', 'localhost'),
('hsp_accrued_last_updated', '0000-00-00'),
('hsp_current_plan', '0'),
('hsp_used_last_updated', '0000-00-00'),
('include_supervisor_chain', 'No'),
('ldap_domain_name', ''),
('ldap_port', ''),
('ldap_server', ''),
('ldap_status', ''),
('leave.entitlement_consumption_algorithm', 'FIFOEntitlementConsumptionStrategy'),
('leave.include_pending_leave_in_balance', '1'),
('leave.leavePeriodStatus', '1'),
('leave.work_schedule_implementation', 'BasicWorkSchedule'),
('leave_period_defined', 'Yes'),
('openId.provider.added', 'off'),
('pim_show_deprecated_fields', '0'),
('report.mysql_group_concat_max_len', '2048'),
('showSIN', '0'),
('showSSN', '0'),
('showTaxExemptions', '0'),
('themeName', 'default'),
('timesheet_period_and_start_date', '<TimesheetPeriod><PeriodType>Weekly</PeriodType><ClassName>WeeklyTimesheetPeriod</ClassName><StartDate>1</StartDate><Heading>Week</Heading></TimesheetPeriod>'),
('timesheet_period_set', 'No'),
('timesheet_time_format', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_country`
--

CREATE TABLE `hs_hr_country` (
  `cou_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `cou_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_country`
--

INSERT INTO `hs_hr_country` (`cou_code`, `name`, `cou_name`, `iso3`, `numcode`) VALUES
('AD', 'ANDORRA', 'Andorra', 'AND', 20),
('AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
('AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
('AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
('AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
('AL', 'ALBANIA', 'Albania', 'ALB', 8),
('AM', 'ARMENIA', 'Armenia', 'ARM', 51),
('AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
('AO', 'ANGOLA', 'Angola', 'AGO', 24),
('AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
('AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
('AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
('AT', 'AUSTRIA', 'Austria', 'AUT', 40),
('AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
('AW', 'ARUBA', 'Aruba', 'ABW', 533),
('AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
('BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
('BB', 'BARBADOS', 'Barbados', 'BRB', 52),
('BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
('BE', 'BELGIUM', 'Belgium', 'BEL', 56),
('BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
('BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
('BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
('BI', 'BURUNDI', 'Burundi', 'BDI', 108),
('BJ', 'BENIN', 'Benin', 'BEN', 204),
('BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
('BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
('BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
('BR', 'BRAZIL', 'Brazil', 'BRA', 76),
('BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
('BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
('BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
('BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
('BY', 'BELARUS', 'Belarus', 'BLR', 112),
('BZ', 'BELIZE', 'Belize', 'BLZ', 84),
('CA', 'CANADA', 'Canada', 'CAN', 124),
('CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
('CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
('CG', 'CONGO', 'Congo', 'COG', 178),
('CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
('CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384),
('CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
('CL', 'CHILE', 'Chile', 'CHL', 152),
('CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
('CN', 'CHINA', 'China', 'CHN', 156),
('CO', 'COLOMBIA', 'Colombia', 'COL', 170),
('CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
('CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
('CU', 'CUBA', 'Cuba', 'CUB', 192),
('CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
('CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
('CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
('CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
('DE', 'GERMANY', 'Germany', 'DEU', 276),
('DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
('DK', 'DENMARK', 'Denmark', 'DNK', 208),
('DM', 'DOMINICA', 'Dominica', 'DMA', 212),
('DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
('DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
('EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
('EE', 'ESTONIA', 'Estonia', 'EST', 233),
('EG', 'EGYPT', 'Egypt', 'EGY', 818),
('EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
('ER', 'ERITREA', 'Eritrea', 'ERI', 232),
('ES', 'SPAIN', 'Spain', 'ESP', 724),
('ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
('FI', 'FINLAND', 'Finland', 'FIN', 246),
('FJ', 'FIJI', 'Fiji', 'FJI', 242),
('FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
('FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
('FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
('FR', 'FRANCE', 'France', 'FRA', 250),
('GA', 'GABON', 'Gabon', 'GAB', 266),
('GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
('GD', 'GRENADA', 'Grenada', 'GRD', 308),
('GE', 'GEORGIA', 'Georgia', 'GEO', 268),
('GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
('GH', 'GHANA', 'Ghana', 'GHA', 288),
('GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
('GL', 'GREENLAND', 'Greenland', 'GRL', 304),
('GM', 'GAMBIA', 'Gambia', 'GMB', 270),
('GN', 'GUINEA', 'Guinea', 'GIN', 324),
('GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
('GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
('GR', 'GREECE', 'Greece', 'GRC', 300),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
('GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
('GU', 'GUAM', 'Guam', 'GUM', 316),
('GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
('GY', 'GUYANA', 'Guyana', 'GUY', 328),
('HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
('HN', 'HONDURAS', 'Honduras', 'HND', 340),
('HR', 'CROATIA', 'Croatia', 'HRV', 191),
('HT', 'HAITI', 'Haiti', 'HTI', 332),
('HU', 'HUNGARY', 'Hungary', 'HUN', 348),
('ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
('IE', 'IRELAND', 'Ireland', 'IRL', 372),
('IL', 'ISRAEL', 'Israel', 'ISR', 376),
('IN', 'INDIA', 'India', 'IND', 356),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
('IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
('IS', 'ICELAND', 'Iceland', 'ISL', 352),
('IT', 'ITALY', 'Italy', 'ITA', 380),
('JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
('JO', 'JORDAN', 'Jordan', 'JOR', 400),
('JP', 'JAPAN', 'Japan', 'JPN', 392),
('KE', 'KENYA', 'Kenya', 'KEN', 404),
('KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
('KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
('KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
('KM', 'COMOROS', 'Comoros', 'COM', 174),
('KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
('KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408),
('KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
('KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
('KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
('KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
('LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418),
('LB', 'LEBANON', 'Lebanon', 'LBN', 422),
('LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
('LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
('LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
('LR', 'LIBERIA', 'Liberia', 'LBR', 430),
('LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
('LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
('LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
('LV', 'LATVIA', 'Latvia', 'LVA', 428),
('LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
('MA', 'MOROCCO', 'Morocco', 'MAR', 504),
('MC', 'MONACO', 'Monaco', 'MCO', 492),
('MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
('MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
('MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
('ML', 'MALI', 'Mali', 'MLI', 466),
('MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
('MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
('MO', 'MACAO', 'Macao', 'MAC', 446),
('MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
('MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
('MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
('MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
('MT', 'MALTA', 'Malta', 'MLT', 470),
('MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
('MV', 'MALDIVES', 'Maldives', 'MDV', 462),
('MW', 'MALAWI', 'Malawi', 'MWI', 454),
('MX', 'MEXICO', 'Mexico', 'MEX', 484),
('MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
('MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
('NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
('NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
('NE', 'NIGER', 'Niger', 'NER', 562),
('NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
('NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
('NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
('NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
('NO', 'NORWAY', 'Norway', 'NOR', 578),
('NP', 'NEPAL', 'Nepal', 'NPL', 524),
('NR', 'NAURU', 'Nauru', 'NRU', 520),
('NU', 'NIUE', 'Niue', 'NIU', 570),
('NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
('OM', 'OMAN', 'Oman', 'OMN', 512),
('PA', 'PANAMA', 'Panama', 'PAN', 591),
('PE', 'PERU', 'Peru', 'PER', 604),
('PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
('PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
('PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
('PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
('PL', 'POLAND', 'Poland', 'POL', 616),
('PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
('PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
('PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
('PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
('PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
('PW', 'PALAU', 'Palau', 'PLW', 585),
('PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
('QA', 'QATAR', 'Qatar', 'QAT', 634),
('RE', 'REUNION', 'Reunion', 'REU', 638),
('RO', 'ROMANIA', 'Romania', 'ROM', 642),
('RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
('RW', 'RWANDA', 'Rwanda', 'RWA', 646),
('SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
('SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
('SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
('SD', 'SUDAN', 'Sudan', 'SDN', 736),
('SE', 'SWEDEN', 'Sweden', 'SWE', 752),
('SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
('SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
('SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
('SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
('SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
('SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
('SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
('SN', 'SENEGAL', 'Senegal', 'SEN', 686),
('SO', 'SOMALIA', 'Somalia', 'SOM', 706),
('SR', 'SURINAME', 'Suriname', 'SUR', 740),
('ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
('SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
('SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
('SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
('TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
('TD', 'CHAD', 'Chad', 'TCD', 148),
('TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
('TG', 'TOGO', 'Togo', 'TGO', 768),
('TH', 'THAILAND', 'Thailand', 'THA', 764),
('TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
('TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
('TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
('TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
('TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
('TO', 'TONGA', 'Tonga', 'TON', 776),
('TR', 'TURKEY', 'Turkey', 'TUR', 792),
('TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
('TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
('TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan', 'TWN', 158),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
('UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
('UG', 'UGANDA', 'Uganda', 'UGA', 800),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
('US', 'UNITED STATES', 'United States', 'USA', 840),
('UY', 'URUGUAY', 'Uruguay', 'URY', 858),
('UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
('VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
('VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
('VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
('VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
('VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
('VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
('VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
('WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
('WS', 'SAMOA', 'Samoa', 'WSM', 882),
('YE', 'YEMEN', 'Yemen', 'YEM', 887),
('YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
('ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
('ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
('ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_currency_type`
--

CREATE TABLE `hs_hr_currency_type` (
  `code` int(11) NOT NULL DEFAULT '0',
  `currency_id` char(3) NOT NULL DEFAULT '',
  `currency_name` varchar(70) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_currency_type`
--

INSERT INTO `hs_hr_currency_type` (`code`, `currency_id`, `currency_name`) VALUES
(3, 'AED', 'Utd. Arab Emir. Dirham'),
(4, 'AFN', 'Afghanistan Afghani'),
(5, 'ALL', 'Albanian Lek'),
(6, 'ANG', 'NL Antillian Guilder'),
(7, 'AOR', 'Angolan New Kwanza'),
(177, 'ARP', 'Argentina Pesos'),
(8, 'ARS', 'Argentine Peso'),
(10, 'AUD', 'Australian Dollar'),
(11, 'AWG', 'Aruban Florin'),
(12, 'BBD', 'Barbados Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(15, 'BGL', 'Bulgarian Lev'),
(16, 'BHD', 'Bahraini Dinar'),
(17, 'BIF', 'Burundi Franc'),
(18, 'BMD', 'Bermudian Dollar'),
(19, 'BND', 'Brunei Dollar'),
(20, 'BOB', 'Bolivian Boliviano'),
(21, 'BRL', 'Brazilian Real'),
(22, 'BSD', 'Bahamian Dollar'),
(23, 'BTN', 'Bhutan Ngultrum'),
(24, 'BWP', 'Botswana Pula'),
(25, 'BZD', 'Belize Dollar'),
(26, 'CAD', 'Canadian Dollar'),
(27, 'CHF', 'Swiss Franc'),
(28, 'CLP', 'Chilean Peso'),
(29, 'CNY', 'Chinese Yuan Renminbi'),
(30, 'COP', 'Colombian Peso'),
(31, 'CRC', 'Costa Rican Colon'),
(32, 'CUP', 'Cuban Peso'),
(33, 'CVE', 'Cape Verde Escudo'),
(34, 'CYP', 'Cyprus Pound'),
(171, 'CZK', 'Czech Koruna'),
(37, 'DJF', 'Djibouti Franc'),
(38, 'DKK', 'Danish Krona'),
(39, 'DOP', 'Dominican Peso'),
(40, 'DZD', 'Algerian Dinar'),
(41, 'ECS', 'Ecuador Sucre'),
(43, 'EEK', 'Estonian Krona'),
(44, 'EGP', 'Egyptian Pound'),
(46, 'ETB', 'Ethiopian Birr'),
(42, 'EUR', 'Euro'),
(48, 'FJD', 'Fiji Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(51, 'GBP', 'Pound Sterling'),
(52, 'GHC', 'Ghanaian Cedi'),
(53, 'GIP', 'Gibraltar Pound'),
(54, 'GMD', 'Gambian Dalasi'),
(55, 'GNF', 'Guinea Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanan Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(66, 'ILS', 'Israeli New Shekel'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Iceland Krona'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KHR', 'Kampuchean Riel'),
(77, 'KMF', 'Comoros Franc'),
(78, 'KPW', 'North Korean Won'),
(79, 'KRW', 'Korean Won'),
(80, 'KWD', 'Kuwaiti Dinar'),
(81, 'KYD', 'Cayman Islands Dollar'),
(82, 'KZT', 'Kazakhstan Tenge'),
(83, 'LAK', 'Lao Kip'),
(84, 'LBP', 'Lebanese Pound'),
(85, 'LKR', 'Sri Lanka Rupee'),
(86, 'LRD', 'Liberian Dollar'),
(87, 'LSL', 'Lesotho Loti'),
(88, 'LTL', 'Lithuanian Litas'),
(90, 'LVL', 'Latvian Lats'),
(91, 'LYD', 'Libyan Dinar'),
(92, 'MAD', 'Moroccan Dirham'),
(93, 'MGF', 'Malagasy Franc'),
(94, 'MMK', 'Myanmar Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macau Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya'),
(98, 'MTL', 'Maltese Lira'),
(99, 'MUR', 'Mauritius Rupee'),
(100, 'MVR', 'Maldive Rufiyaa'),
(101, 'MWK', 'Malawi Kwacha'),
(102, 'MXN', 'Mexican New Peso'),
(172, 'MXP', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZM', 'Mozambique Metical'),
(105, 'NAD', 'Namibia Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Cordoba Oro'),
(109, 'NOK', 'Norwegian Krona'),
(110, 'NPR', 'Nepalese Rupee'),
(111, 'NZD', 'New Zealand Dollar'),
(112, 'OMR', 'Omani Rial'),
(113, 'PAB', 'Panamanian Balboa'),
(114, 'PEN', 'Peruvian Nuevo Sol'),
(115, 'PGK', 'Papua New Guinea Kina'),
(116, 'PHP', 'Philippine Peso'),
(117, 'PKR', 'Pakistan Rupee'),
(118, 'PLN', 'Polish Zloty'),
(120, 'PYG', 'Paraguay Guarani'),
(121, 'QAR', 'Qatari Rial'),
(122, 'ROL', 'Romanian Leu'),
(123, 'RUB', 'Russian Rouble'),
(180, 'RUR', 'Russia Rubles'),
(173, 'SAR', 'Saudi Arabia Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychelles Rupee'),
(127, 'SDD', 'Sudanese Dinar'),
(128, 'SDP', 'Sudanese Pound'),
(129, 'SEK', 'Swedish Krona'),
(131, 'SGD', 'Singapore Dollar'),
(132, 'SHP', 'St. Helena Pound'),
(130, 'SKK', 'Slovak Koruna'),
(135, 'SLL', 'Sierra Leone Leone'),
(136, 'SOS', 'Somali Shilling'),
(137, 'SRD', 'Surinamese Dollar'),
(138, 'STD', 'Sao Tome/Principe Dobra'),
(139, 'SVC', 'El Salvador Colon'),
(140, 'SYP', 'Syrian Pound'),
(141, 'SZL', 'Swaziland Lilangeni'),
(142, 'THB', 'Thai Baht'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa''anga'),
(145, 'TRL', 'Turkish Lira'),
(146, 'TTD', 'Trinidad/Tobago Dollar'),
(147, 'TWD', 'Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukraine Hryvnia'),
(150, 'UGX', 'Uganda Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYP', 'Uruguayan Peso'),
(153, 'VEB', 'Venezuelan Bolivar'),
(154, 'VND', 'Vietnamese Dong'),
(155, 'VUV', 'Vanuatu Vatu'),
(156, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver (oz.)'),
(160, 'XAU', 'Gold (oz.)'),
(161, 'XCD', 'Eastern Caribbean Dollars'),
(179, 'XDR', 'IMF Special Drawing Right'),
(162, 'XOF', 'CFA Franc BCEAO'),
(163, 'XPD', 'Palladium (oz.)'),
(164, 'XPF', 'CFP Franc'),
(165, 'XPT', 'Platinum (oz.)'),
(166, 'YER', 'Yemeni Riyal'),
(167, 'YUM', 'Yugoslavian Dinar'),
(175, 'YUN', 'Yugoslav Dinar'),
(168, 'ZAR', 'South African Rand'),
(176, 'ZMK', 'Zambian Kwacha'),
(169, 'ZRN', 'New Zaire'),
(170, 'ZWD', 'Zimbabwe Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_custom_export`
--

CREATE TABLE `hs_hr_custom_export` (
  `export_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fields` text,
  `headings` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_custom_fields`
--

CREATE TABLE `hs_hr_custom_fields` (
  `field_num` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `screen` varchar(100) DEFAULT NULL,
  `extra_data` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_custom_import`
--

CREATE TABLE `hs_hr_custom_import` (
  `import_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fields` text,
  `has_heading` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_district`
--

CREATE TABLE `hs_hr_district` (
  `district_code` varchar(13) NOT NULL DEFAULT '',
  `district_name` varchar(50) DEFAULT NULL,
  `province_code` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_employee`
--

CREATE TABLE `hs_hr_employee` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `employee_id` varchar(50) DEFAULT NULL,
  `emp_lastname` varchar(100) NOT NULL DEFAULT '',
  `emp_firstname` varchar(100) NOT NULL DEFAULT '',
  `emp_middle_name` varchar(100) NOT NULL DEFAULT '',
  `emp_nick_name` varchar(100) DEFAULT '',
  `emp_smoker` smallint(6) DEFAULT '0',
  `ethnic_race_code` varchar(13) DEFAULT NULL,
  `emp_birthday` date DEFAULT NULL,
  `nation_code` int(4) DEFAULT NULL,
  `emp_gender` smallint(6) DEFAULT NULL,
  `emp_marital_status` varchar(20) DEFAULT NULL,
  `emp_ssn_num` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `emp_sin_num` varchar(100) DEFAULT '',
  `emp_other_id` varchar(100) DEFAULT '',
  `emp_dri_lice_num` varchar(100) DEFAULT '',
  `emp_dri_lice_exp_date` date DEFAULT NULL,
  `emp_military_service` varchar(100) DEFAULT '',
  `emp_status` int(13) DEFAULT NULL,
  `job_title_code` int(7) DEFAULT NULL,
  `eeo_cat_code` int(11) DEFAULT NULL,
  `work_station` int(6) DEFAULT NULL,
  `emp_street1` varchar(100) DEFAULT '',
  `emp_street2` varchar(100) DEFAULT '',
  `city_code` varchar(100) DEFAULT '',
  `coun_code` varchar(100) DEFAULT '',
  `provin_code` varchar(100) DEFAULT '',
  `emp_zipcode` varchar(20) DEFAULT NULL,
  `emp_hm_telephone` varchar(50) DEFAULT NULL,
  `emp_mobile` varchar(50) DEFAULT NULL,
  `emp_work_telephone` varchar(50) DEFAULT NULL,
  `emp_work_email` varchar(50) DEFAULT NULL,
  `sal_grd_code` varchar(13) DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `emp_oth_email` varchar(50) DEFAULT NULL,
  `termination_id` int(4) DEFAULT NULL,
  `custom1` varchar(250) DEFAULT NULL,
  `custom2` varchar(250) DEFAULT NULL,
  `custom3` varchar(250) DEFAULT NULL,
  `custom4` varchar(250) DEFAULT NULL,
  `custom5` varchar(250) DEFAULT NULL,
  `custom6` varchar(250) DEFAULT NULL,
  `custom7` varchar(250) DEFAULT NULL,
  `custom8` varchar(250) DEFAULT NULL,
  `custom9` varchar(250) DEFAULT NULL,
  `custom10` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_employee`
--

INSERT INTO `hs_hr_employee` (`emp_number`, `employee_id`, `emp_lastname`, `emp_firstname`, `emp_middle_name`, `emp_nick_name`, `emp_smoker`, `ethnic_race_code`, `emp_birthday`, `nation_code`, `emp_gender`, `emp_marital_status`, `emp_ssn_num`, `emp_sin_num`, `emp_other_id`, `emp_dri_lice_num`, `emp_dri_lice_exp_date`, `emp_military_service`, `emp_status`, `job_title_code`, `eeo_cat_code`, `work_station`, `emp_street1`, `emp_street2`, `city_code`, `coun_code`, `provin_code`, `emp_zipcode`, `emp_hm_telephone`, `emp_mobile`, `emp_work_telephone`, `emp_work_email`, `sal_grd_code`, `joined_date`, `emp_oth_email`, `termination_id`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
(1, '0001', 'Mwanje', 'Musa', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '0002', 'Mwanje', 'kasolo', '', '', 0, NULL, '2000-01-20', 184, 1, 'Single', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '0003', 'Muhatis', 'Shaffic', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_attachment`
--

CREATE TABLE `hs_hr_emp_attachment` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `eattach_id` int(11) NOT NULL DEFAULT '0',
  `eattach_desc` varchar(200) DEFAULT NULL,
  `eattach_filename` varchar(100) DEFAULT NULL,
  `eattach_size` int(11) DEFAULT '0',
  `eattach_attachment` mediumblob,
  `eattach_type` varchar(200) DEFAULT NULL,
  `screen` varchar(100) DEFAULT '',
  `attached_by` int(11) DEFAULT NULL,
  `attached_by_name` varchar(200) DEFAULT NULL,
  `attached_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_emp_attachment`
--

INSERT INTO `hs_hr_emp_attachment` (`emp_number`, `eattach_id`, `eattach_desc`, `eattach_filename`, `eattach_size`, `eattach_attachment`, `eattach_type`, `screen`, `attached_by`, `attached_by_name`, `attached_time`) VALUES
(3, 1, '', 'BUDGET.docx', 16068, 0x504b030414000600080000002100dfa4d26c5a01000020050000130008025b436f6e74656e745f54797065735d2e786d6c20a2040228a000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b494cb6ec2301045f795fa0f91b75562e8a2aa2a028b3e962d52e907187b0256fd92c7bcfebe1302515501910a6c222533f7de3356c683d1da9a6c0911b57725eb173d9681935e69372bd9d7e42d7f641926e19430de41c936806c34bcbd194c36013023b5c392cd530a4f9ca39c831558f8008e2a958f56247a8d331e84fc1633e0f7bdde0397de2570294fb5071b0e5ea0120b93b2d7357d6e48221864d973d35867954c8460b41489ea7ce9d49f947c97509072db83731df08e1a183f9850578e07ec741f7434512bc8c622a67761a98baf7c545c79b9b0a42c4edb1ce0f455a525b4fada2d442f0191cedc9aa2ad58a1dd9eff2807a68d01bc3c45e3db1d0f2991e01a003be74e84154c3faf46f1cbbc13a4a2dc89981ab83c466bdd09916803a179f6cfe6d8da9c8aa4ce71f40169a3e33fc6deaf6cadce69e00031e9d37f5d9b48d667cf07f56da0401dc8e6dbfb6df8030000ffff0300504b0304140006000800000021001e911ab7ef0000004e0200000b0008025f72656c732f2e72656c7320a2040228a000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac92c16ac3300c40ef83fd83d1bd51dac118a34e2f63d0db18d907085b494c13dbd86ad7fefd3cd8d8025de96147cbd2d393d07a739c4675e0945df01a96550d8abd09d6f95ec35bfbbc78009585bca53178d670e20c9be6f666fdca234929ca838b59158acf1a0691f88898cdc013e52a44f6e5a70b692229cfd46324b3a39e7155d7f7987e33a09931d5d66a485b7b07aa3d45be861dbace197e0a663fb197332d908fc2deb25dc454ea93b8328d6a29f52c1a6c302f259c9162ac0a1af0bcd1ea7aa3bfa7c589852c09a109892ffb7c665c125afee78ae6193f36ef2159b45fe16f1b9c5d41f3010000ffff0300504b030414000600080000002100d664b351f4000000310300001c000801776f72642f5f72656c732f646f63756d656e742e786d6c2e72656c7320a2040128a0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac92cb6ac3301045f785fe83987d2d3b7d5042e46c4a21dbd6fd00451e3fa82c09cdf4e1bfaf4849ebd060baf072ae9873cf8036dbcfc18a778cd47ba7a0c87210e88caf7bd72a78a91eafee41106b576beb1d2a1891605b5e5e6c9ed06a4e4bd4f58144a23852d03187b594643a1c34653ea04b2f8d8f83e634c656066d5e758b7295e777324e19509e30c5ae561077f535886a0cf81fb66f9adee083376f033a3e53213f70ff8ccce9384a581d5b640593304b4490e745564b8ad01f8b6332a7502caac0a3c5a9c0619eabbf5db29ed32efeb61fc6efb09873b859d2a1f18e2bbdb7138f9fe828214f3e7af9050000ffff0300504b030414000600080000002100c41e9c8396130000db6e030011000000776f72642f646f63756d656e742e786d6cec9d5d53a3d8ba80ef4fd5f90f54eea7cd97895aa3bba246db9ab1f568baa7e6ea1449306124ac1410edf4afd9bf65ffb2cd6225181c75707524409ebec8ea209feb7d78791f20f0ebbfbe4f1ce3c1f27c5bb88795daa76ac5b0dc8118daeee8b0f2b577f6cb5ec5f003d31d9a8e70adc3cadcf22bff3afadffff9f5f1602806b389e50646380bd73f789c0e0e2be320981eececf883b13531fd4f137be0095fdc059f0662b223eeeeec81b5f328bce14ebd5aab46ff9b7a6260f97eb8bc13d37d30fdca627693bfcf4d4c2d37fce39df02666107ef5463b13d3bb9f4d7f09e73e3503bb6f3b76300fe75d6d2d67230e2b33cf3d58cce2977885e424076a8516cd720a2fcd72d524a78b1e8896b8e3594eb80ec2f5c7f6f4693374e716fe71bc9cc9c35b1bf1307196e33d4e6bcd9f8bc1a9673e86cdd30cd3acfe504d3471d49abf3dc75a354544e42ce229d2ac427299cb359998b6fbb460adae59e9dcdaeefb66507f3e83e9e8e78273ee89d9f4696ef6cfcdedc2bd8fe725f7ec77cc6b11e4d54df37f6e656ec7e634dc032783838b912b3cb3ef846b1486cc087bdd9058578ec28cd317c3b96ca7c6e34198b1863787956ab5db6c544f8e2bcb41d79e1cd8dadfdd3b7b1a786add993327907f39dd6b9f9d9c45b39b5e7bb2f154d3df39fa7567f16de7e98f2fcef795c91e0f82a36bf92d50c3123388d6f5b45edf3d79795d5f9fa7ece4037f6a0ec23e997a966f790f56e5e8e6eafaeab67b6abcb6bcb42b7cfcf5f4bcdb33ceae6e8cdee7ae717ed339fddae95d5c7d314ebabf772fafbefc695c9d199d8bdbcf1da3f747e7e2d838fdda357a5746aff35bf7faf7ce49d708c7adedebacc7e34178e8093a8e3d72c3d11f4ce7b0e2cfa6e1d168e0d9d3a0f26c4d7b9f7f765b77be5c7d93f8b58d4ecff8ede2a6fb5be753629e32f0d1a87d67d12c26ed3b7f840b0b7351bbbadf92010ce6d3301cc3efa65ccb68840b77a846d96fbe3cc271887cb86dd1372119561b1ce2ef58720affc761259a7411ebaafcff403822dc3a7316083523c7ba0b74a7ed8b201013dda93d7b34d65eb4ed8681b23effdce4dff42697114e767fdff95d88fbe5dcaacd4e34d99dedf9c18d084358935f1d73f1ede98f27c2994d64a1b4fcfb7240348a2b3e1f87a552fced9bfa567b5a8798a673cf1ecaff8ec2369c871181d36c56d5d62686d6f6dafb2f0d0e53c90b83f76bf597466ed45f9cf562b05ab9e53a05899cb57bda3eed9ebd9cb316037bd1b0c5886a0e8b0df53e5babd0d49bd1cac9c52dc718a8cfe5b7c55e267bc2f8db3ee48fe51e16cd69e058a6f73cd451941c67959b7148cd6558242e96ba584ee200926203570f20c9d1afe5a066ab79d66dac1e53248c21a2e148e65d60c93946c0d8f2405b57db26bfdccce4716e650f5b1c74ce841bf872627f608787f91373d2f76c534e6585cc757cdb3cacf4ec89e51b5fac47e3464c4c57fe71dc09f792c4e8035f7e75ecf0bb5a42d45dcb4eac46ff167dfb6339b4b6b71c7222d7616598c6e131ef9b2273ff7ffefdc23120a2e50d42a3bd12443f20aef2a01d7e9ef86503f603364c627bd1eb5edeea102c0f20100cc11b27f8ff7a7f6af02b2b1df005df8de37bd3e97575f2af2cbe011880370e70e7f2f2eaeb97deba1886c10f67b0d0b8dd58f2b28dff3a6eb251e3c63b5b4a7e529f8968a8958f96b464fa45c23913c19908ce4490c3a923fe19df8bc09a181d1d8439154196cd7796e56c0384e6bc0ee07c0288161051105b37628960c8464521e62e65ef22d36bc2e7afc172fba25b68485b9b4b5b359dac856043686684f6ac70157528dd528726b9e606dda606b65bead5509b9f92a02ea7d5c9b85b2adcb09b9f8cbbb74e76610f3d7fce04f98c7c965d3eabeba432f41c423323f4c4f486e839c9b588c955ab5244d0e176c382be8b9e436e11c96d44d3ae8b5dd843cf9f33413e239f6598cf7452197a0ea1d9e9f9d8b43dfc9cec5acc6a51035cfc1c6e37cb2d7a0eb8853db1849e178cbd448464a342130399b2cbd173982a5b3ed3b9ff123d87d0ec08edc9273ba3e7609a6f4cf98538849690d08229f74a6428514bc36d419c1bf856e04b4448362a34319129bb1ce7e698bb75c75cfcfa83e2da579f3c9d2d25bed1d3d98e7510c6bdc9b2b8378442a83ea13c9d0d448b882888ad1bb1443064a3a2107397b277d3cbb47a235cb4a465c45f8c3f17b0393bb8e13bc974b216820da199117a6a0d8417bde65b0755441a5411690885507d42b96f9c3275c3dc460f5de3bef162b19788906c54686220537639d7b061aa6cf9aca593cad06e08cd8cd0cb996f0f7428c5b8a114e3865008d52714e3a642ddf485a168da75b10b7b18f77326c867e4b3ecf2595b279561dcc52074ea0971d7f5e41c55acfca9e538b781e92df7b932207c35791423eb879d20f9b58defbac3c5f4483b4a942b8e9176082d21a1483b452ed20e7bef652f1121d9a8d0c440a6ecf2f4d25e6f2ea3bb1c0369279fe5319fede9a432a41d423323f45bc888d831aec7221023cf9c8ee73ac8a2df208b7e432884ea138a7e53ae6e98db6634edbad885bd72ea37d7cc39e496e4908b6a7f505cfbea9327ada5c4377ad2da890ec2a8375916f5865008d5279427ad8168111105b175239608866c541462ee52f62e32cd099ab2a5ad7d9dac856043686684de8aa1a903290a0da499415aaf1a03cf0cb45e69c78bbb2902364d6f955777832e17b7610f1f7fce04f98c7c965d3eab69e532841c443343f48fd0733c1d4a317228cd30911a7df11d21a70a2822bcf227b33a29162107dd1ca08b90178bbd448464a342130399b2cb1172982a5d3eabe9e432841c443343f46260197d73a4a33a359c1c50f37d8f24379a436801efe2a54a85dbecb845ba8b875e2242b251a189794cd9e548374c952d9dd5ea3ab90ce906d1cc101d98f7960ea408379022dc100aa1fa8422dc54a81be6b6114dbb2e7661af9cc6cd33cd39e496e4908b5c7f505cfbea9387aaa5c4377aa8dae9817126c4500764049c5c8b80432884ea13caa3d540b4888882d8ba114b0443362a0a3177297b37b55237abcbd540a9394598ebb4556be8a42d3cbb18886ec7cbbd2fcd40886717ba5fdb76deed4d0599d7545c35fa337730e6e7e0541205c4b72e27d52926b84e0eba394097ebe4c5622f1121d9a8d0c440a6ec72ee4c87a9d255924d9d5c86d483686688ded803ee4c07d27c435aab56ef471a94726d1c48b936be4644572243915a1a6e8bf25874e85ba12f1121d9a8d0c448a6ec72b41bed2e5db9b8ab93cbd06e10cd0cd10bcff6c73a94e2dd509a5d22954f0ad4a0948be094009b2e01e4b43a0996abe0b05b2676610f1d7fce04f98c7c96613e6be9e43274bc18886ec7aded5dd79ffdf5d72c01f26bdbceaded087d4e31e617e6105a424291768adc0d738bb3170fbd448464a34213f398b2cb7176982a5b3aabb5757219ce8eb3e787e1cec49ccf5c3b0132cebe4d9c9702639c1d424b4828ce4e918bb383de3bd14b4448362a34318f29bb1c6787a9b2a5b3da9e4e2ec3d971f63c5d671f99ae48708cb26f13e6a5a0f8c21884bba57035f231e20ea788fb1a115d890c956e69b86dc989d7052ff09553dd79a11ac7dc921c73b1f40f8a6b5f7df242b5b46a235fa8d63d30ba5fbe757440c6c3c9b55c3a875008d5279417aa8168111105b175239608866c541462ee52f62e57c3b91a5eb6b455dbd7495b783657c3f37435dc9d9b133301f26bdbcee5702ac8bca6621edf0ea49838d7c2e1f623b8dd8ba65e17bdd0574a73afef2d57037327a3e53aa3d5b57219e68eb9e7c9dcefc53df7b1e34445a6d8f83e71a28085a1987a966f790f5645be1e3d15d765dba5c5dd9d63ce2d2ff956f8b5ecd59ce860a7e64407aa09b76f725b9713af0b5ee02be5798e46a3b58cee720cce7390d072799ea3a693cb38cfc1798e1c9de7e8dbeedcea3f728f025654689077ef4749b14f0729e60ea3983b852edcbe55e8ca07edad0b5dd02ba7b7ab958d96b4c4e04528f076d2d986d3595d2797e1ed787b7e18fe62de9b018fc64788b64f8850760845d9a971e1f6ad1a574eba2e7441af9ccacef3f538e296e4888b9d7f505cfbea93e7eba5c4377abeded981d13dbeb8f9fae5fc4a07661c9c7c8b83432884ea13ca33f640b4888882d8ba114b0443362a0a3177297b973bd8395553b6b4556fe8a42d5c1b443343b4172e341096cebdbd353c1a50f1680885507d42b9964d95ba616e79cd7bf1d04b4448362a34318f29bb9cdbcf61aa6ce9acded4c9654837886686e8956b0b17e506d37c638a724368090945b9a951516ed07b277a8908c9468526e6316597a757ee16ca4d3a2b8672efeae43294bb18886ec72fbe8f6d2f0ca6e9ce79541b52b47d5284b64328da4e9d0bb7ffa0edeb2217f24a69edf53677a793cd8a61ed2d9d5c86b5836866889e7b96e51a536b3ab53c1d58f16e60c5bb211442f509c5bba95437cc6d4d4eba2e7441af94e2cd1deaa4b3026c8acc61f5b64e2e43bcb95c9e1f864f443009b94a80fcdab673ad1c23c2d9211442b3221467a7c8c5d941ef9de82522241b159a98c7945d8eb3c354d9d2597d4f2797e1ec209a9d929b9e27027e560ea7f9e614e786d012128a7353a4e2dca0f74ef41211928d0a4dcc63ca2e4f7f837a8bb79291ce8ae1dcfb3ab90ce7e63a797e183e9e0d4dc7f46d9797892345db2745683b84a2edd4b970fb06b7fcacbc70e42522241b159a18c7945dce9572982a5b366b68e532ac1d6bcf0fc3579399ebce450264947d9b382f05c6283b84969050949d2277d397a6e4a4eb4217f470f6e74c90ce4867193a7b4d2797e1ec387b9eaeb40701c68e0f15bcae74ecc0b3747ec481b7c329de4ea10bb76f701bdd218fb8178bbd448464a342130399b2cbd3df22bfb75c0dc49d7c96e37ce684ab7163b943cbb386d7e6c83af62c533224b35ba3ae93e5507a943e3f47eb6bdb311fdfe5f4e5d870e3fbc489500eb76e1adaa0e53d5895236362faa6937c3d5dcadd9a73181c93b8eb004221549f50ce5e50ed73d701e8bd13bd448464a34213f398b2cb39790153654b678d864e2ee31405a728f2c370d70d4c77643ece7ef0037fac68fbac086f8750bc9d42176edfe096e7f2150fbd448464a34213f398b2cbf9b5004c952d9d359a3ab90c6fc7dbf3c3f08d980ff8b5003e546888eb46df1e1981edf27b01ea882dd722d0055daec483deebe82522241b159a98c7945d8ed1c354d9d2596357279761f4187d7e183e766656df7487099291fa6d02bd141cd7ee471ac998ebf020ca7578ca5cb8cdea8413e861edcf99209d91ce32b4f6964e2ec3da413433444fc4635fcc7530c5b9c114e70651105588e2dc14a93837e895d1b9ebbbf565749763e0dca4b35c3a775b2797e1dc209a19a2b7626e1abe391b583aa8e2dda09a6fa941bb2114eda64e85db37b8ddab62dd05232f1121d9a8d0c438a6ecf2f457ba1bad6574976360dd64b35c5af79e4e2ec3ba8b81e876dc9f7e6e7a9e394970fcdaa6f330fbb7766bce5070e4e10c058442a83ea19ca1a0a6e7c600d07b277a8908c9468526e631659773333e4c952d9d35f6757219a728403433444fc440b8b34087539c1b4e716e0885507d42716e8ad44d3b77bd8a73170cbd448464a34213f398b2cbd3df8cdf6a2ea3bb1c03e7269de5319d35b57219ce0da299217a6c59775ceb8655bc1b4221742384e2dd14aa1be676b78a76178cbc448464a34213e398b2cbd36b779bbbf1c966c5d0ee9a4e2e43bb4134bb4bdd637b706fb99837b862de100aa11b2114f3a656c5bc21ef7de42522241b159a18c7945dce4de61c70b7ee808b647f505cfbeaf3c42f1bb01fb06112db8bc09a189f751046bcc9b288378442a83ea1db2ade205a6c44416cdd882582211b158598bb94bd8b4c7382a66c69ab59d7495b18763110dd8e87ca75ddfb5982e2d7369c179e533ee2e0100aa15911cac56f2adc0d731b3d628dcbdfc5622f1121d9a8d0c440a6ec728c1da6ca96cf9a0d9d5c86b163ec7932f6a1397a7e4f3ad6be4da0978263ac1d424b4828d64e95bb616edb72d275a10b7a48fb73264867a4b30ca5bda993cb9076a43d47d2de9f9b733bc131cabe4d98978262941d424b4828ca4e8dbb616ee5afcc51f662a19788906c5468621e537639ca0e53654b67cd5d9d5c86b283686688de0a73aa0329c20da4d9dd7fd9373d0d48516e1845b9a951e1f61f947b5de4421ec6fd9c09b219d92c43e36ee9e4328c1b44b333eed948cb666a28379466a7dcf7230d46316e10c5b8a951e1f60d6e5b558cbb60e42522241b159a18c7945d8e71c354d9b259b3ad93cb30ee6220ba1db7a53b665fcc924efedaa6735b3a3e54261fc2d8211463a7c685db37b88d6e4bc7d98bc55e2242b251c382bef3b79e5ff45bda9e5f8c1ead47623ec7c78db3bf45f0595857e6b3187d255c8b2eeea7d995564e23bc309944f52cec4c7f369d0a2f30a6618ef42d6310c6ce1c042fa0fc739bf2028c2bbb7a72eb9e82598fc3fb144c35ec85add79c43b8a1c6f78913ed0921e353cff22defc1aa1c5d7afe2723d1116974477f2d8e8ee7e66436b2dc1feffa01ec076cb9d1b1fdb179f07ce363befe29fe3fd107d5f6ee6ea3daacb5f7df5af8b35d6f4d0b7fa533d6be2fbcba5b6b82bfee185cbed5f51fd4cb9ec6aeb6d6d53aba7c34ddbfac77ee7919f48c7139f3dfd817d7b7e3556bb566abbd9fbc41263c6808713f098be2a8e7c3e9ede1a24870cd49b8a2ff7f2e8ecdc1bd5ac472dcb083e231d572a29dc6b706c175ea2cb218781b4e2487d6f6dacdd35db5d78c6ee5d6a91328aa481987ffdfdd6b2e36753a0acb781933310d872fce814795cad3d7be08023179faee58772b7f1d5be65096436d559fdd091155478bafa359b02896a2c5856589ecd945e8e438d1e0a1189c7bb6ec0959425ddbc1205ccb466bd925aa37a2fff6c5701efd279c6436b1dce0e8bf02000000ffff0300504b0304140006000800000021005a83f202100600004f1a000015000000776f72642f7468656d652f7468656d65312e786d6cec594d8b1b3718be17fa1fc4dc1d7fcdf8638937d8633b69b39b84ec26254779469e5156333292bcbb26044a722c144ad3d24303bdf550da0612e825fd35dba6b429e42f54d2d89e912db3a4716129f1c25a1fcffbead1fb4a8f349ecb574e13028e11e398a61da77aa9e200940634c469d471ee1c0e4b2d077001d310129aa28e3343dcb9b2fbe10797e18e88518280b44ff90eec38b110939d729907b219f24b748252d937a62c81425659540e193c917e1352ae552a8d720271ea801426d2edcdf11807081c2a97ceeec2f980c87fa9e0aa2120ec40b9468685c6864755f5c567dc270c1c43d271e438213d3944a7c2010472213b3a4e457f9cf2eee5f2d288880db605bba1feccede606e1514ddbb168b434745dcf6d7497fe35808875dca039680c1a4b7f1a008340ce34e352c47abd76afefcdb1055056b4f8ee37fbf5aa812ff8afafe1bb9efa33f01a9415dd35fc70e8e7312c80b2a2678949b3e6bb065e83b262630ddfac74fb6ed3c06b504c707ab486ae788dbabf98ed1232a6e49a15def6dc61b33687e7a872617565f6a9d8b4d612789fb2a104e8e4428153206613348681c4f990e011c3600f47b150c3c01d040bfd5953c0d79ad48880070c4f44c7f97802e5bec8216f5efef8e6e57370f6e8c5d9a35fce1e3f3e7bf4b3c5ea1a4ca3a2d5ebefbff8fbe9a7e0afe7dfbd7ef2951dcf8bf8df7ffaecb75fbfb4034511f8eaeb677fbc78f6ea9bcffffce18905de657054841fe2047170039d80db349113b30c8046eced2c0e63888b16dd34e23085cac6821e88d840df9841022db81e322378974921b001af4eef1b840f623615d802bc1e2706709f52d2a3cc3aa7eb6aac6214a669641f9c4d8bb8db101edbc6f657f23b984ee48ac636977e8c0c9ab7884c398c508a04507df408218bd93d8c8db8eee380514ec702dcc3a007b13524877864aca6dce81a4e645e66368232df466cf6ef821e2536f77d746c22e5ae80c4e61211238c57e154c0c4ca1826a488dc8322b6913c98b1c008381732d31122140c42c4b9cde6269b1974af4b01b1a77d9fcc1213c9043eb221f720a545649f1ef9314c2656ce388d8bd88ff8915ca210dca2c24a829a3b44d5651e60ba31dd773132d27dfedebe23b5d3be4054cf94d9b604a2e67e9c913144da797945b1139c9e2bdfd908db136e2995afbe7d6a57d60b29d95d86ad7b6655a837e156e5d9a72cc4175f9dfb709ade42724358a0efc5f9bd38ffefc579d37edebe24e72aac2fe28bebb676936cbc7b8f3121076246d01ed7facde5f4c2a16cd4156db4bcea4f62599c0f67e022067519302a3ec1223e88e1440e53d523447cee3ae26042b97cc0d0cd56dfaa834c937d1a66add5eae2e9521a4091b757bc65bb3c6f44d6da68e68f514bf7ba16e9c7dd050165fb36240a839924ea1612cd45e33924f4ccb6c2a26d61d152ee37b2d05ff3acc8fd07a0fa61c273334672bd41824295a7cc7e91ddad677a5330cd69d72cd36b2baedbc9b441a2b0dc4c12856518c310ad366f39d7ed3ca5063d158a751acdd67f916b25222bda4052b3064ee49eab7bd24d00271d672cef7eb2984ca43fae74139228ed38819807fadf28cb8471d1873cce60ba2b9b7f82056280e044aef5621a489a73abd69a6a8e17945cbb72f122a7bf8a4946e3310ac48696bc2afb3227d6de7704ab0a9d4ad2077178024664ca6e431928af5955010c3117cb6886981516771ec515b99a6f45e357af7c8b423289e1fc44298a7906d7e5259dc23c34d3d55999f5f96446914ad23b9fbae71ba98e82686e3840d4a969d78fffee902fb0ca75df609549f7aad6b5175ab7e99478f703a1402d1fcca0a6185ba8e5ad26b52d5e080ac32d97e6a63362dba7c1eaaa5507c4e25ea96b6baf17e8e8be5cf97d795d9d12c13555742a9f11fcc50fc39912e8d685ba9c0a3065b8e33ca8785dd7af797ea9d2f20625b7ee564a2daf5b2f753daf5e1d78d54abf577b288322e2a4ea65630fe5f30c99cddf9ee8f6b53728c9e29a7d29a04999ea7b70591beb3728d5dae6372800cbc83c68d486ed7abbd728b5ebdd61c9edf75aa5b6dfe895fa0dbfd91ff67dafd51e3e74c0b106bbddbaef3606ad52a3eafb25b75151f45bed52d3add5ba6eb3db1ab8dd87f358cb992fbe17e1d5bc76ff010000ffff0300504b0304140006000800000021008c871fd48c030000ec08000011000000776f72642f73657474696e67732e786d6c9c566d8fe23610fe5ea9ff01e57359929004888e3d0121ed56bb6dd5dcfd00273160ad5f22db81a555ff7bc74e7c61efd28af60bd8cf33f3ccd89e19f8f0f18dd1c9194b45045f7bc183ef4d30af444df871ed7dfe944f97de4469c46b4405c76bef8a95f7f1f1fbef3e5c5285b50633350109ae5256adbd93d64d3a9ba9ea8419520fa2c11cc883900c69d8cae38c21f9da36d34ab0066952124af47516fa7ee2f53262edb592a7bdc494914a0a250edab8a4e2702015eebf9c87bc276ee79289aa65986b1b712631851c045727d228a7c6feaf1a90272772feb7439c19757697c0bfe3b81721eb2f1ef7a4671c1a292aac143c10a32e41c287c0d137425f623f40ecfe88560adc03dfae6e338fff9b40f89580a2f79ca4a39e492991eceaa43f06abd2a72317129514aa128e33818cbc4728cb3f8460934bda6059c1db404dfbbe373304dc8838141a690cb46a30a5b6c82b8a11085ed2a3440ccad321d6a7c607d452fd099585160d189d11e4bd087bc9ea8424aa349645832a50db09aea5a0ceae16bf08bd835297f012bd872dfc6155744d041e1c3138c9bbc67811353699b592dc7fd9c6c1460f421372761b13dabc566ef1bb10dad9fa7eb65ce4bbbc4bd2b003132c1751168f31f3559224db31260a815b8e324994efe7a3cc36dce4fb3126ce16d97e34b7240ce79b51b564152ff3d1dc568b28084673db84fe6eb71a65f2d80f46d5b6db793e9edb3fdfe83e0bc378d7bf4eff262c3503e437e9563994d284751e3bc44a49d0e4c58c9899b128e5eb9670c797187a06df32455b3a723aed08c510a53994abddd54435193ed8357d41f238a8d9da66a91c45a1217eae1c661a0ccb1fa5689b8ebd48d43cf11a0fa90751d47b12ae9f0973b86acbc27971e8ed1baae5f5af67696f67b8944baaa1eeb1b9956764fbc5da623efd5cf49d4565617a03bfa0a6e95aaa3c066b8f92e34907a62b34ec6af8fdb19bf218f65c68b9b0e3ec0655e66460dd2f062c74d88ddddc61f3018b1c160d58ecb078c0128725063b5d616ac1547a856e774b831f04a5e282eb9f06fe1ba8bb0475420dcebaa10545253aa09f626a724ef11b8c445c130d3feb0da9197a3313324c8c7b6f4dd155b4fa9dade18c71f35ea1461a81bb7daa77ceb6b0bfcac50cd38a40111657560e33f2a14b9c1205b3b08171aa8574dc0f960be2b416d5536d267c87ff19afb67eb6d9eca661b45f4da3103e568b2098e67ebccfb3cd2ad9efe77ff5fde5fea63cfe0d0000ffff0300504b0304140006000800000021005c1b90d4ce010000f705000012000000776f72642f666f6e745461626c652e786d6cdc935d6f9b301486ef27ed3f20df371842fa814aaaad6ba449d32eaaee07388e016bfe403e4e58fefd8e0da1d3aa4ca517bd1848c87e8ffdd87e846fef7e69951c8403694d45b205258930dceea4692af2e36973714d12f0ccec98b24654e42880dcad3f7eb8edcbda1a0f09ce37506a5e91d6fbae4c53e0add00c16b613068bb5759a79ecba26d5ccfddc7717dcea8e79b9954afa639a537a49468c7b0dc5d6b5e4e28be57b2d8c8ff353271412ad81567670a2f5afa1f5d6ed3a67b900c0336b35f0349366c264c50b9096dc59b0b55fe061c61d45144ecf686c69f50c58cd03e41340f3f26b63ac635b85f2712709c2c87ab49ff4a5611a0bf74cc9ad93b1d031634164583b3055119ad30d5de137bc055d862f49c340de32072240868174886ba6a53a9e52e825c050e8a4e7ed293f3027c3a68612c8060b7bd8d28a3c504af34f9b0d19920c771792e2eaf398e461adf8dc8cc9724a684878e4c46e367078e44c6370cd7430f0c2c493d40292efa24f1ead66e68c919c5ea28915fa086696b38cb8c89d6de4e16f2357d7ab773172cf34fe1aec8c89606030118cccfb37de6682e67f9a2842524cc9b38978ee7f9bb8996d22de92e49b6c5a7ff6ae040bffe95d191bb0fe0d0000ffff0300504b030414000600080000002100d897643394010000a306000014000000776f72642f77656253657474696e67732e786d6cec95cb6ec2301045f795fa0f91f710079a02110109a14a95baeae3031cc701abb6c7b20d29fdfa0e0905fa58c0aa5db0f2f8daf76846d74ac6d337ada2b5705e82c949d2a52412864329cd22272fcf779d21897c60a6640a8cc8c94678329d5c5f8debac16c59308016ffa0829c6679ae7641982cde2d8f3a5d0cc77c10a83871538cd026edd22d6ccbdae6c8783b62cc8422a1936718fd25bb2c3b853285055928b39f095162634fed8098544307e29adffa4d5a7d06a70a575c085f7388f562d4f3369f698e4e607484beec04315ba38ccaea30685f68436955607407a1ea0b707689edd2f0c3856288c003b89104626984129d77eb7467526cb9ca4fdc1b0477be9a0392fa0dccc9bb33553982f89b72a26f020aaf0a9d2bdfa2817cb5fe467b03fc5198400fa9b8e7dcc4ab7adc2c163f0e510dcf8f7edbd6d611917bb9a83020c9cad02b40875d4d979cee24b47e779ddf1e4e758e3c3d06df9358e61da4f929bdb945ee2f80f7124fd011dd151d21f5df2f8ab3cdab5f96c810d52cb7771076ee6a0f6c2b596a35fcbe4030000ffff0300504b03041400060008000000210077d35d3dda010000dc03000010000801646f6350726f70732f6170702e786d6c20a2040128a00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c534d6fd43010bd23f11f22dfbb4e76292a2bc715da0af50074a54ddbb37126590bc7b66c37eaf2eb19276cf00227727af391376f3ecc6e5f075d8ce083b2a626d5aa240518695b65fa9a3c369fae6e4811a230add0d6404d4e10c82d7ffb86edbd75e0a382502085093539c6e8b694067984418415860d463aeb0711d1f43db55da724dc59f9328089745d96ef29bc46302db4576e212433e3768cff4bda5a99f485a7e6e4908fb30606a74504fe35fda9195d1cacb151e8460dc0abf206038bc9f6a287c0d78cce803d5bdfa2bdc1ac19b2dd517821238e8f579b6bf4670ef6d139ada4883859fe45496f83ed62f130c92d1201a3790ac3160e205fbc8a275e329a9becb332a8a0aa189d116af3a2f7c21d03df24818bc50e5268d861f7bc133a00a3bf1dec1e44daec5ea824708cdb1164b4be08ea07ee764d8a6f22409a594d46e1953091cc69b33161ed42f4bc515123f7624f304fcbb17ac7ab2901c165e2644c1a105faa9b2a84870e7b8bff105be562270db3d44c4eaeec5ce30fd69d1d9c303860ba201cf0f7f0e81a7b97cee3d70c2f9dd9de9f553c1e9c90693bd71f36f905642176402fb4b8d265298b83dd630b5ea702f8afe9a13de7fc1d4837f5343f562cb72af19b8ee8ecc34b585e11ff090000ffff0300504b030414000600080000002100ce4ecfbe560100008602000011000801646f6350726f70732f636f72652e786d6c20a2040128a00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008492d14ec2301486ef4d7c87a5f75b5b4084662b891aaec4181dc17857db03346eddd216066fef36604034f1b2f9bff3e53f678b27bb3c0bb6609d2e4c826844500046164a9b5582e6e9341ca1c0796194c80a0309da8343137e7b13cb92c9c2c2ab2d4ab05e830b6a93714c96095a7b5f328c9d5c432e5c5413a60e9785cd85af9f76854b21bfc50a708f9021cec10b25bcc08d302c3b233a2a95ec94e5c666ad40490c19e460bcc334a2f8cc7ab0b9fb73a04d2ec85cfb7d097fa2a7b0a3774e7760555551d56fd1ba3fc51fb3e7f776d5509be65612108f9564d282f085e56fa24eb3e0457c69b989f145d25c3113cecfea832f35a8873d5f68a38aca05730736c6bff366c4c256371f8cdfb544f78c8fdb1ffca082ba353bec784a16fdc7a7748a788fd0fb908c43da4bc9980d868c90cfa6dad5fc59981f0bfc67a424a434a5034647d7c69380b78dafff1cfe030000ffff0300504b03041400060008000000210085a60259b30b0000f17300000f000000776f72642f7374796c65732e786d6cd49ddb72db381286efb76adf81a5abdd8b44968f496a3c533ec46bd7e6e0899cc935444216d624a1e521b6e7e9170049097413141bec71d5e626d6a13f82f8fb6fa24951fae5b7a7240e7ef22c17323d9dccdeee4d029e863212e9fde9e4fbddd59b7793202f581ab158a6fc74f2ccf3c96fbffefd6fbf3c7ec88be798e78102a4f987243c9dac8a62fd613acdc3154f58fe56ae79aa5e5cca2c61857a98dd4f13963d94eb37a14cd6ac100b118be279babfb7773ca931d9108a5c2e45c82f6558263c2d4cfc34e3b122ca345f8975ded01e87d01e6516ad3319f23c573b9dc4152f6122dd6066870094883093b95c166fd5ced4233228153edb337f25f116708403ec6f0049f8e1e63e95195bc46af6d54802059bfcaaa63f92e1255fb2322e72fd30bbcdea87f523f3df954c8b3c78fcc0f250883bb565054984e25d9fa5b998a85738cb8bb35cb0ce1757fa8fce57c2bcb09e3e1791984cf516f33fd58b3f597c3ad9df6f9eb9d023683d17b3f4be798ea76fbecfed91584f2d14f774c2b237f3331d38ad77acfadfdaddf5cb4766c36b160ab31db62cb8caacd9f19e86c64227f2fed1fbe6c1b752cf2d2b0b596fc400aaff37d829987195702afde6950bd4ab7cf949860f3c9a17ea85d389d9967af2fbcd6d2664a632fd74f2de6c533d39e789b81651c453eb8de94a44fcc78aa7df731e6d9ffffdca646bfd4428cb54fd7d7032335910e7d1c7a790af75eeab5753a635f9a20362fdee526c376ec2ffdbc066b5125df12bce740108662f1166f828c4be8ec8adbded66962ff6ddbc0bb5a183d7dad0e16b6de8e8b53674fc5a1b3a79ad0dbd7bad0d19cc5fb9219146fca93222dc0ca0eee238dc88e638cc86e638bc84e638ac82e6389c80e638121dcd71e4319ae3485304a790a12b0bad643f70647b3f77f731c28fbbfb90e0c7dd7d04f0e3ee2ef87edcddf5dd8fbbbb9cfb7177576f3feeee628de7564bade046d92c2d46bb6c296591ca8207057f1a4f63a96299ae8886a70f7a3c23d949024c55d9ea03f1685ac8cce3dd19624cea7f3c2f742317c865b014f765a69ae9b103e7e94f1eabb6366051a47884c08c1765e698119f9ccef892673c0d396562d341752718a465b220c8cd35bb2763f134229ebe864852143609adfae79536892048ea8485991c3f34c9c8eac327918f9f2b0d09cecb38e644ac2f34296658e37b038319df1a18ccf8cec060c637069666545354d38866aaa6114d584d239ab72a3fa9e6ada611cd5b4d239ab79a367edeee44119b126faf3a66c3cfdd5dc4529fc71e3d8eb9b84f995a008c3fdcd4e74c835b96b1fb8cad57813e2bdd8db5f719bb9d73193d077714c7b40d896a5d6f52e442edb548cbf113daa251996bc323b2d7864764b00d6fbcc53eab65b25ea05dd3f433f37251749ad690069976cee2b25ad08e771b2bc667d8d6005722cbc96cd08d25c8e02f7a39abe5a4a87cdb518e1fd89635de562fab12e9f06a24c12863193ed094e1ebe735cf545bf6309a7425e3583ef2888e382f3259e59a6df97d23c920cb7f4cd62b960bd32bb510c30ff5cd15f0e0335b8fdea1db98899446b78f6f1226e2806e05717df7f9537027d7bacdd41343033c9745211332667d26f01f3ff8e29f34033c534d70fa4cb4b76744a7870cec42101c642a928c88486a99295241720c35bc7ff3e78564594443bbcd78f5a193821311e72c59578b0e026fa9baf8a8ea0fc16ac8f0fe6099d0e785a84c754702b34e1be6e5e23f3c1c5feabec880e4ccd0d7b230e71fcd52d744d3e1c62f135ab8f14b04a3a63a3ce8fc25d8d9166efcceb670543b7b11b33c17ce4ba8de3caadd6d78d4fb3bbef9ab793296d9b28ce926b00192cd6003249b421997499a53eeb1e111eeb0e151ef2f61ca181ec12939c3fb57262232310c8c4a0903a392c1c0a83430305201c67f42c7828dff988e051bff599d0a46b404b0605479467af827baca63c1a8f2ccc0a8f2ccc0a8f2ccc0a8f2ece032e0cba55a04d31d622c2455ce5948ba034d5af0642d33963d13213fc6fc9e119c20ad68b7995ceabb11645a7d889b00a9cf51c7848bed0a4725f20fbe201b9a66518e8be08c288b632989cead6d0f3826b2fdd9b55d61e64e8ed143b88d59c857328e78e6d82777acea97e7d56d192f876f8631e8b4e72771bf2a82f96a73b6dfc61cefed8c6c1af656d8ee0d76cdf971733f4b57d8671e893269060a6fa6383e181e6c32ba157cb83b78bb9268451e0d8c84db3cde1db95d25b7224f0646c26dbe1b18697cda8aecf3c325cb1e3a13e1a42f7f363d9e23f94efab26813dcb9d9be44da4476a5e0495f16b5ac129c85a1be5a00d519e61977fc30f3b8e3312e72533076725306fbca8de833d837fe53e8233ba6689aed6d3e3d01eabe59440faa9cbf97b23a6fdfbae034fca6ae1bb5704a731e74720e865fb86a5519f73c0e2e376ec4e0bae3460c2e406ec4a04ae40c4795243765706d722306172937025dade0110157ad603cae5ac1789f6a05293ed56ac42ac08d18bc1c7023d0468508b45147ac14dc08945141b8975121056d5488401b1522d046850b309c51613ccea830dec7a890e2635448411b1522d0468508b45121026d5488401bd5736def0cf7322aa4a08d0a1168a34204daa866bd38c2a8301e675418ef635448f1312aa4a08d0a1168a34204daa81081362a44a08d0a1128a382702fa3420adaa81081362a44a08d5add6ae86f54188f332a8cf7312aa4f8181552d0468508b45121026d5488401b1522d0468508945141b8975121056d5488401b1522d04635170b471815c6e38c0ae37d8c0a293e468514b45121026d5488401b1522d0468508b4512102655410ee655448411b1522d0468588befcac2f51ba3e663fc39ff5747e627ff8a5ab7a50dfec5bb96dd4c17054332a376bf8bd08e7523e049d371e1e987e6318442c6221cd296ac765759b6b3e1281baf0f9f5a2ff0e1f9b3ef24b97ea7b21cc3553003f1c1a09cea91cf6a5bc1d099abcc3be4cb723c1aaf3b0affada91e03078d857748d2f9b0fa5a8c31108ee2b3356f0cc11de57adad7038c57d35da0a8433dc5799ad4038c17df5d80a3c0a74717e197d34709e8e379f2f0584be74b408276e425f5a42ad9a720c8d3154343761a87a6ec25019dd04949e4e0c5e58370aadb01be52735b419566a7fa3ba0958a921c14b6a80f1971aa2bca586283fa96161c44a0d0958a9fd8bb39be02535c0f84b0d51de5243949fd4f05086951a12b052430256ea91076427c65f6a88f2961aa2fca4868b3bacd49080951a12b052438297d400e32f3544794b0d517e52832e192d352460a58604acd490e02535c0f84b0d51de5243549fd4e62c4a4b6a94c256386e116605e20ec85620ae385b811edd9215edd92d5904cf6e096ad5688eeb966cd1dc84a1eab90943657413507a3a317861dd28b4c26e949fd4b86ea94b6a7fa3ba0958a971dd92536a5cb7d42b35ae5bea951ad72db9a5c6754b5d52e3baa52ea9fd8bb39be02535ae5bea951ad72df54a8deb96dc52e3baa52ea971dd5297d4b86ea94bea91076427c65f6a5cb7d42b35ae5b724b8deb96baa4c6754b5d52e3baa52ea971dd92536a5cb7d42b35ae5bea951ad72db9a5c6754b5d52e3baa52ea971dd5297d4b86ec92935ae5bea951ad72df54aede896a68fad1f60d26cf38364eacdc5f39aebefe0b66e9889aaef20ad2f029a37de449b1f4ad2c17a2441fd9354f5d366c0f50543f37796abaeae7ecfdedeecddc9e1a5b94836ad917010e14a8d22acbf57c93188fafb513737f8986f477d3924c797a89a616d27a779773dd9db8ba4d5fb5a17447bc75d68317ac66cc4ea9dbd4a4fd700dfd709ba6b846a3c8bb8fa392ff5c74daaa7ffb1fe29ab6aa4d113ab50eaf50b1ec79f59f56eb976bf35e6cba27a75b6676ea77ff1faa2fa6638677c664a8813306d0fa67a58ffa49863beabef8aafaf6d3b9355fba463bacd072dc6cef4805c68abaf4f7180c15426362f5533c914fdab76faf665db5d70bccd6dcc6daf5dbe3bb9bab8aa5e71fdbc9bfde36e879b07dd3fee86cbab7399453c3335a6ca2b332afd35cbf5c4fca94aaef9438d896f7ea84dd5313d76fdcf70f5ddd7a6baa939e54f455311ab64a4446ef29712da243d2553a44a657efd9750ff20a55626b613e1ffa9dc347fe5bffe0f0000ffff0300504b01022d0014000600080000002100dfa4d26c5a010000200500001300000000000000000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d00140006000800000021001e911ab7ef0000004e0200000b00000000000000000000000000930300005f72656c732f2e72656c73504b01022d0014000600080000002100d664b351f4000000310300001c00000000000000000000000000b3060000776f72642f5f72656c732f646f63756d656e742e786d6c2e72656c73504b01022d0014000600080000002100c41e9c8396130000db6e03001100000000000000000000000000e9080000776f72642f646f63756d656e742e786d6c504b01022d00140006000800000021005a83f202100600004f1a00001500000000000000000000000000ae1c0000776f72642f7468656d652f7468656d65312e786d6c504b01022d00140006000800000021008c871fd48c030000ec0800001100000000000000000000000000f1220000776f72642f73657474696e67732e786d6c504b01022d00140006000800000021005c1b90d4ce010000f70500001200000000000000000000000000ac260000776f72642f666f6e745461626c652e786d6c504b01022d0014000600080000002100d897643394010000a30600001400000000000000000000000000aa280000776f72642f77656253657474696e67732e786d6c504b01022d001400060008000000210077d35d3dda010000dc0300001000000000000000000000000000702a0000646f6350726f70732f6170702e786d6c504b01022d0014000600080000002100ce4ecfbe56010000860200001100000000000000000000000000802d0000646f6350726f70732f636f72652e786d6c504b01022d001400060008000000210085a60259b30b0000f17300000f000000000000000000000000000d300000776f72642f7374796c65732e786d6c504b0506000000000b000b00c1020000ed3b00000000, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'contact', 0, 'Admin', '2018-01-25 20:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_basicsalary`
--

CREATE TABLE `hs_hr_emp_basicsalary` (
  `id` int(11) NOT NULL,
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `sal_grd_code` int(11) DEFAULT NULL,
  `currency_id` varchar(6) NOT NULL DEFAULT '',
  `ebsal_basic_salary` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `payperiod_code` varchar(13) DEFAULT NULL,
  `salary_component` varchar(100) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_children`
--

CREATE TABLE `hs_hr_emp_children` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `ec_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `ec_name` varchar(100) DEFAULT '',
  `ec_date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_contract_extend`
--

CREATE TABLE `hs_hr_emp_contract_extend` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `econ_extend_id` decimal(10,0) NOT NULL DEFAULT '0',
  `econ_extend_start_date` datetime DEFAULT NULL,
  `econ_extend_end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_dependents`
--

CREATE TABLE `hs_hr_emp_dependents` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `ed_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `ed_name` varchar(100) DEFAULT '',
  `ed_relationship_type` enum('child','other') DEFAULT NULL,
  `ed_relationship` varchar(100) DEFAULT '',
  `ed_date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_directdebit`
--

CREATE TABLE `hs_hr_emp_directdebit` (
  `id` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `dd_routing_num` int(9) NOT NULL,
  `dd_account` varchar(100) NOT NULL DEFAULT '',
  `dd_amount` decimal(11,2) NOT NULL,
  `dd_account_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'CHECKING, SAVINGS',
  `dd_transaction_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'BLANK, PERC, FLAT, FLATMINUS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_emergency_contacts`
--

CREATE TABLE `hs_hr_emp_emergency_contacts` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `eec_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `eec_name` varchar(100) DEFAULT '',
  `eec_relationship` varchar(100) DEFAULT '',
  `eec_home_no` varchar(100) DEFAULT '',
  `eec_mobile_no` varchar(100) DEFAULT '',
  `eec_office_no` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_history_of_ealier_pos`
--

CREATE TABLE `hs_hr_emp_history_of_ealier_pos` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `emp_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `ehoep_job_title` varchar(100) DEFAULT '',
  `ehoep_years` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_language`
--

CREATE TABLE `hs_hr_emp_language` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL,
  `fluency` smallint(6) NOT NULL DEFAULT '0',
  `competency` smallint(6) DEFAULT '0',
  `comments` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_locations`
--

CREATE TABLE `hs_hr_emp_locations` (
  `emp_number` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_member_detail`
--

CREATE TABLE `hs_hr_emp_member_detail` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `membship_code` int(6) NOT NULL DEFAULT '0',
  `ememb_subscript_ownership` varchar(20) DEFAULT NULL,
  `ememb_subscript_amount` decimal(15,2) DEFAULT NULL,
  `ememb_subs_currency` varchar(20) DEFAULT NULL,
  `ememb_commence_date` date DEFAULT NULL,
  `ememb_renewal_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_passport`
--

CREATE TABLE `hs_hr_emp_passport` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `ep_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `ep_passport_num` varchar(100) NOT NULL DEFAULT '',
  `ep_passportissueddate` datetime DEFAULT NULL,
  `ep_passportexpiredate` datetime DEFAULT NULL,
  `ep_comments` varchar(255) DEFAULT NULL,
  `ep_passport_type_flg` smallint(6) DEFAULT NULL,
  `ep_i9_status` varchar(100) DEFAULT '',
  `ep_i9_review_date` date DEFAULT NULL,
  `cou_code` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_picture`
--

CREATE TABLE `hs_hr_emp_picture` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `epic_picture` mediumblob,
  `epic_filename` varchar(100) DEFAULT NULL,
  `epic_type` varchar(50) DEFAULT NULL,
  `epic_file_size` varchar(20) DEFAULT NULL,
  `epic_file_width` varchar(20) DEFAULT NULL,
  `epic_file_height` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_emp_picture`
--

INSERT INTO `hs_hr_emp_picture` (`emp_number`, `epic_picture`, `epic_filename`, `epic_type`, `epic_file_size`, `epic_file_width`, `epic_file_height`) VALUES
(2, 0xffd8ffe000104a46494600010101006000600000ffe130924578696600004d4d002a00000008000387690004000000010000103e88250004000000010000205eea1c00070000100c00000032000000001cea00000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001ea1c00070000100c00001050000000001cea00000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a00000001000000040202000000010002000000024e000000000200050000000300003070000300020000000245000000000400050000000300003058000500010000000100000000000600050000000100003050000a00020000000233000000000b00050000000100003048ea1c000700000f6c000020dc000000001cea00000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027100003d09000002710001bec70000000200000000100000024000000010000727a000003e800000000000000010000000f0000000100004c3d000003e80000ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc00011080190019003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00fa3e8a6d3aa04145145004152d14ea5188c28a28a620a28a28013a52514da00656078bf5116ba5bd6b5e5d25adb3c8f5e43e3fd6ccff00bb5ac2acf951bd2873332daf9ee19b95d993524523c2eaf13aa3a10c2b9cd2356803b472a30ff6eb73782bbd36ba63a8af3799fc476385b43baf0c78d0a4ab6daa84443f2f995e86b2248994e54d7804851d191c67f848c7f0d773e05f13a045d3afa7c381fbb77f943a7f77757661eb737bace4ab4baa3d2f14951c92242acf2954880dc493557fb56c3fe7eedffefb15ddee9816e8ae46efc77a1c0553ed0f22e03078e3245357e22e8c6262bf68e3fe99d4f3c7b872b3b3a2b9fd2bc4fa66a41cc13e1a32aafe6706b6609a39c6627475f5077538f2b0e52dd148a6976d581174a766a9de5d5bdada4b7371388e28d37bb9e817fbd5cdddf89849b7fb376cd16559e63c26d65fe1f5a8949477051723ab9674b78d9e53851549f5bb41f7f7d711a8788cbed4967ce0761b6b92d575d793705915173d2b8aae312f84de145c8f56ff00849acbed6b1b151c1add6715e1fe17b73a96a09bfee02b939af5d826de9fee56f879b9ae662ab050762f4b3a475425bf0376ca8eece78a85a3c46a7e5db5d3ca622b4de754321f2cb6efbd5a1670a019aaf736e924df2d0229ef47a7411ef7ab11daa1e14d5a82d443cd0495e73e5ffbf54a7931b4b7dead59614dccf59b770a4df73b512900d8fe75cff0d31a3ab5047f660a5e9ca7cd95b6fdea398a2aadbb9abb6b69f2e6b4624c22d4cab8a5cc0545b4c5666a36f26e6f7adedcb556edf60a90b23020b523fd6d3de0cb7c95a4f355a8a344a4ee055d32c7bbd6c28017e5a8e2606a7e288c471168a5c50c6ac05a4c50a69696e0369d4527f1538c405a28a298051451400da46a73535aa00e4bc6a1e3d22f2e623feae12f8ff696bc83c4e0a4ac73f36c19cf7dcb5ed3e3304f863520a19dbecef5e2de2f4ff8954572bb87eed73feed79f8bf799d784dce0e42f1bb1c2ed1fad5dd33567b79146f5da4f4ac6d4e4d8abe53fc846ece7fcff000d642c8f24889bf6339da8fefdab9a313d3e5d0f5a59d1c23fcc3d73d454b2c693c5e5b8f948e0e7f8ab2f4593cfd39a396453790a6d74ab96c72be5ba30d9b9867fdaa9f85e86128a32f5ad7358864fb3ea77333d9e36c2f9c0dbdd5aab5a5f074f913e535d14f0473c2d1dd46aebf7b9f5ae7e0d35ed676395f288e47a1ad1d59987222eadd2146453f73dbbd598ce2272dbb663ff001eaabe408e66385287196ad45297366c10e146eeff00ecd4f3072a29c59766def8cede9e95b3a6f89aff004712da58c9b229037d47f0ee5f4ac48f2157fbbb369fad3a5648da276195076039eb4e355c58dc1347a2691f136d2dedbecdad477627882209106f131ad397e26694f68e6c92ecce9d1648cc432d5e5b04e8627385de496c7fb2b56a0f2e4b7dea1771db8e7f86ba258b76b2308d157d4e8d6eb50f11ff00c86ae336680379683085bb536fb51deac22da228c6dc0a8ad1d92cbc8ce18e59f06b0ef2e24489de24ca8e8738e2b9ead59c91bc292b916abaac16a8c667f9bb015909a8bdebb79506c527a915852a1d46ef7b077447ea4f7ae9fc2f023de7caeafb0eef9ba6eedfe158729d5caa10b9ea7f0fb4e8e0b0f3254f987cb5d82cf18ff542b16d91e3b58a3c2a300bbf1fdeab71c64266bdba31b451e3559734ae6c47f3afcf514bb0a5555cc94f8a372d5b901e63c69d6a2967cbe7f8aa5b98f62b05f4aced8fbf2d4125a8e4d9567cf93e5aa6832cb57163c2d1cc8a88acfe627cf496d0fef5bfbbef51b8e56a489fcbfbd4adcc111f790bc89f2545676e237cb9a1a77f9a9b16667f9aa6c334e3911fee54bbfe7c55561e596a8d24fded022cdd171f72b2ee6e0ed62df7ab558f99553ec2922fcc6a8394c68ae32ff8d5f698fcbb6adc5a5c01b2c6acfd8a3a98b02b599ddb6b4d5aab797e5fdca9e3e2a9d8224d49c53e8a06145145300a4c9a5a29084cd19a6b52d4dc614c67a7d31901a52bf401d9a8e9150834b445bea123375aba82c74b964ba194c6daf20d6a317fa4dc47127cbf32807fbb5e81f13ee3cbd1ede0fe19e4ff00d056b90d3466c250bc338da0ff00ecd5c15a57763a687bab98f11f16e9a74eb04edcf03fd9ae2e498bcbb227c60fc86baff88536af6d76f67aa84922ff0096722700eeae0e2c7da96372c9ced2476a5081eb465eedd9eb1e1e925beb789eee058efc0da8e87fd627f7abafd3eca43bccbb7fbc3fddae5747d0ae5347d2dde4ccb6aeaf91dc6ee2bd162e8a17fdeac6695ce39cae665dc380c8be8b55678418be4196c569cbc8f9bef550642ff74e1ab9e4112048bceb76e7b71c7f1555b3096f76b6d967693e5ce2b662802a2ed19e79acbd63fd0a7474dc58bae7fd84a14b42a3a86b482d6189223f3bb9e477db55d63066811f864766009eaf5a5ad279968af172e07c9ff02ace706492274455b836ead927845ddf35228af6d2248f7071b15dd9339ad1b380c2b2c6a73870918ff80eefd3eed65bc6f1a59889d4442456e4fdf76eb5b3a9ecd3a359259184b3bed4007f0fff00b54dc8394b704806e467df9daa467a3557d7349fb45b2bbc8db41da91a775aa4a8f1a2943f33bf183d5ab66d9cc10abcdc3f3b0679a98c839797547077c6e2695acedc6c44037ba8e8b5e97f0bb4002d9a4960c4430c108ae127d774bb7bbfb3e9ee88eefb9c8f98bb57a97c3e371f6a88cb24af13dbbe47bf6aeaa51e69a4c2b4df21d7ecc3e6a656ab31c60fdfef51b4797f92bda8c794f1c2a7b6e1ea08a324d5fd9b3fdfa0092708ebfed5663423e6abeb1ef4a8634ed40145797ab5e67c8a952ac03767f8aa2961c51cb60e618bf3cad52ecdf50796e19a9dda889236418ab36c311efaaadf3d5a88394a0a1ad36699ce7eb4fd8fbead2a7ef16894491d146e7ef77a7bc6e36eca957fd9fbb5254742c6afdda929b4ea006d3aa2a96a443a8a6d15a0c75146da280133494ad495167701d4da7514ec0369d453aa806d0d4ea8e80387f89ba73dd59d84910ff5771be4ff00be715ca59e3c974af46f17c02e344b8462c981bffad79f449919cf535e76223adcde93d2c795fc56b53269cee88c654af33f0de99a84d7515f5a5a4b3242ff0038d99057bfd78afa5aef4eb7b839bb457e36e08a9a348e1896386348d0740062a213e58ea75fb4b2b1cf59dac6f6ca612c13ef2023a06fe1ad148ca0ebf4ab6db1cfca17df8a72a7cb86158cbde33b99d28dcdf2d42b1fcbf305ad568c670a3351327de386ebd3150e25c6452c79615d4f71583e27224551116da4edcf735d55a18e6768dd1867a67fbb5cfeaba6b99a5f29f382bc376f9aa1c4a8c9448bcf74bb8ade54648a2418cf76ace8a40e970f2860d2bf940fb6ef96ba8d6b4949ece2b87fbb1fcf81d4bf65ae5224905da15751e4bef03b07a56699a7326411971aacb1e18c503ece7fbaabcd5779e4bfba4d42e7ef6f2918278455feeffb542a492142cec8d3bb33ff00df55635c023d46c2040b1c5142cdd7f8feed4c8b8c9234ed9c471a94e65c8504f6ff00768d5d1ce9f2f2a15c6d7791f69aa3f68749951371ca2e001c96fe95a38430b472c6cf9f53fc5511f758ce57c39a75b0bc6916384ba7cbc66bde3c13be3d3be60c9815e69a6c36d0bbc8d1ec603775af59f057fa4786ed6e7fe7afce7fe055e8e13df9dce5c5cb43663ceeff0066adac3f737d3142462ad47f3a7cf5eb1e695778f35aa7ca3d5668c6eff6a851fdda3502d4a6a2f35e9191fe5ab4bc27fb74015951f633fa554f3f63b05ad59df646def586d0efde7f868e602c25d076e8bbaa4ff5cf505a5b61b2df85692a6c9bfd8a2249145062ad2c3b2a55a6492227fbd400dd9f353b8cd3647cd24593f72a82e58571b69bbcf9b8514e44f97e6a97151245117987763653252ff284ab1c52d4810c4088be7fbd53b54124805576bafbd46c05ea753697154315a85a4c52d020a28dd46ea39861451d69d400514514c029ad474a3752032b5c476d1ef11031e36803fddaf3a83ee65857ad30cad79df88f4b7b1bc7283f75212c95cb888e9cc690974312739e5aa94b7000c67e5fbb44f392b85154970ed994375e39af2652bb3b23134adb2caa54638ffc76ad6ce14e3eb589fdaa906e0a9d074aab73e2a4445db1aee2781446690e549bd8e963d8a70df9fa54ea903a3152bef5ce69afa86aa9973e42175e83a8ae63e25dfebde1b5d292c6ec0b3ba936bb9ae9a51e7d8ce5ee9db5e08d9f6348a254e803e2b2f522f34d14910fe3daff004af0cf127f6aa6b9691dddc3bfdb9ccbe5c727f7ba2eeabbe15d7755f0e78d2cf4ebbb9792d5e455785cee03756ff576446a291eff00a9be6c1110374dc6b9db6b047464c2952ecefefe8b5d8dcc298729e9d7358f671bfdb1b7050ae1540ae69435368cb439c9ed7ec9e56fe6727938e950ea5a4bdedfc13cbb522442af5b5ae044b9b746dc3e766fc2bcdbe26ebf7327889747b47716f6b123ba21dbe63bed6a985173761f3f2ab9d7f9d60922c79877fa17a6de144d8511831ee1ebc463b1d46d3478b517b67870fb4cc5fef86ff66bd4f51b0924d2ace48a4644288e50e78a75a8721a427cc6c29d9b4e7728f96bd93c3337d9fc3f6b026d2a882be7bf0f5c4974df649773b1daa8c735ef1e1a49c695671cc3f7a8814ffbd5b606366d9cf8cd11d0b4cf2559b6e9f3d6635c636a28ef57ed24c05dd5eac6470892e437cb56a004afcd4467cc9ba55ff2fe55a00a3b1e47f92a7480ecff006eac20a9e824a5241bea2fb38fceb438155e5e868e602aac28946121aaad33ee6a6fcf3bd0059fb57f74547b37bd496d6bcf5a7b36c95531415ca3960253e5a9ada3f2c54eb4b48029d4da5634c60d50331069ca77546cf4728a4c4963f32a38a0d8d53af34ec014128956969b499a8e6458fa46a334b4f701b498a5a4cd2b00b4ea6d26f142025a2a2dd54defa04916096451291c267935405f6aaf2cd0403333aa2f6dc6b92f88dab0d1f466bc5925ddf2a2247cefaf1bf146bba85c5829b4b8b89aebfe79c87185ff00668d0398fa27fb574f1bff00d2e2f90ec3c8e0d2bbd86a31796e62996be48f8726e2eb57b8b8b8925914617e72786ef5eb567a8bc17115c452222a1e79ff00c76a64d7c2c5cda977c59649a5cf2941fba7f992b928e6b874eaa18f4c9e2b67c4de27b6ba447bbb8408ee5500a8ad61b7dcc995dbdc9af1b174b927cdd0f468d54d0cb3d18488c667f988e714f7d0228e459228d5dc74cd5e7d56dad0aa672d8e0034b16b76c4a895fcbcfa8ac94558d39999ff006e7b26512a743ce3b0a97519b48f15e953e91a9f28e1719ecdfde5a5d4ad63ba0d24573953bb81d2b8dd4a0486664c7cc46dde8f4a355c1e82e4535a99b75f0c75fb6db6fa66afa75d45d8cff7d16abafc326f0e452eb1ac1975096dc79db60ad9b69ae637d913b1cfbeeaeb629ee4d83fdb9d8e47415d91c5b688f65cacbfa46b76fa8e956bbc34771222fc87a8565dd56ae5e31f71f382abc57316d1982e56edd31fc29f4ab56c5cbb9c7c9f36c359a9b930943b0cf156c3792852c1930c41ff00d96bc835ad36e35ff175e3e927cb9638c37cfd1ebd72763a95acfa7cc54b1466493b835e6abf682fe645ba395c795214e32cbfc54f9f91dd1708732b328daf82b5ebbfb2a6bd771476111e9e6576d77aa5bef8aded3f791468a886b88b9875079d84b712ba7705eba0d170363bba151bbb77a8ab52750dd41411dafc37d123b8f17a958d36a02ef5ef51d85bc698c7e35e5bf04ac4ff00c4cb5364fbe5628cd7a8485e69bfd8af4b074b960797889ea2358405f383532daa0a9138a9abab94c39812348e9d2714d67095525b8d9407316b23e6a8fce415424bd26a1cbc92d01134a79894f92a9abc9271eb5a7001e52d3f005033360b5f9bf7b56bc8402a65a4705d6973088b7a038a9760ce7151ac680f4f9aa7a9d46145145580da89854b45022bff007a8c669f8c52d1cc48d51494fa7501618c29d8a7d4751ca58f5a4a8ab9bf12f89ed3478db71f3253d105006e5cdc416b1f993388d075de768ae6753f1ce916eac2d4fdaa5ec12bccbc4baadcebb2ef9a4611768c1e0560f9661997696359b98b98ebf59f1f5fdc49f3a793176d8f59cde20b9bb0d8b9991b3dcd739a98076ee1f366aaf9c405dbf73b8347313b9d8da78cb54d39d8453b489dd24ac7bad75eff00576d4658ff00d206dd8e8e7283fbab58373751e15e52c327627ad1feae2cfde5c374fef55f315a9adad789afee22882bacf2fddcc8f803fdaae675c3771c3beece10fcbe584fbe7fd96adff0f69423b47bbd4f95c6e447f5ae7b51be8f54d616e2fa468f4981f6f070643fdc4a88ee49a51f99a3a745df26d54d9cf1fde66fef55796dec2fe6cca8d24b9f9ff7876ffc0977532f268e39adc5aa34717df404ee2176ff007a9564323e1911d8f5c8e47a55c80bd6da5da26a28ff003476b8652100ca7fbb4be20d46e74dd89a7bcb756a03365c639feef1ed50a943c4523c6decfbbf9d5a56b88e3f9c2cca7d2b29c54d59951938bba2ee8baa5b6a968b236d47076c889d9bfdead1792df0bfe8ceff00435ce58c96d1bb7951c51e7ef8d983bbfbd5b36d75691caa11dcb7773f2d79956938bd0f469554d6e68450c65f1e5caea7fbcfd2acae8d6926d740e8c3d4eea5b47491d4a3aed35b310caefd8a9c719a98c3f986e7fca55834d48d3310576fa512c7242b896db2b9551ffc556b41222a304daed9e42d5291c8918ac9346a0b75e455c60911cee4665e405ede5910b3b4619820ae6f48f1e6993c52db5d95b1bbfbbb24aeae7b8d88a7cf5dd9651f26dcb570de21b1d3a4d597536489ee213bc861c4817a511b23a295a5a31d2ea371f6b96388aa3e76e6b0e0f2ee19e589fce5ced0e1383546cd65d66596ee693cb49cbb1d83aaff00b35d1c56a891451db8644036a01e9512f33a2768e8891920fb26f9a362e7d067e94dd0f4a1aa6bb6f61691b6e775c8c7f0f76aab7d397f922761147d48e85abd07e05d825c6a17baae577423ca02ab0f0e69d8e2ab57955cf62d3b4e8349b4482dc2c68836ec4ab5e65172921a856de41debdc8c7951e5ca4e4eec97ccf9ff00d8a7bc813fdeaafe4494b15abb366a80899de476a4fb3be6b42383152eda00ab15aa254be42525ccc61154d75125ba5481a49c50aff3354293799b695a3f9968289d69d512b7cd8a968e504c28a5a4a4c029b9a75368d4614da75368e600a29d4da0029b4ad4945c0755592411c4cf29c281ce6ae5792fc4af121f35b48b43f28f9a420ffe3b44843bc4be357999adf4a7d89f75e4ee4d7132b976cb963fc44fbd5457a1e741b79cfb573ca44dc7e7e6c67e94c6203ef63f2f6e7f8a858e491f7a236def9f5a82e6d51177dd5c2a201d33b78a5b8197abddc08ea92be19fa545a7df5b3b3f9b3af1d011c6eacbf145c5b4760cf16d9a2caa239e39ae734db582f565b9ca8447f29218c1049ff6ab78dada86a7477918f3d2f259219977ec4085ff008bfd9aeab4c812344795d4b1dac01ed55745b2b78ed332da5ba391cfc838a5693cb66f24e31d011c5672b7d90b9ad7d025f45896e192dfef3a21fbed5c478ea3b08225bb851e196346891d09e13eefddad9b9ba90c797764cfad70be23bf17b7f6f68a72a5d59c511b8235e53b25b349a451b230df3bff00b3b6afc0f6f27114e817e5de4bf7feed57b6d7608d9c4da7cc5b3cbecdc33fddad08f5cd0ae5144b02a71cef8ea80960b8b247548434cfec0d68a4923718545efcff00e3b59d149a3c9b92d6f228db27847153b5bc8aaa6d6ed5d4740fdeb3d40b13c6936e0e33e9cd5092378576754f43d454b149709c5cc6c31dc0dd52e44cb957efd293d422548aeae2d24592191835757a1f8b6da66682f9fc9941fbfd8d7252a72dd987cc2a84e8486283e73853c54b8291709bb9ece8f1c90ac892673f32047e95535293cb5679430e3b1af23b1d52f34e39b4b978d7e6c827835e91a2f89b4fd52d228ee1e28e729ca39da375653a4d6c74c64ae60ea5aee37fd92d267618c3c9f20ddf2d711aa9d73512e659e28e20368441c1ff007abd5af2c6da745f29d6453bb241c8acdfec34dccf9c2f35cbf0b3be9558c56c70be19b5bdb59a249ae14c0f9cc718e236ed5b9a9dd110a25bfc89fc7267ff0041abbaac969a3da2f9454bbfca064579f6a7aa482571967c8dc107aad1cae6f422755377376226e2ee0b3b70c6591d551c0da4b357aafc22d6d2d65834e64bd12ce7a7d936a13fdede37578b784e79f75c48f3c3e6974860490ec0777cfbf7f6c6c5af5df8071f880de4b6fa8492ff0065d98f2b7890382f5ea61f0fc8b999c156af3687d058a319343362aacf7f04695b9cc5a6e29ab93594dab6fe1455d8aeb3127bd003679de39142d5a47de8af50c5fbc3bdea5cfcf8a0a1fc3ab6e1f2d556b78d7eea55d414605032adb43b17fdaab7498a5a006d2d14cde37633400fa2929680129bd69f494806b5145153d4414514550c6d14da753038ff0014789e0b08bcb8a487ed0e8dc6f1915e192c8f35dcaeef9625989cd71bae0b9bef1479711691c866fc7b36efbd5da69f64f6fcdc48b23fa01802b094882c456af22fa2f7ab4b6e91afc91e5bd5a8f3095c745ec3b531a471ddbdeb3032f558f59b89512d2e61b5b7eec132e6aeb010dbe1537ca7e504f2dff7d1a7dcdc3c76dbe240587ad61cf7723c6de715dc7ef81d97fbb5408c3f1646351b46b7dfe5f2ae5cfaad3f40d292d6d62dc77aa02f93dcd64eab3bdd5df96afb101557fa7f76ba8bafddd86178ced5c50ca256baf22c339f9e52147fc0bffb1acf8ae1cee7cf52d8c7f76a0f11c9e5c36e3f8467ff0041ac65bef260cb92f2b86c7b51002e6b9ac8b685ddbb7bff001571ba1c8f3ea0d7329f9c83b2a8eb174f7b36cce505747a2d802f6eefbd10b8c91fdeae88d90b63b9d1b564366d1cd6f86f9543f6f97ad58d3e4b69259c5a5b79fe79d9b100539fc6a2b348f54ba8ac22458e28f72f99ce77f7dab5d469b368fe18b45b4b445f3406ce00c9ff0079aa6524418da9f853cc46926b7b78538f91132e57fdefbb59b3f860408bfd9f76d6ad8e54c9bb35bda9f8885f44f1b22888fbf3ff007d564fdbad236e9106f7149344d9c8cb54d76d1d82496f7c83a80ff3eda913598cbaa5ddbcb6b2f39de9b6b657548be5daea3f0db537db524e1c44f9e991baa1d8be5292a09115e274917b62aacf191c7f176a7cba5d94922cb6e1ece50370f2dfe4ddfee55596e8dbba47a96d0a4ed4910707fc2a4652bb43b58a267d47bd64c9f68475b850db2372b5d64506658a4cabc4373071516b51da7949e6b94725b61eff00fd7aa4c399b0d3aeaff4d8dffb3e45463d124e416a824f156a3aa4ad05c5b183d763eef9ab135cd59ecacfcbb4da6e9f76f7ff009e75cde8f25dc116f50c54966055ff00bd43a5096e6f19f29dfb5ac7225d4f2f2a96f2e09ff75ab97b64f3edff007a3e440c81bd7756ce8daa5bc9a56a56d7724b1dc4f1bac61c16cfcb5cceb97df67b46b488b230455771ff00a0d6908463b19ce4e45bd20db36aac2291fca42ac1e37d9207fefa7ae2bebef87da8a5f787e20f72d24b00d9239400ff00bd5f22fc3cd392eafe291fef468f2915edde07d58e9d788ec5b66551c0ee95ab1743dcfed1bdea85e428f2e14e2a682342ab244f9470b83fecb50b6e5f9a964a122d3a0ff9e957d2148e3c5558ad64ddd1b6d68241b282848a4a95704fd2956302968900fa6f5a8a593cba6c121928e518e910f55aaf3cef1a74f9aad48f8a6f14728b98abe7394a8a58279177ad5fe29ab47285d10da46f1c7894d5ba6734ea430a6e68c50c01a6c511aa7753a8518a1a818669bb685cd1b68011b8a89a4c362a5515130fbbed401f3159e9b6f6259d3994855772392ab576aa25d064c3f0df74ff00bd4ab303cafdd15cb720b32b946ce7e51d6a0bcba82ded1a495d5131d6b9fd4bc442395a3b70b23e7692dd0561c8f797cca2e2e3e4fbc100e05095c0d1bcf1139671688fb7eee4fa565b5fdc88d9dd1113e6e4f5356a536d6316652a78e83bd717ad6a925f5d2c76e30a4ed3fc46ad44a2d5cdc3cf756f044ec59dd7247735e83a8648893e5fbf5c4687027fc241141b17f70839ff006ebb7b939bbb74f51b8e2a64c0c4f179f96dc74525ab8cd5eebcb4d887e6efec2babf1ecc63fb3fd1abcefcc79e5c67ef9ebfed56b08e831b6d1e5f3ee2bd7340b147d2f64bc2ba2e08fbc3fdaaf3ad2ad50ba79bf733cff00bb5d8e8baec9736b7524b1aa5ac659508ec9fdda24432dea7adff66c7169fa7baf9a1361901e7fde6aafa45a6a7aa6e4d36396edc0e5c74ac8f0e694fae6b4b25d168ede69173ee8b5ef7a1eb960f2dc69fa2e9fe4450a0c3fa9fba3e5a225c6278b6b961a9d85e2d94c585d488adfbbf9913d7737f7ab5b4ef0cd91d065bdbabbb89254c3387e9babbabbd2a0d4a6964ba7648a2ce0fa0eecdf5ae7b50be4d52eda0b54f2f4eb5f940e3e77aa95ac0a2fa14d7c2b646159332ef283a395aa52f859d39b7bbb88d876ceeae92d2677b55d81b6a1d9c8fe2a957ccfe2ddf409babcd94dc587a9c3ff0065eb302662b8f3171dc7f0d452dfea10c4c9a85b6f89fae06457a16c90ee1e5b0fbdd7e5a864b70ffeb4a0f519dd4e3886079d5b5c3da6d36976fe51fe0ce48ab9aadab9ba8af3cf6991c7c87b537c67a0181dee74a2d1b3a6e71182a37543e0c9f7452e9d33b3fdd9533fad7545f32ba111cba73989f61fde8f9b91d6b16ce0713b227de3ff002cc9ea6bb8d37efcb6d286f363efea9fdeaababd8e15648a3cbc6ead915b45f426e39b427d3ac92e6549a49641b766463e6ff6be95c97896c5d37c92a28592bd275cd4a3b88ad5e2ddb4c6cc83ff0065ae03c4370f23cb69ee3e4ff655795aba7b8730cf0d437a7ca7d378bc07727a13d76fe2bc57a6687ab477c8b710f0c4ed7423ee4bfddae2bc26c0ea36b1449858f12927e5cfcb57fc4774344f11dadddbed44ba768aea31c073fdeada408fa63e1a6aa9a9582d94dfeb631f27fbb5dfaa2015f31782bc466c6fe2b984b0889561fd55abdeb4af14d95eac5233ec571c73c5632b9674d4951ab874de9ca9ee2ac500474b4fa6371cd00432421db34aa98a92a3e41a04453c8232b522e0f2b4d921127dea72c78fbb4121d68c0a5a5a004a285a5a0a88da295a99d6801d4da7545801f3fc544462d1516fcd4b40b986d56bc9fc84ce32d53d35d11fef0a0227c8f73751c31799a907817d09e4ff00bab5ce5cead73765e389da1b7ec01f9c8ff69ab3e5425da4b891e494f52e77546d322236e3d2b99440b31144fc289f529234728ff376c9ac1b9d532df206e2b3a5bd9ee38e883ae2aa310e51f797f7370ee19fe5f5ad3f0d5897bb8b7f7265a7e91a5c69a34b7975b930ff00260f56ad7d1dcc715c5c2db3ed48d9724ed02ad8f948b4a9dc6af712431f9d3bbfc9e9b7fdaaec620ef7f06ffbc139e7bd55f0e4091e8d6ef8f9dff7ae48e7e6ad28137ddb49f2ed09b45620707f141ffd3ed63f446ae3ecc62443fc3daba3f88d2799afe3f85102d64d8a676ee15bc7611d0e870473ab24a995059860ed3bab5174e8a38ed74f88b3dbefdd2138c95eb5836771269c58f96b2292aa39c5763a7a07b0776e5ddf69c76a521c55d9daad85a687e0cfed0d99bcbaf950ff007037f77fe035bda3695fd87e1b8b73aa5edd90c5cf6ddffb36dac8f17ce91db785e3947fa384477fa2aad677897c4cf76f7f76b266085d2183d3fbc5a9a2db3aaf1e6ad65a4e952e91a7c7fbdd81a47af3fd2a1fdca263e67f98d558a4b9d6f74f3732ddc9bc9f445ad3bb912c614b78b994fca31da94b51c558b5673c71de34110dedb3763b56835c4f8eaa3e9fe77562d9c66154751bdf3b9cd6971bb0df7b2d9af3f1112241e7c85b2c7ad355d3f8c305f6a648e32dfdec7e55135c0ca8419601b18ae78c6522466b36e248e29227f9a375e7d9abcff5cd9a4eb16b73147e5cb11e483c48dffeaaf46f22eee11d228dfa7c9842df376acdd5744bfbd1f66974b95d1c6d3c6cfe75e9d18be5b31c64ac45abc65e18b51d3fee94dc9ee8cb572da682ef4a8a5d8bb7b8237734ba46937ba3db45a46a7b9146e96d247e37af746ff686eac5d5746b9b2bc444f3459c8fbbfeb9bd5465cba321a165448de24446088e580cff00136eae66f2d623adca65ff0055226fff00812ad741a9c86366772a55086fc37560f89711cb15ce7f7b09e7fdb46dc2b58ee165d0b7e1a3b35a44ff00615ff1e87ff415ae9fc4fa57f6a5bbc7852f226f4f697b5727a7c6e979f6c8a454890bec4cfcdb19b70af46d3e48efb4b8a488e5a3e95a5ba9513cfbc17a8bc72b585c712a3f94fecebd3f5af52d0e79216d8c58444329e7f8abcfbc69a05cdaea1fdb9a5266271bae907fcb36f97e6aee60bbf334f4932924a5033f963f8fef6f5aa633d3346f115e59496b6d0c6d74ce42ba67f87fd9ff006abd3e024c48ee36311d2be56f0e78e278f58b8b796d99e2b572c2f13fdec6e65afa2fc2be22b2d774f88c520f3762ef15981d2531b9a375354e6820928a28a002994fa28e628652eda75148065151cf22463f7a7e5aaaba8c0f2e14d31972a3793cb1f353b783b68906fa0064720907c951bb84a93cbd8adb2b2e591c3b16fbb408bf11fbd52e6aadacc26dd543521389329bb6d1cc2b3362939dd5059ef30af9b56a819f9d9737f7636bbede6a7b48e4bd8e5773f3206e31fc35a2be1dbcbd649251d0fdc1fdeababa55ee9b32dccb1abc5f75d13aedac340ba39a5b779d9605da8c7afbd6dc1a521448d036f7758ab4b53d3633125cdaf287ad68d8bfd9f4bb5b868da66427e407e6a9726333bc500a1834c87848c2b1fad4b14720f0eec8865e4754c13fe3567c43186bc49103231db9cff75aa6bb431d8e53944b856c350a5d046c5b030c2897122bb63694850be3fe05f769f6d71f791936382dc1fd2a282ea49117705e0544b849a53855ca6e3401e63e2590cfafdc1f7da3fe0352d9811ae1bd0638fe2aa13cc24d46576fbe1ceccfa55f8b123c489b8307e7d9ab6e833a1d3618caf99326f48c6f0b9c72b5d1db477034982e254d8b21667f51e95cd46248d2249769deebd3f8d377ddaf4bba8d24b041105f9d395f7ed490b9b95953c4f706fed74611105a3b4ae2f51ba171a2e9ba75a9692ea7ba662807fc0455dbbb9f22d250bf7823aa74ff00f6ab7be0ef8745c4b6fabdda29440ad1bd691d86f6b96ae644d2ed31b3f7a06c1ff01aaba55ac933f9f296677f98574bf1074d45d652f1f88a4466ff00812d64adc3f9b05bc28bc956718fe0ef516d4d232d064f70237f2e20cee0ff0000fe2ad9b3d0ee6f764936e822ec3219cfdef9b8e9f75aba083c331dc46b2432246a515e111a71eff37fc0b6d46b657362b9b7b668d00f9c87c12ebfc557ec6125ef18cdb96c436de18b68ce65b76994632ee7e5dadb7f86b53ec96d6e8be6a430a8210841fecfdedbf5a822c8fbf236dc9d8c1f3914ec04ddbbeefccb9cff000d7452c3d3e873b52ea5d81e20edf684951401ee0fe552a88e799a3891f6a61c1e7a7fdf5fecd64ceee170c37b01bab6745d4a086d9433a233eec8efb7b56d38462b41356396f8bba4dedee8f67a9e9265925b09b9407f85eb9c4b87bdb5963bb468ee11cc4e87ac6fdd6bd6d67b46b3963bb91638a5dcbf832ff935e0faadfbdaf899ae662aed3fc970b1faa7c9bffef9af3ab46faa37a7aa22bb8c4f1cb14bc390e80ffb55ce788e03716d149d15d39ffc75abaff10c78481d38791198ff00babfc5ff007d5735b3cfd1937fdf71e57cc7a36e65ff00d96b383ba051e5d4e72d04962658e57dbe58181eccdcd7abf839cf96a99c20015f26bc9f517f2ef2c2494318a4811881dcd742b249748888eb0444b6518f55adeda1713be59ffb466bab7b7db25a8122641fbfdbf9d1e1a118d1629e545d8236ded938f93ff1d1fc22b2fc259b6b8476bbca27cae3000ff80d17975f67f0aea96111f9cddbdba1f589db70ff00c759e9c463fc016a1ed2eae65e3cc754cf7feffcdfecfcd5d1e8d35c785b535b8b57616aefc2761fecd64f87354d2f4bd1628e6b95497e695d065fe66f9be5ff0080aad5e6d5adeec3dbd8d95f6a0cfd923ce7fdaa5203e87f0f6a89ab69e970872d8e47bd6ac7cd783f856f758f0e7d95f56b09ac60924289e7d7b36877e351b4f31368f5c50458d4dd4ea5c50ab8a398ab0945145031ac71f7a991c8927dc344b089861aa28a048beeeea005bb804f1e1aa87f65206cef6dd5a9b81a5a5611460b531bf5abb48c420f9a85208cd31855692149170c2acd36802ac50a421b6d0c51f77b558aaad7118931444091461b3fc352a9aad2c266dbcfcb52a0d831401f35cf023ed48865474c555bab5c1c282587bf15a900c05dbf220fcea0d42481137ceea880f527ad73191c6cf6e2d2ede07ff55393820701eb360510bcb6570582bfdc71d8d747a8a3ea51308b84ecdb0f5fef6eacbbbb52511e578bcd44e70fdfff0042a0a460b5aea29aab5b7dae6f288dc37e188ad19d0c7a44a8f2348fe62312ff00deab6aff006d8d1dbfd6c6769a8b57f92c18b154f9d3268d2e3dcb9102117b2914dd5e44b5b4693d11ea4b39e331aa431cb3b77753e527fdf46b27c75712dbe8efb8431f9876044f9cff00df4688c7526cee7992e5dfcc6fba4d6cda311708f10ce00e2b1a2237f5c66b77483fbc54cfcd9e2b77b1a1d1adc798f670448c77b8cb91d16bb2b6b992c9d1186f543b807e7217f86b89826f2f57b52c5b6bbaa919ed5b3a9eb867bbf22d626f351c2e5fd7fd9a98c5b337b97fc511d9178ae6d3724528e411feadff00bb56bc197fb3c2a9611164f26ef63ffbbbb22b8cbcd56e5e47899f116f3948c74ae874ed2f50d1ee3cc5759f4eba447f33ee90df7be6ad1c79517ad8ee7c47a95b6bf1dbeeb86fb3c0eccefce07cbcad73ad7cee9717289b378d89c632b586b70e3c3ca916edf2cce84ffc0bef55af1007b5d3f4eb6593e79115c807a2d1c8e411d373d6bc05a9473787228ba3d9bed2992d957ae8eeae310b07d891676a172131f9d78c5e6b2fa3ea082d1df76c892e238ced3b28bbf0ff00f693b25d5ecb7728db879c962e9d9bfef9ad2317d498bd4ef1f55d1ed031975bd31307fe7e90ff00e3a2a8dcf8afc3491b0fed7591c0ddb2081deb8cff00842b63a1882ec3e89deba6d23c171c6aa5c61bd48dcd445f2b1ce4a2b529cbe314936bda689a8cfeee4203f96ea8adbc5bac248df65f0d5947c1cf98e5ce3ff1daf438b46b682dd436ee31c93fc354aeec6dd1182064949e0e6ae537230f6b17a1c1eabe3bf10410ec96decb76fda89e59ae4352792f6d7ed930512999b7e3fdbe6bb5d4b44b929f699a07f287cb929c13583e23416fa2b6e0c143a30ae791ac65d8c682e1df6195d9d80dbc9a963291d9de46df737bb27fbadf3ff3aab944b757f3177b81f277144536f7ba1fc236e7dfe56a9894f6292c064b5d35f1bde32a9f82eead9f0847a46a5ad2daf8af58fb0dabf7f2f712ecdc26fed59d3ec4b15933f223a37d1377ddff00c7a88f4db71adb3dda2bdbf0a0489c6daae61a3e896f817e13eab25ed79b7c44f0569fa1f89344d3b4792591afba249ff01515f49787a38edf45d36389da7548e340ec7aaff0b57cbff1afc478f89371776970d1b69a62b785fd19558bd5404ee7d09a2fc3cf0de931a0b7d2e27b803779920f33f9fcb5d2da69705acb985123f644c0af993e0ffc46d5c6bf6b6fa96a12dd5bdddd79520b977729bba57d56b4a516333f53b0b7bfb37b6ba8e292270cb8719ae57c0ba1ea1e1d92f2d2e0ac967bff0073212373d77b55a52fe6e1681932d155d20903b3bbd5ba4046f9a3934bd699bfe6c5301d51b734e6e5698a38a007ad31b86a7535b90dfdea008a58f7eefeed2c036458aaead3a4be5b8debeb56378db400ee68eb4e534500452c9b1335452682497a2d5a941718cd42bf678df637dea009b22a4520fdd3555a1cbf5f96ad2a814091f28eabab49a742a5b6c8c4ff001bf45a86d7f788da86aaef1b11b913f8c0fef7b540a8351bafb4ca99b78cfee41fe334dd484921cdd3b46a73b002326b98cc74f1e9f7e8b24a97a15fe608f70fcaff00bbbe88b4ed3111b6471271c7c9cd52693e64440a58765e8169f2cc638be6fbd8a0a197525b5bc8a55c46dfddc7056b1fc46e56c27472bcba6cc1fe1a24c08a7b997f811981359fad7cf2db85ddfbe4494e682a275ba1b936887d05709e3fbf37baa2c717cd120aec679c69fa3bbb7ded9b457955ccc6699ddcfcce5ab482d462c50390c5d3620f9b2f53b485d5522188b2379f5aaf17cedfecd6cd9c28216e1794dc38ad2f60916bc39025f5e206bbd8d1e5f9f9420fef6eabf25c491ccf71148dc965771d48ef58f15bbdabb26144a02eff005c55c49f2ec1d31ebc574524ac076be18d3bc357d3c462bb79ee8ee6f2dd36015d06a7710223c7e7af907f8010315e54b1c86f22934f76fb467e409d4b7f0d6baf84ae0ed9f56826f35cee78d0e0d6738ebb81a9733471c36b1c4eb245112db31c6eddff00d95169749a8eb2f79a9c9f3429c204ebb7a2ff00bb587e17b477bc6b7781a188b8c7982ba0f10d89b6f125e41141b1708c91a0e0b32ff0d6d4a4ad6158a167e65fdf5d3b079259033fc9d4fcdcb57a77825edb54d2a28ef7f772c6ef112e3683b76b2d73de0ed03ec376973a8164b8c1448c760cb8dcd5b3fdb71dd6aef1c259d234dfe67ab2f5ff00c77754ca577a0accee22b17b0e73e627f0311d16b45131b5dc633d79aa7a55f25db240e14e470ddfe5ad195762effe1c353e5382adefa94eee448d551b85354258647931e67c848673e959773746eafdb6bb6d152cb3bbd9b244ff0053cf4a9722226ccf771c7a3cb66eeaf846d8319cff00bb5e37e282f3e833f9a70c4239cffbcb5d8f972c92a4b773f936e9f2a63b8ae735c833e05d4aef630f31e348fe9bd6b19ee7552d4e25dc48dfba7f971b8714eb690979fcd1f30f95ce36ff009f96a9e9165765f7e3f748fb4d5e6bb9351bcbc922816363e52227b6da83aa44ba6462e26b8b26da537c4a33f77632d4bf6abf444b258d648a37d921299f9d7e5f9bfef9aa1a2c660d49a0cabdc3a36507cbf77f89ab5e0749eea5b889e57491db3213b77b7f797fd9a191b9ea1e02f88573a768f15bbee9ed443b523ee8eb5e2de2cd32f046f792ceb3b1779a4c02a5cb365daba1d22422164fe1c9e33fed526b9766d214db1abf984a15719f936f34e1265f29cef816177ba574758523749b7b8e3727cdff00b2e2beebd3a413594527f7d16be408bc3e1e296d2dee163c63667908bf2b6daf73f0f78caf6d3cab6d4d2de4508b831fca715d0e0e488e63d5ba5645e6b9a7e9c512eeeede073d1249307fef9af2cd73e2dc76baa5d69f16d850a0fb3de491bb65dabc82ebc54fa95e5c1babbfb5dc03b4c9cfcebfece7f86b3e50b9f622482645742a548dc08352d78d7c0df115ccf67fd8fa849995104b6fee9babd8bfad4b8d8a1f4cd837669cce2a36340c25708b4249e60aa17d7be585e3e535259dc2491e56802fd329579a6d00549ee3cb3b151b75362f3cbe65fba6ae518cfdea006ae40f98d1904669d51e36ede68006195aa52431a3aee4cd5d6e2a253be80245e2968c629147ccd401f1aaeb724712a3dba46a3ee797f73fef9a83ed46e5d9fccdf2f7a92208f2c48c3e60571597731817970ea31f3f6ae6441b314de4c2dc26e3e9d49a82570773ca5766391590d75728b8593a74c8aa37923c89be576751f37268b010eafa91beba4b3878b707739f515a100fb6be9b2632a014ff00be5ab02ce322296e3f8e43b13e95d469a45a69eb23fdd8ddb1ff007cd05147c677d987c853f2a0fd6b85ebfd6b6f5f90bedde7e69097358ed5b4071258860295ee2b790110284386c2ae6b16da3793684fba0739ade5037c49fc25e862905cdacee55d8fce07040ad0f0f4900baf2f50b6f39cfca9e99abeaa362eefbd552d21f327944bc3a1f9303b528cd8731dc5a5c5c5943ff12fb6b78588e084ae73c41e2bd7e19991ef62f748d02d433c97b22e3ed7285f6eb59cb609f316dd237724d3d58d4b40d3355bf9b53b792f9f316f5de5c609ff008157d13a9269e83ccf2e292f521de24c02c2be7b5b7dfb47f171ce7a57a969d74e74a95263996385104949314a46968b1a3db4b238cbbeeebfddae434380d95ecaf2f0a0947ff817cb5d3e9d7d1dbd8a88bf78f8e80f4ac7bc740f2952a1e470df276ddd69c24c69a37bc3da925a94798ef9617191fed7ff00b35a7ad788c3a2a4322f23f4ae4f58923b6bcb8488b07211c9f45655acb82ca4bd7fdd1f947563e95d5cd74612a5ccce962950b2bbc891afcac599ff0086b4a0d4b4f98a5ba3a2a83b5df3d5ab9c8b4a4e9306e0364f6a2e8e99a38ca3c49280d977fe05fc69c60b723d91da797697536c63bd21f9c13d01ae0fe27f88123d29b4b8911a58511c88ead4fe278ec3458a4b74963837eef331cc87fbb5e68ba93ddebf71797c3fd71696b09fbcec8ba74b9752fe8bae5eda59bfda6c94aefdc981c8aaedae477d7779772c6d1ac3b5767fb5b6b696e609d18654e7a679ae72efc317b26e36b2432445f7633b28f64cae6454fb13c7a3dc6a3348ef7523c71707f85ff86b7ad8a4768e32bf226d1e89502c7247a535b5dc7b2579226407bedff6a99777cfa75fdba286789c36f03fceea4e0cd236342d2eaca0451fda1685c76f30714ed4efa0485e462d22146443180e0b37f0b376ae7ee7ecf7088fa85820593ee4d1c9f37fe835423d1ad9ae3cbb433492c8e1523c0ff269c69d87cc8e8f45d6e49eea28127f2fcc70c642e2bb79efede74fdeceff00249e523a3edfaedaf1bd6349bbd1f5158ee86c950062bbf21c7e15665d55244892147858617aee095af33467c87a64faa9be896368217886e5437930064fcfad733696ba45c6ab2bca9e4a9d8e4c24220f9b95ac8b5b89fcb74976c891a3317e98aaa9a9797bfca2e9bfefd119f719ec9a1dd7d97539753d14c41e1b7d8842651119bf857757616df14757b78d7ed7a7c377ef0398cd78768daf8b7b49635ee9b53f87e6ad2d3755927912343f29ee2ad45485aa3de3e16f88b55d634ad4affc472451a4771b63ca08b095a573f133c351dc796d72f2277c0ca579f36891dd787d2da5b99b975678d1c88f7374ddeb59b79f0f74a0eb1a5fdec7290d51ec88f6a8fa12d67b6d4acd2481e292ddf6b21439cad5a8208e3fb82bc5f46d7dfc25a2c5a3a0f3d6d0fcef2752376e6db5ec904e1edd1ffbe15bfefaac651b1b465cc5ba6af34ad450306a4a5a8a52e17e44cd003981c7cb4c8d367fbc685de53e6e1a97185a00465cf1fc34aa303e5146453a801aa29d453700d007c696a01bb887beeac9964c4b29eb97357f4d27edca4fddc328ac89fe4663ee6b98818ed585a9486474b742dc9e6b52593e46acbd3503ea9bdcfc81eb428d682d7e68a341f2a0e7ddab52e767932d9fcbb826fa7b797651799fc558b697686ffcc94fcae76e6a56e0739a9befbd71fc2985154e38de491122f99a4215067f89aba3d0fc2977e23f16cba458948df2ecef274445fe26aa5e25d06efc37aabda5f490bcbd9e0904a0ff00c0856f1d8712d5dd826957d2da2ce93bc5b55c8fb9bfbaafd2a6b5c1b84dd5836b23bccdb8eec9dc49fef5745a65bbc8fbd86c403afa9ace4237171fc3f7a8821c5c2c996dd8db8069f1c602ff00b3de9d2cd1dac6cf2be31d077351102558c48ff35325920b7e30d23e7a0359d16a9f6d7d8dba14ec3fbffef558ced4445450a08c920550e28bfa7471cda84465ddb41dd8ec1aafde6aa8ed75044edd51481fdef9ab15677b74678b697c328cd53f0982fa9dd5bca7ce95ff007a6aba0acae74cb7d39448d4f97163802a497518ec079f2c8db4078bcbc7df56ff006bfe04d504a644bf4b68a3677cae703a2ad58b9d00dda62e1f0a4ee0806e38a517666ae51484f10f8ab48bbba8ae6d674f2911106f077e7fda5aaade26b32152dde59dff001fbd58da8e9d6fa44ac9e5acd2b8dc09feed6e78734302dbedb7673e62711f60b5a4972ab984aa58ceb99f50be7d96f0451a6572ee393ff01ab569e1b8e38daf3559da478fe6c30da057596964036fd9b33d38fe1a6eb5a34faec2f616b22c7bc7cee7b0a51918f3b93385d6b524774489f7b02382777c9b6b9ff11878f4a80315595df7a04fee7fb55e87a72681e0d2f6f35a26bda93a7cefd21857fbab5850496d25fba790924473b3ce01f15af2a8ae73a63d8f3e8afae637fe2dd9e6b62cfc45247b77fb56fdce8df67977c4563c856f2ca7df1fecd737e234ddb1163892540d971f2e7fc688cdb0944daff848d2768925ecfbaad6b57d05fd94ae8ea67046c7f7ae73c556b6f0cd6b2e9f692c76f35a452bab8ca249b3e755aafe1ebb10dcb7eeda49438747ec36ff007bd2af988b17238e7b868937aa2a6df932714fbbb5bb86e92488b7038ae82ce03a959dc3e9fe4cd3c0ff003c18c6777f12553b6beb847f225d3eec3ffcf3742c37544bc8cf5321ae2eddfee2fcff00291c1a6c08f25f5bc6e8b1ac68cb23e36e36b67756bdb4e1f589609a0c44e9f27f0ec65f9aad5e69627695f3995c719e9b6aa2997cda19f7d769222dbda1c59a1dd99073237f79aa8fdf0a5a35931e86ad4ba11dd848de17238911f82b4906817a5d775caeced94dd4f942250fb38575daec8b9e41ed5dbe8b1a6931ac9967cfca247f5ac98f4bb98ed19fcfce0f2850363f3ab9069b7725bbc6c96f1ac83878dca61bfddfbbf7aaa368912d4f46d435c43a7b989dd1a3dac843e01f9bda8b5f14c97715b83e51f2dc2e4b9c9f95be6af2092df57b70a92db5c1881fbe83295b567a5ea0902dcc57116d9037046e3b7fda5a9bb23d99db6a5ab21bc94e1517fba47f157a4d9f8b64d1f41d34cdfbcdfbbef9dbc2b70bc2d7ce77d26a10cdb2e125def8442070e5be51b6bd7758f03f890dadbed8e59b0368c11b1c37f0f3f30ac677368ae53df34aba4bdb0b7b95e16440c0568d719e024d463d2923d56d9e0f2f64480e37fcabfc5b3e5aebf348d07d145333400ea6e29d4da00300514c67c0a8d5c9fbc28027a298d47455a00f88fed4f03ef4fd47f0d477c91ba2cf1150afd467a1a74b201bb60cd66dcc8ff3173f30ae621143517222609dfe5ad2d234b8e6b48b7ee4c26e0c3ae6b12e7323e7d2bacd3a431dae318540ab4391464eaf94dc9963fc22b2651e5c2a14fcc086cd6b5de649b7e3e5ac1bb25e6ff673ff008f5546ec668ea361a8dfea1b3458ee249668d5ca42096fbbceeae7e381c4ae928fde82ca413fddaeff0045f115cf866ff49d46d11647f25e270ff74a77ae5d9105e4b7370712caeee13fde66ad6fa009a469787df2f73c0aea12448d147caaa3af35837925cc112be176e3704a8f4f82f754954cbca2638e80565cc23a282e9eea5c43f707590ffecb5a4b6103ee2e9963dc9aaf67088d15178603bd6a79780bc6548e2a6fa98c9b31e5d0addf947951beb54a7d26e06e115db15f4715d039f9be4a8b639ff77d6aaec5ced1cbde5bdcdbda3196e17ca1ee6b1b48bd934ed56df506dc62475dfb4edc8ef5dfebfa639f0adc3a8cce4a4a83fd856535c04f8ff8462dcfbb73ff0002ad62f4348cb98f6ab348dcc524454a4c51f29deacea53c16514af2f08839ae1be186b824b5fb24bf7e0f993d4a55ff00166a8244fb3f5690ef7ff769c237667677321b3aa6ab12632f2baa9f615de492471b2c7b32a83a0ff80d731e0cb178fcdbf94618a6d4ff007abbed174979b6c928c21dac4faffbb4ea3bbe513f79d88ac6396eb6954d8a06e271d055af0e58ff00694b3cedb92dcbaae0757db5a3e2c9041a62da4230f2fca00ecbdeb4345852d34eb74ce30381ead51f09ac616383f15783b4ed0e3bad55ae1c5901b843dccadd177571517873508ed22d5628dbece11657493efc7fc26bd73c4d611f88af2ded2e23f32284f9b8c9c07acef887a8c7a6f85eead22e6e244488fb2b3735a4657f7595f09c6de40358f094b7111c4fa6bb23ff00bafb71faad7111133a2b9459187c92211d6b4aceee4b72c22728b30f29c67efaff00fb557ecd332cbb536ac9f3fe35727c9a16b534fc356a0449a66a08b3d960cb69bcf28bde26ac4d4bc3f696533d9421a3670d2a7ba7ff005ab46d27717b6e1bee473727ff001daa3e2fd46e63bcb232c71234723aa4887391fed567096a67d6c54d0d23d0b558a5b72e5a42a92297dc1d1b6d7a25ddc797139d8e18fcb920d79ccb204ba62831cef407b1db5e8905ea5f6976f73647fd626e285fa3f75ffbeab66b506723abda796fe665ccae8cdbc0e10d5041da2919db3f3e7fbb5d76b85ee2c1911d1278c6f4c9da437fb5ff0001ae22e67026fdd1d983b7007cb4e22dce9e0d82d1cb8f9085524ffb35159c885f1115763d31d2b2ed6e05ec72dbeff2d93190ff00fc5510482ca660dfeb411939e2aae335582056f3770c8da723bd549677b2d83e6fb29f435035dc93365f950685b88cc9b252af11ce78e8d52f511ad69ae8b15cb48bb4ff00007a2e7598f54d811d77e42fd4571373e12d41d9cd8bc33213fdfda40a9534bbcb148bcab677940f9f61ce55688ab30d0e9fcfb6d3634b89536440ae324b2e6bb8d0fe22dec613c9d47cf8a33b82390ff2d797dccff6db5c3ee8e5fe38e44fe1feeed358a9a35b49fea647825f9b03ef26eff65bff0065abd188fa734ef8a2e9b63d42dd5d7b94aeb20f1ce8f3dbb3b5cf96c9da4ffd097ef57cb7e1c7923d39c4b2348f086e7ef64eeacd8bc69240fb2eed3e51f2543a4895267d65e02f157fc25315e5caff00aa8ee36c791fc15d8efc06fef57c85a3f8ae0b4b581d2e5a049d1bb95f995b8af45f0cfc4a2245fed0b9f3ed5d1bf07a52a7d8b8c99ee8d3848d9e52a147cc4e6bcbbc71f14e3d1e558347c4dc9cc92516b0eb1e3b915e52d69a3579bfc6ef0e8d1fc41a6c7a55a7971488a824ef23d65ca5f31eff00e0bf115bf89b458351b5dc124ca105369deb5d25733e0bd29343f0c585a28e88b9f52edd6ba5c521894ea28a00f86e57017e5ef59772e18355a9c8c613eed674bcb63f3ae62223234ced1ea6b59ae12ded15252db89accf3110ef72bc7402acc16af70cd24df2443d7fbb54cbd06bce8519d51c2fa9fef5624f27395157357be8f3b13ee27dc5ff66b3a23fbd57947ca7a1a23a0ae7476ae874488ca577c4ed907fbad586bbe7bf5918fca5f6a568c17500b6b88a50c564455420746a8ece0c9693f8611b47fbd5603351937bbfd1b1cff000d69681a97d951c2c0d23b81d0edf9ab1a73f24aeff7b0d5bda2a46604741f36067359048b8d3decd2b15db1a3ed5c6377cb5d0ff68c7fd96d1a5bff00a414542e3e5f997f8ab3546da7b65198afcac7e607de8b6a28d8895b2ff3492c6ddf78dd566d11e6bf893cf5316773f1da957cb9d3f7a30c3bfa9a637976326f88b06236e2b42a515637b55b84dac142943d07fb35e5fe21096f69f66546d85cba11dabb0bbbaca36e3f376e78ae4b577f31b1d707754c0c23b98da75d3d94acf0968ee0baec901fcd7f1aeabccf3915f0dbb3f383d41feed735752212bb130c073fef57736bff0013dd152fede35fb6403cabb8d3bfa3d76d268d743520f13a476ea9f66c6c4da007e2ac45e26d7ef4a88646444e82318c2ffb559ba3cf6524aa9716e82e0f47ec5aba5699218d522db1a13c802a6524ba19688dcf0cddddeb7fe9fac47e5bc2761f76ae856e37b348dc200d8f7ae3e2d72382d56240db33b8f4e6ad5b6a925d432a2851e98ae772bb348c8d6975b8e012f948c677f973e8b5c6ea720ba33bcaece888ea49eed5b5f67c2bc929c280cc6b91d4a7c5a3245f70633ef537d6e0f567213fc970e986e1f8ad28a79e38e24323707e41fcaa2bc31c6e8ebf79c7357bc38e8f7f66efde645f9bfbbb96badb5cbcccbb3b9a17765731e8b15dbc6c9e63b39f6ddd37565789479967950a70e18e45767e31ba0ed15a2f7218e3a616b999e13716779b7fb8cc38fe2eb5cf17adc1688e7164cdca17dc553efe2ba3b391e1b382dd5d828ccaf8f5dd5cfd9e1dd36fccce771e3a256a49388c33b7dd1d7fdeab72d44f61dabdf79366c9fc727cce7dab1200888f70eea891fdcf7355f529fcc95a494fcbf7507fb355e00f7522ee2c5010c467b569126c747e1c98c76b2c92c1148f3386d8ef8217f1ab13dd00654f21532558a64373b56b36d35216f334734697516cff007763ff00b355a59de495df0a9bdcb151552901727ba7906106c5f4155763a7cf95dc77647bd0aff2aeea339e7f2acf980bf6d76f1ba8f9b9ab1f6d791d0a48e8c0f506b1bcc70ea22495d73c944ce1a9cd6f768caf2ffa2a0f99378dac56ab998f94e965bf799b12a2ba1feffcdcd65ddc30245f6884793b3efe01c6e6fe2ab5e15d2f53d7355b7b48467cc755e9fc3f2fcd5d4fc43f87e3c25672dddd6b168f17dd4b3fbae6a798563cfadb54f2e4f2e5385913687c646ea97fb11f524712bc49f22ca1fb3d654ae93c2df67314cf8e99c7152db5c7eed8f99e5b12b94cf65fe1ad232ee1ca5dbbd0cbe9f6f68c5b724cd878c6efbcb4ff00ecefecbf20349f301b5f0363ff00df3469f7f766f60452a550efc1ff0066baad47c471cda5cb1deda7ca76e72370ff00beab48d8cddce87c39f1635fd1ff00d1ae23b4be8a10b8fe17db5a3a56acff00127e26e9d712c6d1dada26e31f5095e736874cba78236da151d1065ff8377ddfef57a36951da681aab49a54f2dab94da4a1fe1ace69265dec7d12d88d3fd9a16407a5795d9f8b7504e3314f17de191b33f956b68be3ed2e68946a1fe837099cc6f58f28f98f42a6d64d9eb7a7dfa66d2f6293e8e33562e639e49328ff27d682b98f86e577f982bfd0b0aa0e5f3b1075ea49af76f8ade00d0bc39a77daedeefcbe4288debc8eda3827df245bb6e7efba756ff0066b3947940ab6b6a366f97ee8ed45f5c17458e2f4e40ab3a86634f9132f5cc5f7981d9f7b06a88ae66055d4a131cbbdb76dcf5ff006aa2b47c3ec4f9d4f50d43492165f3433e3d6acc5220ddc6dadf974196e2281d778ca8c71fed56b2a24713ba06110dd804f566ace58fe45f35f6291b89a4bbb879d5638b7244075f5ace41120bc7fdc63e5dc4f26b7b47045b455cac92092454cf43cd75fa50c2632bb714e31d0899b31487153b0caa9c65874aaaa2ad2b1dbfca8d0c632d411d1c323ed0d8dc3e95063ef3b8ce471934df9c3e5036e1f2f4fe1a89c3cdfbbb70dbc8eb8e941d51929232259de34746f5e0fb550f2de675f286f6278c56beaf6ef6f0b6d4676239e3f86b3fcc74855228fc9c8f9c93f313458cdc55ca3790c70c5b32d25c13fc0784ad8f0e5dcfe1cff4d88aa63e521c70eadfc3b6a3b1b58cbf9933aa44857b724ffb35b7abc035fb054d3d176c477041fdca232036e7b7b6beb1b0d5e281512ef73a7b3a36d65a7ca73f7b9fbb9ac9b58f50b2f04c1b639648b4fb8959d3fd9755fbdf8ad436dae5a3ff00ad7f2dc751276a1dccf959b5042f7332a29f97b91d96ba08808635117c8a0718a834f16ff64430babc4472e9ce6a86ab759fddc27e5c7ce73deb3b97f089aaea4f3af96a7f759e4fa9ac2d49c0b654f575a9db8ac1d72e0c7126d3f3176c7d5aaa31726447732ef24f325509dbe5abb6d7c96b2c1b9fee1563ff0001acdb381e40f27f08357edac3cc7c37dd3f29f65ad65b58ea8a35e3bb92fe47bc95fe53f20feb5d4786b4abfd503c1a65bf9d70e8cfb3d057371460bc5044308839fad7a4fc18f1a69f6be2fb8d0ee93cbfb5158a3b9ff6d7f82a2244a5d0345f82babfcaf77736f07998df5a9abfc0c49255fb26b0d1f0b98e44af7657485f65337ef9b2e9f22558731f0df8f7c3e7c3be2ab8d1fed2b3bc5b54b0185dccaad598b20b4815107cc7a9addf12ce754f16eb77f29cb4970ec3fe04ed8fd16b3258fe6f94743c56ba905041c65beefcdff7d54ebcbafb5324b7903fee8b6d279e2b5e3d13512ca8ba7deef21703cb3935366514997e65db5d4687e0af106b968d73a569d2c9101bb79f94135d8780be13eb17d7115feab1c505ac6eade5c95f475b247696689f2410469db0a9b7fa546882c781fc0ff0aebf61e21b87d4ad9a3d38a1f30495ec7e26b7f0d1d2fed3af5bd8fd9e3f9b7c918c2579ff00c42f8dba3e85bad3450ba85e7fe4315f36f8b3c63ac78aaf1a4d56ee591496c479f9051cdcc33d7fc67f1a34fd35becde01b08a3fe1fb4d7866b5aadfeb97ef77a95ccb3dc392c5dcd45a6d8dcea370b6f6104b3ca7ee222126bddbe1f7c0592458aefc5b2797176b3a22bb8729e37e15f0c6b1e23bf58345b479df3c9e3095f47786be0e6db38bfb6b5597714dcf1c15eb1a3e8da7e8566b069b690c11461570131ff008f56941709371151cc0798dafc1ed0ed2fd6e10ca62ef1b9ca39a355f843a1ddc6c22fb4475e932dce25d9524727f7e8e664dcf963c43f0a6ff40bafb44a5a7b342cc5e04aa76da8c859467e5edcf415f59b469347860a50f635caf88fc0fa16b11307b48a3727fd64630687ef0edcc7855b7882081bccba7f2edc1e4fa2d5ab5f0addf8e7edf7fa3dca279726d87b249babadd57e0b655a3b5d517ca3da48ebd1bc19a047e18d160d2e2e760e64f57a22ec8394f9eaebc39e33d079974e94a83f7d2a7d2be236b3a3c9e5bc8fee9257d4bd57e6ac6bcd034ad45192ef4f864cf5de94730591f2c7c42d72e7c4fe234b9b80a6dc01e5a1e918feeed1d5ab2e7730b2ed8362803000ad79638ec95423ac9283bc645432dddbbbb177c3fa3f5a89b2236673b75a8db8dbe6ee2d9e46cae7a5905f5da8f2fcb406bb7b9863b889d1d176e2bcfbcbfb3dfbedfbbbf835302fa1a2d6e8371a8e4d3912e11e518fe2c7ad6b408f33a245cb3edc56f5b6970227cdce2b59cf951377738d96de49915d0316efc555bcb5bd11622b67dbdc815e9690a06c222f153b5ba6dce1775737b5d4be63ca348b5371be05e25ed9ae8208ee1d7f751b0740aae075ad7d63ec5a6c4b73285f349e3d4b55dd3647d76c96e62db0dfc65b60feff00fbd5ab644b539c4bbb98dd7cd2e8b839ca55c5d5b6361b95ec738ae8d64b6be76b2b84f2ee005678cf6ff76b0f55d29ede462a329f3629028a7a0abacc7b5ddd1d734c5d7ede346f2bcd0c472702ac68fe19fb716b8bb3e4d9a757ee6ba0d3bc37e1fbb95edade39647c72e69f42b95238d975949a5f9126938da38079a81a3f3265f34b86f47c735ba9e1f74d527b4b72be523b28d83923fda6a6b69725addbf9db3794da883b0a68724ac65b23c933a2f1e5a2f03fbcd57fc38f25ad9b5e5a1324b19314918feeff007aac45a5dcc7673dcec67601ddf09f7dab3743b5bf3aa35dc3fb84e55f23ff0065a251338ab9ea5e07d6adaf7514b7bbda96b788d0dc03d95ba3d709f137c1d278635f96de5e6293e685fb4895b125ac922f990a2c6e87e7d87ad761a6c965f137c24de1fba931ade98375a3faa55425d0d3e13cbfc0ef71f63bcd3edf73bc68d3247fcd29fa6eab6d7f1fee9f0fde37ea0d59f8645f4bf8936ba7ea71b432977b5707b3b2b28ae77c63a13e89e27bfb2943473c733f4f4ea29ba4271e63a5f2e490af65aa1af5862c15d47cc245ae7ad352d420e12e19d40fe3e69f79e23bdfb3f957b6ea11cae1d0f7a88cb9598f2d99b9a35924768e5b9f9ead4ae88ea90f32d73963ae5a18d52591d39ddf30adbb3bab490e21914b7144b566fcfca8d2b68c43f78aff0079deb92591d0b5e44ec92c65a504766fbcb5dcc50c62267bb758e274d99738e2bcfb50bd8e777b3b10d32efe5fee8db42222fab3ed0f873ac8f11782f46d458a4d2bc21a4fe220d6f6b938b4d16f6e3fe784323ffe38cd5e03fb37ff00680d46f235b6c68c23453fdd1257a9fc52d5ad2c7c01adc6d7310964b5291fb97ab2cf926d01632bbfde2ff3d4fb3f5a9ec63cdbe7d4b37fe3d52f93f363deb78a33911410efbb4451d70bf5afb3b4cb5b68ec2d43a2ee8d13e6c73f76be3bb3cc77092449e63c6eae89eacbcedaea3c47e26f88be2d83ecf15a5ec166fdada32b4a48b5b1ec5e3df8b5a1784a368d24fb5ea3da08ebe6cf1d7c51f1078ba49525b8f22c1cf1671d4f6df097c637dcff00654a3de4702bb7f0c7ecf7a9cfb64d6aee2822f48eb2b0f94f0a8a39277548919dc9e001925abd43c0ff0005b5fd7cc526a43fb3ecebe89f077c33f0df85b9d3ed964b8ef3c9f31aeeb66c4c20a5740707e05f03e8fe125f2f4cb2fdeecfde4f2724d778a87e53fc552a8a3a351cc1a913a028c1feed42b0a427f749f31ab7baa18c92d96fc28158ab3c19972cff00352ecff6aa7961f325cff0d3fcb147313621813deacd46a0274a89a6fde6c5a5cc512b1f9b18a55148bf77e6a7e298c6370b556e45c7ca627c2d5b6e453161c3673401f184523ea379713c4729085887fc0aabdd805d83a6547cb4df0d5c0b5d3af37066677184ff0080d48cef270b6ce727f3ae793d4e7ea5142f1bb794edb486c8f5ae67501e5ddca53b618d7613911f12a6cc0e509ae5a21f6ebbd4bfbc53e4ad20b5348a64de17d537dfac128ea0e0fbd776cff707f0fcb5e5ba19f235988b7dd0fb4d7a731f956a2ac5964fe6114c59dc275f9bb66a363516ecad6310303c4399ef124976edd9b40ffd9aa6f08dcc706a8bc7df0dff008ed57f10e52289fd1d94ff00bb5ccf992472b3bee1bdfe4aeaf8913d4ef7c631a4f776e6de464b83f3131fccc12a4b5b893ec7e5ba79f2e36877ae5f487b83796b1c4ecef2164099fe1af5bf0c69291894ddc6a6e10ab20f456a56e827b8cd39ed3fb2d2daf8346a406352cbab69fa5da347a5419973b779a6789d238e58bcd91636c372c3e5dbfddae727fb341b9e5b857e7848e9fc2344da289defde44dc59c73eed5d65b69486ed6e6ed32e817629edfed571da478d6dac6ed237d3db60f94495bd2ebbe7ea96fe4be5263b8ffbb5212d8ddd81d9d22da8d8e5bd2b1f52d225b74cc43cc4fbd914e967b913388a46084f6a7adddfa229dfbd47626a7998e32e52a4a7ecba05d5c4a183224b2f23fbab5c4f865dfec6b2dac8d1dc42e1d0a1da47f76bb6f1ec924fe09bf9df8630d795784ee3ec9344f296f22506227d0ad11dae2f88f41967b8f18dcff6bdaa63c4da6a24ce89f2fdaa346fbcbfed25687c74305d4ba0f8822fbba9da6e3fef2d52f015d5be99f1174b91f8491fc93feebf06b4be29687247a56a3a7a72ba15eb4b1fb4371fe0f5d117cc8a8be53ccec634984bcfcc11b1fef76aced3661207b4bb197fba9915a5a547f67b36b897efbfca9542f2d765dacebc67e63596cc5cda9564d39e391512ddd98fdc2071459c8e933088348f86c01dcd750d74e9a34aebc38455cfbb572f6b21b4ba8ae221f346e92a03df6b53d6484b52d5e4925eb2cfab4ed2301b5101e05547d44c69e5dba2c717723fbb4dd62e127bfb836e8d1dbbc8ef1c64e7626ee16a7f0f68979aeea1159e9503c97123ed00741fed37fb34e34d966fcff117c47259a595adcae99649f288ed804a97c39e12f15f8aeed24b7b6b89109dde64c4ecaf72f86ff03ac34b54bbf1285bbbced1ff00cb34af6cb4b58ed6158e1458d31b7620e0556910e547cf567f0735cb4893cd92ddd52b422f83da83c9f35dc51e5d9abe81a29fb562b23c5fc33f08e4d1f57b3bbb8bf59fcb7df5ebf1c31a7dd4518e9566969395c622ae2968a280128a5a280129b4ea2801ad4dc0a7353220e17f7a6801f451450057606858c7a54d45210da29d453188d9a4a8e4cff09a8d64cab6ca407c376770906ab6a8a7cb8a67111aeea57834a477ce70397735e592cff67d56cde63858a40e6bd21a3fed4d21f53d41366f05d2363c22766a8ab1d4518a31afa4799bed9322a213b61471cbb7f7ab8ed324105edea4a7e621941cf56dd5b724f26a978af2ee314219231fecd7333c645d4a7f883b61a9d2d06f62b4b1bc774fbb8747ff00c7abd16ce7f3ac20917ee90ac7fdeae12e7324ab23fde205741e13baca3da39c3677264ff0d5548f3211d2bb76aaca7ef7b55a9072bef55d930edee2b942e60f8879b57f670c3eb5832c73dfca8228f28839ff0076b735c7061c7f7df8ff00769da19d90ce9d1c8e2b786880a5a443736fad5a989d7cd88aca7fddaf6fb39124bc4bb88af94e9b1ebc4229e7d8d26c52d9da1f1ce2babd383bb24f16a134306c6df1a7f1d0f7b91247a36afa6fdbd5bcde133c5703a9687736b7e968c73e61f90b0eab5de787f568f5485a342be6c5f21f755fe2a97558e39d30eea92a1dc8fe8d5a2f78cb539797c2b6e22408f9708324d62da4023f10c51a3fcb0e5381deb65f554b28ee3cd9ff007f1a37eecf5ae774393ccd62dcbbe5ddcb3ffbdb6a24b94d637674ab3c82ea54f976f181ff0001ab9bddd3e475dde98aa32f378db3962fb454b750496aca1f86c2b7cbfed54a2e504d1178966793c23a8c6e72be5d797d9fd9a3bc8adf67eea54dce33d1bb57a5eb983e15bd3fc4617c0ae73484b68e18b6469e694552f8e4d42644532845aa3e9d772da5c2798b13ee47fe3c76af77b6bfd3bc47e2cd2ee3fd65af8834b368fe9e6257806b99fed1dec8c8ce8ab86ff66bd27c311cf69f0d746d610fef6d352764ade9cac8671fe27d2e4d3758bad325e3ec8ec89feefdeddff7cd635dc2f242a13ef0719ff76bd43e3208efaf34ef11d8ff00aad4edf6bfb3ad70101ddf776ff0d12ee66f73d0be1ef81d3c53e12f12dbb154b8d91ac64f67eb5ccea5f05fc5b6bf76d127f78debb7f853e224d275e512bf976f75b10bd7d1ea50ae7e5a7191b2d8f8757e1b78ae6d522b4fec8952573b72f5f51fc37f00587837495b7b719bc7f9ae247eef5dff00975250e430a1852d25002d1494b4010cb2242b973f2d104e932650d2c88245c30cad11c691ae10285a044b45275a2818b494514806d3a8a29805368a662900ad9a45cedf9bef53e9b4580899f06857c9a7714ec530168a6d526ba885c3067f9876a5cc05976c0a81648c27f76a76208cd53d447eebe538a2223e08d66d5e1d5d2deef8747547fad7a35f3cb37856deca2ff5b226e247f72b96f883a5ba6af6f3a07dd7477807fbdbb6d767a3929badef93cbbf846c74a75361f53978a010a630c2b0e78049717498f9b3b8576bad4021b9de9f71fafb357332262fe5ddf74a76158465a957d0e7d8131b0fe2077543048f6f7693c47e743c5695df9768b2a421e495d0aa6e1dab3601246fe64a9f376522b793d083b5b3d5d2e1107497b83f2d179748819ddd517bd739011348d3b0c307652a3d2afde6c92dd82236ef96b0695c9ea16d1c7aa4e9b8f96b95c07abbaa8b6d396082d1f33cce2277c6d44aa5a77976935bc936ef291c6fc7a5757792787201e7aa3cec3e7191deb58b28e66e74d92caee5b694aef43cec3b87cd5774380daeab124c77c53878821ec6b357564bdd5659da3f2f79e05694a1f51d46016ef8f251a5f30767a9968c7a172dad750d2ef1e4b538404b211dc7f76a0bef13ea124bb18796d5d633a4d0ac8a739ae275a9a3791b6a61d1fee8ef4425aea2d198babdd4f3de23caecee1376ff0055ad5d0ee01d56d4fabf355dade570db2ddcb11b4e52b374d9cc1728f9f9e37e2ae6289eb7a4401f5894b70b1fcf8ff7aacf894e1e07fe22196b12cf519d2769624f315d02ff00c06b4bed497b1325d23a7dd6ce3a573f52a322bfc977a2dc46b1aee28e809ae2f483fbc4aeb5808f7244f942e324d72ea63b7d5dc7dc5476fc29488ea3bc623fd26d7dd1d7ea6bbfd16ea39fe05d9c6a9897edcd5c0789643a8cb6705a234d29738083977feed743aafda3c31e15d274cbb0d1cb23cb77347fc5187daa8b5b42f6066a7872de3d62e6e3c377d26c8a71e75a3ff0a4bb7faaee5ae1f50825d1b519ecaf91a3b885d95d3d36d535f115c8bbb79213e5f90e1d3d772b66bd2fe285bdbf8afc3f61e30d1ffd6ca16def52b4b6961248e53c2f748e1e394e763853f4fbd5f43fc32f148d522fece98b7da20f993fdb4af96bc34ff67bfd9d58a3b3fb15e95ec1f0dc18355b5d43ab93b507b567aa659f47669d58da46a2f71feb53656cd68316928a2800a5a6669d400b4945140051451400da29d4da006b1028520d433c6245d8df76a3b687c918c93e9401728a6d140099a8db2570bc3526097ebf2d4940091a629f4514005526b181db7e3e6a9589f3314e51fad201abc45f2f6acdbc12bb74fa56a6420ff66a369106ddceb4e3ee8a478278a3c1c1fc40977bd5edc3a3c7919118ddb8af1543e2959796967aec51f96f21db7053f46af53b68248dfcb6dc62c75c6e25a9daae869ade912d9cbb44522739ec2af49111b9e009731dfd96c95d779435ce4a503b3b1e836e6b635ff0fddf86eedada6e532591c0e36573176e1119dc2ba83c027ab563c9caca4caf72f19bf57475d98e4e3ad529002d8ab12fcd32ef0bbb1fc1d96a2f2c96f9396f4ff6a877b951d8a7a642f26a728576f911e5e2baf8904f6513b8f9b6735b3e1ef87977ff0008fdc6af7d3a40ee8cd1c6e0e76566e9433a7206ed59ce2e22332f231f657f614c43e658a0f54ad1ba4cc2e3f870d5976ad8b650df78fad694991230a20f0ea1e5a9d99e84d747766e6d34f8a388b79f3baa9f2c73b76d62ea48449e62fdecd6a4b34af6904f16e494277eeb44d6a5f435fc391dcde8ba8e59d7747b5dfd99bf86a0bb8332a4f122750f902b47e1be6e22d45dfeec816b45ec90a284f9302b3ea3844e72e754bb1bb68cb1ac48ad1dde577fdda9f980515d93d820dc650afee2b39c405d92218506b44b9824944a516bb71a7428891ac98dab927f856ad69be23bb9f7a7d9d2a95d429248c8c7e500d41a546e93653ee9f94d294511a1a3ff000934b23b24b1c51b035599ccef2dcb052ce1b38aa579a74925f3245cab9dc2bafd1ac23b589236457c85ce47f1567628ecb48d2b4cf08d859eb92c8b777e51bcb4fe10cd5c36b5a949ae6a32dddd9ded215e3b05ad2be171222a44edb13e53f4ac568fc89764a3bedcd6b73177b9cd6b11a25ee22185d8338ff815751e1ad664d0f47c5d869349bc768a78ff00e99b6d50eb58da94613617daf2cd273ec3f86ba3d64470dadafc9bd3ed71ae3fe0556e7a145dd4bc0d73e1bbc88c45aeacef0ef8ee7d51ba2d75f6d3a697651489bb6daa0e01feed37c0be207934c6d3355dd3db991510f746acff008830de7877ecf6928cc57676190742bdd68f88a3df7c39ab47ac69d6f731267ce1c8f46f9b35bead9af24f83fafc727fc4abd03cb19f7af5b5fe7d2944a2469314fcd55d942b62987316a9d552a7dd47287312514dcd19a063a9b45140053546da7536900ea6d145300a28a2800a4c52d14005145266800c52d150b3e29011cf26cfbc99aa9242266df2fc957d8e065855043e7967746e3a5023079755db1fcb9dc3f8aa6961b8922409f763f9b0c79c552b1d674f9a44914e223f304cd5f96fecd1124e8c5cf19e4d3e631d0c9d4f408358d3b65da44f11f993b13feed78ffc41f8756fa15836a115c6f8895fdd9af5abaf13e9f1dcaa5b8ca8dcaf93d2bcf3e296ac358d17ecf688b1fef053524691337e197802c35182e1f5ad3e54e9e5c8efb4146aed6dbc2be13f0c9775b6592718e64e715c1e81aacf63616ba15ddcb492c7b990a764ff007ab5259e49ce652c5b0abc9fe1a5cda84a476f77ace9770af6d86fde06524f4dbfd2bc32eadc58dddc469feab7b6c3ed5d94ae23460a5836472a3b5717e33d4bcbbb48ed444edf7dff00dddb512f781152e4030b7d1ab1ed8234b6a8e5577efc64ff0016dab505d25d44c911d8e47ce8e6a84fbe0bb886c0ebfca8845c40d3b9b78e0497ca45dc36ab9ceec2d558363ae65ec0d58963b8126f951be70aae474ac1bc82ec32c9e5cbb03f01071ff02a24b98a5b1d5784f51fb25b4b1a70ae59a9efaa3c6ce8bf780ddff01ac1b60e97c904bfbb6d9bc5579754b77b864951e3604aef06b38c5dc3e136a0d4a5911b795e0d2397911de21f3fbd508913cb674bb4111e848a7f9d6c1d44b769b7be3ad5d9849f312c76e7e6329f988a956dcc7b122396caf1eb55e5d66ca05c448d3391599fdb97124bf716343fc03ad3e56cc753a8b69905d33cbf7906dce3bd68c777182a7396cf00572f06a96ca3396e7b5529f55772c908d8beb446930f78ecfed4e1d9ff0084f41fed567ea3cda4aeefdb77fdf55cff00dbae1e248f7b6c09b4e3bd6b69a5eea282de57ca3b8de7fef9aa94394b8c5988b7118993cddcf2a631ed5af7dac874b38e2e70eee7ff001dc565eb965f62d5e59187caee180f7a641272ced1fcc456669181d2c1aacf05a2c76bc4a5d5b3e86ba9d5f5fb9f16e9505b5d0885c5a9f3500ff96836e0d79f417187d8a3e603753a5ba7876ba3b06cf041e8d55193d87ca8eebc17ab0d375ab5b984fcd1bf3e98afa42d7c47a749b3e760fdb8dbf7abe4bd226776fb4cbb7cd93e5381c9ff006abdc748125fe93673a73f22eff62bf2d56916291eaeb7d6f23208a447cfbff0d3e59d37a227f1d791496b711cae50cc25e3073c6ddb4db6f106a763feb6e65452fc67a1a3422e7ad4f6f70e3e59f0c68d323b987779ef94ed5e6f178e2ee06549424dfc409adeb3f1ddb975175032291f7c53e56173bca2b9cb6f15e9136dfde6cc9da378c56a41aa585c7fa9b947fc68e52ae5fa2a25747fb87bd4bd6818536a4a6eda006d3a9b450014ea6d432c9e5f6f96a044d45546be807de34cfed08cb633f31e940cb1c8a81ae312aa7f0d33ed129918247f2d3e49206898cbc28a044be623fdc75a93703f8551d3c4122bbc5f77bd5f58c0fbb4006335228a5a2a867fffd9, 'altAsR36zg4bKbnlyXJ6__gmC3nziTlqRglpXycDnzTP1fs.jpg', 'image/jpeg', '37967', '200', '200');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_reportto`
--

CREATE TABLE `hs_hr_emp_reportto` (
  `erep_sup_emp_number` int(7) NOT NULL DEFAULT '0',
  `erep_sub_emp_number` int(7) NOT NULL DEFAULT '0',
  `erep_reporting_mode` int(7) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_skill`
--

CREATE TABLE `hs_hr_emp_skill` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `skill_id` int(11) NOT NULL,
  `years_of_exp` decimal(2,0) DEFAULT NULL,
  `comments` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_us_tax`
--

CREATE TABLE `hs_hr_emp_us_tax` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `tax_federal_status` varchar(13) DEFAULT NULL,
  `tax_federal_exceptions` int(2) DEFAULT '0',
  `tax_state` varchar(13) DEFAULT NULL,
  `tax_state_status` varchar(13) DEFAULT NULL,
  `tax_state_exceptions` int(2) DEFAULT '0',
  `tax_unemp_state` varchar(13) DEFAULT NULL,
  `tax_work_state` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_work_experience`
--

CREATE TABLE `hs_hr_emp_work_experience` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `eexp_seqno` decimal(10,0) NOT NULL DEFAULT '0',
  `eexp_employer` varchar(100) DEFAULT NULL,
  `eexp_jobtit` varchar(120) DEFAULT NULL,
  `eexp_from_date` datetime DEFAULT NULL,
  `eexp_to_date` datetime DEFAULT NULL,
  `eexp_comments` varchar(200) DEFAULT NULL,
  `eexp_internal` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_jobtit_empstat`
--

CREATE TABLE `hs_hr_jobtit_empstat` (
  `jobtit_code` int(7) NOT NULL,
  `estat_code` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_mailnotifications`
--

CREATE TABLE `hs_hr_mailnotifications` (
  `user_id` int(20) NOT NULL,
  `notification_type_id` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_module`
--

CREATE TABLE `hs_hr_module` (
  `mod_id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `owner_email` varchar(100) DEFAULT NULL,
  `version` varchar(36) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_module`
--

INSERT INTO `hs_hr_module` (`mod_id`, `name`, `owner`, `owner_email`, `version`, `description`) VALUES
('MOD001', 'Admin', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'HR Admin'),
('MOD002', 'PIM', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'HR Functions'),
('MOD004', 'Report', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Reporting'),
('MOD005', 'Leave', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Leave Tracking'),
('MOD006', 'Time', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Time Tracking'),
('MOD007', 'Benefits', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Benefits Tracking'),
('MOD008', 'Recruitment', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Recruitment'),
('MOD009', 'Performance', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Performance');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_payperiod`
--

CREATE TABLE `hs_hr_payperiod` (
  `payperiod_code` varchar(13) NOT NULL DEFAULT '',
  `payperiod_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_payperiod`
--

INSERT INTO `hs_hr_payperiod` (`payperiod_code`, `payperiod_name`) VALUES
('1', 'Weekly'),
('2', 'Bi Weekly'),
('3', 'Semi Monthly'),
('4', 'Monthly'),
('5', 'Monthly on first pay of month.'),
('6', 'Hourly');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_pay_period`
--

CREATE TABLE `hs_hr_pay_period` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `close_date` date NOT NULL,
  `check_date` date NOT NULL,
  `timesheet_aproval_due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_province`
--

CREATE TABLE `hs_hr_province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(40) NOT NULL DEFAULT '',
  `province_code` char(2) NOT NULL DEFAULT '',
  `cou_code` char(2) NOT NULL DEFAULT 'us'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_province`
--

INSERT INTO `hs_hr_province` (`id`, `province_name`, `province_code`, `cou_code`) VALUES
(1, 'Alaska', 'AK', 'US'),
(2, 'Alabama', 'AL', 'US'),
(3, 'American Samoa', 'AS', 'US'),
(4, 'Arizona', 'AZ', 'US'),
(5, 'Arkansas', 'AR', 'US'),
(6, 'California', 'CA', 'US'),
(7, 'Colorado', 'CO', 'US'),
(8, 'Connecticut', 'CT', 'US'),
(9, 'Delaware', 'DE', 'US'),
(10, 'District of Columbia', 'DC', 'US'),
(11, 'Federated States of Micronesia', 'FM', 'US'),
(12, 'Florida', 'FL', 'US'),
(13, 'Georgia', 'GA', 'US'),
(14, 'Guam', 'GU', 'US'),
(15, 'Hawaii', 'HI', 'US'),
(16, 'Idaho', 'ID', 'US'),
(17, 'Illinois', 'IL', 'US'),
(18, 'Indiana', 'IN', 'US'),
(19, 'Iowa', 'IA', 'US'),
(20, 'Kansas', 'KS', 'US'),
(21, 'Kentucky', 'KY', 'US'),
(22, 'Louisiana', 'LA', 'US'),
(23, 'Maine', 'ME', 'US'),
(24, 'Marshall Islands', 'MH', 'US'),
(25, 'Maryland', 'MD', 'US'),
(26, 'Massachusetts', 'MA', 'US'),
(27, 'Michigan', 'MI', 'US'),
(28, 'Minnesota', 'MN', 'US'),
(29, 'Mississippi', 'MS', 'US'),
(30, 'Missouri', 'MO', 'US'),
(31, 'Montana', 'MT', 'US'),
(32, 'Nebraska', 'NE', 'US'),
(33, 'Nevada', 'NV', 'US'),
(34, 'New Hampshire', 'NH', 'US'),
(35, 'New Jersey', 'NJ', 'US'),
(36, 'New Mexico', 'NM', 'US'),
(37, 'New York', 'NY', 'US'),
(38, 'North Carolina', 'NC', 'US'),
(39, 'North Dakota', 'ND', 'US'),
(40, 'Northern Mariana Islands', 'MP', 'US'),
(41, 'Ohio', 'OH', 'US'),
(42, 'Oklahoma', 'OK', 'US'),
(43, 'Oregon', 'OR', 'US'),
(44, 'Palau', 'PW', 'US'),
(45, 'Pennsylvania', 'PA', 'US'),
(46, 'Puerto Rico', 'PR', 'US'),
(47, 'Rhode Island', 'RI', 'US'),
(48, 'South Carolina', 'SC', 'US'),
(49, 'South Dakota', 'SD', 'US'),
(50, 'Tennessee', 'TN', 'US'),
(51, 'Texas', 'TX', 'US'),
(52, 'Utah', 'UT', 'US'),
(53, 'Vermont', 'VT', 'US'),
(54, 'Virgin Islands', 'VI', 'US'),
(55, 'Virginia', 'VA', 'US'),
(56, 'Washington', 'WA', 'US'),
(57, 'West Virginia', 'WV', 'US'),
(58, 'Wisconsin', 'WI', 'US'),
(59, 'Wyoming', 'WY', 'US'),
(60, 'Armed Forces Africa', 'AE', 'US'),
(61, 'Armed Forces Americas (except Canada)', 'AA', 'US'),
(62, 'Armed Forces Canada', 'AE', 'US'),
(63, 'Armed Forces Europe', 'AE', 'US'),
(64, 'Armed Forces Middle East', 'AE', 'US'),
(65, 'Armed Forces Pacific', 'AP', 'US');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_unique_id`
--

CREATE TABLE `hs_hr_unique_id` (
  `id` int(11) NOT NULL,
  `last_id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_unique_id`
--

INSERT INTO `hs_hr_unique_id` (`id`, `last_id`, `table_name`, `field_name`) VALUES
(1, 3, 'hs_hr_employee', 'emp_number'),
(2, 9, 'hs_hr_module', 'mod_id'),
(3, 0, 'hs_hr_leave', 'leave_id'),
(4, 0, 'hs_hr_leavetype', 'leave_type_id'),
(5, 0, 'hs_hr_leave_requests', 'leave_request_id'),
(6, 0, 'hs_hr_custom_export', 'export_id'),
(7, 0, 'hs_hr_custom_import', 'import_id'),
(8, 0, 'hs_hr_pay_period', 'id'),
(9, 0, 'hs_hr_kpi', 'id'),
(10, 0, 'hs_hr_performance_review', 'id'),
(11, 2, 'ohrm_emp_reporting_method', 'reporting_method_id'),
(12, 0, 'ohrm_timesheet', 'timesheet_id'),
(13, 0, 'ohrm_timesheet_action_log', 'timesheet_action_log_id'),
(14, 0, 'ohrm_timesheet_item', 'timesheet_item_id'),
(15, 0, 'ohrm_attendance_record', 'id'),
(16, 0, 'ohrm_job_vacancy', 'id'),
(17, 0, 'ohrm_job_candidate', 'id'),
(18, 106, 'ohrm_workflow_state_machine', 'id'),
(19, 0, 'ohrm_job_candidate_attachment', 'id'),
(20, 0, 'ohrm_job_vacancy_attachment', 'id'),
(21, 0, 'ohrm_job_candidate_vacancy', 'id'),
(22, 0, 'ohrm_job_candidate_history', 'id'),
(23, 0, 'ohrm_job_interview', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_advanced_report`
--

CREATE TABLE `ohrm_advanced_report` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `definition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_advanced_report`
--

INSERT INTO `ohrm_advanced_report` (`id`, `name`, `definition`) VALUES
(1, 'Leave Entitlements and Usage Report', '\n<report>\n    <settings>\n        <csv>\n            <include_group_header>1</include_group_header>\n            <include_header>1</include_header>\n        </csv>\n    </settings>\n<filter_fields>\n	<input_field type="text" name="empNumber" label="Employee Number"></input_field>\n	<input_field type="text" name="fromDate" label="From"></input_field>\n        <input_field type="text" name="toDate" label="To"></input_field>\n        <input_field type="text" name="asOfDate" label="AsOf"></input_field>\n</filter_fields> \n\n<sub_report type="sql" name="mainTable">       \n    <query>FROM ohrm_leave_type WHERE (deleted = 0) OR (SELECT count(l.id) FROM ohrm_leave l WHERE l.status = 3 AND l.leave_type_id = ohrm_leave_type.id) > 0 ORDER BY ohrm_leave_type.id</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n        <display_group name="leavetype" type="one" display="true">\n            <group_header></group_header>\n            <fields>\n                <field display="false">\n                    <field_name>ohrm_leave_type.id</field_name>\n                    <field_alias>leaveTypeId</field_alias>\n                    <display_name>Leave Type ID</display_name>\n                    <width>1</width>	\n                </field>   \n                <field display="false">\n                    <field_name>ohrm_leave_type.exclude_in_reports_if_no_entitlement</field_name>\n                    <field_alias>exclude_if_no_entitlement</field_alias>\n                    <display_name>Exclude</display_name>\n                    <width>1</width>	\n                </field>  \n                <field display="false">\n                    <field_name>ohrm_leave_type.deleted</field_name>\n                    <field_alias>leave_type_deleted</field_alias>\n                    <display_name>Leave Type Deleted</display_name>\n                    <width>1</width>	\n                </field>  \n                <field display="true">\n                    <field_name>ohrm_leave_type.name</field_name>\n                    <field_alias>leaveType</field_alias>\n                    <display_name>Leave Type</display_name>\n                    <width>160</width>	\n                </field>s                                                                                                     \n            </fields>\n        </display_group>\n    </display_groups> \n</sub_report>\n\n<sub_report type="sql" name="entitlementsTotal">\n                    <query>\n\nFROM (\nSELECT ohrm_leave_entitlement.id as id, \n       ohrm_leave_entitlement.leave_type_id as leave_type_id,\n       ohrm_leave_entitlement.no_of_days as no_of_days,\n       sum(IF(ohrm_leave.status = 2, ohrm_leave_leave_entitlement.length_days, 0)) AS scheduled,\n       sum(IF(ohrm_leave.status = 3, ohrm_leave_leave_entitlement.length_days, 0)) AS taken\n       \nFROM ohrm_leave_entitlement LEFT JOIN ohrm_leave_leave_entitlement ON\n    ohrm_leave_entitlement.id = ohrm_leave_leave_entitlement.entitlement_id\n    LEFT JOIN ohrm_leave ON ohrm_leave.id = ohrm_leave_leave_entitlement.leave_id AND \n    ( $X{&gt;,ohrm_leave.date,toDate} OR $X{&lt;,ohrm_leave.date,fromDate} )\n\nWHERE ohrm_leave_entitlement.deleted=0 AND $X{=,ohrm_leave_entitlement.emp_number,empNumber} AND \n    $X{IN,ohrm_leave_entitlement.leave_type_id,leaveTypeId} AND\n    (\n      ( $X{&lt;=,ohrm_leave_entitlement.from_date,fromDate} AND $X{&gt;=,ohrm_leave_entitlement.to_date,fromDate} ) OR\n      ( $X{&lt;=,ohrm_leave_entitlement.from_date,toDate} AND $X{&gt;=,ohrm_leave_entitlement.to_date,toDate} ) OR \n      ( $X{&gt;=,ohrm_leave_entitlement.from_date,fromDate} AND $X{&lt;=,ohrm_leave_entitlement.to_date,toDate} ) \n    )\n    \nGROUP BY ohrm_leave_entitlement.id\n) AS A\n\nGROUP BY A.leave_type_id\nORDER BY A.leave_type_id\n\n</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n            <display_group name="g2" type="one" display="true">\n                <group_header></group_header>\n                <fields>\n                    <field display="false">\n                        <field_name>A.leave_type_id</field_name>\n                        <field_alias>leaveTypeId</field_alias>\n                        <display_name>Leave Type ID</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display="true">\n                        <field_name>sum(A.no_of_days) - sum(A.scheduled) - sum(A.taken)</field_name>\n                        <field_alias>entitlement_total</field_alias>\n                        <display_name>Leave Entitlements (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveEntitlements?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n\n<sub_report type="sql" name="pendingQuery">\n<query>\nFROM ohrm_leave_type LEFT JOIN \nohrm_leave ON ohrm_leave_type.id = ohrm_leave.leave_type_id AND\n$X{=,ohrm_leave.emp_number,empNumber} AND\nohrm_leave.status = 1 AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nWHERE\nohrm_leave_type.deleted = 0 AND\n$X{IN,ohrm_leave_type.id,leaveTypeId}\n\nGROUP BY ohrm_leave_type.id\nORDER BY ohrm_leave_type.id\n</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n            <display_group name="g6" type="one" display="true">\n                <group_header></group_header>\n                <fields>\n                    <field display="false">\n                        <field_name>ohrm_leave_type.id</field_name>\n                        <field_alias>leaveTypeId</field_alias>\n                        <display_name>Leave Type ID</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display="true">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>pending</field_alias>\n                        <display_name>Leave Pending Approval (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=1&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n    </sub_report>\n\n<sub_report type="sql" name="scheduledQuery">\n<query>\nFROM ohrm_leave_type LEFT JOIN \nohrm_leave ON ohrm_leave_type.id = ohrm_leave.leave_type_id AND\n$X{=,ohrm_leave.emp_number,empNumber} AND\nohrm_leave.status = 2 AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nWHERE\nohrm_leave_type.deleted = 0 AND\n$X{IN,ohrm_leave_type.id,leaveTypeId}\n\nGROUP BY ohrm_leave_type.id\nORDER BY ohrm_leave_type.id\n</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n            <display_group name="g5" type="one" display="true">\n                <group_header></group_header>\n                <fields>\n                    <field display="false">\n                        <field_name>ohrm_leave_type.id</field_name>\n                        <field_alias>leaveTypeId</field_alias>\n                        <display_name>Leave Type ID</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display="true">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>scheduled</field_alias>\n                        <display_name>Leave Scheduled (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=2&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n    </sub_report>\n\n<sub_report type="sql" name="takenQuery">\n<query>\nFROM ohrm_leave WHERE $X{=,emp_number,empNumber} AND\nstatus = 3 AND\n$X{IN,ohrm_leave.leave_type_id,leaveTypeId} AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nGROUP BY leave_type_id\nORDER BY ohrm_leave.leave_type_id\n</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n            <display_group name="g4" type="one" display="true">\n                <group_header></group_header>\n                <fields>\n                    <field display="false">\n                        <field_name>ohrm_leave.leave_type_id</field_name>\n                        <field_alias>leaveTypeId</field_alias>\n                        <display_name>Leave Type ID</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display="true">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>taken</field_alias>\n                        <display_name>Leave Taken (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=3&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n    </sub_report>\n\n<sub_report type="sql" name="unused">       \n    <query>FROM ohrm_leave_type WHERE deleted = 0 AND $X{IN,ohrm_leave_type.id,leaveTypeId} ORDER BY ohrm_leave_type.id</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n        <display_group name="unused" type="one" display="true">\n            <group_header></group_header>\n            <fields>\n                <field display="false">\n                    <field_name>ohrm_leave_type.id</field_name>\n                    <field_alias>leaveTypeId</field_alias>\n                    <display_name>Leave Type ID</display_name>\n                    <width>1</width>	\n                </field>   \n                <field display="true">\n                    <field_name>ohrm_leave_type.name</field_name>\n                    <field_alias>unused</field_alias>\n                    <display_name>Leave Balance (Days)</display_name>\n                    <width>160</width>	\n                    <align>right</align>\n                </field>                                                                                                     \n            </fields>\n        </display_group>\n    </display_groups> \n</sub_report>\n\n\n    <join>             \n        <join_by sub_report="mainTable" id="leaveTypeId"></join_by>              \n        <join_by sub_report="entitlementsTotal" id="leaveTypeId"></join_by> \n        <join_by sub_report="pendingQuery" id="leaveTypeId"></join_by>  \n        <join_by sub_report="scheduledQuery" id="leaveTypeId"></join_by>  \n        <join_by sub_report="takenQuery" id="leaveTypeId"></join_by>  \n        <join_by sub_report="unused" id="leaveTypeId"></join_by>  \n\n    </join>\n    <page_limit>100</page_limit>        \n</report>'),
(2, 'Leave Entitlements and Usage Report', '\n<report>\n    <settings>\n        <csv>\n            <include_group_header>1</include_group_header>\n            <include_header>1</include_header>\n        </csv>\n    </settings>\n<filter_fields>\n	<input_field type="text" name="leaveType" label="Leave Type"></input_field>\n	<input_field type="text" name="fromDate" label="From"></input_field>\n        <input_field type="text" name="toDate" label="To"></input_field>\n        <input_field type="text" name="asOfDate" label="AsOf"></input_field>\n        <input_field type="text" name="emp_numbers" label="employees"></input_field>\n        <input_field type="text" name="job_title" label="Job Title"></input_field>\n        <input_field type="text" name="location" label="Location"></input_field>\n        <input_field type="text" name="sub_unit" label="Sub Unit"></input_field>\n        <input_field type="text" name="terminated" label="Terminated"></input_field>\n</filter_fields> \n\n<sub_report type="sql" name="mainTable">       \n    <query>FROM hs_hr_employee \n    LEFT JOIN hs_hr_emp_locations ON hs_hr_employee.emp_number = hs_hr_emp_locations.emp_number\n    WHERE $X{IN,hs_hr_employee.emp_number,emp_numbers} \n    AND $X{=,hs_hr_employee.job_title_code,job_title}\n    AND $X{IN,hs_hr_employee.work_station,sub_unit}\n    AND $X{IN,hs_hr_emp_locations.location_id,location}\n    AND $X{IS NULL,hs_hr_employee.termination_id,terminated}\n    ORDER BY hs_hr_employee.emp_lastname</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n        <display_group name="personalDetails" type="one" display="true">\n            <group_header></group_header>\n            <fields>\n                <field display="false">\n                    <field_name>hs_hr_employee.emp_number</field_name>\n                    <field_alias>empNumber</field_alias>\n                    <display_name>Employee Number</display_name>\n                    <width>1</width>	\n                </field>                \n                <field display="false">\n                    <field_name>hs_hr_employee.termination_id</field_name>\n                    <field_alias>termination_id</field_alias>\n                    <display_name>Termination ID</display_name>\n                    <width>1</width>	\n                </field>   \n                <field display="true">\n                    <field_name>CONCAT(hs_hr_employee.emp_firstname, '' '', hs_hr_employee.emp_lastname)</field_name>\n                    <field_alias>employeeName</field_alias>\n                    <display_name>Employee</display_name>\n                    <width>150</width>\n                </field>                                                                                               \n            </fields>\n        </display_group>\n    </display_groups> \n</sub_report>\n\n<sub_report type="sql" name="entitlementsTotal">\n                    <query>\n\nFROM (\nSELECT ohrm_leave_entitlement.id as id, \n       ohrm_leave_entitlement.emp_number as emp_number,\n       ohrm_leave_entitlement.no_of_days as no_of_days,\n       sum(IF(ohrm_leave.status = 2, ohrm_leave_leave_entitlement.length_days, 0)) AS scheduled,\n       sum(IF(ohrm_leave.status = 3, ohrm_leave_leave_entitlement.length_days, 0)) AS taken\n       \nFROM ohrm_leave_entitlement LEFT JOIN ohrm_leave_leave_entitlement ON\n    ohrm_leave_entitlement.id = ohrm_leave_leave_entitlement.entitlement_id\n    LEFT JOIN ohrm_leave ON ohrm_leave.id = ohrm_leave_leave_entitlement.leave_id AND \n    ( $X{&gt;,ohrm_leave.date,toDate} OR $X{&lt;,ohrm_leave.date,fromDate} )\n\nWHERE ohrm_leave_entitlement.deleted=0 AND $X{=,ohrm_leave_entitlement.leave_type_id,leaveType}\n    AND $X{IN,ohrm_leave_entitlement.emp_number,empNumber} AND\n    (\n      ( $X{&lt;=,ohrm_leave_entitlement.from_date,fromDate} AND $X{&gt;=,ohrm_leave_entitlement.to_date,fromDate} ) OR\n      ( $X{&lt;=,ohrm_leave_entitlement.from_date,toDate} AND $X{&gt;=,ohrm_leave_entitlement.to_date,toDate} ) OR \n      ( $X{&gt;=,ohrm_leave_entitlement.from_date,fromDate} AND $X{&lt;=,ohrm_leave_entitlement.to_date,toDate} ) \n    )\n    \nGROUP BY ohrm_leave_entitlement.id\n) AS A\n\nGROUP BY A.emp_number\nORDER BY A.emp_number\n\n</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n            <display_group name="g2" type="one" display="true">\n                <group_header></group_header>\n                <fields>\n                    <field display="false">\n                        <field_name>A.emp_number</field_name>\n                        <field_alias>empNumber</field_alias>\n                        <display_name>Emp Number</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display="true">\n                        <field_name>sum(A.no_of_days) - sum(A.scheduled) - sum(A.taken)</field_name>\n                        <field_alias>entitlement_total</field_alias>\n                        <display_name>Leave Entitlements (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveEntitlements?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n\n<sub_report type="sql" name="pendingQuery">\n<query>\nFROM ohrm_leave WHERE $X{=,ohrm_leave.leave_type_id,leaveType} AND\nstatus = 1 AND\n$X{IN,ohrm_leave.emp_number,empNumber} AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nGROUP BY emp_number\nORDER BY ohrm_leave.emp_number\n</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n            <display_group name="g6" type="one" display="true">\n                <group_header></group_header>\n                <fields>\n                    <field display="false">\n                        <field_name>ohrm_leave.emp_number</field_name>\n                        <field_alias>empNumber</field_alias>\n                        <display_name>Emp Number</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display="true">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>pending</field_alias>\n                        <display_name>Leave Pending Approval (Days)</display_name>\n                        <width>121</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=1&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n\n\n<sub_report type="sql" name="scheduledQuery">\n<query>\nFROM ohrm_leave WHERE $X{=,ohrm_leave.leave_type_id,leaveType} AND\nstatus = 2 AND\n$X{IN,ohrm_leave.emp_number,empNumber} AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nGROUP BY emp_number\nORDER BY ohrm_leave.emp_number\n</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n            <display_group name="g5" type="one" display="true">\n                <group_header></group_header>\n                <fields>\n                    <field display="false">\n                        <field_name>ohrm_leave.emp_number</field_name>\n                        <field_alias>empNumber</field_alias>\n                        <display_name>Emp Number</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display="true">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>scheduled</field_alias>\n                        <display_name>Leave Scheduled (Days)</display_name>\n                        <width>121</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=2&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n\n<sub_report type="sql" name="takenQuery">\n<query>\nFROM ohrm_leave WHERE $X{=,ohrm_leave.leave_type_id,leaveType} AND\nstatus = 3 AND\n$X{IN,ohrm_leave.emp_number,empNumber} AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nGROUP BY emp_number\nORDER BY ohrm_leave.emp_number\n</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n            <display_group name="g4" type="one" display="true">\n                <group_header></group_header>\n                <fields>\n                    <field display="false">\n                        <field_name>ohrm_leave.emp_number</field_name>\n                        <field_alias>empNumber</field_alias>\n                        <display_name>Emp Number</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display="true">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>taken</field_alias>\n                        <display_name>Leave Taken (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=3&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n<sub_report type="sql" name="unused">       \n    <query>FROM hs_hr_employee WHERE $X{IN,hs_hr_employee.emp_number,empNumber} ORDER BY hs_hr_employee.emp_number</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n        <display_group name="unused" type="one" display="true">\n            <group_header></group_header>\n            <fields>    \n                <field display="false">\n                    <field_name>hs_hr_employee.emp_number</field_name>\n                    <field_alias>empNumber</field_alias>\n                    <display_name>Employee Number</display_name>\n                    <width>1</width>	\n                </field>                \n                <field display="true">\n                    <field_name>hs_hr_employee.emp_firstname</field_name>\n                    <field_alias>unused</field_alias>\n                    <display_name>Leave Balance (Days)</display_name>\n                    <width>150</width>\n                    <align>right</align>\n                </field> \n                                                                                               \n            </fields>\n        </display_group>\n    </display_groups> \n</sub_report>\n    <join>             \n        <join_by sub_report="mainTable" id="empNumber"></join_by>            \n        <join_by sub_report="entitlementsTotal" id="empNumber"></join_by> \n        <join_by sub_report="pendingQuery" id="empNumber"></join_by>\n        <join_by sub_report="scheduledQuery" id="empNumber"></join_by>\n        <join_by sub_report="takenQuery" id="empNumber"></join_by> \n        <join_by sub_report="unused" id="empNumber"></join_by>  \n    </join>\n    <page_limit>20</page_limit>       \n</report>');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_attendance_record`
--

CREATE TABLE `ohrm_attendance_record` (
  `id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `punch_in_utc_time` datetime DEFAULT NULL,
  `punch_in_note` varchar(255) DEFAULT NULL,
  `punch_in_time_offset` varchar(255) DEFAULT NULL,
  `punch_in_user_time` datetime DEFAULT NULL,
  `punch_out_utc_time` datetime DEFAULT NULL,
  `punch_out_note` varchar(255) DEFAULT NULL,
  `punch_out_time_offset` varchar(255) DEFAULT NULL,
  `punch_out_user_time` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_auth_provider_extra_details`
--

CREATE TABLE `ohrm_auth_provider_extra_details` (
  `id` int(11) NOT NULL,
  `provider_id` int(10) NOT NULL,
  `provider_type` int(11) DEFAULT NULL,
  `client_id` text,
  `client_secret` text,
  `developer_key` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_available_group_field`
--

CREATE TABLE `ohrm_available_group_field` (
  `report_group_id` bigint(20) NOT NULL,
  `group_field_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_beacon_notification`
--

CREATE TABLE `ohrm_beacon_notification` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `expiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `definition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_composite_display_field`
--

CREATE TABLE `ohrm_composite_display_field` (
  `composite_display_field_id` bigint(20) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_alias` varchar(255) DEFAULT NULL,
  `is_sortable` varchar(10) NOT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_property` varchar(1000) NOT NULL,
  `width` varchar(255) NOT NULL,
  `is_exportable` varchar(10) DEFAULT NULL,
  `text_alignment_style` varchar(20) DEFAULT NULL,
  `is_value_list` tinyint(1) NOT NULL DEFAULT '0',
  `display_field_group_id` int(10) UNSIGNED DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `is_encrypted` tinyint(1) NOT NULL DEFAULT '0',
  `is_meta` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_composite_display_field`
--

INSERT INTO `ohrm_composite_display_field` (`composite_display_field_id`, `report_group_id`, `name`, `label`, `field_alias`, `is_sortable`, `sort_order`, `sort_field`, `element_type`, `element_property`, `width`, `is_exportable`, `text_alignment_style`, `is_value_list`, `display_field_group_id`, `default_value`, `is_encrypted`, `is_meta`) VALUES
(1, 1, 'IF(hs_hr_employee.termination_id IS NULL, CONCAT(hs_hr_employee.emp_firstname, " " ,hs_hr_employee.emp_lastname), CONCAT(hs_hr_employee.emp_firstname, " " ,hs_hr_employee.emp_lastname, " (Past Employee)"))', 'Employee Name', 'employeeName', 'false', NULL, NULL, 'label', '<xml><getter>employeeName</getter></xml>', '300', '0', NULL, 0, NULL, 'Deleted Employee', 0, 0),
(2, 1, 'CONCAT(ohrm_customer.name, " - " ,ohrm_project.name)', 'Project Name', 'projectname', 'false', NULL, NULL, 'label', '<xml><getter>projectname</getter></xml>', '300', '0', NULL, 0, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_customer`
--

CREATE TABLE `ohrm_customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_datapoint`
--

CREATE TABLE `ohrm_datapoint` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `datapoint_type_id` int(11) NOT NULL,
  `definition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_datapoint_type`
--

CREATE TABLE `ohrm_datapoint_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `action_class` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_datapoint_type`
--

INSERT INTO `ohrm_datapoint_type` (`id`, `name`, `action_class`) VALUES
(1, 'config', 'configDatapointProcessor'),
(2, 'count', 'countDatapointProcessor'),
(3, 'session', 'sessionDatapointProcessor'),
(4, 'organization', 'OrganizationDataProcessor');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_data_group`
--

CREATE TABLE `ohrm_data_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `can_read` tinyint(4) DEFAULT NULL,
  `can_create` tinyint(4) DEFAULT NULL,
  `can_update` tinyint(4) DEFAULT NULL,
  `can_delete` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_data_group`
--

INSERT INTO `ohrm_data_group` (`id`, `name`, `description`, `can_read`, `can_create`, `can_update`, `can_delete`) VALUES
(1, 'personal_information', 'PIM - Personal Details', 1, NULL, 1, NULL),
(2, 'personal_attachment', 'PIM - Personal Details - Attachments', 1, 1, 1, 1),
(3, 'personal_custom_fields', 'PIM - Personal Details - Custom Fields', 1, NULL, 1, NULL),
(4, 'contact_details', 'PIM - Contact Details', 1, NULL, 1, NULL),
(5, 'contact_attachment', 'PIM - Contact Details - Attachments', 1, 1, 1, 1),
(6, 'contact_custom_fields', 'PIM - Contact Details - Custom Fields', 1, NULL, 1, NULL),
(7, 'emergency_contacts', 'PIM - Emergency Contacts', 1, 1, 1, 1),
(8, 'emergency_attachment', 'PIM - Emergency Contacts - Attachments', 1, 1, 1, 1),
(9, 'emergency_custom_fields', 'PIM - Emergency Contacts - Custom Fields', 1, NULL, 1, NULL),
(10, 'dependents', 'PIM - Dependents', 1, 1, 1, 1),
(11, 'dependents_attachment', 'PIM - Dependents - Attachments', 1, 1, 1, 1),
(12, 'dependents_custom_fields', 'PIM - Dependents - Custom Fields', 1, NULL, 1, NULL),
(13, 'immigration', 'PIM - Immigration', 1, 1, 1, 1),
(14, 'immigration_attachment', 'PIM - Immigration - Attachments', 1, 1, 1, 1),
(15, 'immigration_custom_fields', 'PIM - Immigration - Custom Fields', 1, NULL, 1, NULL),
(16, 'job_details', 'PIM - Job', 1, NULL, 1, NULL),
(17, 'job_attachment', 'PIM - Job - Attachments', 1, 1, 1, 1),
(18, 'job_custom_fields', 'PIM - Job - Custom Fields', 1, NULL, 1, NULL),
(19, 'salary_details', 'PIM - Salary', 1, 1, 1, 1),
(20, 'salary_attachment', 'PIM - Salary - Attachments', 1, 1, 1, 1),
(21, 'salary_custom_fields', 'PIM - Salary - Custom Fields', 1, NULL, 1, NULL),
(22, 'tax_exemptions', 'PIM - Tax Exemptions', 1, NULL, 1, NULL),
(23, 'tax_attachment', 'PIM - Tax Exemptions - Attachments', 1, 1, 1, 1),
(24, 'tax_custom_fields', 'PIM - Tax Exemptions - Custom Fields', 1, NULL, 1, NULL),
(25, 'supervisor', 'PIM - Employee Supervisors', 1, 1, 1, 1),
(26, 'subordinates', 'PIM - Employee Subordinates', 1, 1, 1, 1),
(27, 'report-to_attachment', 'PIM - Employee Supervisors/Subordinates - Attachment', 1, 1, 1, 1),
(28, 'report-to_custom_fields', 'PIM - Employee Supervisors/Subordinates - Custom Fields', 1, NULL, 1, NULL),
(29, 'qualification_work', 'PIM - Qualifications - Work Experience', 1, 1, 1, 1),
(30, 'qualification_education', 'PIM - Qualifications - Education', 1, 1, 1, 1),
(31, 'qualification_skills', 'PIM - Qualifications - Skills', 1, 1, 1, 1),
(32, 'qualification_languages', 'PIM - Qualifications - Languages', 1, 1, 1, 1),
(33, 'qualification_license', 'PIM - Qualifications - License', 1, 1, 1, 1),
(34, 'qualifications_attachment', 'PIM - Qualifications - Attachments', 1, 1, 1, 1),
(35, 'qualifications_custom_fields', 'PIM - Qualifications - Custom Fields', 1, NULL, 1, NULL),
(36, 'membership', 'PIM - Membership', 1, 1, 1, 1),
(37, 'membership_attachment', 'PIM - Membership - Attachments', 1, 1, 1, 1),
(38, 'membership_custom_fields', 'PIM - Membership - Custom Fields', 1, NULL, 1, NULL),
(39, 'photograph', 'PIM - Employee Photograph', 1, NULL, 1, 1),
(40, 'leave_entitlements', 'Leave - Leave Entitlements', 1, 1, 1, 1),
(41, 'leave_entitlements_usage_report', 'Leave - Leave Entitlements and Usage Report', 1, NULL, NULL, NULL),
(42, 'job_titles', 'Admin - Job Titles', 1, 1, 1, 1),
(43, 'pay_grades', 'Admin - Pay Grades', 1, 1, 1, 1),
(44, 'time_customers', 'Time - Project Info - Customers', 1, 1, 1, 1),
(45, 'time_projects', 'Time - Project Info - Projects', 1, 1, 1, 1),
(46, 'pim_reports', 'PIM - Reports', 1, 1, 1, 1),
(47, 'attendance_configuration', 'Time - Attendance Configuration', 1, 0, 1, 0),
(48, 'attendance_records', 'Time - Attendance Records', 1, 0, 0, 0),
(49, 'time_project_reports', 'Time - Project Reports', 1, 0, 0, 0),
(50, 'time_employee_reports', 'Time - Employee Reports', 1, 0, 0, 0),
(51, 'attendance_summary', 'Time - Attendance Summary', 1, 0, 0, 0),
(52, 'leave_period', 'Leave - Leave Period', 1, 0, 1, 0),
(53, 'leave_types', 'Leave - Leave Types', 1, 1, 1, 1),
(54, 'work_week', 'Leave - Work Week', 1, 0, 1, 0),
(55, 'holidays', 'Leave - Holidays', 1, 1, 1, 1),
(56, 'recruitment_vacancies', 'Recruitment - Vacancies', 1, 1, 1, 1),
(57, 'recruitment_candidates', 'Recruitment - Candidates', 1, 1, 1, 1),
(58, 'time_employee_timesheets', 'Time - Employee Timesheets', 1, 0, 0, 0),
(59, 'leave_list', 'Leave - Leave List', 1, 0, 0, 0),
(60, 'leave_list_comments', 'Leave - Leave List - Comments', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_data_group_screen`
--

CREATE TABLE `ohrm_data_group_screen` (
  `id` int(11) NOT NULL,
  `data_group_id` int(11) DEFAULT NULL,
  `screen_id` int(11) DEFAULT NULL,
  `permission` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_data_group_screen`
--

INSERT INTO `ohrm_data_group_screen` (`id`, `data_group_id`, `screen_id`, `permission`) VALUES
(1, 40, 69, 1),
(2, 40, 72, 2),
(3, 40, 73, 3),
(4, 40, 71, 4),
(5, 41, 78, 1),
(6, 42, 23, 1),
(7, 42, 80, 1),
(8, 42, 80, 2),
(9, 42, 80, 3),
(10, 42, 81, 4),
(11, 43, 24, 1),
(12, 43, 82, 1),
(13, 43, 82, 2),
(14, 43, 82, 3),
(15, 43, 83, 4),
(16, 43, 84, 3),
(17, 43, 85, 3),
(18, 42, 74, 1),
(19, 43, 74, 1),
(20, 44, 36, 1),
(21, 44, 86, 2),
(22, 44, 86, 3),
(23, 44, 87, 4),
(24, 45, 37, 1),
(25, 45, 88, 1),
(26, 45, 88, 2),
(27, 45, 88, 3),
(28, 45, 89, 4),
(29, 45, 90, 2),
(30, 45, 90, 3),
(31, 45, 91, 2),
(32, 45, 91, 3),
(33, 46, 45, 1),
(34, 46, 45, 4),
(35, 46, 92, 2),
(36, 46, 92, 3),
(37, 46, 93, 1),
(38, 47, 56, 1),
(39, 47, 56, 3),
(40, 48, 55, 1),
(41, 49, 57, 1),
(42, 49, 102, 1),
(43, 50, 58, 1),
(44, 51, 59, 1),
(45, 51, 101, 1),
(46, 52, 47, 1),
(47, 52, 47, 3),
(48, 53, 7, 1),
(49, 53, 8, 1),
(50, 53, 8, 2),
(51, 53, 8, 3),
(52, 53, 9, 2),
(53, 53, 10, 4),
(54, 54, 14, 1),
(55, 54, 14, 3),
(56, 55, 11, 1),
(57, 55, 12, 2),
(58, 55, 12, 3),
(59, 55, 13, 4),
(60, 56, 61, 1),
(61, 56, 94, 1),
(62, 56, 94, 2),
(63, 56, 94, 3),
(64, 56, 95, 4),
(65, 57, 60, 1),
(66, 57, 96, 1),
(67, 57, 96, 2),
(68, 57, 96, 3),
(69, 57, 97, 4),
(70, 56, 76, 1),
(71, 57, 76, 1),
(72, 58, 52, 1),
(73, 59, 16, 1),
(74, 59, 98, 1),
(75, 59, 99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_display_field`
--

CREATE TABLE `ohrm_display_field` (
  `display_field_id` bigint(20) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_alias` varchar(255) DEFAULT NULL,
  `is_sortable` varchar(10) NOT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_property` varchar(1000) NOT NULL,
  `width` varchar(255) NOT NULL,
  `is_exportable` varchar(10) DEFAULT NULL,
  `text_alignment_style` varchar(20) DEFAULT NULL,
  `is_value_list` tinyint(1) NOT NULL DEFAULT '0',
  `display_field_group_id` int(10) UNSIGNED DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `is_encrypted` tinyint(1) NOT NULL DEFAULT '0',
  `is_meta` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_display_field`
--

INSERT INTO `ohrm_display_field` (`display_field_id`, `report_group_id`, `name`, `label`, `field_alias`, `is_sortable`, `sort_order`, `sort_field`, `element_type`, `element_property`, `width`, `is_exportable`, `text_alignment_style`, `is_value_list`, `display_field_group_id`, `default_value`, `is_encrypted`, `is_meta`) VALUES
(1, 1, 'ohrm_project.name', 'Project Name', 'projectname', 'false', NULL, NULL, 'label', '<xml><getter>projectname</getter></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0),
(2, 1, 'ohrm_project_activity.name', 'Activity Name', 'activityname', 'false', NULL, NULL, 'link', '<xml><labelGetter>activityname</labelGetter><placeholderGetters><id>activity_id</id><total>totalduration</total><projectId>projectId</projectId><from>fromDate</from><to>toDate</to><approved>onlyIncludeApprovedTimesheets</approved></placeholderGetters><urlPattern>../../displayProjectActivityDetailsReport?reportId=3#activityId={id}#total={total}#from={from}#to={to}#projectId={projectId}#onlyIncludeApprovedTimesheets={approved}</urlPattern></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0),
(3, 1, 'ohrm_project_activity.project_id', 'Project Id', NULL, 'false', NULL, NULL, 'label', '<xml><getter>project_id</getter></xml>', '75', '0', 'right', 0, NULL, NULL, 0, 1),
(4, 1, 'ohrm_project_activity.activity_id', 'Activity Id', NULL, 'false', NULL, NULL, 'label', '<xml><getter>activity_id</getter></xml>', '75', '0', 'right', 0, NULL, NULL, 0, 1),
(5, 1, 'ohrm_timesheet_item.duration', 'Time (hours)', NULL, 'false', NULL, NULL, 'label', '<xml><getter>duration</getter></xml>', '75', '0', 'right', 0, NULL, NULL, 0, 0),
(6, 1, 'hs_hr_employee.emp_firstname', 'Employee First Name', NULL, 'false', NULL, NULL, 'label', '<xml><getter>emp_firstname</getter></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0),
(7, 1, 'hs_hr_employee.emp_lastname', 'Employee Last Name', NULL, 'false', NULL, NULL, 'label', '<xml><getter>emp_lastname</getter></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0),
(8, 1, 'ohrm_project_activity.name', 'Activity Name', 'activityname', 'false', NULL, NULL, 'label', '<xml><getter>activityname</getter></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0),
(9, 3, 'hs_hr_employee.employee_id', 'Employee Id', 'employeeId', 'false', NULL, NULL, 'label', '<xml><getter>employeeId</getter></xml>', '100', '0', NULL, 0, 1, '---', 0, 0),
(10, 3, 'hs_hr_employee.emp_lastname', 'Employee Last Name', 'employeeLastname', 'false', NULL, NULL, 'label', '<xml><getter>employeeLastname</getter></xml>', '200', '0', NULL, 0, 1, '---', 0, 0),
(11, 3, 'hs_hr_employee.emp_firstname', 'Employee First Name', 'employeeFirstname', 'false', NULL, NULL, 'label', '<xml><getter>employeeFirstname</getter></xml>', '200', '0', NULL, 0, 1, '---', 0, 0),
(12, 3, 'hs_hr_employee.emp_middle_name', 'Employee Middle Name', 'employeeMiddlename', 'false', NULL, NULL, 'label', '<xml><getter>employeeMiddlename</getter></xml>', '200', '0', NULL, 0, 1, '---', 0, 0),
(13, 3, 'hs_hr_employee.emp_birthday', 'Date of Birth', 'empBirthday', 'false', NULL, NULL, 'labelDate', '<xml><getter>empBirthday</getter></xml>', '100', '0', NULL, 0, 1, '---', 0, 0),
(14, 3, 'ohrm_nationality.name', 'Nationality', 'nationality', 'false', NULL, NULL, 'label', '<xml><getter>nationality</getter></xml>', '200', '0', NULL, 0, 1, '---', 0, 0),
(15, 3, 'CASE hs_hr_employee.emp_gender WHEN 1 THEN "Male" WHEN 2 THEN "Female" WHEN 3 THEN "Other" END', 'Gender', 'empGender', 'false', NULL, NULL, 'label', '<xml><getter>empGender</getter></xml>', '80', '0', NULL, 0, 1, '---', 0, 0),
(17, 3, 'hs_hr_employee.emp_marital_status', 'Marital Status', 'maritalStatus', 'false', NULL, NULL, 'label', '<xml><getter>maritalStatus</getter></xml>', '100', '0', NULL, 0, 1, '---', 0, 0),
(18, 3, 'hs_hr_employee.emp_dri_lice_num', 'Driver License Number', 'driversLicenseNumber', 'false', NULL, NULL, 'label', '<xml><getter>driversLicenseNumber</getter></xml>', '240', '0', NULL, 0, 1, '---', 0, 0),
(19, 3, 'hs_hr_employee.emp_dri_lice_exp_date', 'License Expiry Date', 'licenseExpiryDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>licenseExpiryDate</getter></xml>', '135', '0', NULL, 0, 1, '---', 0, 0),
(20, 3, 'CONCAT_WS(", ", NULLIF(hs_hr_employee.emp_street1, ""), NULLIF(hs_hr_employee.emp_street2, ""), NULLIF(hs_hr_employee.city_code, ""), NULLIF(hs_hr_employee.provin_code,""), NULLIF(hs_hr_employee.emp_zipcode,""), NULLIF(hs_hr_country.cou_name,""))', 'Address', 'address', 'false', NULL, NULL, 'label', '<xml><getter>address</getter></xml>', '200', '0', NULL, 0, 2, '---', 0, 0),
(21, 3, 'hs_hr_employee.emp_hm_telephone', 'Home Telephone', 'homeTelephone', 'false', NULL, NULL, 'label', '<xml><getter>homeTelephone</getter></xml>', '130', '0', NULL, 0, 2, '---', 0, 0),
(22, 3, 'hs_hr_employee.emp_mobile', 'Mobile', 'mobile', 'false', NULL, NULL, 'label', '<xml><getter>mobile</getter></xml>', '100', '0', NULL, 0, 2, '---', 0, 0),
(23, 3, 'hs_hr_employee.emp_work_telephone', 'Work Telephone', 'workTelephone', 'false', NULL, NULL, 'label', '<xml><getter>workTelephone</getter></xml>', '100', '0', NULL, 0, 2, '---', 0, 0),
(24, 3, 'hs_hr_employee.emp_work_email', 'Work Email', 'workEmail', 'false', NULL, NULL, 'label', '<xml><getter>workEmail</getter></xml>', '200', '0', NULL, 0, 2, '---', 0, 0),
(25, 3, 'hs_hr_employee.emp_oth_email', 'Other Email', 'otherEmail', 'false', NULL, NULL, 'label', '<xml><getter>otherEmail</getter></xml>', '200', '0', NULL, 0, 2, '---', 0, 0),
(26, 3, 'hs_hr_emp_emergency_contacts.eec_name', 'Name', 'ecname', 'false', NULL, NULL, 'label', '<xml><getter>ecname</getter></xml>', '200', '0', NULL, 1, 3, '---', 0, 0),
(27, 3, 'hs_hr_emp_emergency_contacts.eec_home_no', 'Home Telephone', 'ecHomeTelephone', 'false', NULL, NULL, 'label', '<xml><getter>ecHomeTelephone</getter></xml>', '130', '0', NULL, 1, 3, '---', 0, 0),
(28, 3, 'hs_hr_emp_emergency_contacts.eec_office_no', 'Work Telephone', 'ecWorkTelephone', 'false', NULL, NULL, 'label', '<xml><getter>ecWorkTelephone</getter></xml>', '100', '0', NULL, 1, 3, '---', 0, 0),
(29, 3, 'hs_hr_emp_emergency_contacts.eec_relationship', 'Relationship', 'ecRelationship', 'false', NULL, NULL, 'label', '<xml><getter>ecRelationship</getter></xml>', '200', '0', NULL, 1, 3, '---', 0, 0),
(30, 3, 'hs_hr_emp_emergency_contacts.eec_mobile_no', 'Mobile', 'ecMobile', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 3, '---', 0, 0),
(31, 3, 'hs_hr_emp_dependents.ed_name', 'Name', 'dependentName', 'false', NULL, NULL, 'label', '<xml><getter>dependentName</getter></xml>', '200', '0', NULL, 1, 4, '---', 0, 0),
(32, 3, 'IF (hs_hr_emp_dependents.ed_relationship_type = ''other'', hs_hr_emp_dependents.ed_relationship, hs_hr_emp_dependents.ed_relationship_type)', 'Relationship', 'dependentRelationship', 'false', NULL, NULL, 'label', '<xml><getter>dependentRelationship</getter></xml>', '200', '0', NULL, 1, 4, '---', 0, 0),
(33, 3, 'hs_hr_emp_dependents.ed_date_of_birth', 'Date of Birth', 'dependentDateofBirth', 'false', NULL, NULL, 'labelDate', '<xml><getter>dependentDateofBirth</getter></xml>', '100', '0', NULL, 1, 4, '---', 0, 0),
(35, 3, 'ohrm_membership.name', 'Membership', 'name', 'false', NULL, NULL, 'label', '<xml><getter>name</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0),
(36, 3, 'hs_hr_emp_member_detail.ememb_subscript_ownership', 'Subscription Paid By', 'subscriptionPaidBy', 'false', NULL, NULL, 'label', '<xml><getter>subscriptionPaidBy</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0),
(37, 3, 'hs_hr_emp_member_detail.ememb_subscript_amount', 'Subscription Amount', 'subscriptionAmount', 'false', NULL, NULL, 'label', '<xml><getter>subscriptionAmount</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0),
(38, 3, 'hs_hr_emp_member_detail.ememb_subs_currency', 'Currency', 'membershipCurrency', 'false', NULL, NULL, 'label', '<xml><getter>membershipCurrency</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0),
(39, 3, 'hs_hr_emp_member_detail.ememb_commence_date', 'Subscription Commence Date', 'subscriptionCommenceDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>subscriptionCommenceDate</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0),
(40, 3, 'hs_hr_emp_member_detail.ememb_renewal_date', 'Subscription Renewal Date', 'subscriptionRenewalDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>subscriptionRenewalDate</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0),
(41, 3, 'hs_hr_emp_work_experience.eexp_employer', 'Company', 'expCompany', 'false', NULL, NULL, 'label', '<xml><getter>expCompany</getter></xml>', '200', '0', NULL, 1, 10, '---', 0, 0),
(42, 3, 'hs_hr_emp_work_experience.eexp_jobtit', 'Job Title', 'expJobTitle', 'false', NULL, NULL, 'label', '<xml><getter>expJobTitle</getter></xml>', '200', '0', NULL, 1, 10, '---', 0, 0),
(43, 3, 'hs_hr_emp_work_experience.eexp_from_date', 'From', 'expFrom', 'false', NULL, NULL, 'labelDate', '<xml><getter>expFrom</getter></xml>', '100', '0', NULL, 1, 10, '---', 0, 0),
(44, 3, 'hs_hr_emp_work_experience.eexp_to_date', 'To', 'expTo', 'false', NULL, NULL, 'labelDate', '<xml><getter>expTo</getter></xml>', '100', '0', NULL, 1, 10, '---', 0, 0),
(45, 3, 'hs_hr_emp_work_experience.eexp_comments', 'Comment', 'expComment', 'false', NULL, NULL, 'label', '<xml><getter>expComment</getter></xml>', '200', '0', NULL, 1, 10, '---', 0, 0),
(47, 3, 'ohrm_education.name', 'Level', 'eduProgram', 'false', NULL, NULL, 'label', '<xml><getter>eduProgram</getter></xml>', '200', '0', NULL, 1, 11, '---', 0, 0),
(48, 3, 'ohrm_emp_education.year', 'Year', 'eduYear', 'false', NULL, NULL, 'label', '<xml><getter>eduYear</getter></xml>', '100', '0', NULL, 1, 11, '---', 0, 0),
(49, 3, 'ohrm_emp_education.score', 'Score', 'eduGPAOrScore', 'false', NULL, NULL, 'label', '<xml><getter>eduGPAOrScore</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0),
(52, 3, 'ohrm_skill.name', 'Skill', 'skill', 'false', NULL, NULL, 'label', '<xml><getter>skill</getter></xml>', '200', '0', NULL, 1, 12, '---', 0, 0),
(53, 3, 'hs_hr_emp_skill.years_of_exp', 'Years of Experience', 'skillYearsOfExperience', 'false', NULL, NULL, 'label', '<xml><getter>skillYearsOfExperience</getter></xml>', '135', '0', NULL, 1, 12, '---', 0, 0),
(54, 3, 'hs_hr_emp_skill.comments', 'Comments', 'skillComments', 'false', NULL, NULL, 'label', '<xml><getter>skillComments</getter></xml>', '200', '0', NULL, 1, 12, '---', 0, 0),
(55, 3, 'ohrm_language.name', 'Language', 'langName', 'false', NULL, NULL, 'label', '<xml><getter>langName</getter></xml>', '200', '0', NULL, 1, 13, '---', 0, 0),
(57, 3, 'CASE hs_hr_emp_language.competency WHEN 1 THEN "Poor" WHEN 2 THEN "Basic" WHEN 3 THEN "Good" WHEN 4 THEN "Mother Tongue" END', 'Competency', 'langCompetency', 'false', NULL, NULL, 'label', '<xml><getter>langCompetency</getter></xml>', '130', '0', NULL, 1, 13, '---', 0, 0),
(58, 3, 'hs_hr_emp_language.comments', 'Comments', 'langComments', 'false', NULL, NULL, 'label', '<xml><getter>langComments</getter></xml>', '200', '0', NULL, 1, 13, '---', 0, 0),
(59, 3, 'ohrm_license.name', 'License Type', 'empLicenseType', 'false', NULL, NULL, 'label', '<xml><getter>empLicenseType</getter></xml>', '200', '0', NULL, 1, 14, '---', 0, 0),
(60, 3, 'ohrm_emp_license.license_issued_date', 'Issued Date', 'empLicenseIssuedDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empLicenseIssuedDate</getter></xml>', '100', '0', NULL, 1, 14, '---', 0, 0),
(61, 3, 'ohrm_emp_license.license_expiry_date', 'Expiry Date', 'empLicenseExpiryDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empLicenseExpiryDate</getter></xml>', '100', '0', NULL, 1, 14, '---', 0, 0),
(62, 3, 'supervisor.emp_firstname', 'First Name', 'supervisorFirstName', 'false', NULL, NULL, 'label', '<xml><getter>supervisorFirstName</getter></xml>', '200', '0', NULL, 1, 9, '---', 0, 0),
(63, 3, 'subordinate.emp_firstname', 'First Name', 'subordinateFirstName', 'false', NULL, NULL, 'label', '<xml><getter>subordinateFirstName</getter></xml>', '200', '0', NULL, 1, 8, '---', 0, 0),
(64, 3, 'supervisor.emp_lastname', 'Last Name', 'supervisorLastName', 'false', NULL, NULL, 'label', '<xml><getter>supervisorLastName</getter></xml>', '200', '0', NULL, 1, 9, '---', 0, 0),
(65, 3, 'ohrm_pay_grade.name', 'Pay Grade', 'salPayGrade', 'false', NULL, NULL, 'label', '<xml><getter>salPayGrade</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(66, 3, 'hs_hr_emp_basicsalary.salary_component', 'Salary Component', 'salSalaryComponent', 'false', NULL, NULL, 'label', '<xml><getter>salSalaryComponent</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(67, 3, 'hs_hr_emp_basicsalary.ebsal_basic_salary', 'Amount', 'salAmount', 'false', NULL, NULL, 'label', '<xml><getter>salAmount</getter></xml>', '200', '0', NULL, 1, 7, '---', 1, 0),
(68, 3, 'hs_hr_emp_basicsalary.comments', 'Comments', 'salComments', 'false', NULL, NULL, 'label', '<xml><getter>salComments</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(69, 3, 'hs_hr_payperiod.payperiod_name', 'Pay Frequency', 'salPayFrequency', 'false', NULL, NULL, 'label', '<xml><getter>salPayFrequency</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(70, 3, 'hs_hr_currency_type.currency_name', 'Currency', 'salCurrency', 'false', NULL, NULL, 'label', '<xml><getter>salCurrency</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(71, 3, 'hs_hr_emp_directdebit.dd_account', 'Direct Deposit Account Number', 'ddAccountNumber', 'false', NULL, NULL, 'label', '<xml><getter>ddAccountNumber</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(72, 3, 'hs_hr_emp_directdebit.dd_account_type', 'Direct Deposit Account Type', 'ddAccountType', 'false', NULL, NULL, 'label', '<xml><getter>ddAccountType</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(73, 3, 'hs_hr_emp_directdebit.dd_routing_num', 'Direct Deposit Routing Number', 'ddRoutingNumber', 'false', NULL, NULL, 'label', '<xml><getter>ddRoutingNumber</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(74, 3, 'hs_hr_emp_directdebit.dd_amount', 'Direct Deposit Amount', 'ddAmount', 'false', NULL, NULL, 'label', '<xml><getter>ddAmount</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0),
(75, 3, 'hs_hr_emp_contract_extend.econ_extend_start_date', 'Contract Start Date', 'empContStartDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empContStartDate</getter></xml>', '200', '0', NULL, 1, 6, '---', 0, 0),
(76, 3, 'hs_hr_emp_contract_extend.econ_extend_end_date', 'Contract End Date', 'empContEndDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empContEndDate</getter></xml>', '200', '0', NULL, 1, 6, '---', 0, 0),
(77, 3, 'ohrm_job_title.job_title', 'Job Title', 'empJobTitle', 'false', NULL, NULL, 'label', '<xml><getter>empJobTitle</getter></xml>', '200', '0', NULL, 1, 6, '---', 0, 0),
(78, 3, 'ohrm_employment_status.name', 'Employment Status', 'empEmploymentStatus', 'false', NULL, NULL, 'label', '<xml><getter>empEmploymentStatus</getter></xml>', '200', '0', NULL, 1, 6, '---', 0, 0),
(80, 3, 'ohrm_job_category.name', 'Job Category', 'empJobCategory', 'false', NULL, NULL, 'label', '<xml><getter>empJobCategory</getter></xml>', '200', '0', NULL, 1, 6, '---', 0, 0),
(81, 3, 'hs_hr_employee.joined_date', 'Joined Date', 'empJoinedDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empJoinedDate</getter></xml>', '100', '0', NULL, 1, 6, '---', 0, 0),
(82, 3, 'ohrm_subunit.name', 'Sub Unit', 'empSubUnit', 'false', NULL, NULL, 'label', '<xml><getter>empSubUnit</getter></xml>', '200', '0', NULL, 1, 6, '---', 0, 0),
(83, 3, 'ohrm_location.name', 'Location', 'empLocation', 'false', NULL, NULL, 'label', '<xml><getter>empLocation</getter></xml>', '200', '0', NULL, 1, 6, '---', 0, 0),
(84, 3, 'hs_hr_emp_passport.ep_passport_num', 'Number', 'empPassportNo', 'false', NULL, NULL, 'label', '<xml><getter>empPassportNo</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0),
(85, 3, 'hs_hr_emp_passport.ep_passportissueddate', 'Issued Date', 'empPassportIssuedDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empPassportIssuedDate</getter></xml>', '100', '0', NULL, 1, 5, '---', 0, 0),
(86, 3, 'hs_hr_emp_passport.ep_passportexpiredate', 'Expiry Date', 'empPassportExpiryDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empPassportExpiryDate</getter></xml>', '100', '0', NULL, 1, 5, '---', 0, 0),
(87, 3, 'hs_hr_emp_passport.ep_i9_status', 'Eligibility Status', 'empPassportEligibleStatus', 'false', NULL, NULL, 'label', '<xml><getter>empPassportEligibleStatus</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0),
(88, 3, 'hs_hr_emp_passport.cou_code', 'Issued By', 'empPassportIssuedBy', 'false', NULL, NULL, 'label', '<xml><getter>empPassportIssuedBy</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0),
(89, 3, 'hs_hr_emp_passport.ep_i9_review_date', 'Eligibility Review Date', 'empPassportEligibleReviewDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empPassportEligibleReviewDate</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0),
(90, 3, 'hs_hr_emp_passport.ep_comments', 'Comments', 'empPassportComments', 'false', NULL, NULL, 'label', '<xml><getter>empPassportComments</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0),
(91, 3, 'subordinate.emp_lastname', 'Last Name', 'subordinateLastName', 'false', NULL, NULL, 'label', '<xml><getter>subordinateLastName</getter></xml>', '200', '0', NULL, 1, 8, '---', 0, 0),
(92, 3, 'CASE hs_hr_emp_language.fluency WHEN 1 THEN "Writing" WHEN 2 THEN "Speaking" WHEN 3 THEN "Reading" END', 'Fluency', 'langFluency', 'false', NULL, NULL, 'label', '<xml><getter>langFluency</getter></xml>', '200', '0', NULL, 1, 13, '---', 0, 0),
(93, 3, 'supervisor_reporting_method.reporting_method_name', 'Reporting Method', 'supReportingMethod', 'false', NULL, NULL, 'label', '<xml><getter>supReportingMethod</getter></xml>', '200', '0', NULL, 1, 9, '---', 0, 0),
(94, 3, 'subordinate_reporting_method.reporting_method_name', 'Reporting Method', 'subReportingMethod', 'false', NULL, NULL, 'label', '<xml><getter>subReportingMethod</getter></xml>', '200', '0', NULL, 1, 8, '---', 0, 0),
(95, 3, 'CASE hs_hr_emp_passport.ep_passport_type_flg WHEN 1 THEN "Passport" WHEN 2 THEN "Visa" END', 'Document Type', 'documentType', 'false', NULL, NULL, 'label', '<xml><getter>documentType</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0),
(97, 3, 'hs_hr_employee.emp_other_id', 'Other Id', 'otherId', 'false', NULL, NULL, 'label', '<xml><getter>otherId</getter></xml>', '100', '0', NULL, 0, 1, '---', 0, 0),
(98, 3, 'hs_hr_emp_emergency_contacts.eec_seqno', 'ecSeqNo', 'ecSeqNo', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 3, '---', 0, 1),
(99, 3, 'hs_hr_emp_dependents.ed_seqno', 'SeqNo', 'edSeqNo', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 4, '---', 0, 1),
(100, 3, 'hs_hr_emp_passport.ep_seqno', 'SeqNo', 'epSeqNo', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 5, '---', 0, 1),
(101, 3, 'hs_hr_emp_basicsalary.id', 'salaryId', 'salaryId', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 7, '---', 0, 1),
(102, 3, 'subordinate.emp_number', 'subordinateId', 'subordinateId', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 8, '---', 0, 1),
(103, 3, 'supervisor.emp_number', 'supervisorId', 'supervisorId', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 9, '---', 0, 1),
(104, 3, 'hs_hr_emp_work_experience.eexp_seqno', 'workExpSeqNo', 'workExpSeqNo', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 10, '---', 0, 1),
(105, 3, 'ohrm_emp_education.education_id', 'empEduCode', 'empEduCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 11, '---', 0, 1),
(106, 3, 'hs_hr_emp_skill.skill_id', 'empSkillCode', 'empSkillCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 12, '---', 0, 1),
(107, 3, 'hs_hr_emp_language.lang_id', 'empLangCode', 'empLangCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 13, '---', 0, 1),
(108, 3, 'hs_hr_emp_language.fluency', 'empLangType', 'empLangType', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 13, '---', 0, 1),
(109, 3, 'ohrm_emp_license.license_id', 'empLicenseCode', 'empLicenseCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 14, '---', 0, 1),
(110, 3, 'hs_hr_emp_member_detail.membship_code', 'membershipCode', 'membershipCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 15, '---', 0, 1),
(112, 3, 'ROUND(DATEDIFF(hs_hr_emp_work_experience.eexp_to_date, hs_hr_emp_work_experience.eexp_from_date)/365,1)', 'Duration', 'expDuration', 'false', NULL, NULL, 'label', '<xml><getter>expDuration</getter></xml>', '100', '0', NULL, 1, 10, '---', 0, 0),
(113, 3, 'ohrm_emp_termination.termination_date', 'Termination Date', 'terminationDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>terminationDate</getter></xml>', '100', '0', NULL, 1, 6, '---', 0, 0),
(114, 3, 'ohrm_emp_termination_reason.name', 'Termination Reason', 'terminationReason', 'false', NULL, NULL, 'label', '<xml><getter>terminationReason</getter></xml>', '100', '0', NULL, 1, 6, '---', 0, 0),
(115, 3, 'ohrm_emp_education.institute', 'Institute', 'getInstitute', 'false', NULL, NULL, 'label', '<xml><getter>getInstitute</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0),
(116, 3, 'ohrm_emp_education.major', 'Major/Specialization', 'getMajor', 'false', NULL, NULL, 'label', '<xml><getter>getMajor</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0),
(117, 3, 'ohrm_emp_education.start_date', 'Start Date', 'getStartDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>getStartDate</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0),
(118, 3, 'ohrm_emp_education.end_date', 'End Date', 'getEndDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>getEndDate</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0),
(119, 3, 'ohrm_emp_license.license_no', 'License Number', 'getLicenseNo', 'false', NULL, NULL, 'label', '<xml><getter>getLicenseNo</getter></xml>', '200', '0', NULL, 1, 14, '---', 0, 0),
(120, 3, 'ohrm_emp_termination.note', 'Termination Note', 'getNote', 'false', NULL, NULL, 'label', '<xml><getter>getNote</getter></xml>', '100', '0', NULL, 1, 6, '---', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_display_field_group`
--

CREATE TABLE `ohrm_display_field_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_list` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_display_field_group`
--

INSERT INTO `ohrm_display_field_group` (`id`, `report_group_id`, `name`, `is_list`) VALUES
(1, 3, 'Personal', 0),
(2, 3, 'Contact Details', 0),
(3, 3, 'Emergency Contacts', 1),
(4, 3, 'Dependents', 1),
(5, 3, 'Immigration', 1),
(6, 3, 'Job', 0),
(7, 3, 'Salary', 1),
(8, 3, 'Subordinates', 1),
(9, 3, 'Supervisors', 1),
(10, 3, 'Work Experience', 1),
(11, 3, 'Education', 1),
(12, 3, 'Skills', 1),
(13, 3, 'Languages', 1),
(14, 3, 'License', 1),
(15, 3, 'Memberships', 1),
(16, 3, 'Custom Fields', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_education`
--

CREATE TABLE `ohrm_education` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email`
--

CREATE TABLE `ohrm_email` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email`
--

INSERT INTO `ohrm_email` (`id`, `name`) VALUES
(1, 'leave.apply'),
(3, 'leave.approve'),
(2, 'leave.assign'),
(4, 'leave.cancel'),
(6, 'leave.change'),
(5, 'leave.reject');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_configuration`
--

CREATE TABLE `ohrm_email_configuration` (
  `id` int(10) NOT NULL,
  `mail_type` varchar(50) DEFAULT NULL,
  `sent_as` varchar(250) NOT NULL,
  `sendmail_path` varchar(250) DEFAULT NULL,
  `smtp_host` varchar(250) DEFAULT NULL,
  `smtp_port` int(10) DEFAULT NULL,
  `smtp_username` varchar(250) DEFAULT NULL,
  `smtp_password` varchar(250) DEFAULT NULL,
  `smtp_auth_type` varchar(50) DEFAULT NULL,
  `smtp_security_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email_configuration`
--

INSERT INTO `ohrm_email_configuration` (`id`, `mail_type`, `sent_as`, `sendmail_path`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `smtp_auth_type`, `smtp_security_type`) VALUES
(1, 'smtp', 'mwanjemusa@gmail.com', '', 'smtp.gmail.com', 465, '', '', 'none', 'ssl');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_notification`
--

CREATE TABLE `ohrm_email_notification` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_enable` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email_notification`
--

INSERT INTO `ohrm_email_notification` (`id`, `name`, `is_enable`) VALUES
(1, 'Leave Applications', 1),
(2, 'Leave Assignments', 1),
(3, 'Leave Approvals', 1),
(4, 'Leave Cancellations', 1),
(5, 'Leave Rejections', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_processor`
--

CREATE TABLE `ohrm_email_processor` (
  `id` int(6) NOT NULL,
  `email_id` int(6) NOT NULL,
  `class_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email_processor`
--

INSERT INTO `ohrm_email_processor` (`id`, `email_id`, `class_name`) VALUES
(1, 1, 'LeaveEmailProcessor'),
(2, 2, 'LeaveEmailProcessor'),
(3, 3, 'LeaveEmailProcessor'),
(4, 4, 'LeaveEmailProcessor'),
(5, 5, 'LeaveEmailProcessor'),
(6, 6, 'LeaveChangeMailProcessor');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_subscriber`
--

CREATE TABLE `ohrm_email_subscriber` (
  `id` int(6) NOT NULL,
  `notification_id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_template`
--

CREATE TABLE `ohrm_email_template` (
  `id` int(6) NOT NULL,
  `email_id` int(6) NOT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `performer_role` varchar(50) DEFAULT NULL,
  `recipient_role` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email_template`
--

INSERT INTO `ohrm_email_template` (`id`, `email_id`, `locale`, `performer_role`, `recipient_role`, `subject`, `body`) VALUES
(1, 1, 'en_US', NULL, 'supervisor', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/apply/leaveApplicationSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/apply/leaveApplicationBody.txt'),
(2, 1, 'en_US', NULL, 'subscriber', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/apply/leaveApplicationSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/apply/leaveApplicationSubscriberBody.txt'),
(3, 3, 'en_US', NULL, 'ess', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/approve/leaveApprovalSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/approve/leaveApprovalBody.txt'),
(4, 3, 'en_US', NULL, 'subscriber', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/approve/leaveApprovalSubscriberSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/approve/leaveApprovalSubscriberBody.txt'),
(5, 2, 'en_US', NULL, 'ess', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/assign/leaveAssignmentSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/assign/leaveAssignmentBody.txt'),
(6, 2, 'en_US', NULL, 'supervisor', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/assign/leaveAssignmentSubjectForSupervisors.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/assign/leaveAssignmentBodyForSupervisors.txt'),
(7, 2, 'en_US', NULL, 'subscriber', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/assign/leaveAssignmentSubscriberSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/assign/leaveAssignmentSubscriberBody.txt'),
(8, 4, 'en_US', 'ess', 'supervisor', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/cancel/leaveEmployeeCancellationSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/cancel/leaveEmployeeCancellationBody.txt'),
(9, 4, 'en_US', 'ess', 'subscriber', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/cancel/leaveEmployeeCancellationSubscriberSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/cancel/leaveEmployeeCancellationSubscriberBody.txt'),
(10, 4, 'en_US', NULL, 'ess', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/cancel/leaveCancellationSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/cancel/leaveCancellationBody.txt'),
(11, 4, 'en_US', NULL, 'subscriber', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/cancel/leaveCancellationSubscriberSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/cancel/leaveCancellationSubscriberBody.txt'),
(12, 5, 'en_US', NULL, 'ess', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/reject/leaveRejectionSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/reject/leaveRejectionBody.txt'),
(13, 5, 'en_US', NULL, 'subscriber', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/reject/leaveRejectionSubscriberSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/reject/leaveRejectionSubscriberBody.txt'),
(14, 6, 'en_US', NULL, 'ess', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/change/leaveChangeSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/change/leaveChangeBody.txt'),
(15, 6, 'en_US', NULL, 'subscriber', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/change/leaveChangeSubscriberSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/change/leaveChangeSubscriberBody.txt');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_employee_event`
--

CREATE TABLE `ohrm_employee_event` (
  `event_id` int(7) NOT NULL,
  `employee_id` int(7) NOT NULL DEFAULT '0',
  `type` varchar(45) DEFAULT NULL,
  `event` varchar(45) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ohrm_employee_event`
--

INSERT INTO `ohrm_employee_event` (`event_id`, `employee_id`, `type`, `event`, `note`, `created_date`, `created_by`) VALUES
(1, 1, 'employee', 'SAVE', 'Saving Employee', '2018-01-23 09:42:56', 'Admin'),
(2, 2, 'employee', 'SAVE', 'Saving Employee', '2018-01-23 05:48:56', 'Admin'),
(3, 2, 'employee', 'UPDATE', 'Updating Employee Details', '2018-01-23 05:49:33', NULL),
(4, 3, 'employee', 'SAVE', 'Saving Employee', '2018-01-25 08:20:03', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_employee_work_shift`
--

CREATE TABLE `ohrm_employee_work_shift` (
  `work_shift_id` int(11) NOT NULL,
  `emp_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_employment_status`
--

CREATE TABLE `ohrm_employment_status` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_education`
--

CREATE TABLE `ohrm_emp_education` (
  `id` int(11) NOT NULL,
  `emp_number` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `year` decimal(4,0) DEFAULT NULL,
  `score` varchar(25) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_license`
--

CREATE TABLE `ohrm_emp_license` (
  `emp_number` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `license_no` varchar(50) DEFAULT NULL,
  `license_issued_date` date DEFAULT NULL,
  `license_expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_reporting_method`
--

CREATE TABLE `ohrm_emp_reporting_method` (
  `reporting_method_id` int(7) NOT NULL,
  `reporting_method_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_emp_reporting_method`
--

INSERT INTO `ohrm_emp_reporting_method` (`reporting_method_id`, `reporting_method_name`) VALUES
(1, 'Direct'),
(2, 'Indirect');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_termination`
--

CREATE TABLE `ohrm_emp_termination` (
  `id` int(4) NOT NULL,
  `emp_number` int(4) DEFAULT NULL,
  `reason_id` int(4) DEFAULT NULL,
  `termination_date` date NOT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_termination_reason`
--

CREATE TABLE `ohrm_emp_termination_reason` (
  `id` int(4) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_emp_termination_reason`
--

INSERT INTO `ohrm_emp_termination_reason` (`id`, `name`) VALUES
(1, 'Other'),
(2, 'Retired'),
(3, 'Contract Not Renewed'),
(4, 'Resigned - Company Requested'),
(5, 'Resigned - Self Proposed'),
(6, 'Resigned'),
(7, 'Deceased'),
(8, 'Physically Disabled/Compensated'),
(9, 'Laid-off'),
(10, 'Dismissed');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_filter_field`
--

CREATE TABLE `ohrm_filter_field` (
  `filter_field_id` bigint(20) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `where_clause_part` mediumtext NOT NULL,
  `filter_field_widget` varchar(255) DEFAULT NULL,
  `condition_no` int(20) NOT NULL,
  `required` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_filter_field`
--

INSERT INTO `ohrm_filter_field` (`filter_field_id`, `report_group_id`, `name`, `where_clause_part`, `filter_field_widget`, `condition_no`, `required`) VALUES
(1, 1, 'project_name', 'ohrm_project.project_id', 'ohrmWidgetProjectList', 2, 'true'),
(2, 1, 'activity_show_deleted', 'ohrm_project_activity.is_deleted', 'ohrmWidgetInputCheckbox', 2, 'false'),
(3, 1, 'project_date_range', 'date', 'ohrmWidgetDateRange', 1, 'false'),
(4, 1, 'employee', 'hs_hr_employee.emp_number', 'ohrmReportWidgetEmployeeListAutoFill', 2, 'true'),
(5, 1, 'activity_name', 'ohrm_project_activity.activity_id', 'ohrmWidgetProjectActivityList', 2, 'true'),
(6, 1, 'project_name', 'ohrm_project.project_id', 'ohrmWidgetProjectListWithAllOption', 2, 'true'),
(7, 1, 'only_include_approved_timesheets', 'ohrm_timesheet.state', 'ohrmWidgetApprovedTimesheetInputCheckBox', 2, NULL),
(8, 3, 'employee_name', 'hs_hr_employee.emp_number', 'ohrmReportWidgetEmployeeListAutoFill', 1, NULL),
(9, 3, 'pay_grade', 'hs_hr_emp_basicsalary.sal_grd_code', 'ohrmReportWidgetPayGradeDropDown', 1, NULL),
(10, 3, 'education', 'ohrm_emp_education.education_id', 'ohrmReportWidgetEducationtypeDropDown', 1, NULL),
(11, 3, 'employment_status', 'hs_hr_employee.emp_status', 'ohrmWidgetEmploymentStatusList', 1, NULL),
(12, 3, 'service_period', 'datediff(current_date(), hs_hr_employee.joined_date)/365', 'ohrmReportWidgetServicePeriod', 1, NULL),
(13, 3, 'joined_date', 'hs_hr_employee.joined_date', 'ohrmReportWidgetJoinedDate', 1, NULL),
(14, 3, 'job_title', 'hs_hr_employee.job_title_code', 'ohrmWidgetJobTitleList', 1, NULL),
(15, 3, 'language', 'hs_hr_emp_language.lang_id', 'ohrmReportWidgetLanguageDropDown', 1, NULL),
(16, 3, 'skill', 'hs_hr_emp_skill.skill_id', 'ohrmReportWidgetSkillDropDown', 1, NULL),
(17, 3, 'age_group', 'datediff(current_date(), hs_hr_employee.emp_birthday)/365', 'ohrmReportWidgetAgeGroup', 1, NULL),
(18, 3, 'sub_unit', 'hs_hr_employee.work_station', 'ohrmWidgetSubDivisionList', 1, NULL),
(19, 3, 'gender', 'hs_hr_employee.emp_gender', 'ohrmReportWidgetGenderDropDown', 1, NULL),
(20, 3, 'location', 'ohrm_location.id', 'ohrmReportWidgetOperationalCountryLocationDropDown', 1, NULL),
(21, 1, 'is_deleted', 'ohrm_project_activity.is_deleted', '', 2, NULL),
(22, 3, 'include', 'hs_hr_employee.termination_id', 'ohrmReportWidgetIncludedEmployeesDropDown', 1, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_group_field`
--

CREATE TABLE `ohrm_group_field` (
  `group_field_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_by_clause` mediumtext NOT NULL,
  `group_field_widget` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_group_field`
--

INSERT INTO `ohrm_group_field` (`group_field_id`, `name`, `group_by_clause`, `group_field_widget`) VALUES
(1, 'activity id', 'GROUP BY ohrm_project_activity.activity_id', NULL),
(2, 'employee number', 'GROUP BY hs_hr_employee.emp_number', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_holiday`
--

CREATE TABLE `ohrm_holiday` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text,
  `date` date DEFAULT NULL,
  `recurring` tinyint(3) UNSIGNED DEFAULT '0',
  `length` int(10) UNSIGNED DEFAULT NULL,
  `operational_country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_holiday`
--

INSERT INTO `ohrm_holiday` (`id`, `description`, `date`, `recurring`, `length`, `operational_country_id`) VALUES
(1, 'Easter Holiday', '2018-04-02', 0, 0, NULL),
(2, 'Edi Holiday', '2018-06-15', 0, 0, NULL),
(3, 'NRM Lebaration Day', '2018-01-26', 1, 0, NULL),
(4, 'Chrismas Day', '2018-12-25', 1, 0, NULL),
(5, 'Independence Day', '2018-10-09', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_home_page`
--

CREATE TABLE `ohrm_home_page` (
  `id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `enable_class` varchar(100) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0' COMMENT 'lowest priority 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_home_page`
--

INSERT INTO `ohrm_home_page` (`id`, `user_role_id`, `action`, `enable_class`, `priority`) VALUES
(1, 1, 'dashboard/index', NULL, 15),
(2, 2, 'dashboard/index', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_candidate`
--

CREATE TABLE `ohrm_job_candidate` (
  `id` int(13) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `status` int(4) NOT NULL,
  `comment` text,
  `mode_of_application` int(4) NOT NULL,
  `date_of_application` date NOT NULL,
  `cv_file_id` int(13) DEFAULT NULL,
  `cv_text_version` text,
  `keywords` varchar(255) DEFAULT NULL,
  `added_person` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_candidate_attachment`
--

CREATE TABLE `ohrm_job_candidate_attachment` (
  `id` int(13) NOT NULL,
  `candidate_id` int(13) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob,
  `attachment_type` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_candidate_history`
--

CREATE TABLE `ohrm_job_candidate_history` (
  `id` int(13) NOT NULL,
  `candidate_id` int(13) NOT NULL,
  `vacancy_id` int(13) DEFAULT NULL,
  `candidate_vacancy_name` varchar(255) DEFAULT NULL,
  `interview_id` int(13) DEFAULT NULL,
  `action` int(4) NOT NULL,
  `performed_by` int(13) DEFAULT NULL,
  `performed_date` datetime NOT NULL,
  `note` text,
  `interviewers` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_candidate_vacancy`
--

CREATE TABLE `ohrm_job_candidate_vacancy` (
  `id` int(13) DEFAULT NULL,
  `candidate_id` int(13) NOT NULL,
  `vacancy_id` int(13) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_category`
--

CREATE TABLE `ohrm_job_category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_job_category`
--

INSERT INTO `ohrm_job_category` (`id`, `name`) VALUES
(1, 'Officials and Managers'),
(2, 'Professionals'),
(3, 'Technicians'),
(4, 'Sales Workers'),
(5, 'Operatives'),
(6, 'Office and Clerical Workers'),
(7, 'Craft Workers'),
(8, 'Service Workers'),
(9, 'Laborers and Helpers');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_interview`
--

CREATE TABLE `ohrm_job_interview` (
  `id` int(13) NOT NULL,
  `candidate_vacancy_id` int(13) DEFAULT NULL,
  `candidate_id` int(13) DEFAULT NULL,
  `interview_name` varchar(100) NOT NULL,
  `interview_date` date DEFAULT NULL,
  `interview_time` time DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_interview_attachment`
--

CREATE TABLE `ohrm_job_interview_attachment` (
  `id` int(13) NOT NULL,
  `interview_id` int(13) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob,
  `attachment_type` int(4) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_interview_interviewer`
--

CREATE TABLE `ohrm_job_interview_interviewer` (
  `interview_id` int(13) NOT NULL,
  `interviewer_id` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_specification_attachment`
--

CREATE TABLE `ohrm_job_specification_attachment` (
  `id` int(13) NOT NULL,
  `job_title_id` int(13) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_title`
--

CREATE TABLE `ohrm_job_title` (
  `id` int(13) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_description` varchar(400) DEFAULT NULL,
  `note` varchar(400) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_job_title`
--

INSERT INTO `ohrm_job_title` (`id`, `job_title`, `job_description`, `note`, `is_deleted`) VALUES
(1, 'Lab Techs', '', '', 0),
(2, 'ICT', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_vacancy`
--

CREATE TABLE `ohrm_job_vacancy` (
  `id` int(13) NOT NULL,
  `job_title_code` int(4) NOT NULL,
  `hiring_manager_id` int(13) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `no_of_positions` int(13) DEFAULT NULL,
  `status` int(4) NOT NULL,
  `published_in_feed` tinyint(1) NOT NULL DEFAULT '0',
  `defined_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_vacancy_attachment`
--

CREATE TABLE `ohrm_job_vacancy_attachment` (
  `id` int(13) NOT NULL,
  `vacancy_id` int(13) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob,
  `attachment_type` int(4) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_kpi`
--

CREATE TABLE `ohrm_kpi` (
  `id` bigint(20) NOT NULL,
  `job_title_code` varchar(10) DEFAULT NULL,
  `kpi_indicators` varchar(255) DEFAULT NULL,
  `min_rating` int(7) DEFAULT '0',
  `max_rating` int(7) DEFAULT '0',
  `default_kpi` smallint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_language`
--

CREATE TABLE `ohrm_language` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave`
--

CREATE TABLE `ohrm_leave` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `length_hours` decimal(6,2) UNSIGNED DEFAULT NULL,
  `length_days` decimal(6,4) UNSIGNED DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `comments` varchar(256) DEFAULT NULL,
  `leave_request_id` int(10) UNSIGNED NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `emp_number` int(7) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `duration_type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave`
--

INSERT INTO `ohrm_leave` (`id`, `date`, `length_hours`, `length_days`, `status`, `comments`, `leave_request_id`, `leave_type_id`, `emp_number`, `start_time`, `end_time`, `duration_type`) VALUES
(1, '2018-01-23', '8.00', '1.0000', 0, '2018-01-23 18:07 Admin\r\n\r\ntesting leave app\r\n\r\n', 1, 2, 2, '00:00:00', '00:00:00', 0),
(2, '2018-01-24', '8.00', '1.0000', 0, '2018-01-23 18:07 Admin\r\n\r\ntesting leave app\r\n\r\n', 1, 2, 2, '00:00:00', '00:00:00', 0),
(3, '2018-01-25', '8.00', '1.0000', 0, '2018-01-23 18:07 Admin\r\n\r\ntesting leave app\r\n\r\n', 1, 2, 2, '00:00:00', '00:00:00', 0),
(4, '2018-01-26', '8.00', '1.0000', 0, '2018-01-23 18:07 Admin\r\n\r\ntesting leave app\r\n\r\n', 1, 2, 2, '00:00:00', '00:00:00', 0),
(5, '2018-01-27', '0.00', '0.0000', 4, NULL, 1, 2, 2, '00:00:00', '00:00:00', 0),
(6, '2018-01-28', '0.00', '0.0000', 4, NULL, 1, 2, 2, '00:00:00', '00:00:00', 0),
(7, '2018-01-29', '8.00', '1.0000', 0, '2018-01-23 18:07 Admin\r\n\r\ntesting leave app\r\n\r\n', 1, 2, 2, '00:00:00', '00:00:00', 0),
(8, '2018-01-30', '8.00', '1.0000', 0, '2018-01-23 18:07 Admin\r\n\r\ntesting leave app\r\n\r\n', 1, 2, 2, '00:00:00', '00:00:00', 0),
(9, '2018-01-31', '8.00', '1.0000', 0, '2018-01-23 18:07 Admin\r\n\r\ntesting leave app\r\n\r\n', 1, 2, 2, '00:00:00', '00:00:00', 0),
(10, '2018-01-24', '8.00', '1.0000', 0, '', 2, 2, 2, '00:00:00', '00:00:00', 0),
(11, '2018-01-25', '8.00', '1.0000', 3, '2018-01-24 09:09 kasolo Mwanje\r\n\r\nbreak off work\r\n\r\n', 2, 2, 2, '00:00:00', '00:00:00', 0),
(12, '2018-01-26', '8.00', '1.0000', 3, '2018-01-24 09:09 kasolo Mwanje\r\n\r\nbreak off work\r\n\r\n', 2, 2, 2, '00:00:00', '00:00:00', 0),
(13, '2018-01-27', '0.00', '0.0000', 4, NULL, 2, 2, 2, '00:00:00', '00:00:00', 0),
(14, '2018-01-28', '0.00', '0.0000', 4, NULL, 2, 2, 2, '00:00:00', '00:00:00', 0),
(15, '2018-01-29', '8.00', '1.0000', 3, '2018-01-24 09:09 kasolo Mwanje\r\n\r\nbreak off work\r\n\r\n', 2, 2, 2, '00:00:00', '00:00:00', 0),
(16, '2018-01-30', '8.00', '1.0000', 3, '2018-01-24 09:09 kasolo Mwanje\r\n\r\nbreak off work\r\n\r\n', 2, 2, 2, '00:00:00', '00:00:00', 0),
(17, '2018-01-31', '8.00', '1.0000', 3, '2018-01-24 09:09 kasolo Mwanje\r\n\r\nbreak off work\r\n\r\n', 2, 2, 2, '00:00:00', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_adjustment`
--

CREATE TABLE `ohrm_leave_adjustment` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_number` int(7) NOT NULL,
  `no_of_days` decimal(19,15) NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `credited_date` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `adjustment_type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by_id` int(10) DEFAULT NULL,
  `created_by_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_comment`
--

CREATE TABLE `ohrm_leave_comment` (
  `id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by_name` varchar(255) NOT NULL,
  `created_by_id` int(10) DEFAULT NULL,
  `created_by_emp_number` int(7) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_comment`
--

INSERT INTO `ohrm_leave_comment` (`id`, `leave_id`, `created`, `created_by_name`, `created_by_id`, `created_by_emp_number`, `comments`) VALUES
(1, 1, '2018-01-24 09:00:05', 'Admin', 1, NULL, 'i dont want');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_entitlement`
--

CREATE TABLE `ohrm_leave_entitlement` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_number` int(7) NOT NULL,
  `no_of_days` decimal(19,15) NOT NULL,
  `days_used` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime DEFAULT NULL,
  `credited_date` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `entitlement_type` int(10) UNSIGNED NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by_id` int(10) DEFAULT NULL,
  `created_by_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_entitlement`
--

INSERT INTO `ohrm_leave_entitlement` (`id`, `emp_number`, `no_of_days`, `days_used`, `leave_type_id`, `from_date`, `to_date`, `credited_date`, `note`, `entitlement_type`, `deleted`, `created_by_id`, `created_by_name`) VALUES
(1, 2, '12.000000000000000', '5.0000', 2, '2018-01-16 00:00:00', '2019-01-15 00:00:00', '2018-01-23 00:00:00', NULL, 1, 0, 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_entitlement_adjustment`
--

CREATE TABLE `ohrm_leave_entitlement_adjustment` (
  `id` int(11) NOT NULL,
  `adjustment_id` int(10) UNSIGNED NOT NULL,
  `entitlement_id` int(10) UNSIGNED NOT NULL,
  `length_days` decimal(4,2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_entitlement_type`
--

CREATE TABLE `ohrm_leave_entitlement_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_editable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_entitlement_type`
--

INSERT INTO `ohrm_leave_entitlement_type` (`id`, `name`, `is_editable`) VALUES
(1, 'Added', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_leave_entitlement`
--

CREATE TABLE `ohrm_leave_leave_entitlement` (
  `id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `entitlement_id` int(10) UNSIGNED NOT NULL,
  `length_days` decimal(6,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_leave_entitlement`
--

INSERT INTO `ohrm_leave_leave_entitlement` (`id`, `leave_id`, `entitlement_id`, `length_days`) VALUES
(9, 11, 1, '1.0000'),
(10, 12, 1, '1.0000'),
(11, 15, 1, '1.0000'),
(12, 16, 1, '1.0000'),
(13, 17, 1, '1.0000');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_period_history`
--

CREATE TABLE `ohrm_leave_period_history` (
  `id` int(11) NOT NULL,
  `leave_period_start_month` int(11) NOT NULL,
  `leave_period_start_day` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_period_history`
--

INSERT INTO `ohrm_leave_period_history` (`id`, `leave_period_start_month`, `leave_period_start_day`, `created_at`) VALUES
(1, 1, 16, '2018-01-23'),
(2, 1, 16, '2018-01-23'),
(3, 1, 16, '2018-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_request`
--

CREATE TABLE `ohrm_leave_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `date_applied` date NOT NULL,
  `emp_number` int(7) NOT NULL,
  `comments` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_request`
--

INSERT INTO `ohrm_leave_request` (`id`, `leave_type_id`, `date_applied`, `emp_number`, `comments`) VALUES
(1, 2, '2018-01-23', 2, 'testing leave app'),
(2, 2, '2018-01-24', 2, 'break off work');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_request_comment`
--

CREATE TABLE `ohrm_leave_request_comment` (
  `id` int(11) NOT NULL,
  `leave_request_id` int(10) UNSIGNED NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by_name` varchar(255) NOT NULL,
  `created_by_id` int(10) DEFAULT NULL,
  `created_by_emp_number` int(7) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_request_comment`
--

INSERT INTO `ohrm_leave_request_comment` (`id`, `leave_request_id`, `created`, `created_by_name`, `created_by_id`, `created_by_emp_number`, `comments`) VALUES
(1, 1, '2018-01-23 18:07:01', 'Admin', 1, NULL, 'testing leave app'),
(2, 2, '2018-01-24 09:09:46', 'kasolo Mwanje', 2, 2, 'break off work');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_status`
--

CREATE TABLE `ohrm_leave_status` (
  `id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_status`
--

INSERT INTO `ohrm_leave_status` (`id`, `status`, `name`) VALUES
(1, -1, 'REJECTED'),
(2, 0, 'CANCELLED'),
(3, 1, 'PENDING APPROVAL'),
(4, 2, 'SCHEDULED'),
(5, 3, 'TAKEN'),
(6, 4, 'WEEKEND'),
(7, 5, 'HOLIDAY');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_type`
--

CREATE TABLE `ohrm_leave_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `exclude_in_reports_if_no_entitlement` tinyint(1) NOT NULL DEFAULT '0',
  `operational_country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_type`
--

INSERT INTO `ohrm_leave_type` (`id`, `name`, `deleted`, `exclude_in_reports_if_no_entitlement`, `operational_country_id`) VALUES
(1, 'Sick Leave', 0, 1, NULL),
(2, 'Normal Leave', 1, 1, NULL),
(3, 'Annual Leave', 0, 0, NULL),
(4, 'Personal Leave', 0, 0, NULL),
(5, 'Maternity Leave', 0, 0, NULL),
(6, 'Paternity Leave', 0, 0, NULL),
(7, 'Unpaid Leave', 0, 0, NULL),
(8, 'Carers Leave', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_license`
--

CREATE TABLE `ohrm_license` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_location`
--

CREATE TABLE `ohrm_location` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `country_code` varchar(3) NOT NULL,
  `province` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(35) DEFAULT NULL,
  `phone` varchar(35) DEFAULT NULL,
  `fax` varchar(35) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_login`
--

CREATE TABLE `ohrm_login` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_role_name` text NOT NULL,
  `user_role_predefined` tinyint(1) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_login`
--

INSERT INTO `ohrm_login` (`id`, `user_id`, `user_name`, `user_role_name`, `user_role_predefined`, `login_time`) VALUES
(1, 1, 'Admin', 'Admin', 1, '2018-01-23 08:41:15'),
(2, 1, 'Admin', 'Admin', 1, '2018-01-23 09:06:41'),
(3, 1, 'Admin', 'Admin', 1, '2018-01-23 09:15:19'),
(4, 1, 'Admin', 'Admin', 1, '2018-01-23 09:38:38'),
(5, 1, 'Admin', 'Admin', 1, '2018-01-23 11:37:06'),
(6, 1, 'Admin', 'Admin', 1, '2018-01-23 14:36:40'),
(7, 1, 'Admin', 'Admin', 1, '2018-01-23 14:37:29'),
(8, 1, 'Admin', 'Admin', 1, '2018-01-23 16:16:13'),
(9, 1, 'Admin', 'Admin', 1, '2018-01-23 16:21:00'),
(10, 1, 'Admin', 'Admin', 1, '2018-01-23 16:22:20'),
(11, 2, 'kasolo', 'ESS', 1, '2018-01-23 16:50:04'),
(12, 2, 'kasolo', 'ESS', 1, '2018-01-23 16:52:20'),
(13, 1, 'Admin', 'Admin', 1, '2018-01-23 16:57:33'),
(14, 1, 'Admin', 'Admin', 1, '2018-01-23 17:18:01'),
(15, 1, 'Admin', 'Admin', 1, '2018-01-24 07:13:11'),
(16, 1, 'Admin', 'Admin', 1, '2018-01-24 07:23:29'),
(17, 1, 'Admin', 'Admin', 1, '2018-01-24 07:24:00'),
(18, 1, 'Admin', 'Admin', 1, '2018-01-24 07:57:06'),
(19, 1, 'Admin', 'Admin', 1, '2018-01-24 07:58:46'),
(20, 2, 'kasolo', 'ESS', 1, '2018-01-24 08:08:09'),
(21, 1, 'Admin', 'Admin', 1, '2018-01-24 09:39:52'),
(22, 1, 'Admin', 'Admin', 1, '2018-01-24 09:56:24'),
(23, 1, 'Admin', 'Admin', 1, '2018-01-24 10:13:05'),
(24, 1, 'Admin', 'Admin', 1, '2018-01-24 11:09:51'),
(25, 2, 'kasolo', 'ESS', 1, '2018-01-24 11:11:18'),
(26, 1, 'Admin', 'Admin', 1, '2018-01-24 11:26:35'),
(27, 2, 'kasolo', 'ESS', 1, '2018-01-24 11:30:43'),
(28, 1, 'Admin', 'Admin', 1, '2018-01-25 18:23:02'),
(29, 1, 'Admin', 'Admin', 1, '2018-01-25 18:23:02'),
(30, 1, 'Admin', 'Admin', 1, '2018-01-25 18:23:03'),
(31, 1, 'Admin', 'Admin', 1, '2018-01-25 18:23:05'),
(32, 1, 'Admin', 'Admin', 1, '2018-01-25 18:23:06'),
(33, 1, 'Admin', 'Admin', 1, '2018-01-25 18:23:06'),
(34, 1, 'Admin', 'Admin', 1, '2018-01-25 18:23:08'),
(35, 1, 'Admin', 'Admin', 1, '2018-01-25 18:23:44'),
(36, 1, 'Admin', 'Admin', 1, '2018-01-25 19:16:12'),
(37, 1, 'Admin', 'Admin', 1, '2018-01-25 19:27:48'),
(38, 1, 'Admin', 'Admin', 1, '2018-01-25 20:04:36'),
(39, 2, 'kasolo', 'ESS', 1, '2018-01-25 20:07:15'),
(40, 1, 'Admin', 'Admin', 1, '2018-01-25 20:14:26'),
(41, 1, 'Admin', 'Admin', 1, '2018-01-25 20:31:35'),
(42, 2, 'kasolo', 'ESS', 1, '2018-01-25 20:39:03'),
(43, 2, 'kasolo', 'ESS', 1, '2018-01-25 20:39:04'),
(44, 1, 'Admin', 'Admin', 1, '2018-01-29 08:32:33'),
(45, 1, 'Admin', 'Admin', 1, '2018-01-29 08:43:42'),
(46, 1, 'Admin', 'Admin', 1, '2018-01-29 09:05:15'),
(47, 1, 'Admin', 'Admin', 1, '2018-01-29 09:11:36'),
(48, 1, 'Admin', 'Admin', 1, '2018-01-29 09:19:25'),
(49, 1, 'Admin', 'Admin', 1, '2018-01-29 10:06:45'),
(50, 1, 'Admin', 'Admin', 1, '2018-01-29 11:39:58'),
(51, 1, 'Admin', 'Admin', 1, '2018-01-29 18:42:11'),
(52, 2, 'kasolo', 'ESS', 1, '2018-01-29 18:50:59'),
(53, 2, 'kasolo', 'ESS', 1, '2018-01-30 19:58:28'),
(54, 1, 'Admin', 'Admin', 1, '2018-01-30 20:00:40'),
(55, 1, 'Admin', 'Admin', 1, '2018-01-30 20:03:04'),
(56, 1, 'Admin', 'Admin', 1, '2018-02-01 18:00:44'),
(57, 1, 'Admin', 'Admin', 1, '2018-02-05 13:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_membership`
--

CREATE TABLE `ohrm_membership` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_menu_item`
--

CREATE TABLE `ohrm_menu_item` (
  `id` int(11) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `screen_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` tinyint(4) NOT NULL,
  `order_hint` int(11) NOT NULL,
  `url_extras` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_menu_item`
--

INSERT INTO `ohrm_menu_item` (`id`, `menu_title`, `screen_id`, `parent_id`, `level`, `order_hint`, `url_extras`, `status`) VALUES
(1, 'Admin', 74, NULL, 1, 100, NULL, 1),
(2, 'User Management', NULL, 1, 2, 100, NULL, 1),
(3, 'Project Info', NULL, 52, 2, 400, NULL, 0),
(4, 'Customers', 36, 3, 3, 100, NULL, 0),
(5, 'Projects', 37, 3, 3, 200, NULL, 0),
(6, 'Job', NULL, 1, 2, 300, NULL, 1),
(7, 'Job Titles', 23, 6, 3, 100, NULL, 1),
(8, 'Pay Grades', 24, 6, 3, 200, NULL, 1),
(9, 'Employment Status', 25, 6, 3, 300, NULL, 1),
(10, 'Job Categories', 26, 6, 3, 400, NULL, 1),
(11, 'Work Shifts', 27, 6, 3, 500, NULL, 1),
(12, 'Organization', NULL, 1, 2, 400, NULL, 1),
(13, 'General Information', 20, 12, 3, 100, NULL, 1),
(14, 'Locations', 21, 12, 3, 200, NULL, 1),
(15, 'Structure', 22, 12, 3, 300, NULL, 1),
(16, 'Qualifications', NULL, 1, 2, 500, NULL, 1),
(17, 'Skills', 28, 16, 3, 100, NULL, 1),
(18, 'Education', 29, 16, 3, 200, NULL, 1),
(19, 'Licenses', 30, 16, 3, 300, NULL, 1),
(20, 'Languages', 31, 16, 3, 400, NULL, 1),
(21, 'Memberships', 32, 16, 3, 500, NULL, 1),
(22, 'Nationalities', 33, 1, 2, 700, NULL, 1),
(23, 'Configuration', NULL, 1, 2, 900, NULL, 1),
(24, 'Email Configuration', 34, 23, 3, 100, NULL, 1),
(25, 'Email Subscriptions', 35, 23, 3, 200, NULL, 1),
(27, 'Localization', 38, 23, 3, 300, NULL, 1),
(28, 'Modules', 39, 23, 3, 400, NULL, 1),
(30, 'PIM', 75, NULL, 1, 200, NULL, 1),
(31, 'Configuration', NULL, 30, 2, 100, NULL, 1),
(32, 'Optional Fields', 40, 31, 3, 100, NULL, 1),
(33, 'Custom Fields', 41, 31, 3, 200, NULL, 1),
(34, 'Data Import', 42, 31, 3, 300, NULL, 1),
(35, 'Reporting Methods', 43, 31, 3, 400, NULL, 1),
(36, 'Termination Reasons', 44, 31, 3, 500, NULL, 1),
(37, 'Employee List', 5, 30, 2, 200, '/reset/1', 1),
(38, 'Add Employee', 4, 30, 2, 300, NULL, 1),
(39, 'Reports', 45, 30, 2, 400, '/reportGroup/3/reportType/PIM_DEFINED', 1),
(40, 'My Info', 46, NULL, 1, 700, NULL, 1),
(41, 'Leave', 68, NULL, 1, 300, NULL, 1),
(42, 'Configure', NULL, 41, 2, 500, NULL, 0),
(43, 'Leave Period', 47, 42, 3, 100, NULL, 1),
(44, 'Leave Types', 7, 42, 3, 200, NULL, 1),
(45, 'Work Week', 14, 42, 3, 300, NULL, 1),
(46, 'Holidays', 11, 42, 3, 400, NULL, 1),
(48, 'Leave List', 16, 41, 2, 600, '/reset/1', 1),
(49, 'Assign Leave', 17, 41, 2, 700, NULL, 1),
(50, 'My Leave', 48, 41, 2, 200, '/reset/1', 1),
(51, 'Apply', 49, 41, 2, 100, NULL, 1),
(52, 'Time', 67, NULL, 1, 400, NULL, 1),
(53, 'Timesheets', NULL, 52, 2, 100, NULL, 1),
(54, 'My Timesheets', 51, 53, 3, 100, NULL, 0),
(55, 'Employee Timesheets', 52, 53, 3, 200, NULL, 0),
(56, 'Attendance', NULL, 52, 2, 200, NULL, 1),
(57, 'My Records', 53, 56, 3, 100, NULL, 0),
(58, 'Punch In/Out', 54, 56, 3, 200, NULL, 0),
(59, 'Employee Records', 55, 56, 3, 300, NULL, 0),
(60, 'Configuration', 56, 56, 3, 400, NULL, 0),
(61, 'Reports', NULL, 52, 2, 300, NULL, 1),
(62, 'Project Reports', 57, 61, 3, 100, '?reportId=1', 0),
(63, 'Employee Reports', 58, 61, 3, 200, '?reportId=2', 0),
(64, 'Attendance Summary', 59, 61, 3, 300, '?reportId=4', 0),
(65, 'Recruitment', 76, NULL, 1, 500, NULL, 1),
(66, 'Candidates', 60, 65, 2, 100, NULL, 1),
(67, 'Vacancies', 61, 65, 2, 200, NULL, 1),
(74, 'Entitlements', NULL, 41, 2, 300, NULL, 0),
(75, 'Add Entitlements', 72, 74, 3, 100, NULL, 1),
(76, 'My Entitlements', 70, 74, 3, 300, '/reset/1', 1),
(77, 'Employee Entitlements', 69, 74, 3, 200, '/reset/1', 1),
(78, 'Reports', NULL, 41, 2, 400, NULL, 0),
(79, 'Leave Entitlements and Usage Report', 78, 78, 3, 100, NULL, 1),
(80, 'My Leave Entitlements and Usage Report', 79, 78, 3, 200, NULL, 1),
(81, 'Users', 1, 2, 3, 100, NULL, 1),
(82, 'Dashboard', 103, NULL, 1, 800, NULL, 1),
(83, 'Performance', NULL, NULL, 1, 700, '', 1),
(84, 'Configure', NULL, 83, 2, 100, '', 1),
(85, 'Manage Reviews', NULL, 83, 2, 200, '', 1),
(86, 'KPIs', 105, 84, 3, 100, '', 1),
(87, 'Manage Reviews', 111, 85, 3, 100, '', 1),
(88, 'My Reviews', 106, 85, 3, 200, '', 1),
(89, 'Review List', 110, 85, 3, 300, '', 1),
(90, 'Trackers', 112, 84, 3, 200, NULL, 1),
(91, 'Employee Trackers', 113, 83, 2, 800, NULL, 1),
(92, 'My Trackers', 114, 83, 2, 700, NULL, 1),
(93, 'Directory', 116, NULL, 1, 1000, '/reset/1', 1),
(94, 'Social Media Authentication', 117, 23, 3, 500, NULL, 1),
(95, 'Register OAuth Client', 118, 23, 3, 600, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_module`
--

CREATE TABLE `ohrm_module` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_module`
--

INSERT INTO `ohrm_module` (`id`, `name`, `status`) VALUES
(1, 'core', 1),
(2, 'admin', 1),
(3, 'pim', 1),
(4, 'leave', 1),
(5, 'time', 0),
(6, 'attendance', 0),
(7, 'recruitment', 0),
(8, 'recruitmentApply', 0),
(9, 'communication', 1),
(10, 'dashboard', 1),
(11, 'performance', 0),
(12, 'directory', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_module_default_page`
--

CREATE TABLE `ohrm_module_default_page` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `enable_class` varchar(100) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0' COMMENT 'lowest priority 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_module_default_page`
--

INSERT INTO `ohrm_module_default_page` (`id`, `module_id`, `user_role_id`, `action`, `enable_class`, `priority`) VALUES
(1, 2, 1, 'admin/viewSystemUsers', NULL, 20),
(2, 3, 1, 'pim/viewEmployeeList', NULL, 20),
(3, 3, 3, 'pim/viewEmployeeList', NULL, 10),
(4, 3, 2, 'pim/viewMyDetails', NULL, 0),
(5, 4, 1, 'leave/viewLeaveList/reset/1', NULL, 20),
(6, 4, 3, 'leave/viewLeaveList/reset/1', NULL, 10),
(7, 4, 2, 'leave/viewMyLeaveList', NULL, 0),
(8, 4, 1, 'leave/defineLeavePeriod', 'LeavePeriodDefinedHomePageEnabler', 100),
(9, 4, 2, 'leave/showLeavePeriodNotDefinedWarning', 'LeavePeriodDefinedHomePageEnabler', 90),
(10, 5, 1, 'time/viewEmployeeTimesheet', NULL, 20),
(11, 5, 2, 'time/viewMyTimesheet', NULL, 0),
(12, 5, 1, 'time/defineTimesheetPeriod', 'TimesheetPeriodDefinedHomePageEnabler', 100),
(13, 5, 2, 'time/timesheetPeriodNotDefined', 'TimesheetPeriodDefinedHomePageEnabler', 100),
(14, 7, 1, 'recruitment/viewCandidates', NULL, 20),
(15, 7, 5, 'recruitment/viewCandidates', NULL, 10),
(16, 7, 6, 'recruitment/viewCandidates', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_nationality`
--

CREATE TABLE `ohrm_nationality` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_nationality`
--

INSERT INTO `ohrm_nationality` (`id`, `name`) VALUES
(1, 'Afghan'),
(2, 'Albanian'),
(3, 'Algerian'),
(4, 'American'),
(5, 'Andorran'),
(6, 'Angolan'),
(7, 'Antiguans'),
(8, 'Argentinean'),
(9, 'Armenian'),
(10, 'Australian'),
(11, 'Austrian'),
(12, 'Azerbaijani'),
(13, 'Bahamian'),
(14, 'Bahraini'),
(15, 'Bangladeshi'),
(16, 'Barbadian'),
(17, 'Barbudans'),
(18, 'Batswana'),
(19, 'Belarusian'),
(20, 'Belgian'),
(21, 'Belizean'),
(22, 'Beninese'),
(23, 'Bhutanese'),
(24, 'Bolivian'),
(25, 'Bosnian'),
(26, 'Brazilian'),
(27, 'British'),
(28, 'Bruneian'),
(29, 'Bulgarian'),
(30, 'Burkinabe'),
(31, 'Burmese'),
(32, 'Burundian'),
(33, 'Cambodian'),
(34, 'Cameroonian'),
(35, 'Canadian'),
(36, 'Cape Verdean'),
(37, 'Central African'),
(38, 'Chadian'),
(39, 'Chilean'),
(40, 'Chinese'),
(41, 'Colombian'),
(42, 'Comoran'),
(43, 'Congolese'),
(44, 'Costa Rican'),
(45, 'Croatian'),
(46, 'Cuban'),
(47, 'Cypriot'),
(48, 'Czech'),
(49, 'Danish'),
(50, 'Djibouti'),
(51, 'Dominican'),
(52, 'Dutch'),
(53, 'East Timorese'),
(54, 'Ecuadorean'),
(55, 'Egyptian'),
(56, 'Emirian'),
(57, 'Equatorial Guinean'),
(58, 'Eritrean'),
(59, 'Estonian'),
(60, 'Ethiopian'),
(61, 'Fijian'),
(62, 'Filipino'),
(63, 'Finnish'),
(64, 'French'),
(65, 'Gabonese'),
(66, 'Gambian'),
(67, 'Georgian'),
(68, 'German'),
(69, 'Ghanaian'),
(70, 'Greek'),
(71, 'Grenadian'),
(72, 'Guatemalan'),
(73, 'Guinea-Bissauan'),
(74, 'Guinean'),
(75, 'Guyanese'),
(76, 'Haitian'),
(77, 'Herzegovinian'),
(78, 'Honduran'),
(79, 'Hungarian'),
(80, 'I-Kiribati'),
(81, 'Icelander'),
(82, 'Indian'),
(83, 'Indonesian'),
(84, 'Iranian'),
(85, 'Iraqi'),
(86, 'Irish'),
(87, 'Israeli'),
(88, 'Italian'),
(89, 'Ivorian'),
(90, 'Jamaican'),
(91, 'Japanese'),
(92, 'Jordanian'),
(93, 'Kazakhstani'),
(94, 'Kenyan'),
(95, 'Kittian and Nevisian'),
(96, 'Kuwaiti'),
(97, 'Kyrgyz'),
(98, 'Laotian'),
(99, 'Latvian'),
(100, 'Lebanese'),
(101, 'Liberian'),
(102, 'Libyan'),
(103, 'Liechtensteiner'),
(104, 'Lithuanian'),
(105, 'Luxembourger'),
(106, 'Macedonian'),
(107, 'Malagasy'),
(108, 'Malawian'),
(109, 'Malaysian'),
(110, 'Maldivan'),
(111, 'Malian'),
(112, 'Maltese'),
(113, 'Marshallese'),
(114, 'Mauritanian'),
(115, 'Mauritian'),
(116, 'Mexican'),
(117, 'Micronesian'),
(118, 'Moldovan'),
(119, 'Monacan'),
(120, 'Mongolian'),
(121, 'Moroccan'),
(122, 'Mosotho'),
(123, 'Motswana'),
(124, 'Mozambican'),
(125, 'Namibian'),
(126, 'Nauruan'),
(127, 'Nepalese'),
(128, 'New Zealander'),
(129, 'Nicaraguan'),
(130, 'Nigerian'),
(131, 'Nigerien'),
(132, 'North Korean'),
(133, 'Northern Irish'),
(134, 'Norwegian'),
(135, 'Omani'),
(136, 'Pakistani'),
(137, 'Palauan'),
(138, 'Panamanian'),
(139, 'Papua New Guinean'),
(140, 'Paraguayan'),
(141, 'Peruvian'),
(142, 'Polish'),
(143, 'Portuguese'),
(144, 'Qatari'),
(145, 'Romanian'),
(146, 'Russian'),
(147, 'Rwandan'),
(148, 'Saint Lucian'),
(149, 'Salvadoran'),
(150, 'Samoan'),
(151, 'San Marinese'),
(152, 'Sao Tomean'),
(153, 'Saudi'),
(154, 'Scottish'),
(155, 'Senegalese'),
(156, 'Serbian'),
(157, 'Seychellois'),
(158, 'Sierra Leonean'),
(159, 'Singaporean'),
(160, 'Slovakian'),
(161, 'Slovenian'),
(162, 'Solomon Islander'),
(163, 'Somali'),
(164, 'South African'),
(165, 'South Korean'),
(166, 'Spanish'),
(167, 'Sri Lankan'),
(168, 'Sudanese'),
(169, 'Surinamer'),
(170, 'Swazi'),
(171, 'Swedish'),
(172, 'Swiss'),
(173, 'Syrian'),
(174, 'Taiwanese'),
(175, 'Tajik'),
(176, 'Tanzanian'),
(177, 'Thai'),
(178, 'Togolese'),
(179, 'Tongan'),
(180, 'Trinidadian or Tobagonian'),
(181, 'Tunisian'),
(182, 'Turkish'),
(183, 'Tuvaluan'),
(184, 'Ugandan'),
(185, 'Ukrainian'),
(186, 'Uruguayan'),
(187, 'Uzbekistani'),
(188, 'Venezuelan'),
(189, 'Vietnamese'),
(190, 'Welsh'),
(191, 'Yemenite'),
(192, 'Zambian'),
(193, 'Zimbabwean');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_access_token`
--

CREATE TABLE `ohrm_oauth_access_token` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_authorization_code`
--

CREATE TABLE `ohrm_oauth_authorization_code` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_client`
--

CREATE TABLE `ohrm_oauth_client` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_refresh_token`
--

CREATE TABLE `ohrm_oauth_refresh_token` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_user`
--

CREATE TABLE `ohrm_oauth_user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_openid_provider`
--

CREATE TABLE `ohrm_openid_provider` (
  `id` int(10) NOT NULL,
  `provider_name` varchar(40) DEFAULT NULL,
  `provider_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_openid_user_identity`
--

CREATE TABLE `ohrm_openid_user_identity` (
  `user_id` int(10) DEFAULT NULL,
  `provider_id` int(10) DEFAULT NULL,
  `user_identity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_operational_country`
--

CREATE TABLE `ohrm_operational_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_organization_gen_info`
--

CREATE TABLE `ohrm_organization_gen_info` (
  `id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_id` varchar(30) DEFAULT NULL,
  `registration_number` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zip_code` varchar(30) DEFAULT NULL,
  `street1` varchar(100) DEFAULT NULL,
  `street2` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_organization_gen_info`
--

INSERT INTO `ohrm_organization_gen_info` (`id`, `name`, `tax_id`, `registration_number`, `phone`, `fax`, `email`, `country`, `province`, `city`, `zip_code`, `street1`, `street2`, `note`) VALUES
(1, 'Central Public Health Laboratories', '', '', '', '', '', 'UG', '', 'Kampala', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_pay_grade`
--

CREATE TABLE `ohrm_pay_grade` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_pay_grade_currency`
--

CREATE TABLE `ohrm_pay_grade_currency` (
  `pay_grade_id` int(11) NOT NULL,
  `currency_id` varchar(6) NOT NULL DEFAULT '',
  `min_salary` double DEFAULT NULL,
  `max_salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_performance_review`
--

CREATE TABLE `ohrm_performance_review` (
  `id` int(7) NOT NULL,
  `status_id` int(7) DEFAULT NULL,
  `employee_number` int(7) DEFAULT NULL,
  `work_period_start` date DEFAULT NULL,
  `work_period_end` date DEFAULT NULL,
  `job_title_code` int(7) DEFAULT NULL,
  `department_id` int(7) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `completed_date` date DEFAULT NULL,
  `activated_date` datetime DEFAULT NULL,
  `final_comment` text CHARACTER SET utf8 COLLATE utf8_bin,
  `final_rate` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_performance_track`
--

CREATE TABLE `ohrm_performance_track` (
  `id` int(11) NOT NULL,
  `emp_number` int(7) NOT NULL,
  `tracker_name` varchar(200) NOT NULL,
  `added_date` timestamp NULL DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_performance_tracker_log`
--

CREATE TABLE `ohrm_performance_tracker_log` (
  `id` int(11) NOT NULL,
  `performance_track_id` int(11) DEFAULT NULL,
  `log` varchar(150) DEFAULT NULL,
  `comment` varchar(3000) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `added_date` timestamp NULL DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `reviewer_id` int(7) DEFAULT NULL,
  `achievement` varchar(45) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_performance_tracker_reviewer`
--

CREATE TABLE `ohrm_performance_tracker_reviewer` (
  `id` int(11) NOT NULL,
  `performance_track_id` int(11) NOT NULL,
  `reviewer_id` int(7) NOT NULL,
  `added_date` timestamp NULL DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_plugin`
--

CREATE TABLE `ohrm_plugin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `version` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_project`
--

CREATE TABLE `ohrm_project` (
  `project_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_project_activity`
--

CREATE TABLE `ohrm_project_activity` (
  `activity_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(110) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_project_admin`
--

CREATE TABLE `ohrm_project_admin` (
  `project_id` int(11) NOT NULL,
  `emp_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_report`
--

CREATE TABLE `ohrm_report` (
  `report_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `use_filter_field` tinyint(1) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_report`
--

INSERT INTO `ohrm_report` (`report_id`, `name`, `report_group_id`, `use_filter_field`, `type`) VALUES
(1, 'Project Report', 1, 1, NULL),
(2, 'Employee Report', 1, 1, NULL),
(3, 'Project Activity Details', 1, 1, NULL),
(4, 'Attendance Total Summary Report', 2, 0, NULL),
(5, 'PIM Sample Report', 3, 1, 'PIM_DEFINED');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_report_group`
--

CREATE TABLE `ohrm_report_group` (
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `core_sql` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_report_group`
--

INSERT INTO `ohrm_report_group` (`report_group_id`, `name`, `core_sql`) VALUES
(1, 'timesheet', 'SELECT selectCondition FROM ohrm_project_activity LEFT JOIN (SELECT * FROM ohrm_timesheet_item WHERE whereCondition1) AS ohrm_timesheet_item  ON (ohrm_timesheet_item.activity_id = ohrm_project_activity.activity_id) LEFT JOIN ohrm_project ON (ohrm_project.project_id = ohrm_project_activity.project_id) LEFT JOIN hs_hr_employee ON (hs_hr_employee.emp_number = ohrm_timesheet_item.employee_id) LEFT JOIN ohrm_timesheet ON (ohrm_timesheet.timesheet_id = ohrm_timesheet_item.timesheet_id) LEFT JOIN ohrm_customer ON (ohrm_customer.customer_id = ohrm_project.customer_id) WHERE whereCondition2 groupByClause ORDER BY ohrm_customer.name, ohrm_project.name, ohrm_project_activity.name, hs_hr_employee.emp_lastname, hs_hr_employee.emp_firstname'),
(2, 'attendance', 'SELECT selectCondition FROM hs_hr_employee LEFT JOIN (SELECT * FROM ohrm_attendance_record WHERE ( ( ohrm_attendance_record.punch_in_user_time BETWEEN "#@fromDate@,@1970-01-01@#" AND #@"toDate"@,@CURDATE()@# ) AND ( ohrm_attendance_record.punch_out_user_time BETWEEN "#@fromDate@,@1970-01-01@#" AND #@"toDate"@,@CURDATE()@# ) ) ) AS ohrm_attendance_record ON (hs_hr_employee.emp_number = ohrm_attendance_record.employee_id) WHERE hs_hr_employee.emp_number = #@employeeId@,@hs_hr_employee.emp_number AND (hs_hr_employee.termination_id is null) @# AND (hs_hr_employee.job_title_code = #@"jobTitle")@,@hs_hr_employee.job_title_code OR hs_hr_employee.job_title_code is null)@# AND (hs_hr_employee.work_station IN (#@subUnit)@,@SELECT id FROM ohrm_subunit) OR hs_hr_employee.work_station is null@#) AND (hs_hr_employee.emp_status = #@"employeeStatus")@,@hs_hr_employee.emp_status OR hs_hr_employee.emp_status is null)@# groupByClause ORDER BY hs_hr_employee.emp_lastname, hs_hr_employee.emp_firstname'),
(3, 'pim', 'SELECT selectCondition FROM hs_hr_employee \n                    LEFT JOIN hs_hr_emp_emergency_contacts ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_emergency_contacts.emp_number) \n                    LEFT JOIN ohrm_subunit ON \n                        (hs_hr_employee.work_station = ohrm_subunit.id) \n                    LEFT JOIN ohrm_employment_status ON \n                        (hs_hr_employee.emp_status = ohrm_employment_status.id) \n                    LEFT JOIN ohrm_job_title ON\n                        (hs_hr_employee.job_title_code = ohrm_job_title.id)\n                    LEFT JOIN ohrm_job_category ON \n                        (hs_hr_employee.eeo_cat_code = ohrm_job_category.id) \n                    LEFT JOIN ohrm_nationality ON\n                        (hs_hr_employee.nation_code = ohrm_nationality.id)\n                    LEFT JOIN hs_hr_emp_dependents ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_dependents.emp_number)\n                    LEFT JOIN hs_hr_emp_locations AS emp_location ON\n                        (hs_hr_employee.emp_number = emp_location.emp_number)\n                    LEFT JOIN ohrm_location ON\n                        (emp_location.location_id = ohrm_location.id)\n                    LEFT JOIN hs_hr_emp_contract_extend ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_contract_extend.emp_number) \n                    LEFT JOIN hs_hr_emp_basicsalary ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_basicsalary.emp_number) \n                    LEFT JOIN ohrm_pay_grade ON \n                        (hs_hr_emp_basicsalary.sal_grd_code = ohrm_pay_grade.id) \n                    LEFT JOIN hs_hr_currency_type ON \n                        (hs_hr_emp_basicsalary.currency_id = hs_hr_currency_type.currency_id) \n                    LEFT JOIN hs_hr_payperiod ON \n                        (hs_hr_emp_basicsalary.payperiod_code = hs_hr_payperiod.payperiod_code) \n                    LEFT JOIN hs_hr_emp_passport ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_passport.emp_number) \n                    LEFT JOIN hs_hr_emp_reportto AS subordinate_list ON \n                        (hs_hr_employee.emp_number = subordinate_list.erep_sup_emp_number) \n                    LEFT JOIN hs_hr_employee AS subordinate ON\n                        (subordinate.emp_number = subordinate_list.erep_sub_emp_number)\n                    LEFT JOIN ohrm_emp_reporting_method AS subordinate_reporting_method ON \n                        (subordinate_list.erep_reporting_mode = subordinate_reporting_method.reporting_method_id) \n                    LEFT JOIN hs_hr_emp_work_experience ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_work_experience.emp_number) \n                    LEFT JOIN ohrm_emp_education ON \n                        (hs_hr_employee.emp_number = ohrm_emp_education.emp_number) \n                    LEFT JOIN ohrm_education ON \n                        (ohrm_emp_education.education_id = ohrm_education.id) \n                    LEFT JOIN hs_hr_emp_skill ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_skill.emp_number) \n                    LEFT JOIN ohrm_skill ON \n                        (hs_hr_emp_skill.skill_id = ohrm_skill.id) \n                    LEFT JOIN hs_hr_emp_language ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_language.emp_number) \n                    LEFT JOIN ohrm_language ON \n                        (hs_hr_emp_language.lang_id = ohrm_language.id) \n                    LEFT JOIN ohrm_emp_license ON \n                        (hs_hr_employee.emp_number = ohrm_emp_license.emp_number) \n                    LEFT JOIN ohrm_license ON \n                        (ohrm_emp_license.license_id = ohrm_license.id) \n                    LEFT JOIN hs_hr_emp_member_detail ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_member_detail.emp_number) \n                    LEFT JOIN ohrm_membership ON\n                        (hs_hr_emp_member_detail.membship_code = ohrm_membership.id)\n                    LEFT JOIN hs_hr_country ON \n                        (hs_hr_employee.coun_code = hs_hr_country.cou_code) \n                    LEFT JOIN hs_hr_emp_directdebit ON \n                        (hs_hr_emp_basicsalary.id = hs_hr_emp_directdebit.salary_id) \n                    LEFT JOIN hs_hr_emp_reportto AS supervisor_list ON \n                        (hs_hr_employee.emp_number = supervisor_list.erep_sub_emp_number) \n                    LEFT JOIN hs_hr_employee AS supervisor ON\n                        (supervisor.emp_number = supervisor_list.erep_sup_emp_number)\n                    LEFT JOIN ohrm_emp_reporting_method AS supervisor_reporting_method ON \n                        (supervisor_list.erep_reporting_mode = supervisor_reporting_method.reporting_method_id) \n                    LEFT JOIN ohrm_emp_termination ON\n                        (hs_hr_employee.termination_id = ohrm_emp_termination.id)\n                    LEFT JOIN ohrm_emp_termination_reason ON\n                        (ohrm_emp_termination.reason_id = ohrm_emp_termination_reason.id)\n                WHERE hs_hr_employee.emp_number in (\n                    SELECT hs_hr_employee.emp_number FROM hs_hr_employee\n                        LEFT JOIN hs_hr_emp_basicsalary ON \n                            (hs_hr_employee.emp_number = hs_hr_emp_basicsalary.emp_number) \n                        LEFT JOIN ohrm_emp_education ON \n                            (hs_hr_employee.emp_number = ohrm_emp_education.emp_number) \n                        LEFT JOIN hs_hr_emp_skill ON \n                            (hs_hr_employee.emp_number = hs_hr_emp_skill.emp_number) \n                        LEFT JOIN hs_hr_emp_language ON \n                            (hs_hr_employee.emp_number = hs_hr_emp_language.emp_number) \n                    WHERE whereCondition1\n                )\n                GROUP BY \n                     hs_hr_employee.emp_number,\n                     hs_hr_employee.emp_lastname,\n                     hs_hr_employee.emp_firstname,\n                     hs_hr_employee.emp_middle_name,\n                     hs_hr_employee.emp_birthday,\n                     ohrm_nationality.name,\n                     hs_hr_employee.emp_gender,\n                     hs_hr_employee.emp_marital_status,\n                     hs_hr_employee.emp_dri_lice_num,\n                     hs_hr_employee.emp_dri_lice_exp_date,\n                     hs_hr_employee.emp_street1,\n                     hs_hr_employee.emp_street2,\n                     hs_hr_employee.city_code,\n                     hs_hr_employee.provin_code,\n                     hs_hr_employee.emp_zipcode,\n                     hs_hr_country.cou_code,\n                     hs_hr_employee.emp_hm_telephone,\n                     hs_hr_employee.emp_mobile,\n                     hs_hr_employee.emp_work_telephone,\n                     hs_hr_employee.emp_work_email,\n                     hs_hr_employee.emp_oth_email\n\nORDER BY hs_hr_employee.emp_lastname\n');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_reviewer`
--

CREATE TABLE `ohrm_reviewer` (
  `id` int(7) NOT NULL,
  `review_id` int(7) DEFAULT NULL,
  `employee_number` int(7) DEFAULT NULL,
  `status` int(7) DEFAULT NULL,
  `reviewer_group_id` int(7) DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_reviewer_group`
--

CREATE TABLE `ohrm_reviewer_group` (
  `id` int(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `piority` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_reviewer_group`
--

INSERT INTO `ohrm_reviewer_group` (`id`, `name`, `piority`) VALUES
(1, 'Supervisor', 1),
(2, 'Employee', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_reviewer_rating`
--

CREATE TABLE `ohrm_reviewer_rating` (
  `id` int(11) NOT NULL,
  `rating` decimal(18,2) DEFAULT NULL,
  `kpi_id` int(7) DEFAULT NULL,
  `review_id` int(7) DEFAULT NULL,
  `reviewer_id` int(7) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_role_user_selection_rule`
--

CREATE TABLE `ohrm_role_user_selection_rule` (
  `user_role_id` int(10) NOT NULL,
  `selection_rule_id` int(10) NOT NULL,
  `configurable_params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_screen`
--

CREATE TABLE `ohrm_screen` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `module_id` int(11) NOT NULL,
  `action_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_screen`
--

INSERT INTO `ohrm_screen` (`id`, `name`, `module_id`, `action_url`) VALUES
(1, 'User List', 2, 'viewSystemUsers'),
(2, 'Add/Edit System User', 2, 'saveSystemUser'),
(3, 'Delete System Users', 2, 'deleteSystemUsers'),
(4, 'Add Employee', 3, 'addEmployee'),
(5, 'View Employee List', 3, 'viewEmployeeList'),
(6, 'Delete Employees', 3, 'deleteEmployees'),
(7, 'Leave Type List', 4, 'leaveTypeList'),
(8, 'Define Leave Type', 4, 'defineLeaveType'),
(9, 'Undelete Leave Type', 4, 'undeleteLeaveType'),
(10, 'Delete Leave Type', 4, 'deleteLeaveType'),
(11, 'View Holiday List', 4, 'viewHolidayList'),
(12, 'Define Holiday', 4, 'defineHoliday'),
(13, 'Delete Holiday', 4, 'deleteHoliday'),
(14, 'Define WorkWeek', 4, 'defineWorkWeek'),
(16, 'Leave List', 4, 'viewLeaveList'),
(17, 'Assign Leave', 4, 'assignLeave'),
(18, 'View Leave Summary', 4, 'viewLeaveSummary'),
(19, 'Save Leave Entitlements', 4, 'saveLeaveEntitlements'),
(20, 'General Information', 2, 'viewOrganizationGeneralInformation'),
(21, 'Location List', 2, 'viewLocations'),
(22, 'View Company Structure', 2, 'viewCompanyStructure'),
(23, 'Job Title List', 2, 'viewJobTitleList'),
(24, 'Pay Grade List', 2, 'viewPayGrades'),
(25, 'Employment Status List', 2, 'employmentStatus'),
(26, 'Job Category List', 2, 'jobCategory'),
(27, 'Work Shift List', 2, 'workShift'),
(28, 'Skill List', 2, 'viewSkills'),
(29, 'Education List', 2, 'viewEducation'),
(30, 'License List', 2, 'viewLicenses'),
(31, 'Language List', 2, 'viewLanguages'),
(32, 'Membership List', 2, 'membership'),
(33, 'Nationality List', 2, 'nationality'),
(34, 'Add/Edit Mail Configuration', 2, 'listMailConfiguration'),
(35, 'Notification List', 2, 'viewEmailNotification'),
(36, 'Customer List', 2, 'viewCustomers'),
(37, 'Project List', 2, 'viewProjects'),
(38, 'Localization', 2, 'localization'),
(39, 'Module Configuration', 2, 'viewModules'),
(40, 'Configure PIM', 3, 'configurePim'),
(41, 'Custom Field List', 3, 'listCustomFields'),
(42, 'Data Import', 2, 'pimCsvImport'),
(43, 'Reporting Method List', 3, 'viewReportingMethods'),
(44, 'Termination Reason List', 3, 'viewTerminationReasons'),
(45, 'PIM Reports List', 1, 'viewDefinedPredefinedReports'),
(46, 'View MyInfo', 3, 'viewMyDetails'),
(47, 'Define Leave Period', 4, 'defineLeavePeriod'),
(48, 'View My Leave List', 4, 'viewMyLeaveList'),
(49, 'Apply Leave', 4, 'applyLeave'),
(50, 'Define Timesheet Start Date', 5, 'defineTimesheetPeriod'),
(51, 'View My Timesheet', 5, 'viewMyTimesheet'),
(52, 'View Employee Timesheet', 5, 'viewEmployeeTimesheet'),
(53, 'View My Attendance', 6, 'viewMyAttendanceRecord'),
(54, 'Punch In/Out', 6, 'punchIn'),
(55, 'View Employee Attendance', 6, 'viewAttendanceRecord'),
(56, 'Attendance Configuration', 6, 'configure'),
(57, 'View Project Report Criteria', 5, 'displayProjectReportCriteria'),
(58, 'View Employee Report Criteria', 5, 'displayEmployeeReportCriteria'),
(59, 'View Attendance Report Criteria', 5, 'displayAttendanceSummaryReportCriteria'),
(60, 'Candidate List', 7, 'viewCandidates'),
(61, 'Vacancy List', 7, 'viewJobVacancy'),
(67, 'View Time Module', 5, 'viewTimeModule'),
(68, 'View Leave Module', 4, 'viewLeaveModule'),
(69, 'Leave Entitlements', 4, 'viewLeaveEntitlements'),
(70, 'My Leave Entitlements', 4, 'viewMyLeaveEntitlements'),
(71, 'Delete Leave Entitlements', 4, 'deleteLeaveEntitlements'),
(72, 'Add Leave Entitlement', 4, 'addLeaveEntitlement'),
(73, 'Edit Leave Entitlement', 4, 'editLeaveEntitlement'),
(74, 'View Admin Module', 2, 'viewAdminModule'),
(75, 'View PIM Module', 3, 'viewPimModule'),
(76, 'View Recruitment Module', 7, 'viewRecruitmentModule'),
(78, 'Leave Balance Report', 4, 'viewLeaveBalanceReport'),
(79, 'My Leave Balance Report', 4, 'viewMyLeaveBalanceReport'),
(80, 'Save Job Title', 2, 'saveJobTitle'),
(81, 'Delete Job Title', 2, 'deleteJobTitle'),
(82, 'Save Pay Grade', 2, 'payGrade'),
(83, 'Delete Pay Grade', 2, 'deletePayGrades'),
(84, 'Save Pay Grade Currency', 2, 'savePayGradeCurrency'),
(85, 'Delete Pay Grade Currency', 2, 'deletePayGradeCurrency'),
(86, 'Add Customer', 2, 'addCustomer'),
(87, 'Delete Customer', 2, 'deleteCustomer'),
(88, 'Save Project', 2, 'saveProject'),
(89, 'Delete Project', 2, 'deleteProject'),
(90, 'Add Project Adtivity', 2, 'addProjectActivity'),
(91, 'Delete Project Adtivity', 2, 'deleteProjectActivity'),
(92, 'Define PIM reports', 1, 'definePredefinedReport'),
(93, 'Display PIM reports', 1, 'displayPredefinedReport'),
(94, 'Add Job Vacancy', 7, 'addJobVacancy'),
(95, 'Delete Job Vacancy', 7, 'deleteJobVacancy'),
(96, 'Add Candidate', 7, 'addCandidate'),
(97, 'Delete Candidate', 7, 'deleteCandidateVacancies'),
(98, 'View Leave Request', 4, 'viewLeaveRequest'),
(99, 'Change Leave Status', 4, 'changeLeaveStatus'),
(100, 'Terminate Employment', 3, 'terminateEmployement'),
(101, 'View Attendance Summary Report', 5, 'displayAttendanceSummaryReport'),
(102, 'View Project Activity Details Report', 5, 'displayProjectActivityDetailsReport'),
(103, 'Dashboard', 10, 'index'),
(104, 'Save KPI', 11, 'saveKpi'),
(105, 'Saearch KPI', 11, 'searchKpi'),
(106, 'My Reviews', 11, 'myPerformanceReview'),
(107, 'Add Review', 11, 'saveReview'),
(108, 'Review Evaluate', 11, 'reviewEvaluate'),
(109, 'Review Evaluate By Admin', 11, 'reviewEvaluateByAdmin'),
(110, 'Search Evaluate Performance', 11, 'searchEvaluatePerformancReview'),
(111, 'Search Performance Review', 11, 'searchPerformancReview'),
(112, 'Manage_Trackers', 11, 'addPerformanceTracker'),
(113, 'Employee_Trackers', 11, 'viewEmployeePerformanceTrackerList'),
(114, 'My_Trackers', 11, 'viewMyPerformanceTrackerList'),
(115, 'Employee_Tracker_Logs', 11, 'addPerformanceTrackerLog'),
(116, 'Directory', 12, 'viewDirectory'),
(117, 'Manage OpenId', 2, 'openIdProvider'),
(118, 'Register OAuth Client', 2, 'registerOAuthClient');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_composite_display_field`
--

CREATE TABLE `ohrm_selected_composite_display_field` (
  `id` bigint(20) NOT NULL,
  `composite_display_field_id` bigint(20) NOT NULL,
  `report_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_composite_display_field`
--

INSERT INTO `ohrm_selected_composite_display_field` (`id`, `composite_display_field_id`, `report_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_display_field`
--

CREATE TABLE `ohrm_selected_display_field` (
  `id` bigint(20) NOT NULL,
  `display_field_id` bigint(20) NOT NULL,
  `report_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_display_field`
--

INSERT INTO `ohrm_selected_display_field` (`id`, `display_field_id`, `report_id`) VALUES
(2, 2, 1),
(4, 8, 2),
(5, 9, 5),
(6, 10, 5),
(7, 11, 5),
(8, 12, 5),
(9, 13, 5),
(10, 14, 5),
(11, 15, 5),
(13, 17, 5),
(14, 18, 5),
(15, 19, 5),
(16, 20, 5),
(17, 21, 5),
(18, 22, 5),
(19, 23, 5),
(20, 24, 5),
(21, 25, 5),
(22, 26, 5),
(23, 27, 5),
(24, 28, 5),
(25, 29, 5),
(26, 30, 5),
(27, 31, 5),
(28, 32, 5),
(29, 33, 5),
(31, 35, 5),
(32, 36, 5),
(33, 37, 5),
(34, 38, 5),
(35, 39, 5),
(36, 40, 5),
(37, 41, 5),
(38, 42, 5),
(39, 43, 5),
(40, 44, 5),
(41, 45, 5),
(43, 47, 5),
(44, 48, 5),
(45, 49, 5),
(48, 52, 5),
(49, 53, 5),
(50, 54, 5),
(51, 55, 5),
(53, 57, 5),
(54, 58, 5),
(55, 59, 5),
(56, 60, 5),
(57, 61, 5),
(58, 62, 5),
(59, 63, 5),
(60, 64, 5),
(61, 65, 5),
(62, 66, 5),
(63, 67, 5),
(64, 68, 5),
(65, 69, 5),
(66, 70, 5),
(67, 71, 5),
(68, 72, 5),
(69, 73, 5),
(70, 74, 5),
(71, 75, 5),
(72, 76, 5),
(73, 77, 5),
(74, 78, 5),
(76, 80, 5),
(77, 81, 5),
(78, 82, 5),
(79, 83, 5),
(80, 84, 5),
(81, 85, 5),
(82, 86, 5),
(83, 87, 5),
(84, 88, 5),
(85, 89, 5),
(86, 90, 5),
(87, 91, 5),
(88, 92, 5),
(89, 93, 5),
(90, 94, 5),
(91, 95, 5),
(93, 97, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_display_field_group`
--

CREATE TABLE `ohrm_selected_display_field_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `report_id` bigint(20) NOT NULL,
  `display_field_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_display_field_group`
--

INSERT INTO `ohrm_selected_display_field_group` (`id`, `report_id`, `display_field_group_id`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 5, 3),
(4, 5, 4),
(5, 5, 5),
(6, 5, 6),
(7, 5, 7),
(8, 5, 8),
(9, 5, 9),
(10, 5, 10),
(11, 5, 11),
(12, 5, 12),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_filter_field`
--

CREATE TABLE `ohrm_selected_filter_field` (
  `report_id` bigint(20) NOT NULL,
  `filter_field_id` bigint(20) NOT NULL,
  `filter_field_order` bigint(20) NOT NULL,
  `value1` varchar(255) DEFAULT NULL,
  `value2` varchar(255) DEFAULT NULL,
  `where_condition` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_filter_field`
--

INSERT INTO `ohrm_selected_filter_field` (`report_id`, `filter_field_id`, `filter_field_order`, `value1`, `value2`, `where_condition`, `type`) VALUES
(1, 1, 1, NULL, NULL, NULL, 'Runtime'),
(1, 3, 2, NULL, NULL, NULL, 'Runtime'),
(1, 7, 3, NULL, NULL, NULL, 'Runtime'),
(1, 21, 4, '0', NULL, '=', 'Predefined'),
(2, 3, 4, NULL, NULL, NULL, 'Runtime'),
(2, 4, 1, NULL, NULL, NULL, 'Runtime'),
(2, 5, 3, NULL, NULL, NULL, 'Runtime'),
(2, 6, 2, NULL, NULL, NULL, 'Runtime'),
(2, 7, 5, NULL, NULL, NULL, 'Runtime'),
(3, 3, 2, NULL, NULL, NULL, 'Runtime'),
(3, 5, 1, NULL, NULL, NULL, 'Runtime'),
(3, 7, 3, NULL, NULL, NULL, 'Runtime'),
(5, 22, 1, NULL, NULL, 'IS NULL', 'Predefined');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_group_field`
--

CREATE TABLE `ohrm_selected_group_field` (
  `group_field_id` bigint(20) NOT NULL,
  `summary_display_field_id` bigint(20) NOT NULL,
  `report_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_group_field`
--

INSERT INTO `ohrm_selected_group_field` (`group_field_id`, `summary_display_field_id`, `report_id`) VALUES
(1, 1, 1),
(1, 1, 2),
(2, 1, 3),
(2, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_skill`
--

CREATE TABLE `ohrm_skill` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_subunit`
--

CREATE TABLE `ohrm_subunit` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit_id` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `lft` smallint(6) UNSIGNED DEFAULT NULL,
  `rgt` smallint(6) UNSIGNED DEFAULT NULL,
  `level` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_subunit`
--

INSERT INTO `ohrm_subunit` (`id`, `name`, `unit_id`, `description`, `lft`, `rgt`, `level`) VALUES
(1, 'Central Public Health Laboratories', '', '', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_summary_display_field`
--

CREATE TABLE `ohrm_summary_display_field` (
  `summary_display_field_id` bigint(20) NOT NULL,
  `function` varchar(1000) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_alias` varchar(255) DEFAULT NULL,
  `is_sortable` varchar(10) NOT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_property` varchar(1000) NOT NULL,
  `width` varchar(255) NOT NULL,
  `is_exportable` varchar(10) DEFAULT NULL,
  `text_alignment_style` varchar(20) DEFAULT NULL,
  `is_value_list` tinyint(1) NOT NULL DEFAULT '0',
  `display_field_group_id` int(10) UNSIGNED DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_summary_display_field`
--

INSERT INTO `ohrm_summary_display_field` (`summary_display_field_id`, `function`, `label`, `field_alias`, `is_sortable`, `sort_order`, `sort_field`, `element_type`, `element_property`, `width`, `is_exportable`, `text_alignment_style`, `is_value_list`, `display_field_group_id`, `default_value`) VALUES
(1, 'ROUND(COALESCE(sum(duration)/3600, 0),2)', 'Time (Hours)', 'totalduration', 'false', NULL, NULL, 'label', '<xml><getter>totalduration</getter></xml>', '100', 'false', 'right', 0, NULL, NULL),
(2, 'ROUND(COALESCE(sum(TIMESTAMPDIFF(SECOND , ohrm_attendance_record.punch_in_utc_time , ohrm_attendance_record.punch_out_utc_time))/3600, 0),2)', 'Time (Hours)', 'totalduration', 'false', NULL, NULL, 'label', '<xml><getter>totalduration</getter></xml>', '100', 'false', 'right', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_timesheet`
--

CREATE TABLE `ohrm_timesheet` (
  `timesheet_id` bigint(20) NOT NULL,
  `state` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `employee_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_timesheet_action_log`
--

CREATE TABLE `ohrm_timesheet_action_log` (
  `timesheet_action_log_id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `date_time` date NOT NULL,
  `performed_by` int(20) NOT NULL,
  `timesheet_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_timesheet_item`
--

CREATE TABLE `ohrm_timesheet_item` (
  `timesheet_item_id` bigint(20) NOT NULL,
  `timesheet_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `comment` text,
  `project_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_upgrade_history`
--

CREATE TABLE `ohrm_upgrade_history` (
  `id` int(10) NOT NULL,
  `start_version` varchar(30) DEFAULT NULL,
  `end_version` varchar(30) DEFAULT NULL,
  `start_increment` int(11) NOT NULL,
  `end_increment` int(11) NOT NULL,
  `upgraded_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user`
--

CREATE TABLE `ohrm_user` (
  `id` int(10) NOT NULL,
  `user_role_id` int(10) NOT NULL,
  `emp_number` int(13) DEFAULT NULL,
  `user_name` varchar(40) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_user`
--

INSERT INTO `ohrm_user` (`id`, `user_role_id`, `emp_number`, `user_name`, `user_password`, `deleted`, `status`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`) VALUES
(1, 1, NULL, 'Admin', '$2y$12$0KLFqSz8Jfkb.GoR3bIgwOuJ85kTs4t7X70L0amq5M9iiPK9AhwES', 0, 1, NULL, NULL, NULL, NULL),
(2, 2, 2, 'kasolo', '$2y$12$tho/4JKoysKHeB1joWbYiuPpAlMCgQq2ZZSMCRnt6uoTbuF2YHm1i', 0, 1, '2018-01-23 17:48:54', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_role`
--

CREATE TABLE `ohrm_user_role` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `is_assignable` tinyint(1) DEFAULT '0',
  `is_predefined` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_user_role`
--

INSERT INTO `ohrm_user_role` (`id`, `name`, `display_name`, `is_assignable`, `is_predefined`) VALUES
(1, 'Admin', 'Admin', 1, 1),
(2, 'ESS', 'ESS', 1, 1),
(3, 'Supervisor', 'Supervisor', 0, 1),
(4, 'ProjectAdmin', 'ProjectAdmin', 0, 1),
(5, 'Interviewer', 'Interviewer', 0, 1),
(6, 'HiringManager', 'HiringManager', 0, 1),
(7, 'Reviewer', 'Reviewer', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_role_data_group`
--

CREATE TABLE `ohrm_user_role_data_group` (
  `id` int(11) NOT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `data_group_id` int(11) DEFAULT NULL,
  `can_read` tinyint(4) DEFAULT NULL,
  `can_create` tinyint(4) DEFAULT NULL,
  `can_update` tinyint(4) DEFAULT NULL,
  `can_delete` tinyint(4) DEFAULT NULL,
  `self` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_user_role_data_group`
--

INSERT INTO `ohrm_user_role_data_group` (`id`, `user_role_id`, `data_group_id`, `can_read`, `can_create`, `can_update`, `can_delete`, `self`) VALUES
(1, 1, 1, 1, NULL, 1, NULL, 0),
(2, 1, 2, 1, 1, 1, 1, 0),
(3, 1, 3, 1, NULL, 1, NULL, 0),
(4, 1, 4, 1, NULL, 1, NULL, 0),
(5, 1, 5, 1, 1, 1, 1, 0),
(6, 1, 6, 1, NULL, 1, NULL, 0),
(7, 1, 7, 1, 1, 1, 1, 0),
(8, 1, 8, 1, 1, 1, 1, 0),
(9, 1, 9, 1, NULL, 1, NULL, 0),
(10, 1, 10, 1, 1, 1, 1, 0),
(11, 1, 11, 1, 1, 1, 1, 0),
(12, 1, 12, 1, NULL, 1, NULL, 0),
(13, 1, 13, 1, 1, 1, 1, 0),
(14, 1, 14, 1, 1, 1, 1, 0),
(15, 1, 15, 1, NULL, 1, NULL, 0),
(16, 1, 16, 1, NULL, 1, NULL, 0),
(17, 1, 17, 1, 1, 1, 1, 0),
(18, 1, 18, 1, NULL, 1, NULL, 0),
(19, 1, 19, 1, 1, 1, 1, 0),
(20, 1, 20, 1, 1, 1, 1, 0),
(21, 1, 21, 1, NULL, 1, NULL, 0),
(22, 1, 22, 1, NULL, 1, NULL, 0),
(23, 1, 23, 1, 1, 1, 1, 0),
(24, 1, 24, 1, NULL, 1, NULL, 0),
(25, 1, 25, 1, 1, 1, 1, 0),
(26, 1, 26, 1, 1, 1, 1, 0),
(27, 1, 27, 1, 1, 1, 1, 0),
(28, 1, 28, 1, NULL, 1, NULL, 0),
(29, 1, 29, 1, 1, 1, 1, 0),
(30, 1, 30, 1, 1, 1, 1, 0),
(31, 1, 31, 1, 1, 1, 1, 0),
(32, 1, 32, 1, 1, 1, 1, 0),
(33, 1, 33, 1, 1, 1, 1, 0),
(34, 1, 34, 1, 1, 1, 1, 0),
(35, 1, 35, 1, NULL, 1, NULL, 0),
(36, 1, 36, 1, 1, 1, 1, 0),
(37, 1, 37, 1, 1, 1, 1, 0),
(38, 1, 38, 1, NULL, 1, NULL, 0),
(39, 1, 39, 1, NULL, 1, 1, 0),
(40, 1, 40, 1, 1, 1, 1, 0),
(41, 1, 41, 1, NULL, NULL, NULL, 0),
(42, 1, 40, 1, 1, 1, 1, 1),
(43, 2, 1, 1, NULL, 1, NULL, 1),
(44, 2, 2, 1, 1, 1, 1, 1),
(45, 2, 3, 1, NULL, 1, NULL, 1),
(46, 2, 4, 1, NULL, 1, NULL, 1),
(47, 2, 5, 1, 1, 1, 1, 1),
(48, 2, 6, 1, NULL, 1, NULL, 1),
(49, 2, 7, 1, 1, 1, 1, 1),
(50, 2, 8, 1, 1, 1, 1, 1),
(51, 2, 9, 1, NULL, 1, NULL, 1),
(52, 2, 10, 1, 1, 1, 1, 1),
(53, 2, 11, 1, 1, 1, 1, 1),
(54, 2, 12, 1, NULL, 1, NULL, 1),
(55, 2, 13, 1, 1, 1, 1, 1),
(56, 2, 14, 1, 1, 1, 1, 1),
(57, 2, 15, 1, NULL, 1, NULL, 1),
(58, 2, 16, 1, NULL, NULL, NULL, 1),
(59, 2, 17, 1, 0, 0, 0, 1),
(60, 2, 18, 1, 0, 0, 0, 1),
(61, 2, 19, 1, NULL, NULL, NULL, 1),
(62, 2, 20, 1, 0, 0, 0, 1),
(63, 2, 21, 1, 0, 0, 0, 1),
(64, 2, 22, 1, NULL, NULL, NULL, 1),
(65, 2, 23, 1, 0, 0, 0, 1),
(66, 2, 24, 1, 0, 0, 0, 1),
(67, 2, 25, 1, NULL, NULL, NULL, 1),
(68, 2, 26, 1, NULL, NULL, NULL, 1),
(69, 2, 27, 1, 0, 0, 0, 1),
(70, 2, 28, 1, 0, 0, 0, 1),
(71, 2, 29, 1, 1, 1, 1, 1),
(72, 2, 30, 1, 1, 1, 1, 1),
(73, 2, 31, 1, 1, 1, 1, 1),
(74, 2, 32, 1, 1, 1, 1, 1),
(75, 2, 33, 1, 1, 1, 1, 1),
(76, 2, 34, 1, 1, 1, 1, 1),
(77, 2, 35, 1, NULL, 1, NULL, 1),
(78, 2, 36, 1, 1, 1, 1, 1),
(79, 2, 37, 1, 1, 1, 1, 1),
(80, 2, 38, 1, NULL, 1, NULL, 1),
(81, 2, 39, 1, NULL, 1, 1, 1),
(82, 2, 40, 1, 0, 0, 0, 1),
(83, 2, 41, 1, NULL, NULL, NULL, 1),
(84, 3, 1, 1, NULL, 1, NULL, 0),
(85, 3, 2, 1, 1, 1, 1, 0),
(86, 3, 3, 1, NULL, 1, NULL, 0),
(87, 3, 4, 1, NULL, 1, NULL, 0),
(88, 3, 5, 1, 1, 1, 1, 0),
(89, 3, 6, 1, NULL, 1, NULL, 0),
(90, 3, 7, 1, 1, 1, 1, 0),
(91, 3, 8, 1, 1, 1, 1, 0),
(92, 3, 9, 1, NULL, 1, NULL, 0),
(93, 3, 10, 1, 1, 1, 1, 0),
(94, 3, 11, 1, 1, 1, 1, 0),
(95, 3, 12, 1, NULL, 1, NULL, 0),
(96, 3, 13, 1, 1, 1, 1, 0),
(97, 3, 14, 1, 1, 1, 1, 0),
(98, 3, 15, 1, NULL, 1, NULL, 0),
(99, 3, 16, 1, NULL, NULL, NULL, 0),
(100, 3, 17, 1, 0, 0, 0, 0),
(101, 3, 18, 1, 0, 0, 0, 0),
(102, 3, 19, 0, 0, 0, 0, 0),
(103, 3, 20, 0, 0, 0, 0, 0),
(104, 3, 21, 0, 0, 0, 0, 0),
(105, 3, 22, 1, NULL, NULL, NULL, 0),
(106, 3, 23, 1, 0, 0, 0, 0),
(107, 3, 24, 1, 0, 0, 0, 0),
(108, 3, 25, 1, NULL, NULL, NULL, 0),
(109, 3, 26, 1, NULL, NULL, NULL, 0),
(110, 3, 27, 1, 0, 0, 0, 0),
(111, 3, 28, 1, 0, 0, 0, 0),
(112, 3, 29, 1, 1, 1, 1, 0),
(113, 3, 30, 1, 1, 1, 1, 0),
(114, 3, 31, 1, 1, 1, 1, 0),
(115, 3, 32, 1, 1, 1, 1, 0),
(116, 3, 33, 1, 1, 1, 1, 0),
(117, 3, 34, 1, 1, 1, 1, 0),
(118, 3, 35, 1, NULL, 1, NULL, 0),
(119, 3, 36, 1, 1, 1, 1, 0),
(120, 3, 37, 1, 1, 1, 1, 0),
(121, 3, 38, 1, NULL, 1, NULL, 0),
(122, 3, 39, 1, NULL, 1, 1, 0),
(123, 3, 40, 1, 0, 0, 0, 0),
(124, 3, 41, 1, NULL, NULL, NULL, 0),
(125, 3, 1, 1, NULL, 1, NULL, 1),
(126, 3, 2, 1, 1, 1, 1, 1),
(127, 3, 3, 1, NULL, 1, NULL, 1),
(128, 3, 4, 1, NULL, 1, NULL, 1),
(129, 3, 5, 1, 1, 1, 1, 1),
(130, 3, 6, 1, NULL, 1, NULL, 1),
(131, 3, 7, 1, 1, 1, 1, 1),
(132, 3, 8, 1, 1, 1, 1, 1),
(133, 3, 9, 1, NULL, 1, NULL, 1),
(134, 3, 10, 1, 1, 1, 1, 1),
(135, 3, 11, 1, 1, 1, 1, 1),
(136, 3, 12, 1, NULL, 1, NULL, 1),
(137, 3, 13, 1, 1, 1, 1, 1),
(138, 3, 14, 1, 1, 1, 1, 1),
(139, 3, 15, 1, NULL, 1, NULL, 1),
(140, 3, 16, 1, NULL, NULL, NULL, 1),
(141, 3, 17, 1, 0, 0, 0, 1),
(142, 3, 18, 1, 0, 0, 0, 1),
(143, 3, 19, 1, 0, 0, 0, 1),
(144, 3, 20, 1, 0, 0, 0, 1),
(145, 3, 21, 1, 0, 0, 0, 1),
(146, 3, 22, 1, NULL, NULL, NULL, 1),
(147, 3, 23, 1, 0, 0, 0, 1),
(148, 3, 24, 1, 0, 0, 0, 1),
(149, 3, 25, 1, NULL, NULL, NULL, 1),
(150, 3, 26, 1, NULL, NULL, NULL, 1),
(151, 3, 27, 1, 0, 0, 0, 1),
(152, 3, 28, 1, 0, 0, 0, 1),
(153, 3, 29, 1, 1, 1, 1, 1),
(154, 3, 30, 1, 1, 1, 1, 1),
(155, 3, 31, 1, 1, 1, 1, 1),
(156, 3, 32, 1, 1, 1, 1, 1),
(157, 3, 33, 1, 1, 1, 1, 1),
(158, 3, 34, 1, 1, 1, 1, 1),
(159, 3, 35, 1, NULL, 1, NULL, 1),
(160, 3, 36, 1, 1, 1, 1, 1),
(161, 3, 37, 1, 1, 1, 1, 1),
(162, 3, 38, 1, NULL, 1, NULL, 1),
(163, 3, 39, 1, NULL, 1, 1, 1),
(164, 3, 40, 1, 0, 0, 0, 1),
(165, 3, 41, 1, NULL, NULL, NULL, 1),
(166, 1, 42, 1, 1, 1, 1, 0),
(167, 2, 42, 0, 0, 0, 0, 0),
(168, 3, 42, 0, 0, 0, 0, 0),
(169, 1, 43, 1, 1, 1, 1, 0),
(170, 2, 43, 0, 0, 0, 0, 0),
(171, 3, 43, 0, 0, 0, 0, 0),
(172, 1, 44, 1, 1, 1, 1, 0),
(173, 2, 44, 0, 0, 0, 0, 0),
(174, 3, 44, 0, 0, 0, 0, 0),
(175, 1, 45, 1, 1, 1, 1, 0),
(176, 2, 45, 0, 0, 0, 0, 0),
(177, 3, 45, 0, 0, 0, 0, 0),
(178, 4, 45, 1, 0, 1, 0, 0),
(179, 1, 46, 1, 1, 1, 1, 0),
(180, 2, 46, 0, 0, 0, 0, 0),
(181, 3, 46, 0, 0, 0, 0, 0),
(182, 1, 47, 1, NULL, 1, NULL, 0),
(183, 2, 47, 0, 0, 0, 0, 0),
(184, 3, 47, 0, 0, 0, 0, 0),
(185, 1, 48, 1, 0, 0, 0, 0),
(186, 2, 48, 0, 0, 0, 0, 0),
(187, 2, 48, 1, 0, 0, 0, 1),
(188, 3, 48, 1, 0, 0, 0, 0),
(189, 1, 49, 1, 0, 0, 0, 0),
(190, 2, 49, 0, 0, 0, 0, 0),
(191, 3, 49, 0, 0, 0, 0, 0),
(192, 4, 49, 1, 0, 0, 0, 0),
(193, 1, 50, 1, 0, 0, 0, 0),
(194, 2, 50, 0, 0, 0, 0, 0),
(195, 3, 50, 1, 0, 0, 0, 0),
(196, 1, 51, 1, 0, 0, 0, 0),
(197, 2, 51, 0, 0, 0, 0, 0),
(198, 3, 51, 1, 0, 0, 0, 0),
(199, 1, 52, 1, NULL, 1, NULL, 0),
(200, 2, 52, 0, 0, 0, 0, 0),
(201, 3, 52, 0, 0, 0, 0, 0),
(202, 1, 53, 1, 1, 1, 1, 0),
(203, 2, 53, 0, 0, 0, 0, 0),
(204, 3, 53, 0, 0, 0, 0, 0),
(205, 1, 54, 1, 0, 1, 0, 0),
(206, 2, 54, 0, 0, 0, 0, 0),
(207, 3, 54, 0, 0, 0, 0, 0),
(208, 1, 55, 1, 1, 1, 1, 0),
(209, 2, 55, 0, 0, 0, 0, 0),
(210, 3, 55, 0, 0, 0, 0, 0),
(211, 1, 56, 1, 1, 1, 1, 0),
(212, 2, 56, 0, 0, 0, 0, 0),
(213, 3, 56, 0, 0, 0, 0, 0),
(214, 1, 57, 1, 1, 1, 1, 0),
(215, 6, 57, 1, 1, 1, 1, 0),
(216, 5, 57, 1, 0, 1, 0, 0),
(217, 1, 58, 1, 0, 0, 0, 0),
(218, 2, 58, 0, 0, 0, 0, 0),
(219, 2, 58, 1, 0, 0, 0, 1),
(220, 3, 58, 1, 0, 0, 0, 0),
(221, 1, 59, 1, 0, 0, 0, 0),
(222, 2, 59, 1, 0, 0, 0, 1),
(223, 3, 59, 1, 0, 0, 0, 0),
(224, 1, 60, 0, 1, 0, 0, 0),
(225, 2, 60, 0, 1, 0, 0, 1),
(226, 3, 60, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_role_screen`
--

CREATE TABLE `ohrm_user_role_screen` (
  `id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `can_read` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_update` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_user_role_screen`
--

INSERT INTO `ohrm_user_role_screen` (`id`, `user_role_id`, `screen_id`, `can_read`, `can_create`, `can_update`, `can_delete`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 1, 2, 1, 1, 1, 1),
(3, 2, 2, 0, 0, 0, 0),
(4, 3, 2, 0, 0, 0, 0),
(5, 1, 3, 1, 1, 1, 1),
(6, 2, 3, 0, 0, 0, 0),
(7, 3, 3, 0, 0, 0, 0),
(8, 1, 4, 1, 1, 1, 1),
(9, 1, 5, 1, 1, 1, 1),
(10, 3, 5, 1, 0, 0, 0),
(11, 1, 6, 1, 0, 0, 1),
(12, 1, 7, 1, 1, 1, 1),
(13, 1, 8, 1, 1, 1, 1),
(14, 1, 9, 1, 1, 1, 1),
(15, 1, 10, 1, 1, 1, 1),
(16, 1, 11, 1, 1, 1, 1),
(17, 1, 12, 1, 1, 1, 1),
(18, 1, 13, 1, 1, 1, 1),
(19, 1, 14, 1, 1, 1, 1),
(20, 1, 16, 1, 1, 1, 0),
(21, 3, 16, 1, 1, 1, 0),
(22, 1, 17, 1, 1, 1, 0),
(23, 3, 17, 1, 1, 1, 0),
(24, 1, 18, 1, 1, 1, 0),
(25, 2, 18, 1, 0, 0, 0),
(26, 3, 18, 1, 0, 0, 0),
(27, 1, 19, 1, 1, 1, 1),
(28, 1, 20, 1, 1, 1, 1),
(29, 1, 21, 1, 1, 1, 1),
(30, 1, 22, 1, 1, 1, 1),
(31, 1, 23, 1, 1, 1, 1),
(32, 1, 24, 1, 1, 1, 1),
(33, 1, 25, 1, 1, 1, 1),
(34, 1, 26, 1, 1, 1, 1),
(35, 1, 27, 1, 1, 1, 1),
(36, 1, 28, 1, 1, 1, 1),
(37, 1, 29, 1, 1, 1, 1),
(38, 1, 30, 1, 1, 1, 1),
(39, 1, 31, 1, 1, 1, 1),
(40, 1, 32, 1, 1, 1, 1),
(41, 1, 33, 1, 1, 1, 1),
(42, 1, 34, 1, 1, 1, 1),
(43, 1, 35, 1, 1, 1, 1),
(44, 1, 36, 1, 1, 1, 1),
(45, 1, 37, 1, 1, 1, 1),
(46, 4, 37, 1, 0, 0, 0),
(47, 1, 38, 1, 1, 1, 1),
(48, 1, 39, 1, 1, 1, 1),
(49, 1, 40, 1, 1, 1, 1),
(50, 1, 41, 1, 1, 1, 1),
(51, 1, 42, 1, 1, 1, 1),
(52, 1, 43, 1, 1, 1, 1),
(53, 1, 44, 1, 1, 1, 1),
(54, 1, 45, 1, 1, 1, 1),
(55, 2, 46, 1, 1, 1, 1),
(56, 1, 47, 1, 1, 1, 1),
(57, 2, 48, 1, 1, 1, 0),
(58, 2, 49, 1, 1, 1, 1),
(59, 1, 50, 1, 1, 1, 1),
(60, 2, 51, 1, 1, 1, 1),
(61, 1, 52, 1, 1, 1, 1),
(62, 3, 52, 1, 1, 1, 1),
(63, 2, 53, 1, 1, 0, 0),
(64, 2, 54, 1, 1, 1, 1),
(65, 1, 55, 1, 1, 0, 1),
(66, 3, 55, 1, 1, 0, 0),
(67, 1, 56, 1, 1, 1, 1),
(68, 1, 57, 1, 1, 1, 1),
(69, 4, 57, 1, 1, 1, 1),
(70, 1, 58, 1, 1, 1, 1),
(71, 3, 58, 1, 1, 1, 1),
(72, 1, 59, 1, 1, 1, 1),
(73, 3, 59, 1, 1, 1, 1),
(74, 1, 60, 1, 1, 1, 1),
(75, 6, 60, 1, 1, 1, 1),
(76, 5, 60, 1, 0, 1, 0),
(77, 1, 61, 1, 1, 1, 1),
(78, 1, 67, 1, 1, 1, 1),
(79, 2, 67, 1, 0, 1, 0),
(80, 3, 67, 1, 0, 1, 0),
(81, 1, 68, 1, 1, 1, 1),
(82, 2, 68, 1, 0, 1, 0),
(83, 3, 68, 1, 0, 1, 0),
(84, 1, 69, 1, 1, 1, 1),
(85, 3, 69, 1, 0, 0, 0),
(86, 2, 70, 1, 0, 0, 0),
(87, 1, 71, 1, 0, 0, 1),
(88, 1, 72, 1, 1, 1, 0),
(89, 1, 73, 1, 0, 1, 0),
(90, 1, 74, 1, 1, 1, 1),
(91, 1, 75, 1, 1, 1, 1),
(92, 3, 75, 1, 1, 1, 1),
(93, 1, 76, 1, 1, 1, 1),
(94, 5, 76, 1, 1, 1, 1),
(95, 6, 76, 1, 1, 1, 1),
(96, 1, 78, 1, 0, 0, 0),
(97, 3, 78, 1, 0, 0, 0),
(98, 2, 79, 1, 0, 0, 0),
(99, 1, 80, 1, 1, 1, 1),
(100, 1, 81, 1, 1, 1, 1),
(101, 1, 82, 1, 1, 1, 1),
(102, 1, 83, 1, 1, 1, 1),
(103, 1, 84, 1, 1, 1, 1),
(104, 1, 85, 1, 1, 1, 1),
(105, 1, 86, 1, 1, 1, 1),
(106, 1, 87, 1, 1, 1, 1),
(107, 1, 88, 1, 1, 1, 1),
(108, 4, 88, 1, 1, 1, 1),
(109, 1, 89, 1, 1, 1, 1),
(110, 1, 90, 1, 1, 1, 1),
(111, 4, 90, 1, 1, 1, 1),
(112, 1, 91, 1, 1, 1, 1),
(113, 4, 91, 1, 1, 1, 1),
(114, 1, 92, 1, 1, 1, 1),
(115, 1, 93, 1, 1, 1, 1),
(116, 1, 94, 1, 1, 1, 1),
(117, 1, 95, 1, 1, 1, 1),
(118, 1, 96, 1, 1, 1, 1),
(119, 5, 96, 1, 1, 1, 1),
(120, 6, 96, 1, 1, 1, 1),
(121, 1, 97, 1, 1, 1, 1),
(122, 6, 97, 1, 1, 1, 1),
(123, 1, 98, 1, 1, 1, 1),
(124, 2, 98, 1, 1, 1, 1),
(125, 3, 98, 1, 1, 1, 1),
(126, 1, 99, 1, 0, 1, 0),
(127, 2, 99, 1, 0, 1, 0),
(128, 3, 99, 1, 0, 1, 0),
(129, 1, 100, 1, 0, 0, 0),
(130, 1, 101, 1, 1, 1, 1),
(131, 3, 101, 1, 1, 1, 1),
(132, 1, 102, 1, 1, 1, 1),
(133, 4, 102, 1, 1, 1, 1),
(134, 1, 103, 1, 0, 0, 0),
(135, 2, 103, 1, 0, 0, 0),
(136, 1, 104, 1, 1, 1, 0),
(137, 1, 105, 1, 1, 1, 1),
(138, 1, 107, 1, 1, 1, 0),
(139, 1, 109, 1, 1, 1, 0),
(140, 1, 111, 1, 1, 1, 1),
(141, 2, 110, 1, 0, 1, 0),
(142, 2, 108, 1, 1, 1, 0),
(143, 2, 106, 1, 0, 1, 0),
(144, 3, 109, 1, 1, 1, 0),
(145, 2, 109, 1, 1, 1, 0),
(146, 1, 112, 1, 1, 1, 1),
(147, 2, 112, 0, 0, 0, 0),
(148, 1, 113, 1, 1, 1, 1),
(149, 2, 113, 1, 1, 1, 0),
(150, 1, 114, 0, 0, 0, 0),
(151, 2, 114, 1, 0, 1, 0),
(152, 1, 115, 1, 1, 1, 0),
(153, 2, 115, 1, 0, 0, 0),
(154, 1, 116, 1, 1, 1, 1),
(155, 2, 116, 1, 1, 1, 1),
(156, 1, 117, 1, 1, 1, 0),
(157, 1, 118, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_selection_rule`
--

CREATE TABLE `ohrm_user_selection_rule` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `implementation_class` varchar(255) NOT NULL,
  `rule_xml_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_workflow_state_machine`
--

CREATE TABLE `ohrm_workflow_state_machine` (
  `id` bigint(20) NOT NULL,
  `workflow` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `resulting_state` varchar(255) NOT NULL,
  `roles_to_notify` text,
  `priority` int(11) NOT NULL DEFAULT '0' COMMENT 'lowest priority 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_workflow_state_machine`
--

INSERT INTO `ohrm_workflow_state_machine` (`id`, `workflow`, `state`, `role`, `action`, `resulting_state`, `roles_to_notify`, `priority`) VALUES
(1, '0', 'INITIAL', 'SYSTEM', '7', 'NOT SUBMITTED', '', 0),
(2, '0', 'SUBMITTED', 'ADMIN', '2', 'APPROVED', '', 0),
(3, '0', 'SUBMITTED', 'ADMIN', '3', 'REJECTED', '', 0),
(4, '0', 'SUBMITTED', 'ADMIN', '0', 'SUBMITTED', '', 0),
(5, '0', 'SUBMITTED', 'ADMIN', '5', 'SUBMITTED', '', 0),
(6, '0', 'SUBMITTED', 'SUPERVISOR', '2', 'APPROVED', '', 0),
(7, '0', 'SUBMITTED', 'SUPERVISOR', '3', 'REJECTED', '', 0),
(8, '0', 'SUBMITTED', 'SUPERVISOR', '5', 'SUBMITTED', '', 0),
(9, '0', 'SUBMITTED', 'SUPERVISOR', '0', 'SUBMITTED', '', 0),
(10, '0', 'SUBMITTED', 'ESS USER', '0', 'SUBMITTED', '', 0),
(11, '0', 'SUBMITTED', 'ESS USER', '5', 'SUBMITTED', '', 0),
(12, '0', 'NOT SUBMITTED', 'ESS USER', '1', 'SUBMITTED', '', 0),
(13, '0', 'NOT SUBMITTED', 'ESS USER', '5', 'NOT SUBMITTED', '', 0),
(15, '0', 'NOT SUBMITTED', 'ESS USER', '0', 'NOT SUBMITTED', '', 0),
(16, '0', 'NOT SUBMITTED', 'SUPERVISOR', '0', 'NOT SUBMITTED', '', 0),
(17, '0', 'NOT SUBMITTED', 'SUPERVISOR', '5', 'NOT SUBMITTED', '', 0),
(18, '0', 'NOT SUBMITTED', 'SUPERVISOR', '1', 'SUBMITTED', '', 0),
(19, '0', 'NOT SUBMITTED', 'ADMIN', '0', 'NOT SUBMITTED', '', 0),
(20, '0', 'NOT SUBMITTED', 'ADMIN', '5', 'NOT SUBMITTED', '', 0),
(21, '0', 'NOT SUBMITTED', 'ADMIN', '1', 'SUBMITTED', '', 0),
(22, '0', 'REJECTED', 'ESS USER', '1', 'SUBMITTED', '', 0),
(23, '0', 'REJECTED', 'ESS USER', '0', 'REJECTED', '', 0),
(24, '0', 'REJECTED', 'ESS USER', '5', 'REJECTED', '', 0),
(25, '0', 'REJECTED', 'SUPERVISOR', '1', 'SUBMITTED', '', 0),
(26, '0', 'REJECTED', 'SUPERVISOR', '0', 'REJECTED', '', 0),
(27, '0', 'REJECTED', 'SUPERVISOR', '5', 'REJECTED', '', 0),
(28, '0', 'REJECTED', 'ADMIN', '0', 'REJECTED', '', 0),
(29, '0', 'REJECTED', 'ADMIN', '5', 'SUBMITTED', '', 0),
(30, '0', 'REJECTED', 'ADMIN', '1', 'SUBMITTED', '', 0),
(31, '0', 'APPROVED', 'ESS USER', '0', 'APPROVED', '', 0),
(32, '0', 'APPROVED', 'SUPERVISOR', '0', 'APPROVED', '', 0),
(33, '0', 'APPROVED', 'ADMIN', '0', 'APPROVED', '', 0),
(34, '0', 'APPROVED', 'ADMIN', '4', 'SUBMITTED', '', 0),
(35, '1', 'PUNCHED IN', 'ESS USER', '1', 'PUNCHED OUT', '', 0),
(36, '1', 'INITIAL', 'ESS USER', '0', 'PUNCHED IN', '', 0),
(37, '2', 'INITIAL', 'ADMIN', '1', 'APPLICATION INITIATED', '', 0),
(38, '2', 'APPLICATION INITIATED', 'ADMIN', '2', 'SHORTLISTED', '', 0),
(39, '2', 'APPLICATION INITIATED', 'ADMIN', '3', 'REJECTED', '', 0),
(40, '2', 'SHORTLISTED', 'ADMIN', '4', 'INTERVIEW SCHEDULED', '', 0),
(41, '2', 'SHORTLISTED', 'ADMIN', '3', 'REJECTED', '', 0),
(42, '2', 'INTERVIEW SCHEDULED', 'ADMIN', '3', 'REJECTED', '', 0),
(43, '2', 'INTERVIEW SCHEDULED', 'ADMIN', '5', 'INTERVIEW PASSED', '', 0),
(44, '2', 'INTERVIEW SCHEDULED', 'ADMIN', '6', 'INTERVIEW FAILED', '', 0),
(45, '2', 'INTERVIEW PASSED', 'ADMIN', '4', 'INTERVIEW SCHEDULED', '', 0),
(46, '2', 'INTERVIEW PASSED', 'ADMIN', '7', 'JOB OFFERED', '', 0),
(47, '2', 'INTERVIEW PASSED', 'ADMIN', '3', 'REJECTED', '', 0),
(48, '2', 'INTERVIEW FAILED', 'ADMIN', '3', 'REJECTED', '', 0),
(49, '2', 'JOB OFFERED', 'ADMIN', '8', 'OFFER DECLINED', '', 0),
(50, '2', 'JOB OFFERED', 'ADMIN', '3', 'REJECTED', '', 0),
(51, '2', 'JOB OFFERED', 'ADMIN', '9', 'HIRED', '', 0),
(52, '2', 'OFFER DECLINED', 'ADMIN', '3', 'REJECTED', '', 0),
(53, '2', 'INITIAL', 'HIRING MANAGER', '1', 'APPLICATION INITIATED', '', 0),
(54, '2', 'APPLICATION INITIATED', 'HIRING MANAGER', '2', 'SHORTLISTED', '', 0),
(55, '2', 'APPLICATION INITIATED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(56, '2', 'SHORTLISTED', 'HIRING MANAGER', '4', 'INTERVIEW SCHEDULED', '', 0),
(57, '2', 'SHORTLISTED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(58, '2', 'INTERVIEW SCHEDULED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(59, '2', 'INTERVIEW SCHEDULED', 'HIRING MANAGER', '5', 'INTERVIEW PASSED', '', 0),
(60, '2', 'INTERVIEW SCHEDULED', 'HIRING MANAGER', '6', 'INTERVIEW FAILED', '', 0),
(61, '2', 'INTERVIEW PASSED', 'HIRING MANAGER', '4', 'INTERVIEW SCHEDULED', '', 0),
(62, '2', 'INTERVIEW PASSED', 'HIRING MANAGER', '7', 'JOB OFFERED', '', 0),
(63, '2', 'INTERVIEW PASSED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(64, '2', 'INTERVIEW FAILED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(65, '2', 'JOB OFFERED', 'HIRING MANAGER', '8', 'OFFER DECLINED', '', 0),
(66, '2', 'JOB OFFERED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(67, '2', 'JOB OFFERED', 'HIRING MANAGER', '9', 'HIRED', '', 0),
(68, '2', 'OFFER DECLINED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(69, '2', 'INTERVIEW SCHEDULED', 'INTERVIEWER', '5', 'INTERVIEW PASSED', '', 0),
(70, '2', 'INTERVIEW SCHEDULED', 'INTERVIEWER', '6', 'INTERVIEW FAILED', '', 0),
(71, '1', 'INITIAL', 'ADMIN', '5', 'PUNCHED IN', '', 0),
(72, '1', 'PUNCHED IN', 'ADMIN', '6', 'PUNCHED OUT', '', 0),
(73, '1', 'PUNCHED IN', 'ADMIN', '2', 'PUNCHED IN', '', 0),
(74, '1', 'PUNCHED IN', 'ADMIN', '7', 'N/A', '', 0),
(75, '1', 'PUNCHED OUT', 'ADMIN', '2', 'PUNCHED OUT', '', 0),
(76, '1', 'PUNCHED OUT', 'ADMIN', '3', 'PUNCHED OUT', '', 0),
(77, '1', 'PUNCHED OUT', 'ADMIN', '7', 'N/A', '', 0),
(78, '0', 'INITIAL', 'ADMIN', '7', 'NOT SUBMITTED', '', 0),
(79, '0', 'INITIAL', 'ESS USER', '7', 'NOT SUBMITTED', '', 0),
(80, '0', 'INITIAL', 'SUPERVISOR', '7', 'NOT SUBMITTED', '', 0),
(81, '3', 'NOT_EXIST', 'ADMIN', '1', 'ACTIVE', '', 0),
(82, '3', 'ACTIVE', 'ADMIN', '2', 'NOT_EXIST', '', 0),
(83, '3', 'ACTIVE', 'ADMIN', '3', 'TERMINATED', '', 0),
(84, '3', 'TERMINATED', 'ADMIN', '4', 'ACTIVE', '', 0),
(85, '3', 'TERMINATED', 'ADMIN', '5', 'NOT_EXIST', '', 0),
(86, '4', 'INITIAL', 'ESS', 'APPLY', 'PENDING APPROVAL', 'supervisor,subscriber', 0),
(87, '4', 'INITIAL', 'ADMIN', 'ASSIGN', 'SCHEDULED', 'ess,supervisor,subscriber', 0),
(88, '4', 'INITIAL', 'SUPERVISOR', 'ASSIGN', 'SCHEDULED', 'ess,supervisor,subscriber', 0),
(89, '4', 'PENDING APPROVAL', 'ADMIN', 'APPROVE', 'SCHEDULED', 'ess,subscriber', 0),
(90, '4', 'PENDING APPROVAL', 'SUPERVISOR', 'APPROVE', 'SCHEDULED', 'ess,subscriber', 0),
(91, '4', 'PENDING APPROVAL', 'ESS', 'CANCEL', 'CANCELLED', 'supervisor,subscriber', 0),
(92, '4', 'PENDING APPROVAL', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(93, '4', 'PENDING APPROVAL', 'SUPERVISOR', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(94, '4', 'PENDING APPROVAL', 'ADMIN', 'REJECT', 'REJECTED', 'ess,subscriber', 0),
(95, '4', 'PENDING APPROVAL', 'SUPERVISOR', 'REJECT', 'REJECTED', 'ess,subscriber', 0),
(96, '4', 'SCHEDULED', 'ESS', 'CANCEL', 'CANCELLED', 'supervisor,subscriber', 0),
(97, '4', 'SCHEDULED', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(98, '4', 'SCHEDULED', 'SUPERVISOR', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(99, '4', 'TAKEN', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(100, '4', 'LEAVE TYPE DELETED PENDING APPROVAL', 'ESS', 'CANCEL', 'CANCELLED', 'supervisor,subscriber', 0),
(101, '4', 'LEAVE TYPE DELETED PENDING APPROVAL', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(102, '4', 'LEAVE TYPE DELETED PENDING APPROVAL', 'SUPERVISOR', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(103, '4', 'LEAVE TYPE DELETED SCHEDULED', 'ESS', 'CANCEL', 'CANCELLED', 'supervisor,subscriber', 0),
(104, '4', 'LEAVE TYPE DELETED SCHEDULED', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(105, '4', 'LEAVE TYPE DELETED SCHEDULED', 'SUPERVISOR', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(106, '4', 'LEAVE TYPE DELETED TAKEN', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_work_shift`
--

CREATE TABLE `ohrm_work_shift` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `hours_per_day` decimal(4,2) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_work_week`
--

CREATE TABLE `ohrm_work_week` (
  `id` int(10) UNSIGNED NOT NULL,
  `operational_country_id` int(10) UNSIGNED DEFAULT NULL,
  `mon` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `tue` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `wed` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `thu` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fri` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sat` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sun` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ohrm_work_week`
--

INSERT INTO `ohrm_work_week` (`id`, `operational_country_id`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `sun`) VALUES
(1, NULL, 0, 0, 0, 0, 0, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_ws_consumer`
--

CREATE TABLE `ohrm_ws_consumer` (
  `app_id` int(10) UNSIGNED NOT NULL,
  `app_token` varchar(10) NOT NULL,
  `app_name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abstract_display_field`
--
ALTER TABLE `abstract_display_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hs_hr_config`
--
ALTER TABLE `hs_hr_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `hs_hr_country`
--
ALTER TABLE `hs_hr_country`
  ADD PRIMARY KEY (`cou_code`);

--
-- Indexes for table `hs_hr_currency_type`
--
ALTER TABLE `hs_hr_currency_type`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `hs_hr_custom_export`
--
ALTER TABLE `hs_hr_custom_export`
  ADD PRIMARY KEY (`export_id`),
  ADD KEY `emp_number` (`export_id`);

--
-- Indexes for table `hs_hr_custom_fields`
--
ALTER TABLE `hs_hr_custom_fields`
  ADD PRIMARY KEY (`field_num`),
  ADD KEY `emp_number` (`field_num`),
  ADD KEY `screen` (`screen`);

--
-- Indexes for table `hs_hr_custom_import`
--
ALTER TABLE `hs_hr_custom_import`
  ADD PRIMARY KEY (`import_id`),
  ADD KEY `emp_number` (`import_id`);

--
-- Indexes for table `hs_hr_district`
--
ALTER TABLE `hs_hr_district`
  ADD PRIMARY KEY (`district_code`);

--
-- Indexes for table `hs_hr_employee`
--
ALTER TABLE `hs_hr_employee`
  ADD PRIMARY KEY (`emp_number`),
  ADD KEY `work_station` (`work_station`),
  ADD KEY `nation_code` (`nation_code`),
  ADD KEY `job_title_code` (`job_title_code`),
  ADD KEY `emp_status` (`emp_status`),
  ADD KEY `eeo_cat_code` (`eeo_cat_code`),
  ADD KEY `termination_id` (`termination_id`);

--
-- Indexes for table `hs_hr_emp_attachment`
--
ALTER TABLE `hs_hr_emp_attachment`
  ADD PRIMARY KEY (`emp_number`,`eattach_id`),
  ADD KEY `screen` (`screen`);

--
-- Indexes for table `hs_hr_emp_basicsalary`
--
ALTER TABLE `hs_hr_emp_basicsalary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sal_grd_code` (`sal_grd_code`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `payperiod_code` (`payperiod_code`);

--
-- Indexes for table `hs_hr_emp_children`
--
ALTER TABLE `hs_hr_emp_children`
  ADD PRIMARY KEY (`emp_number`,`ec_seqno`);

--
-- Indexes for table `hs_hr_emp_contract_extend`
--
ALTER TABLE `hs_hr_emp_contract_extend`
  ADD PRIMARY KEY (`emp_number`,`econ_extend_id`);

--
-- Indexes for table `hs_hr_emp_dependents`
--
ALTER TABLE `hs_hr_emp_dependents`
  ADD PRIMARY KEY (`emp_number`,`ed_seqno`);

--
-- Indexes for table `hs_hr_emp_directdebit`
--
ALTER TABLE `hs_hr_emp_directdebit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_id` (`salary_id`);

--
-- Indexes for table `hs_hr_emp_emergency_contacts`
--
ALTER TABLE `hs_hr_emp_emergency_contacts`
  ADD PRIMARY KEY (`emp_number`,`eec_seqno`);

--
-- Indexes for table `hs_hr_emp_history_of_ealier_pos`
--
ALTER TABLE `hs_hr_emp_history_of_ealier_pos`
  ADD PRIMARY KEY (`emp_number`,`emp_seqno`);

--
-- Indexes for table `hs_hr_emp_language`
--
ALTER TABLE `hs_hr_emp_language`
  ADD PRIMARY KEY (`emp_number`,`lang_id`,`fluency`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `hs_hr_emp_locations`
--
ALTER TABLE `hs_hr_emp_locations`
  ADD PRIMARY KEY (`emp_number`,`location_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `hs_hr_emp_member_detail`
--
ALTER TABLE `hs_hr_emp_member_detail`
  ADD PRIMARY KEY (`emp_number`,`membship_code`),
  ADD KEY `membship_code` (`membship_code`);

--
-- Indexes for table `hs_hr_emp_passport`
--
ALTER TABLE `hs_hr_emp_passport`
  ADD PRIMARY KEY (`emp_number`,`ep_seqno`);

--
-- Indexes for table `hs_hr_emp_picture`
--
ALTER TABLE `hs_hr_emp_picture`
  ADD PRIMARY KEY (`emp_number`);

--
-- Indexes for table `hs_hr_emp_reportto`
--
ALTER TABLE `hs_hr_emp_reportto`
  ADD PRIMARY KEY (`erep_sup_emp_number`,`erep_sub_emp_number`,`erep_reporting_mode`),
  ADD KEY `erep_sub_emp_number` (`erep_sub_emp_number`),
  ADD KEY `erep_reporting_mode` (`erep_reporting_mode`);

--
-- Indexes for table `hs_hr_emp_skill`
--
ALTER TABLE `hs_hr_emp_skill`
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `hs_hr_emp_us_tax`
--
ALTER TABLE `hs_hr_emp_us_tax`
  ADD PRIMARY KEY (`emp_number`);

--
-- Indexes for table `hs_hr_emp_work_experience`
--
ALTER TABLE `hs_hr_emp_work_experience`
  ADD PRIMARY KEY (`emp_number`,`eexp_seqno`);

--
-- Indexes for table `hs_hr_jobtit_empstat`
--
ALTER TABLE `hs_hr_jobtit_empstat`
  ADD PRIMARY KEY (`jobtit_code`,`estat_code`),
  ADD KEY `estat_code` (`estat_code`);

--
-- Indexes for table `hs_hr_mailnotifications`
--
ALTER TABLE `hs_hr_mailnotifications`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notification_type_id` (`notification_type_id`);

--
-- Indexes for table `hs_hr_module`
--
ALTER TABLE `hs_hr_module`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `hs_hr_payperiod`
--
ALTER TABLE `hs_hr_payperiod`
  ADD PRIMARY KEY (`payperiod_code`);

--
-- Indexes for table `hs_hr_pay_period`
--
ALTER TABLE `hs_hr_pay_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hs_hr_province`
--
ALTER TABLE `hs_hr_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hs_hr_unique_id`
--
ALTER TABLE `hs_hr_unique_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_field` (`table_name`,`field_name`);

--
-- Indexes for table `ohrm_advanced_report`
--
ALTER TABLE `ohrm_advanced_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_attendance_record`
--
ALTER TABLE `ohrm_attendance_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id_state` (`employee_id`,`state`),
  ADD KEY `emp_id_time` (`employee_id`,`punch_in_utc_time`,`punch_out_utc_time`);

--
-- Indexes for table `ohrm_auth_provider_extra_details`
--
ALTER TABLE `ohrm_auth_provider_extra_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `ohrm_available_group_field`
--
ALTER TABLE `ohrm_available_group_field`
  ADD PRIMARY KEY (`report_group_id`,`group_field_id`),
  ADD KEY `report_group_id` (`report_group_id`),
  ADD KEY `group_field_id` (`group_field_id`);

--
-- Indexes for table `ohrm_beacon_notification`
--
ALTER TABLE `ohrm_beacon_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_composite_display_field`
--
ALTER TABLE `ohrm_composite_display_field`
  ADD PRIMARY KEY (`composite_display_field_id`),
  ADD KEY `report_group_id` (`report_group_id`),
  ADD KEY `display_field_group_id` (`display_field_group_id`);

--
-- Indexes for table `ohrm_customer`
--
ALTER TABLE `ohrm_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ohrm_datapoint`
--
ALTER TABLE `ohrm_datapoint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datapoint_type_id` (`datapoint_type_id`);

--
-- Indexes for table `ohrm_datapoint_type`
--
ALTER TABLE `ohrm_datapoint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_data_group`
--
ALTER TABLE `ohrm_data_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ohrm_data_group_screen`
--
ALTER TABLE `ohrm_data_group_screen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_group_id` (`data_group_id`),
  ADD KEY `screen_id` (`screen_id`);

--
-- Indexes for table `ohrm_display_field`
--
ALTER TABLE `ohrm_display_field`
  ADD PRIMARY KEY (`display_field_id`),
  ADD KEY `report_group_id` (`report_group_id`),
  ADD KEY `display_field_group_id` (`display_field_group_id`);

--
-- Indexes for table `ohrm_display_field_group`
--
ALTER TABLE `ohrm_display_field_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_group_id` (`report_group_id`);

--
-- Indexes for table `ohrm_education`
--
ALTER TABLE `ohrm_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_email`
--
ALTER TABLE `ohrm_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ohrm_email_name` (`name`);

--
-- Indexes for table `ohrm_email_configuration`
--
ALTER TABLE `ohrm_email_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_email_notification`
--
ALTER TABLE `ohrm_email_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_email_processor`
--
ALTER TABLE `ohrm_email_processor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `ohrm_email_subscriber`
--
ALTER TABLE `ohrm_email_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Indexes for table `ohrm_email_template`
--
ALTER TABLE `ohrm_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `ohrm_employee_event`
--
ALTER TABLE `ohrm_employee_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `ohrm_employee_work_shift`
--
ALTER TABLE `ohrm_employee_work_shift`
  ADD PRIMARY KEY (`work_shift_id`,`emp_number`),
  ADD KEY `emp_number` (`emp_number`);

--
-- Indexes for table `ohrm_employment_status`
--
ALTER TABLE `ohrm_employment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_emp_education`
--
ALTER TABLE `ohrm_emp_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `education_id` (`education_id`);

--
-- Indexes for table `ohrm_emp_license`
--
ALTER TABLE `ohrm_emp_license`
  ADD PRIMARY KEY (`emp_number`,`license_id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `ohrm_emp_reporting_method`
--
ALTER TABLE `ohrm_emp_reporting_method`
  ADD PRIMARY KEY (`reporting_method_id`);

--
-- Indexes for table `ohrm_emp_termination`
--
ALTER TABLE `ohrm_emp_termination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reason_id` (`reason_id`),
  ADD KEY `emp_number` (`emp_number`);

--
-- Indexes for table `ohrm_emp_termination_reason`
--
ALTER TABLE `ohrm_emp_termination_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_filter_field`
--
ALTER TABLE `ohrm_filter_field`
  ADD PRIMARY KEY (`filter_field_id`),
  ADD KEY `report_group_id` (`report_group_id`);

--
-- Indexes for table `ohrm_group_field`
--
ALTER TABLE `ohrm_group_field`
  ADD PRIMARY KEY (`group_field_id`);

--
-- Indexes for table `ohrm_holiday`
--
ALTER TABLE `ohrm_holiday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ohrm_holiday_ohrm_operational_country` (`operational_country_id`);

--
-- Indexes for table `ohrm_home_page`
--
ALTER TABLE `ohrm_home_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`);

--
-- Indexes for table `ohrm_job_candidate`
--
ALTER TABLE `ohrm_job_candidate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added_person` (`added_person`);

--
-- Indexes for table `ohrm_job_candidate_attachment`
--
ALTER TABLE `ohrm_job_candidate_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `ohrm_job_candidate_history`
--
ALTER TABLE `ohrm_job_candidate_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`),
  ADD KEY `vacancy_id` (`vacancy_id`),
  ADD KEY `interview_id` (`interview_id`),
  ADD KEY `performed_by` (`performed_by`);

--
-- Indexes for table `ohrm_job_candidate_vacancy`
--
ALTER TABLE `ohrm_job_candidate_vacancy`
  ADD PRIMARY KEY (`candidate_id`,`vacancy_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `vacancy_id` (`vacancy_id`);

--
-- Indexes for table `ohrm_job_category`
--
ALTER TABLE `ohrm_job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_job_interview`
--
ALTER TABLE `ohrm_job_interview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_vacancy_id` (`candidate_vacancy_id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `ohrm_job_interview_attachment`
--
ALTER TABLE `ohrm_job_interview_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interview_id` (`interview_id`);

--
-- Indexes for table `ohrm_job_interview_interviewer`
--
ALTER TABLE `ohrm_job_interview_interviewer`
  ADD PRIMARY KEY (`interview_id`,`interviewer_id`),
  ADD KEY `interviewer_id` (`interviewer_id`);

--
-- Indexes for table `ohrm_job_specification_attachment`
--
ALTER TABLE `ohrm_job_specification_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_title_id` (`job_title_id`);

--
-- Indexes for table `ohrm_job_title`
--
ALTER TABLE `ohrm_job_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_job_vacancy`
--
ALTER TABLE `ohrm_job_vacancy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_title_code` (`job_title_code`),
  ADD KEY `hiring_manager_id` (`hiring_manager_id`);

--
-- Indexes for table `ohrm_job_vacancy_attachment`
--
ALTER TABLE `ohrm_job_vacancy_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacancy_id` (`vacancy_id`);

--
-- Indexes for table `ohrm_kpi`
--
ALTER TABLE `ohrm_kpi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_language`
--
ALTER TABLE `ohrm_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_leave`
--
ALTER TABLE `ohrm_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_type_emp` (`leave_request_id`,`leave_type_id`,`emp_number`),
  ADD KEY `request_status` (`leave_request_id`,`status`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `ohrm_leave_adjustment`
--
ALTER TABLE `ohrm_leave_adjustment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `created_by_id` (`created_by_id`),
  ADD KEY `adjustment_type` (`adjustment_type`);

--
-- Indexes for table `ohrm_leave_comment`
--
ALTER TABLE `ohrm_leave_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_id` (`leave_id`),
  ADD KEY `created_by_id` (`created_by_id`),
  ADD KEY `created_by_emp_number` (`created_by_emp_number`);

--
-- Indexes for table `ohrm_leave_entitlement`
--
ALTER TABLE `ohrm_leave_entitlement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `entitlement_type` (`entitlement_type`),
  ADD KEY `created_by_id` (`created_by_id`);

--
-- Indexes for table `ohrm_leave_entitlement_adjustment`
--
ALTER TABLE `ohrm_leave_entitlement_adjustment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entitlement_id` (`entitlement_id`),
  ADD KEY `adjustment_id` (`adjustment_id`);

--
-- Indexes for table `ohrm_leave_entitlement_type`
--
ALTER TABLE `ohrm_leave_entitlement_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_leave_leave_entitlement`
--
ALTER TABLE `ohrm_leave_leave_entitlement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entitlement_id` (`entitlement_id`),
  ADD KEY `leave_id` (`leave_id`);

--
-- Indexes for table `ohrm_leave_period_history`
--
ALTER TABLE `ohrm_leave_period_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_leave_request`
--
ALTER TABLE `ohrm_leave_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `ohrm_leave_request_comment`
--
ALTER TABLE `ohrm_leave_request_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_id` (`leave_request_id`),
  ADD KEY `created_by_id` (`created_by_id`),
  ADD KEY `created_by_emp_number` (`created_by_emp_number`);

--
-- Indexes for table `ohrm_leave_status`
--
ALTER TABLE `ohrm_leave_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_leave_type`
--
ALTER TABLE `ohrm_leave_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operational_country_id` (`operational_country_id`);

--
-- Indexes for table `ohrm_license`
--
ALTER TABLE `ohrm_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_location`
--
ALTER TABLE `ohrm_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `ohrm_login`
--
ALTER TABLE `ohrm_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_membership`
--
ALTER TABLE `ohrm_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_menu_item`
--
ALTER TABLE `ohrm_menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `screen_id` (`screen_id`);

--
-- Indexes for table `ohrm_module`
--
ALTER TABLE `ohrm_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_module_default_page`
--
ALTER TABLE `ohrm_module_default_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `ohrm_nationality`
--
ALTER TABLE `ohrm_nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_oauth_access_token`
--
ALTER TABLE `ohrm_oauth_access_token`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `ohrm_oauth_authorization_code`
--
ALTER TABLE `ohrm_oauth_authorization_code`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `ohrm_oauth_client`
--
ALTER TABLE `ohrm_oauth_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ohrm_oauth_refresh_token`
--
ALTER TABLE `ohrm_oauth_refresh_token`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `ohrm_oauth_user`
--
ALTER TABLE `ohrm_oauth_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ohrm_openid_provider`
--
ALTER TABLE `ohrm_openid_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_openid_user_identity`
--
ALTER TABLE `ohrm_openid_user_identity`
  ADD KEY `ohrm_user_identity_ibfk_1` (`user_id`),
  ADD KEY `ohrm_user_identity_ibfk_2` (`provider_id`);

--
-- Indexes for table `ohrm_operational_country`
--
ALTER TABLE `ohrm_operational_country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ohrm_operational_country_hs_hr_country` (`country_code`);

--
-- Indexes for table `ohrm_organization_gen_info`
--
ALTER TABLE `ohrm_organization_gen_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_pay_grade`
--
ALTER TABLE `ohrm_pay_grade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ohrm_pay_grade_currency`
--
ALTER TABLE `ohrm_pay_grade_currency`
  ADD PRIMARY KEY (`pay_grade_id`,`currency_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `ohrm_performance_review`
--
ALTER TABLE `ohrm_performance_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_number` (`employee_number`);

--
-- Indexes for table `ohrm_performance_track`
--
ALTER TABLE `ohrm_performance_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_performance_track_fk1_idx` (`emp_number`),
  ADD KEY `ohrm_performance_track_fk2_idx` (`added_by`);

--
-- Indexes for table `ohrm_performance_tracker_log`
--
ALTER TABLE `ohrm_performance_tracker_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_performance_tracker_log_fk1_idx` (`performance_track_id`),
  ADD KEY `ohrm_performance_tracker_log_fk2_idx` (`reviewer_id`),
  ADD KEY `fk_ohrm_performance_tracker_log_1` (`user_id`);

--
-- Indexes for table `ohrm_performance_tracker_reviewer`
--
ALTER TABLE `ohrm_performance_tracker_reviewer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_performance_tracker_reviewer_fk1_idx` (`performance_track_id`),
  ADD KEY `ohrm_performance_tracker_reviewer_fk2_idx` (`reviewer_id`);

--
-- Indexes for table `ohrm_plugin`
--
ALTER TABLE `ohrm_plugin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ohrm_project`
--
ALTER TABLE `ohrm_project`
  ADD PRIMARY KEY (`project_id`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `ohrm_project_activity`
--
ALTER TABLE `ohrm_project_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `ohrm_project_admin`
--
ALTER TABLE `ohrm_project_admin`
  ADD PRIMARY KEY (`project_id`,`emp_number`),
  ADD KEY `emp_number` (`emp_number`);

--
-- Indexes for table `ohrm_report`
--
ALTER TABLE `ohrm_report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `report_group_id` (`report_group_id`);

--
-- Indexes for table `ohrm_report_group`
--
ALTER TABLE `ohrm_report_group`
  ADD PRIMARY KEY (`report_group_id`);

--
-- Indexes for table `ohrm_reviewer`
--
ALTER TABLE `ohrm_reviewer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_id` (`review_id`);

--
-- Indexes for table `ohrm_reviewer_group`
--
ALTER TABLE `ohrm_reviewer_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_reviewer_rating`
--
ALTER TABLE `ohrm_reviewer_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_id` (`review_id`),
  ADD KEY `reviewer_id` (`reviewer_id`);

--
-- Indexes for table `ohrm_role_user_selection_rule`
--
ALTER TABLE `ohrm_role_user_selection_rule`
  ADD PRIMARY KEY (`user_role_id`,`selection_rule_id`);

--
-- Indexes for table `ohrm_screen`
--
ALTER TABLE `ohrm_screen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `ohrm_selected_composite_display_field`
--
ALTER TABLE `ohrm_selected_composite_display_field`
  ADD PRIMARY KEY (`id`,`composite_display_field_id`,`report_id`),
  ADD KEY `composite_display_field_id` (`composite_display_field_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `ohrm_selected_display_field`
--
ALTER TABLE `ohrm_selected_display_field`
  ADD PRIMARY KEY (`id`,`display_field_id`,`report_id`),
  ADD KEY `display_field_id` (`display_field_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `ohrm_selected_display_field_group`
--
ALTER TABLE `ohrm_selected_display_field_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`),
  ADD KEY `display_field_group_id` (`display_field_group_id`);

--
-- Indexes for table `ohrm_selected_filter_field`
--
ALTER TABLE `ohrm_selected_filter_field`
  ADD PRIMARY KEY (`report_id`,`filter_field_id`),
  ADD KEY `report_id` (`report_id`),
  ADD KEY `filter_field_id` (`filter_field_id`);

--
-- Indexes for table `ohrm_selected_group_field`
--
ALTER TABLE `ohrm_selected_group_field`
  ADD PRIMARY KEY (`group_field_id`,`summary_display_field_id`,`report_id`),
  ADD KEY `group_field_id` (`group_field_id`),
  ADD KEY `summary_display_field_id` (`summary_display_field_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `ohrm_skill`
--
ALTER TABLE `ohrm_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_subunit`
--
ALTER TABLE `ohrm_subunit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ohrm_summary_display_field`
--
ALTER TABLE `ohrm_summary_display_field`
  ADD PRIMARY KEY (`summary_display_field_id`),
  ADD KEY `display_field_group_id` (`display_field_group_id`);

--
-- Indexes for table `ohrm_timesheet`
--
ALTER TABLE `ohrm_timesheet`
  ADD PRIMARY KEY (`timesheet_id`);

--
-- Indexes for table `ohrm_timesheet_action_log`
--
ALTER TABLE `ohrm_timesheet_action_log`
  ADD PRIMARY KEY (`timesheet_action_log_id`),
  ADD KEY `timesheet_id` (`timesheet_id`),
  ADD KEY `performed_by` (`performed_by`);

--
-- Indexes for table `ohrm_timesheet_item`
--
ALTER TABLE `ohrm_timesheet_item`
  ADD PRIMARY KEY (`timesheet_item_id`),
  ADD KEY `timesheet_id` (`timesheet_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `ohrm_upgrade_history`
--
ALTER TABLE `ohrm_upgrade_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_user`
--
ALTER TABLE `ohrm_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `user_role_id` (`user_role_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `modified_user_id` (`modified_user_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `ohrm_user_role`
--
ALTER TABLE `ohrm_user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_role_name` (`name`);

--
-- Indexes for table `ohrm_user_role_data_group`
--
ALTER TABLE `ohrm_user_role_data_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`),
  ADD KEY `data_group_id` (`data_group_id`);

--
-- Indexes for table `ohrm_user_role_screen`
--
ALTER TABLE `ohrm_user_role_screen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`),
  ADD KEY `screen_id` (`screen_id`);

--
-- Indexes for table `ohrm_user_selection_rule`
--
ALTER TABLE `ohrm_user_selection_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_workflow_state_machine`
--
ALTER TABLE `ohrm_workflow_state_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_work_shift`
--
ALTER TABLE `ohrm_work_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_work_week`
--
ALTER TABLE `ohrm_work_week`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ohrm_work_week_ohrm_operational_country` (`operational_country_id`);

--
-- Indexes for table `ohrm_ws_consumer`
--
ALTER TABLE `ohrm_ws_consumer`
  ADD PRIMARY KEY (`app_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abstract_display_field`
--
ALTER TABLE `abstract_display_field`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hs_hr_emp_basicsalary`
--
ALTER TABLE `hs_hr_emp_basicsalary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hs_hr_emp_directdebit`
--
ALTER TABLE `hs_hr_emp_directdebit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hs_hr_province`
--
ALTER TABLE `hs_hr_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `hs_hr_unique_id`
--
ALTER TABLE `hs_hr_unique_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `ohrm_auth_provider_extra_details`
--
ALTER TABLE `ohrm_auth_provider_extra_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_beacon_notification`
--
ALTER TABLE `ohrm_beacon_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_composite_display_field`
--
ALTER TABLE `ohrm_composite_display_field`
  MODIFY `composite_display_field_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ohrm_customer`
--
ALTER TABLE `ohrm_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_datapoint`
--
ALTER TABLE `ohrm_datapoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_datapoint_type`
--
ALTER TABLE `ohrm_datapoint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ohrm_data_group`
--
ALTER TABLE `ohrm_data_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `ohrm_data_group_screen`
--
ALTER TABLE `ohrm_data_group_screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `ohrm_display_field`
--
ALTER TABLE `ohrm_display_field`
  MODIFY `display_field_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `ohrm_display_field_group`
--
ALTER TABLE `ohrm_display_field_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ohrm_education`
--
ALTER TABLE `ohrm_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_email`
--
ALTER TABLE `ohrm_email`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ohrm_email_configuration`
--
ALTER TABLE `ohrm_email_configuration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ohrm_email_notification`
--
ALTER TABLE `ohrm_email_notification`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ohrm_email_processor`
--
ALTER TABLE `ohrm_email_processor`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ohrm_email_subscriber`
--
ALTER TABLE `ohrm_email_subscriber`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_email_template`
--
ALTER TABLE `ohrm_email_template`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ohrm_employee_event`
--
ALTER TABLE `ohrm_employee_event`
  MODIFY `event_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ohrm_employee_work_shift`
--
ALTER TABLE `ohrm_employee_work_shift`
  MODIFY `work_shift_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_employment_status`
--
ALTER TABLE `ohrm_employment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_emp_education`
--
ALTER TABLE `ohrm_emp_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_emp_reporting_method`
--
ALTER TABLE `ohrm_emp_reporting_method`
  MODIFY `reporting_method_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ohrm_emp_termination`
--
ALTER TABLE `ohrm_emp_termination`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_emp_termination_reason`
--
ALTER TABLE `ohrm_emp_termination_reason`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ohrm_holiday`
--
ALTER TABLE `ohrm_holiday`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ohrm_home_page`
--
ALTER TABLE `ohrm_home_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ohrm_job_candidate_attachment`
--
ALTER TABLE `ohrm_job_candidate_attachment`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_job_candidate_history`
--
ALTER TABLE `ohrm_job_candidate_history`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_job_category`
--
ALTER TABLE `ohrm_job_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ohrm_job_interview`
--
ALTER TABLE `ohrm_job_interview`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_job_interview_attachment`
--
ALTER TABLE `ohrm_job_interview_attachment`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_job_specification_attachment`
--
ALTER TABLE `ohrm_job_specification_attachment`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_job_title`
--
ALTER TABLE `ohrm_job_title`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ohrm_job_vacancy_attachment`
--
ALTER TABLE `ohrm_job_vacancy_attachment`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_kpi`
--
ALTER TABLE `ohrm_kpi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_language`
--
ALTER TABLE `ohrm_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_leave`
--
ALTER TABLE `ohrm_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `ohrm_leave_adjustment`
--
ALTER TABLE `ohrm_leave_adjustment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_leave_comment`
--
ALTER TABLE `ohrm_leave_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ohrm_leave_entitlement`
--
ALTER TABLE `ohrm_leave_entitlement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ohrm_leave_entitlement_adjustment`
--
ALTER TABLE `ohrm_leave_entitlement_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_leave_entitlement_type`
--
ALTER TABLE `ohrm_leave_entitlement_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ohrm_leave_leave_entitlement`
--
ALTER TABLE `ohrm_leave_leave_entitlement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ohrm_leave_period_history`
--
ALTER TABLE `ohrm_leave_period_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ohrm_leave_request`
--
ALTER TABLE `ohrm_leave_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ohrm_leave_request_comment`
--
ALTER TABLE `ohrm_leave_request_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ohrm_leave_status`
--
ALTER TABLE `ohrm_leave_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ohrm_leave_type`
--
ALTER TABLE `ohrm_leave_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ohrm_license`
--
ALTER TABLE `ohrm_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_location`
--
ALTER TABLE `ohrm_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_login`
--
ALTER TABLE `ohrm_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `ohrm_membership`
--
ALTER TABLE `ohrm_membership`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_menu_item`
--
ALTER TABLE `ohrm_menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `ohrm_module`
--
ALTER TABLE `ohrm_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ohrm_module_default_page`
--
ALTER TABLE `ohrm_module_default_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ohrm_nationality`
--
ALTER TABLE `ohrm_nationality`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `ohrm_openid_provider`
--
ALTER TABLE `ohrm_openid_provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_operational_country`
--
ALTER TABLE `ohrm_operational_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_organization_gen_info`
--
ALTER TABLE `ohrm_organization_gen_info`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ohrm_pay_grade`
--
ALTER TABLE `ohrm_pay_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_performance_review`
--
ALTER TABLE `ohrm_performance_review`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_performance_track`
--
ALTER TABLE `ohrm_performance_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_performance_tracker_log`
--
ALTER TABLE `ohrm_performance_tracker_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_performance_tracker_reviewer`
--
ALTER TABLE `ohrm_performance_tracker_reviewer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_plugin`
--
ALTER TABLE `ohrm_plugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_project`
--
ALTER TABLE `ohrm_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_project_activity`
--
ALTER TABLE `ohrm_project_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_report`
--
ALTER TABLE `ohrm_report`
  MODIFY `report_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ohrm_reviewer`
--
ALTER TABLE `ohrm_reviewer`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_reviewer_group`
--
ALTER TABLE `ohrm_reviewer_group`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ohrm_reviewer_rating`
--
ALTER TABLE `ohrm_reviewer_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_screen`
--
ALTER TABLE `ohrm_screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `ohrm_selected_display_field`
--
ALTER TABLE `ohrm_selected_display_field`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `ohrm_selected_display_field_group`
--
ALTER TABLE `ohrm_selected_display_field_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ohrm_skill`
--
ALTER TABLE `ohrm_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_subunit`
--
ALTER TABLE `ohrm_subunit`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ohrm_upgrade_history`
--
ALTER TABLE `ohrm_upgrade_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_user`
--
ALTER TABLE `ohrm_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ohrm_user_role`
--
ALTER TABLE `ohrm_user_role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ohrm_user_role_data_group`
--
ALTER TABLE `ohrm_user_role_data_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `ohrm_user_role_screen`
--
ALTER TABLE `ohrm_user_role_screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `ohrm_user_selection_rule`
--
ALTER TABLE `ohrm_user_selection_rule`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_workflow_state_machine`
--
ALTER TABLE `ohrm_workflow_state_machine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `ohrm_work_shift`
--
ALTER TABLE `ohrm_work_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ohrm_work_week`
--
ALTER TABLE `ohrm_work_week`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ohrm_ws_consumer`
--
ALTER TABLE `ohrm_ws_consumer`
  MODIFY `app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hs_hr_employee`
--
ALTER TABLE `hs_hr_employee`
  ADD CONSTRAINT `hs_hr_employee_ibfk_1` FOREIGN KEY (`work_station`) REFERENCES `ohrm_subunit` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_2` FOREIGN KEY (`nation_code`) REFERENCES `ohrm_nationality` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_3` FOREIGN KEY (`job_title_code`) REFERENCES `ohrm_job_title` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_4` FOREIGN KEY (`emp_status`) REFERENCES `ohrm_employment_status` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_5` FOREIGN KEY (`eeo_cat_code`) REFERENCES `ohrm_job_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_6` FOREIGN KEY (`termination_id`) REFERENCES `ohrm_emp_termination` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hs_hr_emp_attachment`
--
ALTER TABLE `hs_hr_emp_attachment`
  ADD CONSTRAINT `hs_hr_emp_attachment_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_basicsalary`
--
ALTER TABLE `hs_hr_emp_basicsalary`
  ADD CONSTRAINT `hs_hr_emp_basicsalary_ibfk_1` FOREIGN KEY (`sal_grd_code`) REFERENCES `ohrm_pay_grade` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_basicsalary_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `hs_hr_currency_type` (`currency_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_basicsalary_ibfk_3` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_basicsalary_ibfk_4` FOREIGN KEY (`payperiod_code`) REFERENCES `hs_hr_payperiod` (`payperiod_code`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_children`
--
ALTER TABLE `hs_hr_emp_children`
  ADD CONSTRAINT `hs_hr_emp_children_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_contract_extend`
--
ALTER TABLE `hs_hr_emp_contract_extend`
  ADD CONSTRAINT `hs_hr_emp_contract_extend_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_dependents`
--
ALTER TABLE `hs_hr_emp_dependents`
  ADD CONSTRAINT `hs_hr_emp_dependents_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_directdebit`
--
ALTER TABLE `hs_hr_emp_directdebit`
  ADD CONSTRAINT `hs_hr_emp_directdebit_ibfk_1` FOREIGN KEY (`salary_id`) REFERENCES `hs_hr_emp_basicsalary` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_emergency_contacts`
--
ALTER TABLE `hs_hr_emp_emergency_contacts`
  ADD CONSTRAINT `hs_hr_emp_emergency_contacts_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_history_of_ealier_pos`
--
ALTER TABLE `hs_hr_emp_history_of_ealier_pos`
  ADD CONSTRAINT `hs_hr_emp_history_of_ealier_pos_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_language`
--
ALTER TABLE `hs_hr_emp_language`
  ADD CONSTRAINT `hs_hr_emp_language_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_language_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `ohrm_language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_locations`
--
ALTER TABLE `hs_hr_emp_locations`
  ADD CONSTRAINT `hs_hr_emp_locations_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `ohrm_location` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_locations_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_member_detail`
--
ALTER TABLE `hs_hr_emp_member_detail`
  ADD CONSTRAINT `hs_hr_emp_member_detail_ibfk_1` FOREIGN KEY (`membship_code`) REFERENCES `ohrm_membership` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_member_detail_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_passport`
--
ALTER TABLE `hs_hr_emp_passport`
  ADD CONSTRAINT `hs_hr_emp_passport_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_picture`
--
ALTER TABLE `hs_hr_emp_picture`
  ADD CONSTRAINT `hs_hr_emp_picture_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_reportto`
--
ALTER TABLE `hs_hr_emp_reportto`
  ADD CONSTRAINT `hs_hr_emp_reportto_ibfk_1` FOREIGN KEY (`erep_sup_emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_reportto_ibfk_2` FOREIGN KEY (`erep_sub_emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_reportto_ibfk_3` FOREIGN KEY (`erep_reporting_mode`) REFERENCES `ohrm_emp_reporting_method` (`reporting_method_id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_skill`
--
ALTER TABLE `hs_hr_emp_skill`
  ADD CONSTRAINT `hs_hr_emp_skill_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_skill_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `ohrm_skill` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_us_tax`
--
ALTER TABLE `hs_hr_emp_us_tax`
  ADD CONSTRAINT `hs_hr_emp_us_tax_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_work_experience`
--
ALTER TABLE `hs_hr_emp_work_experience`
  ADD CONSTRAINT `hs_hr_emp_work_experience_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_jobtit_empstat`
--
ALTER TABLE `hs_hr_jobtit_empstat`
  ADD CONSTRAINT `hs_hr_jobtit_empstat_ibfk_1` FOREIGN KEY (`jobtit_code`) REFERENCES `ohrm_job_title` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_jobtit_empstat_ibfk_2` FOREIGN KEY (`estat_code`) REFERENCES `ohrm_employment_status` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_mailnotifications`
--
ALTER TABLE `hs_hr_mailnotifications`
  ADD CONSTRAINT `hs_hr_mailnotifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ohrm_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_auth_provider_extra_details`
--
ALTER TABLE `ohrm_auth_provider_extra_details`
  ADD CONSTRAINT `ohrm_auth_provider_extra_details_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `ohrm_openid_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_available_group_field`
--
ALTER TABLE `ohrm_available_group_field`
  ADD CONSTRAINT `ohrm_available_group_field_ibfk_1` FOREIGN KEY (`group_field_id`) REFERENCES `ohrm_group_field` (`group_field_id`);

--
-- Constraints for table `ohrm_composite_display_field`
--
ALTER TABLE `ohrm_composite_display_field`
  ADD CONSTRAINT `ohrm_composite_display_field_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_composite_display_field_ibfk_2` FOREIGN KEY (`display_field_group_id`) REFERENCES `ohrm_display_field_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_datapoint`
--
ALTER TABLE `ohrm_datapoint`
  ADD CONSTRAINT `ohrm_datapoint_ibfk_1` FOREIGN KEY (`datapoint_type_id`) REFERENCES `ohrm_datapoint_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_data_group_screen`
--
ALTER TABLE `ohrm_data_group_screen`
  ADD CONSTRAINT `ohrm_data_group_screen_ibfk_1` FOREIGN KEY (`data_group_id`) REFERENCES `ohrm_data_group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_data_group_screen_ibfk_2` FOREIGN KEY (`screen_id`) REFERENCES `ohrm_screen` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_display_field`
--
ALTER TABLE `ohrm_display_field`
  ADD CONSTRAINT `ohrm_display_field_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_display_field_ibfk_2` FOREIGN KEY (`display_field_group_id`) REFERENCES `ohrm_display_field_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_display_field_group`
--
ALTER TABLE `ohrm_display_field_group`
  ADD CONSTRAINT `ohrm_display_field_group_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_email_processor`
--
ALTER TABLE `ohrm_email_processor`
  ADD CONSTRAINT `ohrm_email_processor_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `ohrm_email` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_email_subscriber`
--
ALTER TABLE `ohrm_email_subscriber`
  ADD CONSTRAINT `ohrm_email_subscriber_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `ohrm_email_notification` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_email_template`
--
ALTER TABLE `ohrm_email_template`
  ADD CONSTRAINT `ohrm_email_template_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `ohrm_email` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_employee_work_shift`
--
ALTER TABLE `ohrm_employee_work_shift`
  ADD CONSTRAINT `ohrm_employee_work_shift_ibfk_1` FOREIGN KEY (`work_shift_id`) REFERENCES `ohrm_work_shift` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_employee_work_shift_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_emp_education`
--
ALTER TABLE `ohrm_emp_education`
  ADD CONSTRAINT `ohrm_emp_education_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_emp_education_ibfk_2` FOREIGN KEY (`education_id`) REFERENCES `ohrm_education` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_emp_license`
--
ALTER TABLE `ohrm_emp_license`
  ADD CONSTRAINT `ohrm_emp_license_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_emp_license_ibfk_2` FOREIGN KEY (`license_id`) REFERENCES `ohrm_license` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_emp_termination`
--
ALTER TABLE `ohrm_emp_termination`
  ADD CONSTRAINT `ohrm_emp_termination_ibfk_1` FOREIGN KEY (`reason_id`) REFERENCES `ohrm_emp_termination_reason` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_emp_termination_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_filter_field`
--
ALTER TABLE `ohrm_filter_field`
  ADD CONSTRAINT `ohrm_filter_field_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_holiday`
--
ALTER TABLE `ohrm_holiday`
  ADD CONSTRAINT `fk_ohrm_holiday_ohrm_operational_country` FOREIGN KEY (`operational_country_id`) REFERENCES `ohrm_operational_country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_home_page`
--
ALTER TABLE `ohrm_home_page`
  ADD CONSTRAINT `ohrm_home_page_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_candidate`
--
ALTER TABLE `ohrm_job_candidate`
  ADD CONSTRAINT `ohrm_job_candidate_ibfk_1` FOREIGN KEY (`added_person`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_job_candidate_attachment`
--
ALTER TABLE `ohrm_job_candidate_attachment`
  ADD CONSTRAINT `ohrm_job_candidate_attachment_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `ohrm_job_candidate` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_candidate_history`
--
ALTER TABLE `ohrm_job_candidate_history`
  ADD CONSTRAINT `ohrm_job_candidate_history_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `ohrm_job_candidate` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_job_candidate_history_ibfk_2` FOREIGN KEY (`vacancy_id`) REFERENCES `ohrm_job_vacancy` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_job_candidate_history_ibfk_3` FOREIGN KEY (`interview_id`) REFERENCES `ohrm_job_interview` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_job_candidate_history_ibfk_4` FOREIGN KEY (`performed_by`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_job_candidate_vacancy`
--
ALTER TABLE `ohrm_job_candidate_vacancy`
  ADD CONSTRAINT `ohrm_job_candidate_vacancy_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `ohrm_job_candidate` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_job_candidate_vacancy_ibfk_2` FOREIGN KEY (`vacancy_id`) REFERENCES `ohrm_job_vacancy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_interview`
--
ALTER TABLE `ohrm_job_interview`
  ADD CONSTRAINT `ohrm_job_interview_ibfk_1` FOREIGN KEY (`candidate_vacancy_id`) REFERENCES `ohrm_job_candidate_vacancy` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_job_interview_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `ohrm_job_candidate` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_interview_attachment`
--
ALTER TABLE `ohrm_job_interview_attachment`
  ADD CONSTRAINT `ohrm_job_interview_attachment_ibfk_1` FOREIGN KEY (`interview_id`) REFERENCES `ohrm_job_interview` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_interview_interviewer`
--
ALTER TABLE `ohrm_job_interview_interviewer`
  ADD CONSTRAINT `ohrm_job_interview_interviewer_ibfk_1` FOREIGN KEY (`interview_id`) REFERENCES `ohrm_job_interview` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_job_interview_interviewer_ibfk_2` FOREIGN KEY (`interviewer_id`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_specification_attachment`
--
ALTER TABLE `ohrm_job_specification_attachment`
  ADD CONSTRAINT `ohrm_job_specification_attachment_ibfk_1` FOREIGN KEY (`job_title_id`) REFERENCES `ohrm_job_title` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_vacancy`
--
ALTER TABLE `ohrm_job_vacancy`
  ADD CONSTRAINT `ohrm_job_vacancy_ibfk_1` FOREIGN KEY (`job_title_code`) REFERENCES `ohrm_job_title` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_job_vacancy_ibfk_2` FOREIGN KEY (`hiring_manager_id`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_job_vacancy_attachment`
--
ALTER TABLE `ohrm_job_vacancy_attachment`
  ADD CONSTRAINT `ohrm_job_vacancy_attachment_ibfk_1` FOREIGN KEY (`vacancy_id`) REFERENCES `ohrm_job_vacancy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave`
--
ALTER TABLE `ohrm_leave`
  ADD CONSTRAINT `ohrm_leave_ibfk_1` FOREIGN KEY (`leave_request_id`) REFERENCES `ohrm_leave_request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `ohrm_leave_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_adjustment`
--
ALTER TABLE `ohrm_leave_adjustment`
  ADD CONSTRAINT `ohrm_leave_adjustment_ibfk_1` FOREIGN KEY (`leave_type_id`) REFERENCES `ohrm_leave_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_adjustment_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_adjustment_ibfk_3` FOREIGN KEY (`created_by_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_leave_adjustment_ibfk_4` FOREIGN KEY (`adjustment_type`) REFERENCES `ohrm_leave_entitlement_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_comment`
--
ALTER TABLE `ohrm_leave_comment`
  ADD CONSTRAINT `ohrm_leave_comment_ibfk_1` FOREIGN KEY (`leave_id`) REFERENCES `ohrm_leave` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_comment_ibfk_2` FOREIGN KEY (`created_by_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_leave_comment_ibfk_3` FOREIGN KEY (`created_by_emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_entitlement`
--
ALTER TABLE `ohrm_leave_entitlement`
  ADD CONSTRAINT `ohrm_leave_entitlement_ibfk_1` FOREIGN KEY (`leave_type_id`) REFERENCES `ohrm_leave_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_entitlement_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_entitlement_ibfk_3` FOREIGN KEY (`entitlement_type`) REFERENCES `ohrm_leave_entitlement_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_entitlement_ibfk_4` FOREIGN KEY (`created_by_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_leave_entitlement_adjustment`
--
ALTER TABLE `ohrm_leave_entitlement_adjustment`
  ADD CONSTRAINT `ohrm_leave_entitlement_adjustment_ibfk_1` FOREIGN KEY (`entitlement_id`) REFERENCES `ohrm_leave_entitlement` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_entitlement_adjustment_ibfk_2` FOREIGN KEY (`adjustment_id`) REFERENCES `ohrm_leave_adjustment` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_leave_entitlement`
--
ALTER TABLE `ohrm_leave_leave_entitlement`
  ADD CONSTRAINT `ohrm_leave_leave_entitlement_ibfk_1` FOREIGN KEY (`entitlement_id`) REFERENCES `ohrm_leave_entitlement` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_leave_entitlement_ibfk_2` FOREIGN KEY (`leave_id`) REFERENCES `ohrm_leave` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_request`
--
ALTER TABLE `ohrm_leave_request`
  ADD CONSTRAINT `ohrm_leave_request_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_request_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `ohrm_leave_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_request_comment`
--
ALTER TABLE `ohrm_leave_request_comment`
  ADD CONSTRAINT `ohrm_leave_request_comment_ibfk_1` FOREIGN KEY (`leave_request_id`) REFERENCES `ohrm_leave_request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_request_comment_ibfk_2` FOREIGN KEY (`created_by_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_leave_request_comment_ibfk_3` FOREIGN KEY (`created_by_emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_type`
--
ALTER TABLE `ohrm_leave_type`
  ADD CONSTRAINT `ohrm_leave_type_ibfk_1` FOREIGN KEY (`operational_country_id`) REFERENCES `ohrm_operational_country` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_location`
--
ALTER TABLE `ohrm_location`
  ADD CONSTRAINT `ohrm_location_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `hs_hr_country` (`cou_code`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_menu_item`
--
ALTER TABLE `ohrm_menu_item`
  ADD CONSTRAINT `ohrm_menu_item_ibfk_1` FOREIGN KEY (`screen_id`) REFERENCES `ohrm_screen` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_module_default_page`
--
ALTER TABLE `ohrm_module_default_page`
  ADD CONSTRAINT `ohrm_module_default_page_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_module_default_page_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `ohrm_module` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_openid_user_identity`
--
ALTER TABLE `ohrm_openid_user_identity`
  ADD CONSTRAINT `ohrm_user_identity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_user_identity_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `ohrm_openid_provider` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_operational_country`
--
ALTER TABLE `ohrm_operational_country`
  ADD CONSTRAINT `fk_ohrm_operational_country_hs_hr_country` FOREIGN KEY (`country_code`) REFERENCES `hs_hr_country` (`cou_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_pay_grade_currency`
--
ALTER TABLE `ohrm_pay_grade_currency`
  ADD CONSTRAINT `ohrm_pay_grade_currency_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `hs_hr_currency_type` (`currency_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_pay_grade_currency_ibfk_2` FOREIGN KEY (`pay_grade_id`) REFERENCES `ohrm_pay_grade` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_performance_review`
--
ALTER TABLE `ohrm_performance_review`
  ADD CONSTRAINT `ohrm_performance_review_ibfk_1` FOREIGN KEY (`employee_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_performance_track`
--
ALTER TABLE `ohrm_performance_track`
  ADD CONSTRAINT `ohrm_performance_track_fk1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ohrm_performance_track_fk2` FOREIGN KEY (`added_by`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_performance_tracker_log`
--
ALTER TABLE `ohrm_performance_tracker_log`
  ADD CONSTRAINT `fk_ohrm_performance_tracker_log_1` FOREIGN KEY (`user_id`) REFERENCES `ohrm_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ohrm_performance_tracker_log_fk1` FOREIGN KEY (`performance_track_id`) REFERENCES `ohrm_performance_track` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ohrm_performance_tracker_log_fk2` FOREIGN KEY (`reviewer_id`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_performance_tracker_reviewer`
--
ALTER TABLE `ohrm_performance_tracker_reviewer`
  ADD CONSTRAINT `ohrm_performance_tracker_reviewer_fk1` FOREIGN KEY (`performance_track_id`) REFERENCES `ohrm_performance_track` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ohrm_performance_tracker_reviewer_fk2` FOREIGN KEY (`reviewer_id`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_project_activity`
--
ALTER TABLE `ohrm_project_activity`
  ADD CONSTRAINT `ohrm_project_activity_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `ohrm_project` (`project_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_project_admin`
--
ALTER TABLE `ohrm_project_admin`
  ADD CONSTRAINT `ohrm_project_admin_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `ohrm_project` (`project_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_project_admin_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_report`
--
ALTER TABLE `ohrm_report`
  ADD CONSTRAINT `ohrm_report_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_reviewer`
--
ALTER TABLE `ohrm_reviewer`
  ADD CONSTRAINT `ohrm_reviewer_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `ohrm_performance_review` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_reviewer_rating`
--
ALTER TABLE `ohrm_reviewer_rating`
  ADD CONSTRAINT `ohrm_reviewer_rating_ibfk_1` FOREIGN KEY (`reviewer_id`) REFERENCES `ohrm_reviewer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_reviewer_rating_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `ohrm_performance_review` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_screen`
--
ALTER TABLE `ohrm_screen`
  ADD CONSTRAINT `ohrm_screen_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ohrm_module` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_composite_display_field`
--
ALTER TABLE `ohrm_selected_composite_display_field`
  ADD CONSTRAINT `ohrm_selected_composite_display_field_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_composite_display_field_ibfk_2` FOREIGN KEY (`composite_display_field_id`) REFERENCES `ohrm_composite_display_field` (`composite_display_field_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_display_field`
--
ALTER TABLE `ohrm_selected_display_field`
  ADD CONSTRAINT `ohrm_selected_display_field_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_display_field_ibfk_2` FOREIGN KEY (`display_field_id`) REFERENCES `ohrm_display_field` (`display_field_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_display_field_group`
--
ALTER TABLE `ohrm_selected_display_field_group`
  ADD CONSTRAINT `ohrm_selected_display_field_group_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_display_field_group_ibfk_2` FOREIGN KEY (`display_field_group_id`) REFERENCES `ohrm_display_field_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_filter_field`
--
ALTER TABLE `ohrm_selected_filter_field`
  ADD CONSTRAINT `ohrm_selected_filter_field_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_filter_field_ibfk_2` FOREIGN KEY (`filter_field_id`) REFERENCES `ohrm_filter_field` (`filter_field_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_group_field`
--
ALTER TABLE `ohrm_selected_group_field`
  ADD CONSTRAINT `ohrm_selected_group_field_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_group_field_ibfk_2` FOREIGN KEY (`group_field_id`) REFERENCES `ohrm_group_field` (`group_field_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_group_field_ibfk_3` FOREIGN KEY (`summary_display_field_id`) REFERENCES `ohrm_summary_display_field` (`summary_display_field_id`);

--
-- Constraints for table `ohrm_summary_display_field`
--
ALTER TABLE `ohrm_summary_display_field`
  ADD CONSTRAINT `ohrm_summary_display_field_ibfk_1` FOREIGN KEY (`display_field_group_id`) REFERENCES `ohrm_display_field_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_timesheet_action_log`
--
ALTER TABLE `ohrm_timesheet_action_log`
  ADD CONSTRAINT `ohrm_timesheet_action_log_ibfk_1` FOREIGN KEY (`performed_by`) REFERENCES `ohrm_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_user`
--
ALTER TABLE `ohrm_user`
  ADD CONSTRAINT `ohrm_user_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_user_ibfk_2` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`);

--
-- Constraints for table `ohrm_user_role_data_group`
--
ALTER TABLE `ohrm_user_role_data_group`
  ADD CONSTRAINT `ohrm_user_role_data_group_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_user_role_data_group_ibfk_2` FOREIGN KEY (`data_group_id`) REFERENCES `ohrm_data_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_user_role_screen`
--
ALTER TABLE `ohrm_user_role_screen`
  ADD CONSTRAINT `ohrm_user_role_screen_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_user_role_screen_ibfk_2` FOREIGN KEY (`screen_id`) REFERENCES `ohrm_screen` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_work_week`
--
ALTER TABLE `ohrm_work_week`
  ADD CONSTRAINT `fk_ohrm_work_week_ohrm_operational_country` FOREIGN KEY (`operational_country_id`) REFERENCES `ohrm_operational_country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
