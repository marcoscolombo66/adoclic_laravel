-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-10-2024 a las 22:07:43
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adoclic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Animals', '2024-10-24 00:49:28', '2024-10-24 00:49:28'),
(2, 'Security', '2024-10-24 00:49:28', '2024-10-24 00:49:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entities`
--

CREATE TABLE `entities` (
  `id` bigint UNSIGNED NOT NULL,
  `api` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entities`
--

INSERT INTO `entities` (`id`, `api`, `description`, `link`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'AdoptAPet', 'Resource to help get pets adopted', 'https://www.adoptapet.com/public/apis/pet_list.html', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(2, 'Axolotl', 'Collection of axolotl pictures and facts', 'https://theaxolotlapi.netlify.app/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(3, 'Cat Facts', 'Daily cat facts', 'https://alexwohlbruck.github.io/cat-facts/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(4, 'Cataas', 'Cat as a service (cats pictures and gifs)', 'https://cataas.com/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(5, 'Cats', 'Pictures of cats from Tumblr', 'https://docs.thecatapi.com/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(6, 'Dog Facts', 'Random dog facts', 'https://dukengn.github.io/Dog-facts-API/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(7, 'Dog Facts', 'Random facts of Dogs', 'https://kinduff.github.io/dog-api/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(8, 'Dogs', 'Based on the Stanford Dogs Dataset', 'https://dog.ceo/dog-api/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(9, 'eBird', 'Retrieve recent or notable birding observations within a region', 'https://documenter.getpostman.com/view/664302/S1ENwy59', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(10, 'FishWatch', 'Information and pictures about individual fish species', 'https://www.fishwatch.gov/developers', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(11, 'HTTPCat', 'Cat for every HTTP Status', 'https://http.cat/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(12, 'IUCN', 'IUCN Red List of Threatened Species', 'http://apiv3.iucnredlist.org/api/v3/docs', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(13, 'MeowFacts', 'Get random cat facts', 'https://github.com/wh-iterabb-it/meowfacts', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(14, 'Movebank', 'Movement and Migration data of animals', 'https://github.com/movebank/movebank-api-doc', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(15, 'Petfinder', 'Petfinder is dedicated to helping pets find homes, another resource to get pets adopted', 'https://www.petfinder.com/developers/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(16, 'PlaceBear', 'Placeholder bear pictures', 'https://placebear.com/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(17, 'PlaceDog', 'Placeholder Dog pictures', 'https://place.dog', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(18, 'PlaceKitten', 'Placeholder Kitten pictures', 'https://placekitten.com/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(19, 'RandomCat', 'Random pictures of cats', 'https://aws.random.cat', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(20, 'RandomDog', 'Random pictures of dogs', 'https://random.dog/woof.json', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(21, 'RandomDuck', 'Random pictures of ducks', 'https://random-d.uk/api', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(22, 'RandomFox', 'Random pictures of foxes', 'https://randomfox.ca/floof/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(23, 'RescueGroups', 'Adoption', 'https://userguide.rescuegroups.org/display/APIDG/API+Developers+Guide+Home', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(24, 'Shibe.Online', 'Random pictures of Shiba Inu, cats or birds', 'http://shibe.online/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(25, 'The Dog', 'A public service all about Dogs, free to use when making your fancy new App, Website or Service', 'https://thedogapi.com/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(26, 'Zoo Animals', 'Facts and pictures of zoo animals', 'https://zoo-animal-api.herokuapp.com/', 1, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(27, 'Application Environment Verification', 'Android library and API to verify the safety of user devices, detect rooted devices and other risks', 'https://github.com/fingerprintjs/aev', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(28, 'BinaryEdge', 'Provide access to BinaryEdge 40fy scanning platform', 'https://docs.binaryedge.io/api-v2.html', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(29, 'BitWarden', 'Best open-source password manager', 'https://bitwarden.com/help/api/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(30, 'Botd', 'Botd is a browser library for JavaScript bot detection', 'https://github.com/fingerprintjs/botd', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(31, 'Bugcrowd', 'Bugcrowd API for interacting and tracking the reported issues programmatically', 'https://docs.bugcrowd.com/api/getting-started/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(32, 'Censys', 'Search engine for Internet connected host and devices', 'https://search.censys.io/api', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(33, 'Classify', 'Encrypting & decrypting text messages', 'https://classify-web.herokuapp.com/#/api', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(34, 'Complete Criminal Checks', 'Provides data of offenders from all U.S. States and Pureto Rico', 'https://completecriminalchecks.com/Developers', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(35, 'CRXcavator', 'Chrome extension risk scoring', 'https://crxcavator.io/apidocs', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(36, 'Dehash.lt', 'Hash decryption MD5, SHA1, SHA3, SHA256, SHA384, SHA512', 'https://github.com/Dehash-lt/api', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(37, 'EmailRep', 'Email address threat and risk prediction', 'https://docs.emailrep.io/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(38, 'Escape', 'An API for escaping different kind of queries', 'https://github.com/polarspetroll/EscapeAPI', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(39, 'FilterLists', 'Lists of filters for adblockers and firewalls', 'https://filterlists.com', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(40, 'FingerprintJS Pro', 'Fraud detection API offering highly accurate browser fingerprinting', 'https://dev.fingerprintjs.com/docs', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(41, 'FraudLabs Pro', 'Screen order information using AI to detect frauds', 'https://www.fraudlabspro.com/developer/api/screen-order', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(42, 'FullHunt', 'Searchable attack surface database of the entire internet', 'https://api-docs.fullhunt.io/#introduction', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(43, 'GitGuardian', 'Scan files for secrets (API Keys, database credentials)', 'https://api.gitguardian.com/doc', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(44, 'GreyNoise', 'Query IPs in the GreyNoise dataset and retrieve a subset of the full IP context data', 'https://docs.greynoise.io/reference/get_v3-community-ip', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(45, 'HackerOne', 'The industry’s first hacker API that helps increase productivity towards creative bug bounty hunting', 'https://api.hackerone.com/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(46, 'Hashable', 'A REST API to access high level cryptographic functions and methods', 'https://hashable.space/pages/api/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(47, 'HaveIBeenPwned', 'Passwords which have previously been exposed in data breaches', 'https://haveibeenpwned.com/API/v3', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(48, 'Intelligence X', 'Perform OSINT via Intelligence X', 'https://github.com/IntelligenceX/SDK/blob/master/Intelligence%20X%20API.pdf', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(49, 'LoginRadius', 'Managed User Authentication Service', 'https://www.loginradius.com/docs/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(50, 'Microsoft Security Response Center (MSRC)', 'Programmatic interfaces to engage with the Microsoft Security Response Center (MSRC)', 'https://msrc.microsoft.com/report/developer', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(51, 'Mozilla http scanner', 'Mozilla observatory http scanner', 'https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(52, 'Mozilla tls scanner', 'Mozilla observatory tls scanner', 'https://github.com/mozilla/tls-observatory#api-endpoints', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(53, 'National Vulnerability Database', 'U.S. National Vulnerability Database', 'https://nvd.nist.gov/vuln/Data-Feeds/JSON-feed-changelog', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(54, 'Passwordinator', 'Generate random passwords of varying complexities', 'https://github.com/fawazsullia/password-generator/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(55, 'PhishStats', 'Phishing database', 'https://phishstats.info/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(56, 'Privacy.com', 'Generate merchant-specific and one-time use credit card numbers that link back to your bank', 'https://privacy.com/developer/docs', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(57, 'Pulsedive', 'Scan, search and collect threat intelligence data in real-time', 'https://pulsedive.com/api/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(58, 'Reconmap', 'Reconmap APIS for VAPT (vulnerability assessment and penetration testing) automation and reporting', 'https://api.reconmap.org/docs/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(59, 'SecurityTrails', 'Domain and IP related information such as current and historical WHOIS and DNS records', 'https://securitytrails.com/corp/apidocs', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(60, 'Shodan', 'Search engine for Internet connected devices', 'https://developer.shodan.io/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(61, 'Spyse', 'Access data on all Internet assets and build powerful attack surface management applications', 'https://spyse-dev.readme.io/reference/quick-start', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(62, 'UK Police', 'UK Police data', 'https://data.police.uk/docs/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(63, 'Virushee', 'Virushee file/data scanning', 'https://api.virushee.com/', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12'),
(64, 'VulDB', 'VulDB API allows to initiate queries for one or more items along with transactional bots', 'https://vuldb.com/?doc.api', 2, '2024-10-24 00:58:12', '2024-10-24 00:58:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2024_03_23_124412_create_categories_table', 1),
(12, '2024_03_23_124605_create_entities_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `entities`
--
ALTER TABLE `entities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `entities_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
