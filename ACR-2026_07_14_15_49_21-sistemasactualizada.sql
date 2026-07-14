-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for osx10.10 (x86_64)
--
-- Host: 127.0.0.1    Database: gestioncultivos
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_elements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_elements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chemical_element_id` bigint unsigned DEFAULT NULL,
  `supplie_id` bigint unsigned DEFAULT NULL,
  `percentage` double(3,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `active_elements_chemical_element_id_foreign` (`chemical_element_id`),
  KEY `active_elements_supplie_id_foreign` (`supplie_id`),
  CONSTRAINT `active_elements_chemical_element_id_foreign` FOREIGN KEY (`chemical_element_id`) REFERENCES `chemical_elements` (`id`),
  CONSTRAINT `active_elements_supplie_id_foreign` FOREIGN KEY (`supplie_id`) REFERENCES `supplies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_elements`
--


--
-- Table structure for table `activities`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workday_id` bigint unsigned DEFAULT NULL,
  `type_job_id` bigint unsigned DEFAULT NULL,
  `cost` double(7,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_workday_id_foreign` (`workday_id`),
  KEY `activities_type_job_id_foreign` (`type_job_id`),
  CONSTRAINT `activities_type_job_id_foreign` FOREIGN KEY (`type_job_id`) REFERENCES `type_jobs` (`id`),
  CONSTRAINT `activities_workday_id_foreign` FOREIGN KEY (`workday_id`) REFERENCES `workdays` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `workday_id`, `type_job_id`, `cost`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,1,5,1000.00,'pendiente','2023-05-10 06:51:30','2023-05-10 06:51:30',NULL);
INSERT INTO `activities` (`id`, `workday_id`, `type_job_id`, `cost`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,1,5,130.00,'pendiente','2023-05-10 06:53:43','2023-05-10 06:53:43',NULL);

--
-- Table structure for table `annual_productions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annual_productions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `orchard_id` bigint unsigned DEFAULT NULL,
  `ton_harvest` double NOT NULL,
  `date_production` date NOT NULL,
  `sale` double NOT NULL,
  `damage_percentage` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `annual_productions_orchard_id_foreign` (`orchard_id`),
  CONSTRAINT `annual_productions_orchard_id_foreign` FOREIGN KEY (`orchard_id`) REFERENCES `orchards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annual_productions`
--


--
-- Table structure for table `application_modes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_modes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_modes`
--

INSERT INTO `application_modes` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Aplicacion Radicular o al suelo',NULL,NULL,NULL);
INSERT INTO `application_modes` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Aplicacion localizada',NULL,NULL,NULL);
INSERT INTO `application_modes` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Aplicacion a voleo',NULL,NULL,NULL);
INSERT INTO `application_modes` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Aplicacion foliar',NULL,NULL,NULL);
INSERT INTO `application_modes` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'Aplicacion por fertirriego',NULL,NULL,NULL);

--
-- Table structure for table `applications`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workday_id` bigint unsigned DEFAULT NULL,
  `application_mode_id` bigint unsigned DEFAULT NULL,
  `date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `applications_workday_id_foreign` (`workday_id`),
  KEY `applications_application_mode_id_foreign` (`application_mode_id`),
  CONSTRAINT `applications_application_mode_id_foreign` FOREIGN KEY (`application_mode_id`) REFERENCES `application_modes` (`id`),
  CONSTRAINT `applications_workday_id_foreign` FOREIGN KEY (`workday_id`) REFERENCES `workdays` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `workday_id`, `application_mode_id`, `date`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,1,5,'2023-05-21','Realizar aplicacion del suplemento','2023-05-10 06:52:25','2023-05-10 06:52:25',NULL);
INSERT INTO `applications` (`id`, `workday_id`, `application_mode_id`, `date`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,1,4,'2023-05-21','foliar','2023-05-10 06:52:44','2023-05-10 06:52:44',NULL);

--
-- Table structure for table `chemical_elements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chemical_elements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chemical_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chemical_elements`
--

INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Nitrogeno','N',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Fosforo','P2O5',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'POTASIO','K2O',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'CALCIO','CA',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'MAGNESIO','Mg',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (6,'SODIO','Na',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (7,'CLORURO','CI',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (8,'HIERRO','Fe',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (9,'COBRE','Cu',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (10,'MANGANESO','Mn',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (11,'ZINC','Zn',NULL,NULL,NULL);
INSERT INTO `chemical_elements` (`id`, `name`, `chemical_code`, `created_at`, `updated_at`, `deleted_at`) VALUES (12,'BORO','B',NULL,NULL,NULL);

--
-- Table structure for table `climate_types`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `climate_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `climate_type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `climate_types`
--

INSERT INTO `climate_types` (`id`, `climate_type`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Calido','',NULL,NULL,NULL);
INSERT INTO `climate_types` (`id`, `climate_type`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'frio','',NULL,NULL,NULL);
INSERT INTO `climate_types` (`id`, `climate_type`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Humedo','',NULL,NULL,NULL);
INSERT INTO `climate_types` (`id`, `climate_type`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Templado','',NULL,NULL,NULL);
INSERT INTO `climate_types` (`id`, `climate_type`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'tropical','',NULL,NULL,NULL);
INSERT INTO `climate_types` (`id`, `climate_type`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (6,'subtropical','',NULL,NULL,NULL);

--
-- Table structure for table `doses`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `application_id` bigint unsigned DEFAULT NULL,
  `dose` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `supplie_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doses_application_id_foreign` (`application_id`),
  KEY `doses_supplie_id_foreign` (`supplie_id`),
  CONSTRAINT `doses_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  CONSTRAINT `doses_supplie_id_foreign` FOREIGN KEY (`supplie_id`) REFERENCES `supplies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doses`
--

INSERT INTO `doses` (`id`, `application_id`, `dose`, `created_at`, `updated_at`, `deleted_at`, `supplie_id`) VALUES (1,1,1.50,'2023-05-10 06:52:25','2023-05-10 06:52:25',NULL,3);
INSERT INTO `doses` (`id`, `application_id`, `dose`, `created_at`, `updated_at`, `deleted_at`, `supplie_id`) VALUES (2,2,1.00,'2023-05-10 06:52:44','2023-05-10 06:52:44',NULL,2);

--
-- Table structure for table `failed_jobs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--


--
-- Table structure for table `mark_supplies`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark_supplies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark_supplies`
--

INSERT INTO `mark_supplies` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Syngenta',NULL,NULL,NULL);
INSERT INTO `mark_supplies` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Yara',NULL,NULL,NULL);
INSERT INTO `mark_supplies` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'AgroScience',NULL,NULL,NULL);

--
-- Table structure for table `migrations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2,'2014_10_12_100000_create_password_resets_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4,'2019_08_19_000000_create_failed_jobs_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5,'2019_12_14_000001_create_personal_access_tokens_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6,'2020_05_21_100000_create_teams_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7,'2020_05_21_200000_create_team_user_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8,'2020_05_21_300000_create_team_invitations_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9,'2022_02_22_025900_create_product_categories_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10,'2022_02_22_143402_create_type_photographs_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11,'2022_02_22_144932_create_type_topographies_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12,'2022_02_22_145129_create_units_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13,'2022_02_22_145132_create_type_soils_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14,'2022_02_22_145256_create_climate_types_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15,'2022_02_22_145736_create_type_avocados_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16,'2022_02_22_150114_create_orchards_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17,'2022_02_22_150302_create_application_modes_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18,'2022_02_22_150545_create_chemical_elements_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (19,'2022_02_22_155327_create_annual_productions_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (20,'2022_02_22_155512_create_phenophases_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (21,'2022_02_22_155650_create_registration_phenophases_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (22,'2022_02_22_160405_create_type_jobs_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (23,'2022_02_22_165104_create_photographs_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (24,'2022_02_22_170837_create_workdays_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (25,'2022_02_22_172552_create_activities_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (26,'2022_02_22_172837_create_applications_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (27,'2022_02_22_173342_create_doses_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (28,'2022_02_22_174040_create_nutrient_analysis_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (29,'2022_02_22_174847_create_sample_nutrients_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (30,'2022_02_24_023809_create_sessions_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (31,'2022_03_15_021607_create_type__photograps_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (32,'2022_06_16_055547_alter_table_users_add_user_type',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (33,'2023_01_07_075939_create_marks_supplies_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (34,'2023_01_07_083642_create_supplies_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (35,'2023_01_07_083957_create_active_elements_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (36,'2023_04_19_061431_alter_table_doses',1);

--
-- Table structure for table `nutrient_analysis`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nutrient_analysis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `orchard_id` bigint unsigned DEFAULT NULL,
  `date_sample` date NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nutrient_analysis_orchard_id_foreign` (`orchard_id`),
  CONSTRAINT `nutrient_analysis_orchard_id_foreign` FOREIGN KEY (`orchard_id`) REFERENCES `orchards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutrient_analysis`
--


--
-- Table structure for table `orchards`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orchards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type_avocado_id` bigint unsigned DEFAULT NULL,
  `type_topography_id` bigint unsigned DEFAULT NULL,
  `type_soil_id` bigint unsigned DEFAULT NULL,
  `climate_type_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name_orchard` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_orchard` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` point DEFAULT NULL,
  `area` polygon DEFAULT NULL,
  `altitude` double(7,2) NOT NULL,
  `surface` double(7,2) NOT NULL,
  `state` int NOT NULL,
  `creation_year` year NOT NULL,
  `planting_density` int NOT NULL,
  `irrigation` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orchards_type_avocado_id_foreign` (`type_avocado_id`),
  KEY `orchards_type_topography_id_foreign` (`type_topography_id`),
  KEY `orchards_type_soil_id_foreign` (`type_soil_id`),
  KEY `orchards_climate_type_id_foreign` (`climate_type_id`),
  KEY `orchards_user_id_foreign` (`user_id`),
  CONSTRAINT `orchards_climate_type_id_foreign` FOREIGN KEY (`climate_type_id`) REFERENCES `climate_types` (`id`),
  CONSTRAINT `orchards_type_avocado_id_foreign` FOREIGN KEY (`type_avocado_id`) REFERENCES `type_avocados` (`id`),
  CONSTRAINT `orchards_type_soil_id_foreign` FOREIGN KEY (`type_soil_id`) REFERENCES `type_soils` (`id`),
  CONSTRAINT `orchards_type_topography_id_foreign` FOREIGN KEY (`type_topography_id`) REFERENCES `type_topographies` (`id`),
  CONSTRAINT `orchards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orchards`
--

INSERT INTO `orchards` (`id`, `type_avocado_id`, `type_topography_id`, `type_soil_id`, `climate_type_id`, `user_id`, `name_orchard`, `path_image`, `location_orchard`, `point`, `area`, `altitude`, `surface`, `state`, `creation_year`, `planting_density`, `irrigation`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,1,1,1,2,1,'Hermanos Hernandez','images/5zPhRrsY3YKgnYPdNAb28ruLeQgYAwSaVOUs55vQ.svg','Donato Guerra, San Francisco Mihualtepec',NULL,NULL,1.00,1.00,1,1993,4,0,'2023-05-10 06:50:04','2023-05-10 06:50:04',NULL);

--
-- Table structure for table `password_resets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--


--
-- Table structure for table `personal_access_tokens`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--


--
-- Table structure for table `phenophases`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phenophases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phenophase` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phenophases`
--

INSERT INTO `phenophases` (`id`, `phenophase`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Crecimiento De Raíces','Las raíces se adaptan al suelo despues de su transplante',NULL,NULL,NULL,NULL);
INSERT INTO `phenophases` (`id`, `phenophase`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Crecimiento Vejetativo','La planta se encuentra en estado de crecimiento',NULL,NULL,NULL,NULL);
INSERT INTO `phenophases` (`id`, `phenophase`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Brote Floral','Las flores que sobre salen llegan a la fase de amarre y cuaje',NULL,NULL,NULL,NULL);
INSERT INTO `phenophases` (`id`, `phenophase`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Crecimieno Fruto','El fruto se ecnuentra en estado de crecimiento desde que sale el pupilo a un aguacate tamaño normal',NULL,NULL,NULL,NULL);
INSERT INTO `phenophases` (`id`, `phenophase`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'Fructificacion','El fruto entra en el estado de maduración',NULL,NULL,NULL,NULL);

--
-- Table structure for table `photographs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photographs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `orchard_id` bigint unsigned DEFAULT NULL,
  `type_photograph_id` bigint unsigned DEFAULT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `note` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photographs_orchard_id_foreign` (`orchard_id`),
  KEY `photographs_type_photograph_id_foreign` (`type_photograph_id`),
  CONSTRAINT `photographs_orchard_id_foreign` FOREIGN KEY (`orchard_id`) REFERENCES `orchards` (`id`),
  CONSTRAINT `photographs_type_photograph_id_foreign` FOREIGN KEY (`type_photograph_id`) REFERENCES `type_photographs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photographs`
--


--
-- Table structure for table `product_categories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Regulador de Crecimiento',NULL,NULL,NULL);
INSERT INTO `product_categories` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Insecticidas',NULL,NULL,NULL);
INSERT INTO `product_categories` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Fungicidas',NULL,NULL,NULL);
INSERT INTO `product_categories` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Herbicidas',NULL,NULL,NULL);
INSERT INTO `product_categories` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'Bioestimulante/Fertilizante Foliar',NULL,NULL,NULL);

--
-- Table structure for table `registration_phenophases`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_phenophases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phenophase_id` bigint unsigned DEFAULT NULL,
  `orchard_id` bigint unsigned DEFAULT NULL,
  `date` date NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_phenophases_phenophase_id_foreign` (`phenophase_id`),
  KEY `registration_phenophases_orchard_id_foreign` (`orchard_id`),
  CONSTRAINT `registration_phenophases_orchard_id_foreign` FOREIGN KEY (`orchard_id`) REFERENCES `orchards` (`id`),
  CONSTRAINT `registration_phenophases_phenophase_id_foreign` FOREIGN KEY (`phenophase_id`) REFERENCES `phenophases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_phenophases`
--


--
-- Table structure for table `sample_nutrients`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_nutrients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nutrient_analysi_id` bigint unsigned DEFAULT NULL,
  `unit_id` bigint unsigned DEFAULT NULL,
  `chemical_element_id` bigint unsigned DEFAULT NULL,
  `percentage` double(4,2) NOT NULL,
  `lot` double(4,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sample_nutrients_nutrient_analysi_id_foreign` (`nutrient_analysi_id`),
  KEY `sample_nutrients_unit_id_foreign` (`unit_id`),
  KEY `sample_nutrients_chemical_element_id_foreign` (`chemical_element_id`),
  CONSTRAINT `sample_nutrients_chemical_element_id_foreign` FOREIGN KEY (`chemical_element_id`) REFERENCES `chemical_elements` (`id`),
  CONSTRAINT `sample_nutrients_nutrient_analysi_id_foreign` FOREIGN KEY (`nutrient_analysi_id`) REFERENCES `nutrient_analysis` (`id`),
  CONSTRAINT `sample_nutrients_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_nutrients`
--


--
-- Table structure for table `sessions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--


--
-- Table structure for table `supplies`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registry_number` int NOT NULL,
  `data_sheet` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `safety_sheet` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` bigint unsigned DEFAULT NULL,
  `product_category_id` bigint unsigned DEFAULT NULL,
  `mark_supplie_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplies_unit_id_foreign` (`unit_id`),
  KEY `supplies_product_category_id_foreign` (`product_category_id`),
  KEY `supplies_mark_supplie_id_foreign` (`mark_supplie_id`),
  CONSTRAINT `supplies_mark_supplie_id_foreign` FOREIGN KEY (`mark_supplie_id`) REFERENCES `mark_supplies` (`id`),
  CONSTRAINT `supplies_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`),
  CONSTRAINT `supplies_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `name`, `registry_number`, `data_sheet`, `safety_sheet`, `unit_id`, `product_category_id`, `mark_supplie_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Magtrac',1,'supplies_data_sheet/MAGTRAC.pdf','supplies_safety_sheet/MAGTRAC.pdf',2,5,2,NULL,NULL,NULL);
INSERT INTO `supplies` (`id`, `name`, `registry_number`, `data_sheet`, `safety_sheet`, `unit_id`, `product_category_id`, `mark_supplie_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Bortrac',2,'supplies_data_sheet/bortrac.pdf','supplies_safety_sheet/bortrac.pdf',3,5,2,NULL,NULL,NULL);
INSERT INTO `supplies` (`id`, `name`, `registry_number`, `data_sheet`, `safety_sheet`, `unit_id`, `product_category_id`, `mark_supplie_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Stopit',3,'supplies_data_sheet/stopit_front.pdf','supplies_safety_sheet/stopit_front.pdf',2,5,2,NULL,NULL,NULL);
INSERT INTO `supplies` (`id`, `name`, `registry_number`, `data_sheet`, `safety_sheet`, `unit_id`, `product_category_id`, `mark_supplie_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'crop boost',4,'supplies_data_sheet/crop_boost.pdf','supplies_safety_sheet/crop_boost.pdf',1,5,2,NULL,NULL,NULL);

--
-- Table structure for table `team_invitations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_invitations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`),
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_invitations`
--


--
-- Table structure for table `team_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_user`
--


--
-- Table structure for table `teams`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--


--
-- Table structure for table `type__photograps`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type__photograps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type__photograps`
--


--
-- Table structure for table `type_avocados`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_avocados` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type_avocado` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_avocados`
--

INSERT INTO `type_avocados` (`id`, `type_avocado`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Hass','',NULL,NULL,NULL);
INSERT INTO `type_avocados` (`id`, `type_avocado`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Criollo','',NULL,NULL,NULL);
INSERT INTO `type_avocados` (`id`, `type_avocado`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Bacón','',NULL,NULL,NULL);
INSERT INTO `type_avocados` (`id`, `type_avocado`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Pinkerton','',NULL,NULL,NULL);
INSERT INTO `type_avocados` (`id`, `type_avocado`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'Gwen','',NULL,NULL,NULL);
INSERT INTO `type_avocados` (`id`, `type_avocado`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (6,'Reed','',NULL,NULL,NULL);

--
-- Table structure for table `type_jobs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type_job` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_jobs`
--

INSERT INTO `type_jobs` (`id`, `type_job`, `description`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Podar','Despuntar la planta para que ramifique y no crezca en una sola direccion','sin_suplemento',NULL,NULL,NULL);
INSERT INTO `type_jobs` (`id`, `type_job`, `description`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Riego','Regar cantidad de agua suficiente para su frezcura','sin_suplemento',NULL,NULL,NULL);
INSERT INTO `type_jobs` (`id`, `type_job`, `description`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Cosechar','Cortar los agucates maduros de los arboles','sin_suplemento',NULL,NULL,NULL);
INSERT INTO `type_jobs` (`id`, `type_job`, `description`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Empaquetadar','Empaquetar los aguacates para su exportacion','sin_suplemento',NULL,NULL,NULL);
INSERT INTO `type_jobs` (`id`, `type_job`, `description`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'Fumigar','Aplica insectisida al huerto','suplemento',NULL,NULL,NULL);
INSERT INTO `type_jobs` (`id`, `type_job`, `description`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES (6,'Abonar','Abonar suplementos por encima de la superficie de la planta','suplemento',NULL,NULL,NULL);

--
-- Table structure for table `type_photographs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_photographs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type_photograph` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_photographs`
--

INSERT INTO `type_photographs` (`id`, `type_photograph`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Huerto','',NULL,NULL,NULL);
INSERT INTO `type_photographs` (`id`, `type_photograph`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Aguacate','',NULL,NULL,NULL);
INSERT INTO `type_photographs` (`id`, `type_photograph`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Follaje','',NULL,NULL,NULL);

--
-- Table structure for table `type_soils`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_soils` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type_soil` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_soils`
--

INSERT INTO `type_soils` (`id`, `type_soil`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Arcilloso','',NULL,NULL,NULL);
INSERT INTO `type_soils` (`id`, `type_soil`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Limosa','',NULL,NULL,NULL);
INSERT INTO `type_soils` (`id`, `type_soil`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Arenoso','',NULL,NULL,NULL);
INSERT INTO `type_soils` (`id`, `type_soil`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Luvisoles','',NULL,NULL,NULL);
INSERT INTO `type_soils` (`id`, `type_soil`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'Nitisoles','',NULL,NULL,NULL);
INSERT INTO `type_soils` (`id`, `type_soil`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (6,'Calcisoles','',NULL,NULL,NULL);

--
-- Table structure for table `type_topographies`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_topographies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type_topography` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_topographies`
--

INSERT INTO `type_topographies` (`id`, `type_topography`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Llano','Cuando las pendientes son nulas o menores del 2%',NULL,NULL,NULL);
INSERT INTO `type_topographies` (`id`, `type_topography`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Ondulado','Cuando la pendiente es 2-8% y se alternan pequeñas colinas',NULL,NULL,NULL);
INSERT INTO `type_topographies` (`id`, `type_topography`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Fuertemente Ondulado','Cuando la pendiente es 8-16% y se alternan colinas y pequeños cerros',NULL,NULL,NULL);
INSERT INTO `type_topographies` (`id`, `type_topography`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Colinado','Cuando la pendiente es 16-30%, son superficies no erosionadas',NULL,NULL,NULL);
INSERT INTO `type_topographies` (`id`, `type_topography`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'Montañoso','Cuando la pendiente es mayor de 30%, hay diferencia de altitud desde los valles a las cumbres',NULL,NULL,NULL);

--
-- Table structure for table `units`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,'Mililitros ml',NULL,NULL,NULL);
INSERT INTO `units` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (2,'Litros lts',NULL,NULL,NULL);
INSERT INTO `units` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (3,'Gramos g',NULL,NULL,NULL);
INSERT INTO `units` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (4,'Kilos kgs',NULL,NULL,NULL);
INSERT INTO `units` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (5,'Piezas pz',NULL,NULL,NULL);

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_user` int NOT NULL DEFAULT '2',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type_user`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (1,'césar Primero','iscprimerocesar@gmail.com',2,NULL,'$2y$10$PSoMhi1zyeE9B8/xwruVb.vugpWPNxdqePmIOVjIZZ953FvZzpx46',NULL,NULL,NULL,NULL,NULL,'2023-05-10 06:48:24','2023-05-10 06:48:24');
INSERT INTO `users` (`id`, `name`, `email`, `type_user`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (2,'Luis','jesusgma33@gmail.com',2,NULL,'$2y$10$GCBuYhF55b50s/HWE6pNJeNOq1OUsFph4x1/7HZPtQD.DG.zx1/U2',NULL,NULL,NULL,NULL,NULL,'2023-05-17 09:22:19','2023-05-17 09:22:19');
INSERT INTO `users` (`id`, `name`, `email`, `type_user`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (3,'viridiana','vianisg64@gmail.com',2,NULL,'$2y$10$fp.JByKLNMWW4HNLv1Z.kOXBJuciMf4WaqAkjT00w.vTyHbUJKcDW',NULL,NULL,NULL,NULL,NULL,'2023-06-27 07:39:14','2023-06-27 07:39:14');
INSERT INTO `users` (`id`, `name`, `email`, `type_user`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (4,'Cesar','iscprimerocesar1@gmail.com',2,NULL,'$2y$10$SFmylhU/LjyAy.GKENrDNetsjHxTv4/NLxDrCZKGbN8WG9/LICtVS',NULL,NULL,NULL,NULL,NULL,'2024-11-05 09:35:14','2024-11-05 09:35:14');

--
-- Table structure for table `workdays`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workdays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `orchard_id` bigint unsigned DEFAULT NULL,
  `date_work` date NOT NULL,
  `general_expenses` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workdays_user_id_foreign` (`user_id`),
  KEY `workdays_orchard_id_foreign` (`orchard_id`),
  CONSTRAINT `workdays_orchard_id_foreign` FOREIGN KEY (`orchard_id`) REFERENCES `orchards` (`id`),
  CONSTRAINT `workdays_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workdays`
--

INSERT INTO `workdays` (`id`, `user_id`, `orchard_id`, `date_work`, `general_expenses`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES (1,1,1,'2023-05-21','1500','gastos del dia','2023-05-10 06:51:24','2023-05-10 06:51:24',NULL);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-14 15:50:04
