-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Máj 28. 09:39
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `footrace`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `countries`
--

CREATE TABLE `countries` (
  `code` varchar(5) NOT NULL,
  `name` varchar(67) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `countries`
--

INSERT INTO `countries` (`code`, `name`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates'),
('AF', 'Afghanistan'),
('AG', 'Antigua and Barbuda'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AO', 'Angola'),
('AR', 'Argentina'),
('AT', 'Austria'),
('AU', 'Australia'),
('AZ', 'Azerbaijan'),
('BA', 'Bosnia and Herzegovina'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BE', 'Belgium'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia (Plurinational State of)'),
('BR', 'Brazil'),
('BS', 'Bahamas'),
('BT', 'Bhutan'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CD', 'Democratic Republic of the Congo'),
('CF', 'Central African Republic'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Côte d\'Ivoire'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CU', 'Cuba'),
('CV', 'Cabo Verde'),
('CY', 'Cyprus'),
('CZ', 'Czechia'),
('DE', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egypt'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FM', 'Micronesia (Federated States of)'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'United Kingdom of Great Britain and Northern Ireland'),
('GD', 'Grenada'),
('GE', 'Georgia'),
('GH', 'Ghana'),
('GM', 'Gambia'),
('GN', 'Guinea'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GT', 'Guatemala'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HN', 'Honduras'),
('HR', 'Croatia'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IL', 'Israel'),
('IN', 'India'),
('IQ', 'Iraq'),
('IR', 'Iran (Islamic Republic of)'),
('IS', 'Iceland'),
('IT', 'Italy'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts and Nevis'),
('KP', 'Democratic People\'s Republic of Korea'),
('KR', 'Republic of Korea'),
('KW', 'Kuwait'),
('KZ', 'Kazakhstan'),
('LA', 'Lao People\'s Democratic Republic'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libya'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Republic of Moldova'),
('ME', 'Montenegro'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'North Macedonia'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MR', 'Mauritania'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NE', 'Niger'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NZ', 'New Zealand'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RO', 'Romania'),
('RS', 'Serbia'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SD', 'Sudan'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('SI', 'Slovenia'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('SS', 'South Sudan'),
('ST', 'Sao Tome and Principe'),
('SV', 'El Salvador'),
('SY', 'Syrian Arab Republic'),
('SZ', 'Eswatini'),
('TD', 'Chad'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TL', 'Timor-Leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TR', 'Türkiye'),
('TT', 'Trinidad and Tobago'),
('TV', 'Tuvalu'),
('TZ', 'United Republic of Tanzania'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('US', 'United States of America'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VC', 'Saint Vincent and the Grenadines'),
('VE', 'Venezuela (Bolivarian Republic of)'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WS', 'Samoa'),
('YE', 'Yemen'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `results`
--

CREATE TABLE `results` (
  `runner_id` int(11) NOT NULL,
  `timespan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `runners`
--

CREATE TABLE `runners` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `country_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `runners`
--

INSERT INTO `runners` (`id`, `name`, `country_code`) VALUES
(1, 'Péter Futó', 'HU'),
(2, 'László Kovács', 'HU'),
(3, 'Sarah Jenkins', 'GB'),
(4, 'Liam O\'Connor', 'GB'),
(5, 'Emily Blunt', 'GB'),
(6, 'Hans Müller', 'DE'),
(7, 'Greta Schmidt', 'DE'),
(8, 'Yuki Tanaka', 'JP'),
(9, 'Kenji Sato', 'JP'),
(10, 'Aiko Nakamura', 'JP'),
(11, 'Hiroshi Ito', 'JP'),
(12, 'Elena Rossi', 'IT'),
(13, 'Marco Bianchi', 'IT'),
(14, 'Jean Dupont', 'FR'),
(15, 'Marie Lefebvre', 'FR'),
(16, 'Sophie Martin', 'FR'),
(17, 'Lucas Dubois', 'FR'),
(18, 'Carlos Garcia', 'ES'),
(19, 'Ana Rodriguez', 'ES'),
(20, 'Mateo Lopez', 'ES'),
(21, 'Lars Jensen', 'DK'),
(22, 'Freja Nielsen', 'DK'),
(23, 'Anders Hansen', 'DK'),
(24, 'Mette Pedersen', 'DK'),
(25, 'Sofia Silva', 'BR'),
(26, 'Gabriel Santos', 'BR'),
(27, 'Ivan Petrov', 'RU'),
(28, 'Olga Ivanova', 'RU'),
(29, 'Alexei Smirnov', 'RU'),
(30, 'Chen Wei', 'CN'),
(31, 'Li Na', 'CN'),
(32, 'Wang Fang', 'CN'),
(33, 'Zhang Min', 'CN'),
(34, 'Amara Okafor', 'NG'),
(35, 'Chidi Adeyemi', 'NG'),
(36, 'Fatima Mansour', 'EG'),
(37, 'Ahmed Hassan', 'EG'),
(38, 'Youssef Ibrahim', 'EG'),
(39, 'Noor Al-Farsi', 'AE'),
(40, 'Omar Khalid', 'AE'),
(41, 'Isabella Martinez', 'MX'),
(42, 'Diego Hernandez', 'MX'),
(43, 'Sofia Gonzalez', 'MX'),
(44, 'Javier Perez', 'MX'),
(45, 'Nguyen Van A', 'VN'),
(46, 'Tran Thi B', 'VN'),
(47, 'Le Minh C', 'VN'),
(48, 'Sanjay Gupta', 'IN'),
(49, 'Priya Sharma', 'IN'),
(50, 'Arjun Singh', 'IN'),
(51, 'Ananya Iyer', 'IN'),
(52, 'Olivia Smith', 'AU'),
(53, 'Jack Wilson', 'AU'),
(54, 'Noah Brown', 'AU'),
(55, 'Emma Taylor', 'AU'),
(56, 'David Kim', 'KR'),
(57, 'Ji-min Park', 'KR'),
(58, 'Min-ho Lee', 'KR'),
(59, 'Sun-young Choi', 'KR'),
(60, 'Gabriel Tremblay', 'CA');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`code`);

--
-- A tábla indexei `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`runner_id`);

--
-- A tábla indexei `runners`
--
ALTER TABLE `runners`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
