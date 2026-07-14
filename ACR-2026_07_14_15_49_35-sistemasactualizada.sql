-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for osx10.10 (x86_64)
--
-- Host: 127.0.0.1    Database: impactoambiental
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
-- Table structure for table `asigna_criterios`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asigna_criterios` (
  `id_asignacriterio` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_factor` bigint unsigned NOT NULL,
  `id_criterio` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_asignacriterio`),
  KEY `asigna_criterios_id_factor_foreign` (`id_factor`),
  KEY `asigna_criterios_id_criterio_foreign` (`id_criterio`),
  CONSTRAINT `asigna_criterios_id_criterio_foreign` FOREIGN KEY (`id_criterio`) REFERENCES `criterios` (`id_criterio`) ON DELETE CASCADE,
  CONSTRAINT `asigna_criterios_id_factor_foreign` FOREIGN KEY (`id_factor`) REFERENCES `factores_ambientales` (`id_factor`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asigna_criterios`
--

INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (1,1,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (2,1,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (3,1,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (4,1,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (5,1,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (6,1,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (7,1,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (8,1,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (9,1,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (10,1,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (11,1,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (12,1,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (13,2,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (14,2,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (15,2,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (16,2,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (17,2,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (18,2,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (19,2,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (20,2,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (21,2,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (22,2,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (23,2,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (24,2,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (25,3,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (26,3,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (27,3,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (28,3,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (29,3,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (30,3,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (31,3,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (32,3,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (33,3,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (34,3,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (35,3,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (36,3,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (37,4,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (38,4,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (39,4,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (40,4,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (41,4,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (42,4,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (43,4,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (44,4,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (45,4,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (46,4,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (47,4,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (48,4,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (49,5,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (50,5,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (51,5,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (52,5,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (53,5,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (54,5,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (55,5,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (56,5,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (57,5,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (58,5,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (59,5,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (60,5,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (61,6,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (62,6,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (63,6,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (64,6,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (65,6,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (66,6,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (67,6,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (68,6,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (69,6,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (70,6,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (71,6,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (72,6,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (73,7,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (74,7,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (75,7,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (76,7,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (77,7,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (78,7,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (79,7,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (80,7,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (81,7,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (82,7,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (83,7,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (84,7,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (85,8,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (86,8,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (87,8,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (88,8,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (89,8,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (90,8,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (91,8,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (92,8,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (93,8,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (94,8,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (95,8,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (96,8,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (97,9,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (98,9,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (99,9,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (100,9,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (101,9,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (102,9,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (103,9,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (104,9,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (105,9,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (106,9,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (107,9,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (108,9,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (109,10,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (110,10,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (111,10,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (112,10,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (113,10,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (114,10,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (115,10,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (116,10,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (117,10,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (118,10,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (119,10,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (120,10,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (121,11,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (122,11,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (123,11,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (124,11,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (125,11,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (126,11,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (127,11,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (128,11,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (129,11,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (130,11,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (131,11,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (132,11,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (133,12,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (134,12,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (135,12,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (136,12,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (137,12,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (138,12,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (139,12,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (140,12,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (141,12,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (142,12,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (143,12,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (144,12,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (145,13,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (146,13,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (147,13,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (148,13,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (149,13,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (150,13,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (151,13,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (152,13,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (153,13,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (154,13,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (155,13,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (156,13,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (157,14,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (158,14,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (159,14,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (160,14,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (161,14,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (162,14,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (163,14,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (164,14,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (165,14,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (166,14,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (167,14,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (168,14,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (169,15,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (170,15,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (171,15,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (172,15,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (173,15,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (174,15,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (175,15,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (176,15,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (177,15,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (178,15,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (179,15,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (180,15,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (181,16,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (182,16,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (183,16,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (184,16,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (185,16,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (186,16,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (187,16,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (188,16,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (189,16,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (190,16,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (191,16,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (192,16,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (193,17,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (194,17,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (195,17,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (196,17,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (197,17,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (198,17,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (199,17,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (200,17,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (201,17,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (202,17,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (203,17,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (204,17,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (205,18,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (206,18,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (207,18,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (208,18,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (209,18,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (210,18,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (211,18,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (212,18,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (213,18,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (214,18,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (215,18,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (216,18,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (217,19,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (218,19,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (219,19,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (220,19,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (221,19,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (222,19,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (223,19,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (224,19,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (225,19,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (226,19,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (227,19,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (228,19,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (229,20,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (230,20,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (231,20,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (232,20,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (233,20,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (234,20,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (235,20,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (236,20,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (237,20,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (238,20,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (239,20,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (240,20,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (241,21,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (242,21,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (243,21,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (244,21,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (245,21,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (246,21,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (247,21,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (248,21,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (249,21,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (250,21,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (251,21,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (252,21,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (253,22,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (254,22,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (255,22,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (256,22,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (257,22,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (258,22,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (259,22,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (260,22,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (261,22,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (262,22,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (263,22,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (264,22,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (265,23,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (266,23,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (267,23,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (268,23,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (269,23,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (270,23,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (271,23,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (272,23,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (273,23,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (274,23,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (275,23,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (276,23,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (277,24,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (278,24,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (279,24,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (280,24,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (281,24,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (282,24,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (283,24,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (284,24,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (285,24,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (286,24,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (287,24,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (288,24,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (289,25,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (290,25,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (291,25,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (292,25,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (293,25,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (294,25,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (295,25,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (296,25,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (297,25,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (298,25,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (299,25,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (300,25,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (301,26,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (302,26,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (303,26,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (304,26,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (305,26,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (306,26,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (307,26,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (308,26,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (309,26,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (310,26,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (311,26,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (312,26,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (313,27,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (314,27,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (315,27,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (316,27,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (317,27,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (318,27,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (319,27,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (320,27,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (321,27,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (322,27,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (323,27,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (324,27,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (325,28,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (326,28,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (327,28,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (328,28,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (329,28,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (330,28,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (331,28,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (332,28,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (333,28,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (334,28,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (335,28,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (336,28,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (337,29,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (338,29,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (339,29,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (340,29,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (341,29,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (342,29,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (343,29,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (344,29,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (345,29,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (346,29,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (347,29,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (348,29,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (349,30,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (350,30,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (351,30,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (352,30,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (353,30,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (354,30,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (355,30,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (356,30,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (357,30,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (358,30,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (359,30,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (360,30,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (361,31,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (362,31,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (363,31,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (364,31,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (365,31,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (366,31,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (367,31,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (368,31,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (369,31,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (370,31,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (371,31,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (372,31,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (373,32,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (374,32,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (375,32,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (376,32,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (377,32,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (378,32,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (379,32,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (380,32,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (381,32,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (382,32,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (383,32,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (384,32,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (385,33,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (386,33,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (387,33,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (388,33,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (389,33,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (390,33,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (391,33,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (392,33,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (393,33,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (394,33,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (395,33,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (396,33,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (397,34,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (398,34,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (399,34,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (400,34,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (401,34,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (402,34,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (403,34,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (404,34,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (405,34,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (406,34,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (407,34,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (408,34,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (409,35,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (410,35,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (411,35,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (412,35,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (413,35,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (414,35,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (415,35,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (416,35,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (417,35,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (418,35,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (419,35,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (420,35,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (421,36,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (422,36,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (423,36,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (424,36,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (425,36,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (426,36,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (427,36,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (428,36,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (429,36,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (430,36,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (431,36,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (432,36,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (433,37,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (434,37,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (435,37,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (436,37,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (437,37,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (438,37,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (439,37,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (440,37,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (441,37,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (442,37,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (443,37,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (444,37,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (445,38,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (446,38,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (447,38,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (448,38,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (449,38,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (450,38,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (451,38,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (452,38,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (453,38,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (454,38,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (455,38,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (456,38,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (457,39,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (458,39,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (459,39,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (460,39,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (461,39,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (462,39,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (463,39,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (464,39,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (465,39,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (466,39,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (467,39,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (468,39,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (469,40,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (470,40,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (471,40,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (472,40,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (473,40,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (474,40,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (475,40,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (476,40,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (477,40,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (478,40,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (479,40,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (480,40,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (481,41,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (482,41,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (483,41,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (484,41,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (485,41,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (486,41,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (487,41,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (488,41,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (489,41,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (490,41,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (491,41,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (492,41,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (493,42,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (494,42,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (495,42,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (496,42,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (497,42,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (498,42,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (499,42,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (500,42,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (501,42,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (502,42,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (503,42,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (504,42,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (505,43,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (506,43,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (507,43,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (508,43,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (509,43,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (510,43,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (511,43,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (512,43,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (513,43,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (514,43,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (515,43,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (516,43,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (517,44,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (518,44,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (519,44,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (520,44,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (521,44,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (522,44,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (523,44,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (524,44,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (525,44,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (526,44,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (527,44,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (528,44,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (529,45,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (530,45,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (531,45,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (532,45,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (533,45,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (534,45,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (535,45,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (536,45,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (537,45,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (538,45,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (539,45,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (540,45,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (541,46,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (542,46,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (543,46,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (544,46,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (545,46,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (546,46,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (547,46,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (548,46,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (549,46,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (550,46,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (551,46,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (552,46,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (553,47,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (554,47,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (555,47,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (556,47,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (557,47,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (558,47,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (559,47,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (560,47,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (561,47,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (562,47,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (563,47,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (564,47,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (565,48,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (566,48,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (567,48,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (568,48,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (569,48,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (570,48,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (571,48,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (572,48,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (573,48,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (574,48,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (575,48,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (576,48,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (577,49,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (578,49,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (579,49,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (580,49,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (581,49,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (582,49,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (583,49,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (584,49,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (585,49,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (586,49,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (587,49,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (588,49,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (589,50,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (590,50,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (591,50,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (592,50,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (593,50,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (594,50,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (595,50,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (596,50,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (597,50,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (598,50,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (599,50,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (600,50,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (601,51,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (602,51,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (603,51,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (604,51,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (605,51,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (606,51,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (607,51,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (608,51,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (609,51,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (610,51,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (611,51,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (612,51,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (613,52,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (614,52,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (615,52,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (616,52,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (617,52,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (618,52,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (619,52,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (620,52,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (621,52,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (622,52,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (623,52,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (624,52,12,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (625,53,1,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (626,53,2,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (627,53,3,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (628,53,4,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (629,53,5,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (630,53,6,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (631,53,7,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (632,53,8,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (633,53,9,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (634,53,10,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (635,53,11,NULL,NULL);
INSERT INTO `asigna_criterios` (`id_asignacriterio`, `id_factor`, `id_criterio`, `created_at`, `updated_at`) VALUES (636,53,12,NULL,NULL);

--
-- Table structure for table `colonias`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colonias` (
  `id_colonia` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_colonia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_municipio` bigint unsigned NOT NULL,
  `codigo_postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_colonia`),
  KEY `colonias_id_municipio_foreign` (`id_municipio`),
  CONSTRAINT `colonias_id_municipio_foreign` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colonias`
--

INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (1,'El Arco',1,'51217',NULL,NULL);
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (2,'San Gaspar',1,'51217',NULL,'2022-01-05 21:20:49');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (3,'Villa de Allende',3,'51000',NULL,'2022-01-05 21:21:06');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (4,'Valle de Bravo',1,'51200',NULL,'2022-01-05 21:21:20');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (5,'Colorines',1,'51230',NULL,'2022-01-05 21:21:29');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (6,'Donato Guerra',4,'51030',NULL,'2022-01-05 21:21:39');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (7,'Amanalco de Becerra',5,'51260',NULL,'2022-01-05 21:21:59');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (8,'Santo Tomás',6,'51100',NULL,'2022-01-05 21:22:11');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (9,'Temascaltepec',7,'51300',NULL,'2022-01-05 21:22:19');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (10,'Laguna de Tabernillas',8,'50910','2021-11-03 23:55:17','2022-01-05 21:22:31');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (11,'Buenavista',9,'50314','2021-11-04 01:40:48','2022-01-05 21:22:41');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (12,'Tepexpan',10,'55855','2021-11-04 01:42:45','2022-01-05 21:22:52');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (13,'Fondo',11,'50375','2021-11-04 01:44:49','2022-01-05 21:22:59');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (14,'Los Gallos',12,'52966','2021-11-04 01:46:11','2022-01-05 21:23:11');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (15,'Barrio los Ángeles',13,'52203','2021-11-04 01:54:23','2022-01-05 21:23:28');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (16,'La Planada',14,'54665','2021-11-04 01:59:12','2022-01-05 21:23:39');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (17,'Barrio de Guadalupe',15,'56625','2021-11-04 02:01:00','2022-01-05 21:23:51');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (18,'Chapultepec',16,'52240','2021-11-04 02:02:25','2022-01-05 21:24:00');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (19,'Arenal',17,'52774','2021-11-04 02:07:15','2022-01-05 21:24:08');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (20,'La Cañada',18,'56589','2021-11-04 02:08:51','2022-01-05 21:24:20');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (21,'3 de Mayo',19,'51906','2021-11-04 02:10:31','2022-01-05 21:24:34');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (22,'Milpillas',20,'51084','2021-11-04 02:11:22','2022-01-05 21:24:47');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (23,'El Espino',21,'52016','2021-11-04 02:12:17','2022-01-05 21:25:06');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (24,'Metepec Centro',22,'52140','2021-11-04 02:13:33','2022-01-05 21:25:17');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (25,'Nopaltepec',23,'55970','2021-11-04 02:14:31','2022-01-05 21:25:24');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (26,'Río Hondito',24,'52743','2021-11-04 02:16:38','2022-01-05 21:25:35');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (27,'LA CHONA',25,'40730','2023-06-22 17:03:15','2023-06-22 17:03:15');
INSERT INTO `colonias` (`id_colonia`, `nombre_colonia`, `id_municipio`, `codigo_postal`, `created_at`, `updated_at`) VALUES (28,'AUSTRIAS',27,'20349','2023-06-29 16:46:19','2023-06-29 16:46:19');

--
-- Table structure for table `companias`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companias` (
  `id_compania` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_compania` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_compania`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companias`
--

INSERT INTO `companias` (`id_compania`, `nombre_compania`, `created_at`, `updated_at`) VALUES (1,'Ingenieros asociados','2021-11-25 22:32:08','2022-01-05 21:14:07');

--
-- Table structure for table `criterios`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criterios` (
  `id_criterio` bigint unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_criterio`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criterios`
--

INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (1,'Signo',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (2,'Intensidad',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (3,'Extensión',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (4,'Momento',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (5,'Persistencia',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (6,'Reversibilidad',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (7,'Sinergia',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (8,'Acumulación',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (9,'Efecto',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (10,'Periodicidad',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (11,'Recuperabilidad ',NULL,NULL);
INSERT INTO `criterios` (`id_criterio`, `descripcion`, `created_at`, `updated_at`) VALUES (12,'Certidumbre',NULL,NULL);

--
-- Temporary table structure for view `datos_proyectos`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `datos_proyectos` AS SELECT
 1 AS `id_proyecto`,
  1 AS `nombreproyecto`,
  1 AS `descripción`,
  1 AS `promovente`,
  1 AS `appromovente`,
  1 AS `ampromovente`,
  1 AS `nomcompania`,
  1 AS `colonia`,
  1 AS `municipio`,
  1 AS `estado`,
  1 AS `fecha` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `estados`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id_estado` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (1,'Aguascalientes',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (2,'Baja California',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (3,'Baja California Sur',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (4,'Campeche',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (5,'Chiapas',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (6,'Chihuahua',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (7,'Coahuila',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (8,'Colima',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (9,'Durango',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (10,'Estado de México',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (11,'Guanajuato',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (12,'Guerrero',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (13,'Hidalgo',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (14,'Jalisco',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (15,'Michoacán',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (16,'Morelos',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (17,'Nayarit',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (18,'Nuevo León',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (19,'Oaxaca',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (20,'Puebla',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (21,'Querétaro',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (22,'Quintana Roo',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (23,'San Luis Potosí',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (24,'Sinaloa',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (25,'Sonora',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (26,'Tabasco',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (27,'Tamaulipas',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (28,'Tlaxcala',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (29,'Veracruz',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (30,'Yucatán',NULL,NULL);
INSERT INTO `estados` (`id_estado`, `nombre`, `created_at`, `updated_at`) VALUES (31,'Zacatecas',NULL,NULL);

--
-- Table structure for table `etapas`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etapas` (
  `id_etapa` bigint unsigned NOT NULL AUTO_INCREMENT,
  `etapa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_etapa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapas`
--

INSERT INTO `etapas` (`id_etapa`, `etapa`, `created_at`, `updated_at`) VALUES (1,'preparación',NULL,NULL);
INSERT INTO `etapas` (`id_etapa`, `etapa`, `created_at`, `updated_at`) VALUES (2,'construcción',NULL,NULL);
INSERT INTO `etapas` (`id_etapa`, `etapa`, `created_at`, `updated_at`) VALUES (3,'mantenimiento',NULL,NULL);
INSERT INTO `etapas` (`id_etapa`, `etapa`, `created_at`, `updated_at`) VALUES (4,'abandono',NULL,NULL);

--
-- Table structure for table `evaluaciones`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluaciones` (
  `id_evaluacion` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_asignacriterio` bigint unsigned NOT NULL,
  `id_etapa` bigint unsigned NOT NULL,
  `id_proyecto` bigint unsigned NOT NULL,
  `valor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_evaluacion`),
  KEY `evaluaciones_id_asignacriterio_foreign` (`id_asignacriterio`),
  KEY `evaluaciones_id_etapa_foreign` (`id_etapa`),
  KEY `evaluaciones_id_proyecto_foreign` (`id_proyecto`),
  CONSTRAINT `evaluaciones_id_asignacriterio_foreign` FOREIGN KEY (`id_asignacriterio`) REFERENCES `asigna_criterios` (`id_asignacriterio`) ON DELETE CASCADE,
  CONSTRAINT `evaluaciones_id_etapa_foreign` FOREIGN KEY (`id_etapa`) REFERENCES `etapas` (`id_etapa`) ON DELETE CASCADE,
  CONSTRAINT `evaluaciones_id_proyecto_foreign` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluaciones`
--

INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (1,625,1,1,'-','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (2,625,2,1,'-','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (3,625,3,1,'-','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (4,625,4,1,'+','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (5,626,1,1,'8','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (6,626,2,1,'10','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (7,626,3,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (8,626,4,1,'0','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (9,627,1,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (10,627,2,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (11,627,3,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (12,627,4,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (13,628,1,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (14,628,2,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (15,628,3,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (16,628,4,1,'1','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (17,629,1,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (18,629,2,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (19,629,3,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (20,629,4,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (21,630,1,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (22,630,2,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (23,630,3,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (24,630,4,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (25,631,1,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (26,631,2,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (27,631,3,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (28,631,4,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (29,632,1,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (30,632,2,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (31,632,3,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (32,632,4,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (33,633,1,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (34,633,2,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (35,633,3,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (36,633,4,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (37,634,1,1,'1','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (38,634,2,1,'1','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (39,634,3,1,'4','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (40,634,4,1,'1','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (41,635,1,1,'8','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (42,635,2,1,'8','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (43,635,3,1,'8','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (44,635,4,1,'8','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (45,636,1,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (46,636,2,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (47,636,3,1,'2','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (48,636,4,1,'1','2021-11-25 22:51:04','2021-11-25 22:51:12');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (49,625,1,3,'-','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (50,626,1,3,'2 A 11','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (51,627,1,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (52,628,1,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (53,629,1,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (54,631,1,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (55,632,1,3,'1','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (56,630,1,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (57,633,1,3,'4','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (58,634,1,3,'1','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (59,635,1,3,'4','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (60,636,1,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (61,625,2,3,'-','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (62,626,2,3,'12','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (63,627,2,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (64,628,2,3,'1','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (65,629,2,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (66,630,2,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (67,631,2,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (68,632,2,3,'4','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (69,633,2,3,'4','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (70,634,2,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (71,635,2,3,'4','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (72,636,2,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (73,625,3,3,'+','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (74,626,3,3,'2 A 11','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (75,627,3,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (76,628,3,3,'2','2023-06-22 17:38:33','2023-06-22 17:38:33');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (77,629,3,3,'2','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (78,630,3,3,'2','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (79,631,3,3,'4','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (80,632,3,3,'1','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (81,633,3,3,'4','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (82,634,3,3,'2','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (83,635,3,3,'4','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (84,636,3,3,'2','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (85,625,4,3,'+','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (86,626,4,3,'2 A 11','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (87,627,4,3,'2','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (88,628,4,3,'4','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (89,629,4,3,'1','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (90,630,4,3,'2','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (91,631,4,3,'2','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (92,632,4,3,'1','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (93,633,4,3,'4','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (94,634,4,3,'1','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (95,635,4,3,'4','2023-06-22 17:38:34','2023-06-22 17:38:34');
INSERT INTO `evaluaciones` (`id_evaluacion`, `id_asignacriterio`, `id_etapa`, `id_proyecto`, `valor`, `created_at`, `updated_at`) VALUES (96,636,4,3,'2','2023-06-22 17:38:34','2023-06-22 17:38:34');

--
-- Table structure for table `factores_ambientales`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factores_ambientales` (
  `id_factor` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_factor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_variable` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_factor`),
  KEY `factores_ambientales_id_variable_foreign` (`id_variable`),
  CONSTRAINT `factores_ambientales_id_variable_foreign` FOREIGN KEY (`id_variable`) REFERENCES `variables` (`id_variable`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factores_ambientales`
--

INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (1,'Afectación a especies nativas Arbóreas',1,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (2,'Afectación a nativas arbustivas',1,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (3,'Afectación a nativas herbáceas',1,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (4,'Afectación a nativas Epífitas',1,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (5,'Afectación a especies NOM-059-SEMARNAT-2010 flora',1,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (6,'Incremento flora exótica e invasora',1,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (7,'Afectación a  mamíferos medianos',2,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (8,'Afectación a mamíferos pequeños',2,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (9,'Afectación a  aves residentes',2,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (10,'Afectación a  aves migratorias',2,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (11,'Afectación a reptiles',2,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (12,'Afectación a anfibios ',2,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (13,'Afectación a especies NOM-059-SEMARNAT -2010 fauna',2,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (14,'Fauna exótica e invasora',2,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (15,'Alteración de cadenas alimenticias',3,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (16,'Perdida de conectividad',3,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (17,'Disminución de capacidad de resiliencia',3,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (18,'Deterioro de cuerpos de agua',4,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (19,'Contaminación de aguas subterráneas',4,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (20,'Alteración de la temperatura',5,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (21,'Disminución de la humedad',5,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (22,'Incremento de partículas suspendidas',6,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (23,'Ausencia de olores desagradables  y gases tóxico',6,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (24,'Aumento de ruido antrópico',6,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (25,'Incremento de erosión',7,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (26,'Alteración de condiciones fisicoquímicas',7,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (27,'Desestructuración de geomorfología',7,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (28,'Integridad',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (29,'Calidad estética',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (30,'Originalidad',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (31,'Compatibilidad',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (32,'Vulnerabilidad',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (33,'Fragilidad',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (34,'Espacios naturales',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (35,'Presión Antropogénica',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (36,'Integridad ANP´s Federales',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (37,'Integridad ANP´s Estatales',8,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (38,'Admiración,soledad',9,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (39,'Aislamiento',9,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (40,'Misterio',9,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (41,'Integración con la naturaleza',9,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (42,'Recreación',9,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (43,'Índice de Marginación',10,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (44,'Calidad de vida',10,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (45,'Identidad cultural',10,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (46,'Seguridad y tranquilidad',10,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (47,'Dinamismo de la Economía local',11,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (48,'Empleo',11,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (49,'Ingresos',11,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (50,'Crecimiento urbano ordenado',12,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (51,'Diversidad de usos de suelo',12,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (52,'Consolidación zona habitacional',12,NULL,NULL);
INSERT INTO `factores_ambientales` (`id_factor`, `nombre_factor`, `id_variable`, `created_at`, `updated_at`) VALUES (53,'Carreteras y caminos',12,NULL,NULL);

--
-- Table structure for table `failed_jobs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--


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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2,'2014_10_12_100000_create_password_resets_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3,'2019_08_19_000000_create_failed_jobs_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4,'2020_10_27_155916_create_tipos_usuarios_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5,'2020_10_31_160307_add_field_api_token_to_users',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6,'2020_11_02_143306_create_roles_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7,'2020_11_02_143439_create_role_user_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8,'2020_11_07_143059_create_estados_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9,'2020_11_07_143355_create_municipios_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10,'2020_11_07_143427_create_colonias_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11,'2020_11_07_143442_create_etapas_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12,'2020_11_07_143504_create_criterios_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13,'2020_11_07_143527_create_tipo_proyectos_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14,'2020_11_07_143545_create_subsistemas_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15,'2020_11_07_143604_create_variables_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16,'2020_11_07_143629_create_factores_ambientales_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17,'2020_11_07_143711_create_asigna_criterios_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18,'2020_11_16_165127_create_companias_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (19,'2020_11_16_165924_create_proyectos_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (20,'2020_11_16_165945_create_evaluaciones_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (21,'2020_12_02_011512_create_view_valores',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (22,'2020_12_02_013933_create_view_totales',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (23,'2020_12_07_035105_create_view_datos_proyectos',1);

--
-- Table structure for table `municipios`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipios` (
  `id_municipio` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_estado` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `municipios_id_estado_foreign` (`id_estado`),
  CONSTRAINT `municipios_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipios`
--

INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (1,'Valle de Bravo',10,NULL,NULL);
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (2,'Villa Victoria',10,NULL,NULL);
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (3,'Villa de Allende',10,NULL,'2022-01-05 21:15:02');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (4,'Donato Guerra',10,NULL,'2022-01-05 21:15:23');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (5,'Amanalco',10,NULL,'2022-01-05 21:15:33');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (6,'Santo Tomás de los Plátanos',10,NULL,'2022-01-05 21:16:23');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (7,'Temascaltepec',10,NULL,'2022-01-05 21:16:36');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (8,'Almoloya de Juárez',10,'2021-11-03 23:53:20','2022-01-05 21:16:59');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (9,'Acambay',10,'2021-11-04 01:28:54','2022-01-05 21:17:15');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (10,'Acolman',10,'2021-11-04 01:29:21','2022-01-05 21:17:23');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (11,'Aculco',10,'2021-11-04 01:29:35','2022-01-05 21:17:32');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (12,'Atizapán de Zaragoza',10,'2021-11-04 01:29:54','2022-01-05 21:17:58');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (13,'Calimaya',10,'2021-11-04 01:30:10','2022-01-05 21:18:09');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (14,'Coyotepec',10,'2021-11-04 01:30:30','2022-01-05 21:18:21');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (15,'Chalco',10,'2021-11-04 01:31:16','2022-01-05 21:18:33');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (16,'Chapultepec',10,'2021-11-04 01:31:37','2022-01-05 21:18:45');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (17,'Huixquilucan',10,'2021-11-04 01:32:07','2022-01-05 21:19:00');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (18,'Ixtapaluca',10,'2021-11-04 01:32:26','2022-01-05 21:19:13');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (19,'Ixtapan de la Sal',10,'2021-11-04 01:32:48','2022-01-05 21:19:29');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (20,'Ixtapan del oro',10,'2021-11-04 01:33:01','2022-01-05 21:19:43');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (21,'Lerma',10,'2021-11-04 01:33:17','2022-01-05 21:19:52');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (22,'Metepec',10,'2021-11-04 01:33:35','2022-01-05 21:20:03');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (23,'Nopaltepec',10,'2021-11-04 01:33:58','2022-01-05 21:20:13');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (24,'Ocoyoacac',10,'2021-11-04 01:34:15','2022-01-05 21:20:23');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (25,'AJUCHITLAN DEL PROGRESO',12,'2023-06-22 16:46:53','2023-06-22 16:46:53');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (26,'AJUCHITLAN DEL PROGRESO',12,'2023-06-22 16:47:56','2023-06-22 16:47:56');
INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_estado`, `created_at`, `updated_at`) VALUES (27,'AGUASCALIENTES',1,'2023-06-29 16:43:44','2023-06-29 16:43:44');

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
-- Table structure for table `proyectos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `id_proyecto` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_proyecto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_compania` bigint unsigned NOT NULL,
  `id_user` bigint unsigned NOT NULL,
  `fecha` date NOT NULL,
  `id_tipoproyecto` bigint unsigned NOT NULL,
  `id_colonia` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`),
  KEY `proyectos_id_user_foreign` (`id_user`),
  KEY `proyectos_id_tipoproyecto_foreign` (`id_tipoproyecto`),
  KEY `proyectos_id_colonia_foreign` (`id_colonia`),
  KEY `proyectos_id_compania_foreign` (`id_compania`),
  CONSTRAINT `proyectos_id_colonia_foreign` FOREIGN KEY (`id_colonia`) REFERENCES `colonias` (`id_colonia`) ON DELETE CASCADE,
  CONSTRAINT `proyectos_id_compania_foreign` FOREIGN KEY (`id_compania`) REFERENCES `companias` (`id_compania`) ON DELETE CASCADE,
  CONSTRAINT `proyectos_id_tipoproyecto_foreign` FOREIGN KEY (`id_tipoproyecto`) REFERENCES `tipo_proyectos` (`id_tipoproyecto`) ON DELETE CASCADE,
  CONSTRAINT `proyectos_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `nombre_proyecto`, `descripcion`, `id_compania`, `id_user`, `fecha`, `id_tipoproyecto`, `id_colonia`, `created_at`, `updated_at`) VALUES (1,'CARRETERA LAGUNA DE TABERNILLAS A MEXTEPEC','CONSTRUCCIÓN CARRETERA 4 CARRILES CON EXTENSION DE 7 KM, 280,000 METROS CUADRADOS',1,5,'2021-11-25',1,10,'2021-11-25 22:37:50','2021-11-25 22:37:50');
INSERT INTO `proyectos` (`id_proyecto`, `nombre_proyecto`, `descripcion`, `id_compania`, `id_user`, `fecha`, `id_tipoproyecto`, `id_colonia`, `created_at`, `updated_at`) VALUES (2,'invernadero','construcción de invernadero',1,18,'2023-06-01',1,12,'2023-06-21 19:07:55','2023-06-21 19:07:55');
INSERT INTO `proyectos` (`id_proyecto`, `nombre_proyecto`, `descripcion`, `id_compania`, `id_user`, `fecha`, `id_tipoproyecto`, `id_colonia`, `created_at`, `updated_at`) VALUES (3,'CONSTRUCCION DE PUENTE VEHICULAR \"LA CHONA\"','CONSTRUCCION DEL PUENTE VEHICULAR \"LA CHONA\" ACCESOS Y OBRAS  COMPLEMENTARIAS',1,19,'2023-04-20',1,27,'2023-06-22 17:10:39','2023-06-22 17:10:39');
INSERT INTO `proyectos` (`id_proyecto`, `nombre_proyecto`, `descripcion`, `id_compania`, `id_user`, `fecha`, `id_tipoproyecto`, `id_colonia`, `created_at`, `updated_at`) VALUES (5,'FRACCIONAMIENTO REAL DEL BOSQUE','CASA HABITACIONAL',1,20,'2023-06-29',5,28,'2023-06-29 17:09:02','2023-06-29 17:09:02');

--
-- Table structure for table `role_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int unsigned NOT NULL,
  `user_id_user` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_user_id_user_foreign` (`user_id_user`),
  CONSTRAINT `role_user_user_id_user_foreign` FOREIGN KEY (`user_id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (1,1,1,'2021-09-10 12:43:46','2021-09-10 12:43:46');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (2,2,2,'2021-09-10 12:43:46','2021-09-10 12:43:46');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (3,2,3,'2021-09-10 13:23:20','2021-09-10 13:23:20');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (4,2,4,'2021-09-10 14:53:51','2021-09-10 14:53:51');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (5,2,5,'2021-09-21 14:15:47','2021-09-21 14:15:47');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (6,2,6,'2022-03-04 17:29:13','2022-03-04 17:29:13');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (7,2,7,'2022-03-05 00:21:16','2022-03-05 00:21:16');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (8,2,8,'2022-03-05 00:30:50','2022-03-05 00:30:50');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (9,2,9,'2022-03-05 00:55:10','2022-03-05 00:55:10');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (10,2,10,'2022-03-06 21:35:44','2022-03-06 21:35:44');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (11,2,11,'2022-03-06 21:49:20','2022-03-06 21:49:20');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (12,2,12,'2022-03-06 22:25:37','2022-03-06 22:25:37');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (13,2,13,'2022-03-06 22:32:02','2022-03-06 22:32:02');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (14,2,14,'2022-03-06 22:38:46','2022-03-06 22:38:46');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (15,2,15,'2022-03-06 23:44:54','2022-03-06 23:44:54');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (16,2,16,'2022-03-07 00:52:19','2022-03-07 00:52:19');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (17,2,17,'2023-01-06 16:35:26','2023-01-06 16:35:26');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (18,2,18,'2023-06-21 19:05:33','2023-06-21 19:05:33');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (19,2,19,'2023-06-22 16:27:15','2023-06-22 16:27:15');
INSERT INTO `role_user` (`id`, `role_id`, `user_id_user`, `created_at`, `updated_at`) VALUES (20,2,20,'2023-06-28 20:31:58','2023-06-28 20:31:58');

--
-- Table structure for table `roles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (1,'admin','Administrator','2021-09-10 12:43:46','2021-09-10 12:43:46');
INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (2,'user','User','2021-09-10 12:43:46','2021-09-10 12:43:46');

--
-- Table structure for table `subsistemas`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsistemas` (
  `id_subsistema` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_subsistema` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_subsistema`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsistemas`
--

INSERT INTO `subsistemas` (`id_subsistema`, `nombre_subsistema`, `created_at`, `updated_at`) VALUES (1,'Biótico',NULL,NULL);
INSERT INTO `subsistemas` (`id_subsistema`, `nombre_subsistema`, `created_at`, `updated_at`) VALUES (2,'Antrópico',NULL,NULL);
INSERT INTO `subsistemas` (`id_subsistema`, `nombre_subsistema`, `created_at`, `updated_at`) VALUES (3,'Físico',NULL,NULL);

--
-- Table structure for table `tipo_proyectos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_proyectos` (
  `id_tipoproyecto` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_proyecto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipoproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_proyectos`
--

INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (1,'Carretera',NULL,NULL);
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (2,'Invernadero',NULL,NULL);
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (3,'Casa',NULL,NULL);
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (4,'Planta',NULL,NULL);
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (5,'Residencial','2022-01-05 21:06:50','2022-01-05 21:06:50');
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (6,'Actividades productivas','2022-01-05 21:07:00','2022-01-05 21:08:00');
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (7,'Equipamiento','2022-01-05 21:07:16','2022-01-05 21:07:16');
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (8,'Infraestructura','2022-01-05 21:07:30','2022-01-05 21:07:30');
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (9,'Espacio público','2022-01-05 21:07:50','2022-01-05 21:07:50');
INSERT INTO `tipo_proyectos` (`id_tipoproyecto`, `nombre_proyecto`, `created_at`, `updated_at`) VALUES (10,'Área verde','2022-01-05 21:08:18','2022-01-05 21:08:18');

--
-- Table structure for table `tipos_usuarios`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_usuarios` (
  `id_tipo` bigint unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_usuarios`
--

INSERT INTO `tipos_usuarios` (`id_tipo`, `descripcion`, `created_at`, `updated_at`) VALUES (1,'Administrador',NULL,NULL);
INSERT INTO `tipos_usuarios` (`id_tipo`, `descripcion`, `created_at`, `updated_at`) VALUES (2,'Cliente',NULL,NULL);

--
-- Temporary table structure for view `totales`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `totales` AS SELECT
 1 AS `id_proyecto`,
  1 AS `id_factor`,
  1 AS `etapa`,
  1 AS `valor` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_user` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apusuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amusuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipo` bigint unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (1,'Administrador','Admin','Admin','admin@gmail.com',NULL,'$2y$10$MNIepisFdgeGuOZO0zJqPe.p5eCrA3PcVo/oUnEY987k4AmL1R85m','vQvQ25KVJxXARVQVBCTNhVpgUi9gYQidLK6f4se9fHZUrApS8GDcWIU0GybnHaDAegfx92PS5Lx1j9IY',1,NULL,'2021-09-10 12:43:46','2021-09-10 12:43:46');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (2,'Carlos Emmanuel','Dominguez','Reyes','carlos.cedr3@gmail.com',NULL,'$2y$10$9OJpniRlasUGXcULo9grkuAFfzeQTwHgWD0cecQhQVvQ7IY6OIDe2','1R8sOQm9pVswLOVc0IqLZDohSTynisyPlFkXhtNaO5I41LYb7wKWLf7DvS3ReMoTKNc6EYIwBwNlxddH',2,NULL,'2021-09-10 12:43:46','2021-09-10 12:43:46');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (3,'César','Primero','Huerta','iscprimerocesar@gmail.com',NULL,'$2y$10$apwrOLSu.ZXzAeHFGUnsnulD8X4CazToJCFwZxNI8yyfi0QNcyXM2','2ngBnEnoScJKhZOEojYzdJ2D7DRx7X4ZoIucS44nzqkLsC6auFH9j6LBBKRrELYifI158GJJ7tooDGL2',2,NULL,'2021-09-10 13:23:20','2021-09-10 13:23:20');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (4,'Carlos','Dominguez','reyes','carlos.cedr@gmail.com',NULL,'$2y$10$dei2zKxEXAggyF1lD6S.Be06MYJ8Y.zqv3XNjV5nS3j/1N1JzTO8a','S4Zx83AmfZwFHBX85y209rVUbhGyX6guAzaCzQnyqiDPV8WGBEjJMJZrTGxYQbs0wAAhSAWFSG0bP6yz',2,NULL,'2021-09-10 14:53:51','2021-09-10 14:53:51');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (5,'Carlos','Villazteca','Rebollo','villazteca04@gmail.com',NULL,'$2y$10$jB.c8fkspWLb6C.cOkNL1OcsGX.gtTfXxpP8CnQFs6PFMt89zqvIu','fnfN2Wt6XzCkda2PJaZsqZeJ7Njg7QzWpkcYKaJcV8SN9w5WgQcI7h2J2CZ0TD3mDwQr5F8YhPA0VVsL',2,'fe7cVNfa61Qc0ZaxtZgKFoFhNsQuOUYINyEb0Gn4g25RhHlSv6AIYW1gM8Fg','2021-09-21 14:15:47','2021-09-21 14:15:47');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (6,'Alicia','Gómez','Beltrán','ali.gob20@gmail.com',NULL,'$2y$10$ffk6zU.zuyqR/gRtJg5yue3cd2oh7TjpZed8hidpLLcgudhTTf/Qa','zYsav6hDRLU4rZbbrcWWSWR8sRGbNfi1Iw7UFjJjNdCvWU4eFJvbIeVVlYjs8PKW09B6XOMra3iva6Ev',2,NULL,'2022-03-04 17:29:13','2022-03-04 17:29:13');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (7,'LUIS ARMANDO','GUADARRAMA','SALAS','dimeloabbeatss@gmail.com',NULL,'$2y$10$z4muW64RU8TsRU/6g.J5fup3l.oZsoFPLSwS2/B7dTmDB5d2L4X5K','BCDVNij0Escdbejzvjvea9idfHNTQE5Zcn6qGwBGgT2uKnB3g61Yvt0fbO5rWoIbB0YXK88LTYcZt8mA',2,NULL,'2022-03-05 00:21:16','2022-03-05 00:21:16');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (8,'Jacqueline','Emeterio','Moreno','yaquiemeterio@gmail.com',NULL,'$2y$10$2SE8u.01hUHvAgoMtep7QuYf2.2OV6Nu1UyoNTXwgFTG./mMccC2.','2TeDO7BiOhzmlcdkEXtiRuQd7266wLI1f9f7wttpeBkL0VdUpwVR7laGaGaDB1R3IpkylTcP7RTYiVtC',2,NULL,'2022-03-05 00:30:50','2022-03-05 00:30:50');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (9,'Sergio','Ramírez','Arriaga','sergioramirez201804@gmail.com',NULL,'$2y$10$uOIZCceLQqPryHTETVgqE.4Bncq7fXXZEUU9xD42CDpwYr219KWLG','9O7RAb8cZHpjGHN9xFnAdtHqgRHaOfGAk3OE4n2S8N8MfTRwgBu0he8OcWiKRsY9AEiY8mYl7FDzyxm5',2,NULL,'2022-03-05 00:55:10','2022-03-05 00:55:10');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (10,'Karina','Colín','Velazquez','karyscolin19@gmail.com',NULL,'$2y$10$89q9v8sKg8X4tJtsRzbdy.vDJkMPa6uCILKeADGutqkvxZRqy4Wku','L3nvxglpavhk0qs9lvfDWCaFxk30dtbZmiyhOJ21D5ekO2YPIVRKPVie8f2CqZljOkHe9xVfB6VEPFx5',2,NULL,'2022-03-06 21:35:43','2022-03-06 21:35:43');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (11,'Dulce Yacaranday','Villelo','Casas','dulcevillelo@gmail.com',NULL,'$2y$10$3zW5u50BKSW69wClH3Yfv.497OwMx52bOMzCKyCvLDftxFprd47pu','XQmKmwf77LRF19lPkohO5Ik7Naetlxr0l2OUYCPWqCdsJoft8KwKeXyXhpG7uig0HQL5uPP4ZdK6xV3K',2,NULL,'2022-03-06 21:49:20','2022-03-06 21:49:20');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (12,'guadalupe','frutis','sánchez','frutislupita96@gmail.com',NULL,'$2y$10$nLmf8jcaxRN8QFK.q3M5LeTO4N1rw5At4zxZ2w7EPxoFwjH3SO.hm','WUw2EAU8LlwzUe4GvKpT6f7LghoKVH8ACuYMD2ulksmz5eCL2fi51eJ7ijHu5JZOOFvkEYfCdlLNVI1O',2,NULL,'2022-03-06 22:25:37','2022-03-06 22:25:37');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (13,'Alan','González','Rivera','alanmuaythay1@gmail.com',NULL,'$2y$10$wjruv13vIePpljul.i9dDeraJ5j8Stmb3Kjd8xZdwq19sK1oj2P12','tID5qbk4V2JD7mC1ZTQ5By6m12q4edB3tod87mBaU5jSLss2gEctP7EIQjnFT4yensPsaPfrK0kJT8np',2,NULL,'2022-03-06 22:32:02','2022-03-06 22:32:02');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (14,'Hugo Osvaldo','Pineda','Urbina','hugoosvaldopinedaurbina@gmail.com',NULL,'$2y$10$P.TLVIv5Im4liasWfzu4s.Y2CjmlVPYHs0N804lMpQxqATyb/lsVq','rJ4WtzMJfBIiofkjamIr2arOEYJPoMUkGTZTNKPAn7zcWzpXwUUNDLvBtfQwj0pCeoSYxxMWb5cvsIBY',2,NULL,'2022-03-06 22:38:46','2022-03-06 22:38:46');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (15,'Marisol','Jose','Cruz','marisolcr98@hotmail.com',NULL,'$2y$10$dgJ.E.2Q86PGXBC9T0yqCOsCUjt.Zry3oJDUhDUqHGRhV1sMg9Wc.','AwJjHOlE1uzzplHyfAYSNRGGtUD8YLpvxTiC5imGe3Dq8wN26ovCSOCi9i8roPjoXaqgG3HEgvONMOth',2,NULL,'2022-03-06 23:44:54','2022-03-06 23:44:54');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (16,'Mariela','De la Cruz','Santiago','marieldelacruz2227@gmail.com',NULL,'$2y$10$AdtPtKzi9s1KqoeKnFy06eSBxbElTYLrPpkT.aP/74VuI.WOVpWiu','lrFAMnovQ2Ha3A56zNt6urnKiKhq1N85pjJThtfgvCTNEhtwk4TfVknyqJkdIBPFPWqHqQReN4s4wjBB',2,NULL,'2022-03-07 00:52:19','2022-03-07 00:52:19');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (17,'Carlos','Dominguez','Reyes','carlosdr3@outlook.com',NULL,'$2y$10$OEGMkDSvhdbcJoaJ30pkGuU.9yWH7sqMQaEf5twZJzLsk0qYFPMVu','FmRdrQ7dzauZ5VrAgWEc1mEt5O1gL8yf6NYm7ZX2Bn5uuUFYuqhEUuOcWQhUuNlSTB3TJBIiEsgbcskN',2,NULL,'2023-01-06 16:35:26','2023-01-06 16:35:26');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (18,'Marina','Cruz','Mendoza','mariana.cm@vbravo.tecnm.mx',NULL,'$2y$10$dTu0YI7R8IsSAsmp39SiR.Pl4uIs2w99ohUuBompliH9r/kdehClW','jCGKlLbWCFY4kQ8TModmKd8HlDfl0rjyBRx4cFk5wL10V5m9y5VW7g4Bqpcqc9yYkrsdMWszIvwqnuqm',2,NULL,'2023-06-21 19:05:33','2023-06-21 19:05:33');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (19,'DAVID ALEJANDRO','MORENO','VIOLANTE','heydevid12@gmail.com',NULL,'$2y$10$ea.CsZhzsv19L/ZdueF9h.VIZGAa9HkHW6ayAhUx4GS..ND744Fmi','JjK3cTZY8Vu9NtJNTL61oeqokKJ8UefSRpovCuduScOytA0IJiibF6RdAbbdtFjvw1PMzsulj9zZo4U5',2,NULL,'2023-06-22 16:27:15','2023-06-22 16:27:15');
INSERT INTO `users` (`id_user`, `name`, `apusuario`, `amusuario`, `email`, `email_verified_at`, `password`, `api_token`, `id_tipo`, `remember_token`, `created_at`, `updated_at`) VALUES (20,'Eduar','Gonzalez','Felix','Eduargonz2218@gmail.com',NULL,'$2y$10$R/8MT9rcmFVY844C5gMyfumU3ykcYQ.CI5QV5ruiQMfhXCbeozqG6','MZv4oyoGzxieKyDTqZDfQ6QDmD78Iazpu0EQtanTxtxMHeR9eYzNfhpHRpFc9HpZPlZeHXvQ1SwdHbWV',2,'GXB4TdpApW4xBplYWosSV7SwmiCZFJJ2i7jPvlGspYHwmTBdQjVKjlEzlAtu','2023-06-28 20:31:58','2023-06-28 20:31:58');

--
-- Temporary table structure for view `valores`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `valores` AS SELECT
 1 AS `id_proyecto`,
  1 AS `id_factor`,
  1 AS `etapa`,
  1 AS `signo`,
  1 AS `total` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `variables`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variables` (
  `id_variable` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_variable` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_subsistema` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_variable`),
  KEY `variables_id_subsistema_foreign` (`id_subsistema`),
  CONSTRAINT `variables_id_subsistema_foreign` FOREIGN KEY (`id_subsistema`) REFERENCES `subsistemas` (`id_subsistema`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variables`
--

INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (1,'Vegetación',1,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (2,'Fauna',1,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (3,'Comunidad biótica',1,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (4,'Agua',2,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (5,'Microclíma',2,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (6,'Atmósfera',2,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (7,'Suelo',2,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (8,'Paisaje',2,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (9,'Bienestar sicológico y espriritual',3,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (10,'Social',3,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (11,'Económico',3,NULL,NULL);
INSERT INTO `variables` (`id_variable`, `nombre_variable`, `id_subsistema`, `created_at`, `updated_at`) VALUES (12,'Urbanismo',3,NULL,NULL);

--
-- Final view structure for view `datos_proyectos`
--

/*!50001 DROP VIEW IF EXISTS `datos_proyectos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`forge`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `datos_proyectos` AS select `p`.`id_proyecto` AS `id_proyecto`,`p`.`nombre_proyecto` AS `nombreproyecto`,`p`.`descripcion` AS `descripción`,`u`.`name` AS `promovente`,`u`.`apusuario` AS `appromovente`,`u`.`amusuario` AS `ampromovente`,`c`.`nombre_compania` AS `nomcompania`,`co`.`nombre_colonia` AS `colonia`,`m`.`nombre` AS `municipio`,`e`.`nombre` AS `estado`,`p`.`fecha` AS `fecha` from (((((`proyectos` `p` join `users` `u`) join `companias` `c`) join `colonias` `co`) join `municipios` `m`) join `estados` `e`) where ((`u`.`id_user` = `p`.`id_user`) and (`c`.`id_compania` = `p`.`id_compania`) and (`co`.`id_colonia` = `p`.`id_colonia`) and (`m`.`id_municipio` = `co`.`id_municipio`) and (`e`.`id_estado` = `m`.`id_estado`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totales`
--

/*!50001 DROP VIEW IF EXISTS `totales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`forge`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `totales` AS select `valores`.`id_proyecto` AS `id_proyecto`,`valores`.`id_factor` AS `id_factor`,`valores`.`etapa` AS `etapa`,(`valores`.`total` * -(1)) AS `valor` from `valores` where (`valores`.`signo` = '-') union select `valores`.`id_proyecto` AS `id_proyecto`,`valores`.`id_factor` AS `id_factor`,`valores`.`etapa` AS `etapa`,`valores`.`total` AS `valor` from `valores` where (`valores`.`signo` = '+') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `valores`
--

/*!50001 DROP VIEW IF EXISTS `valores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`forge`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `valores` AS select distinct `p`.`id_proyecto` AS `id_proyecto`,`f`.`id_factor` AS `id_factor`,`e`.`etapa` AS `etapa`,(select `evaluaciones`.`valor` from ((`evaluaciones` join `asigna_criterios`) join `factores_ambientales`) where ((`evaluaciones`.`id_asignacriterio` = `asigna_criterios`.`id_asignacriterio`) and (`asigna_criterios`.`id_criterio` = 1) and (`asigna_criterios`.`id_factor` = `factores_ambientales`.`id_factor`) and (`factores_ambientales`.`id_factor` = `f`.`id_factor`) and (`evaluaciones`.`id_proyecto` = `p`.`id_proyecto`) and (`evaluaciones`.`id_etapa` = `e`.`id_etapa`))) AS `signo`,(select sum(`evaluaciones`.`valor`) from ((`evaluaciones` join `asigna_criterios`) join `factores_ambientales`) where ((`evaluaciones`.`id_asignacriterio` = `asigna_criterios`.`id_asignacriterio`) and (`asigna_criterios`.`id_criterio` <> 1) and (`asigna_criterios`.`id_factor` = `factores_ambientales`.`id_factor`) and (`factores_ambientales`.`id_factor` = `f`.`id_factor`) and (`evaluaciones`.`id_proyecto` = `p`.`id_proyecto`) and (`evaluaciones`.`id_etapa` = `e`.`id_etapa`))) AS `total` from (((((`asigna_criterios` `s` join `factores_ambientales` `f`) join `etapas` `e`) join `evaluaciones` `v`) join `criterios` `c`) join `proyectos` `p`) where ((`f`.`id_factor` = `s`.`id_factor`) and (`p`.`id_proyecto` = `v`.`id_proyecto`) and (`s`.`id_asignacriterio` = `v`.`id_asignacriterio`) and (`e`.`id_etapa` = `v`.`id_etapa`) and (`c`.`id_criterio` = `s`.`id_criterio`) and (`e`.`etapa` like 'Preparación%')) union all select distinct `p`.`id_proyecto` AS `id_proyecto`,`f`.`id_factor` AS `id_factor`,`e`.`etapa` AS `etapa`,(select `evaluaciones`.`valor` from ((`evaluaciones` join `asigna_criterios`) join `factores_ambientales`) where ((`evaluaciones`.`id_asignacriterio` = `asigna_criterios`.`id_asignacriterio`) and (`asigna_criterios`.`id_criterio` = 1) and (`asigna_criterios`.`id_factor` = `factores_ambientales`.`id_factor`) and (`factores_ambientales`.`id_factor` = `f`.`id_factor`) and (`evaluaciones`.`id_proyecto` = `p`.`id_proyecto`) and (`evaluaciones`.`id_etapa` = `e`.`id_etapa`))) AS `signo`,(select sum(`evaluaciones`.`valor`) from ((`evaluaciones` join `asigna_criterios`) join `factores_ambientales`) where ((`evaluaciones`.`id_asignacriterio` = `asigna_criterios`.`id_asignacriterio`) and (`asigna_criterios`.`id_criterio` <> 1) and (`asigna_criterios`.`id_factor` = `factores_ambientales`.`id_factor`) and (`factores_ambientales`.`id_factor` = `f`.`id_factor`) and (`evaluaciones`.`id_proyecto` = `p`.`id_proyecto`) and (`evaluaciones`.`id_etapa` = `e`.`id_etapa`))) AS `total` from (((((`asigna_criterios` `s` join `factores_ambientales` `f`) join `etapas` `e`) join `evaluaciones` `v`) join `criterios` `c`) join `proyectos` `p`) where ((`f`.`id_factor` = `s`.`id_factor`) and (`p`.`id_proyecto` = `v`.`id_proyecto`) and (`s`.`id_asignacriterio` = `v`.`id_asignacriterio`) and (`e`.`id_etapa` = `v`.`id_etapa`) and (`c`.`id_criterio` = `s`.`id_criterio`) and (`e`.`etapa` like 'Construcción%')) union all select distinct `p`.`id_proyecto` AS `id_proyecto`,`f`.`id_factor` AS `id_factor`,`e`.`etapa` AS `etapa`,(select `evaluaciones`.`valor` from ((`evaluaciones` join `asigna_criterios`) join `factores_ambientales`) where ((`evaluaciones`.`id_asignacriterio` = `asigna_criterios`.`id_asignacriterio`) and (`asigna_criterios`.`id_criterio` = 1) and (`asigna_criterios`.`id_factor` = `factores_ambientales`.`id_factor`) and (`factores_ambientales`.`id_factor` = `f`.`id_factor`) and (`evaluaciones`.`id_proyecto` = `p`.`id_proyecto`) and (`evaluaciones`.`id_etapa` = `e`.`id_etapa`))) AS `signo`,(select sum(`evaluaciones`.`valor`) from ((`evaluaciones` join `asigna_criterios`) join `factores_ambientales`) where ((`evaluaciones`.`id_asignacriterio` = `asigna_criterios`.`id_asignacriterio`) and (`asigna_criterios`.`id_criterio` <> 1) and (`asigna_criterios`.`id_factor` = `factores_ambientales`.`id_factor`) and (`factores_ambientales`.`id_factor` = `f`.`id_factor`) and (`evaluaciones`.`id_proyecto` = `p`.`id_proyecto`) and (`evaluaciones`.`id_etapa` = `e`.`id_etapa`))) AS `total` from (((((`asigna_criterios` `s` join `factores_ambientales` `f`) join `etapas` `e`) join `evaluaciones` `v`) join `criterios` `c`) join `proyectos` `p`) where ((`f`.`id_factor` = `s`.`id_factor`) and (`p`.`id_proyecto` = `v`.`id_proyecto`) and (`s`.`id_asignacriterio` = `v`.`id_asignacriterio`) and (`e`.`id_etapa` = `v`.`id_etapa`) and (`c`.`id_criterio` = `s`.`id_criterio`) and (`e`.`etapa` like 'Mantenimiento%')) union all select distinct `p`.`id_proyecto` AS `id_proyecto`,`f`.`id_factor` AS `id_factor`,`e`.`etapa` AS `etapa`,(select `evaluaciones`.`valor` from ((`evaluaciones` join `asigna_criterios`) join `factores_ambientales`) where ((`evaluaciones`.`id_asignacriterio` = `asigna_criterios`.`id_asignacriterio`) and (`asigna_criterios`.`id_criterio` = 1) and (`asigna_criterios`.`id_factor` = `factores_ambientales`.`id_factor`) and (`factores_ambientales`.`id_factor` = `f`.`id_factor`) and (`evaluaciones`.`id_proyecto` = `p`.`id_proyecto`) and (`evaluaciones`.`id_etapa` = `e`.`id_etapa`))) AS `signo`,(select sum(`evaluaciones`.`valor`) from ((`evaluaciones` join `asigna_criterios`) join `factores_ambientales`) where ((`evaluaciones`.`id_asignacriterio` = `asigna_criterios`.`id_asignacriterio`) and (`asigna_criterios`.`id_criterio` <> 1) and (`asigna_criterios`.`id_factor` = `factores_ambientales`.`id_factor`) and (`factores_ambientales`.`id_factor` = `f`.`id_factor`) and (`evaluaciones`.`id_proyecto` = `p`.`id_proyecto`) and (`evaluaciones`.`id_etapa` = `e`.`id_etapa`))) AS `total` from (((((`asigna_criterios` `s` join `factores_ambientales` `f`) join `etapas` `e`) join `evaluaciones` `v`) join `criterios` `c`) join `proyectos` `p`) where ((`f`.`id_factor` = `s`.`id_factor`) and (`p`.`id_proyecto` = `v`.`id_proyecto`) and (`s`.`id_asignacriterio` = `v`.`id_asignacriterio`) and (`e`.`id_etapa` = `v`.`id_etapa`) and (`c`.`id_criterio` = `s`.`id_criterio`) and (`e`.`etapa` like 'Abandono%')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-14 15:50:14
