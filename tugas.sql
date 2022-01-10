/*
 Navicat Premium Data Transfer

 Source Server         : data
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : tugas

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 10/01/2022 15:04:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for datamahasiswa1
-- ----------------------------
DROP TABLE IF EXISTS `datamahasiswa1`;
CREATE TABLE `datamahasiswa1`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datamahasiswa1
-- ----------------------------
INSERT INTO `datamahasiswa1` VALUES ('01', 'wahid', 'admin', '000');
INSERT INTO `datamahasiswa1` VALUES ('02', 'anas', 'admin', '000');
INSERT INTO `datamahasiswa1` VALUES ('03', 'wisnu', 'admin', '000');
INSERT INTO `datamahasiswa1` VALUES ('04', 'didi', 'admin', '000');
INSERT INTO `datamahasiswa1` VALUES ('05', 'ifa', 'admin', '000');
INSERT INTO `datamahasiswa1` VALUES (NULL, 'amel', 'admin', '000');
INSERT INTO `datamahasiswa1` VALUES (NULL, 'wahid', 'admin', '000');

-- ----------------------------
-- Table structure for jurusan2
-- ----------------------------
DROP TABLE IF EXISTS `jurusan2`;
CREATE TABLE `jurusan2`  (
  `nim` int NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurusan2
-- ----------------------------
INSERT INTO `jurusan2` VALUES (111, 'anas', 'lampung', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'wahid', 'kudus', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'did', 'batu', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'anwar', 'surabaya', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'reza', 'lampung', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'amel', 'lampung', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'ifa', 'kudus', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'damara', 'ngawi', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'wisnu', 'tulungagung', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (111, 'syahril', 'trenggalek', 'teknik informatika');
INSERT INTO `jurusan2` VALUES (NULL, 'shsjd', 'ssfsss', 'ss');

-- ----------------------------
-- Procedure structure for datamahasiswa1_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `datamahasiswa1_insert`;
delimiter ;;
CREATE PROCEDURE `datamahasiswa1_insert`(pnama VARCHAR(255), pusername VARCHAR(255), ppassword VARCHAR(255))
BEGIN
	#Routine body goes here...
	INSERT INTO datamahasiswa1 (nama,username,password) VALUES (pnama,pusername,ppassword);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for datamahasiswa1_view
-- ----------------------------
DROP PROCEDURE IF EXISTS `datamahasiswa1_view`;
delimiter ;;
CREATE PROCEDURE `datamahasiswa1_view`()
BEGIN
	SELECT
	*, 
	datamahasiswa1.id, 
	datamahasiswa1.nama, 
	datamahasiswa1.username, 
	datamahasiswa1.`password`
FROM
	datamahasiswa1;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for jurusan._insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `jurusan._insert`;
delimiter ;;
CREATE PROCEDURE `jurusan._insert`(pnama VARCHAR(255), palamat VARCHAR(255), pjurusan VARCHAR(255))
BEGIN
	#Routine body goes here...
	INSERT INTO jurusan (nama,alamat,jurusan) VALUES (pnama,palamat,pjurusan);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for jurusan._view
-- ----------------------------
DROP PROCEDURE IF EXISTS `jurusan._view`;
delimiter ;;
CREATE PROCEDURE `jurusan._view`()
BEGIN
SELECT
	*, 
	`jurusan.`.nim, 
	`jurusan.`.nama, 
	`jurusan.`.jurusan, 
	`jurusan.`.alamat
FROM
	`jurusan.`;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for jurusan2_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `jurusan2_insert`;
delimiter ;;
CREATE PROCEDURE `jurusan2_insert`(pnama VARCHAR(255), palamat VARCHAR(255), pjurusan VARCHAR(255))
BEGIN
	#Routine body goes here...
	INSERT INTO jurusan2 (nama,alamat,jurusan) VALUES (pnama,palamat,pjurusan);

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
