/*
Navicat MySQL Data Transfer

Source Server         : 本地MSQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-31 15:39:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ap`
-- ----------------------------
DROP TABLE IF EXISTS `ap`;
CREATE TABLE `ap` (
  `AP_ID` int(6) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(6) NOT NULL,
  `PRIVILEGE_ID` int(4) NOT NULL,
  `GRANTOR` int(6) DEFAULT NULL,
  `OPERABLE` int(1) DEFAULT NULL COMMENT '0：无\n            1：有',
  `GRANTABLE` int(1) DEFAULT NULL COMMENT '0：无\n            1：有',
  PRIMARY KEY (`AP_ID`),
  UNIQUE KEY `AP_ACCOUNT_PID_GRANTOR_UK` (`USER_ID`,`PRIVILEGE_ID`,`GRANTOR`) USING BTREE,
  KEY `AP_ACCOUNT` (`USER_ID`),
  KEY `AP_PID` (`PRIVILEGE_ID`),
  KEY `AP_GRANTOR` (`GRANTOR`),
  CONSTRAINT `FK_AP_REF_PRIVILEGE` FOREIGN KEY (`PRIVILEGE_ID`) REFERENCES `privilege` (`PRIVILEGE_ID`),
  CONSTRAINT `FK_AP_REF_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user_account` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ap
-- ----------------------------
/*
Navicat MySQL Data Transfer

Source Server         : 本地MSQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-31 15:39:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ar`
-- ----------------------------
DROP TABLE IF EXISTS `ar`;
CREATE TABLE `ar` (
  `AR_ID` int(6) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(6) NOT NULL,
  `ROLE_ID` int(4) NOT NULL,
  `GRANTOR` int(6) DEFAULT NULL,
  `GRANTABLE` int(1) DEFAULT NULL COMMENT '//0：禁止角色中的授权权限\n            //1：保留角色中的授权权限，并有此角色授权权限\n            0：无此角色中的授权权限\n            1：有此角色中的授权权限',
  PRIMARY KEY (`AR_ID`),
  UNIQUE KEY `AK_AR_ACCOUNT_RID_GRANTOR_UK` (`USER_ID`,`ROLE_ID`,`GRANTOR`) USING BTREE,
  KEY `AR_ACCOUNT` (`USER_ID`),
  KEY `AR_RID` (`ROLE_ID`),
  KEY `AR_GRANTOR` (`GRANTOR`),
  CONSTRAINT `FK_APR_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ROLE_ID`),
  CONSTRAINT `FK_APR_USERACCOUNT` FOREIGN KEY (`USER_ID`) REFERENCES `user_account` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ar
-- ----------------------------
INSERT INTO `ar` VALUES ('1', '2', '1', '1', '1');
/*
Navicat MySQL Data Transfer

Source Server         : 本地MSQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-31 15:39:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `func_tree`
-- ----------------------------
DROP TABLE IF EXISTS `func_tree`;
CREATE TABLE `func_tree` (
  `FUNC_TREE_ID` int(4) NOT NULL AUTO_INCREMENT,
  `F_ID` int(4) DEFAULT NULL,
  `CODE` varchar(20) NOT NULL,
  `ORD` varchar(20) NOT NULL COMMENT '用于层级排序，前 n - 2 位表示其上级功能权限层级号ORD',
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `OPEN_ICON` varchar(64) DEFAULT NULL,
  `CLOSE_ICON` varchar(64) DEFAULT NULL,
  `DISP` int(1) NOT NULL COMMENT '为 1 可显示在功能菜单，\n            否则表示界面中的操作权限（在所在的功能界面中）',
  `STATUS` int(1) NOT NULL COMMENT '0：已实现\n            1：开发中\n            2：改动中\n            3：空缺\n            4：取消',
  `PRIVILEGE_CODE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FUNC_TREE_ID`),
  UNIQUE KEY `AK_FUNC_TREE_CODE_UK` (`CODE`) USING BTREE,
  UNIQUE KEY `AK_FUNC_TREE_NAME_UK` (`NAME`) USING BTREE,
  KEY `FUNC_TREE_F_ID` (`F_ID`),
  KEY `FUNC_TREE_DISP` (`DISP`),
  KEY `FUNC_TREE_ORD` (`ORD`),
  KEY `FUNC_TREE_STATUS` (`STATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of func_tree
-- ----------------------------
INSERT INTO `func_tree` VALUES ('1', null, '001', '001', '一级菜单一', null, 'fa-home', null, '1', '0', null);
INSERT INTO `func_tree` VALUES ('2', '1', '001001', '001001', '二级菜单一', null, '', null, '1', '0', 'security:user:query');
INSERT INTO `func_tree` VALUES ('3', null, '002', '002', '一级菜单二', null, 'fa-heart', null, '1', '0', null);
INSERT INTO `func_tree` VALUES ('4', '3', '002001', '002001', '二级菜单二', null, '', null, '1', '0', 'security:user:load');
INSERT INTO `func_tree` VALUES ('5', null, '003', '003', '一级菜单三', null, 'fa-language', null, '1', '0', null);
INSERT INTO `func_tree` VALUES ('6', '5', '003001', '003001', '二级菜单三一', null, '', null, '1', '0', 'security:user:update');
INSERT INTO `func_tree` VALUES ('7', null, '004', '004', '一级菜单四', null, 'fa-folder', null, '1', '0', null);
INSERT INTO `func_tree` VALUES ('8', null, '005', '005', '一级菜单五', null, 'fa-gear', null, '1', '0', null);
INSERT INTO `func_tree` VALUES ('9', '8', '005001', '005001', '二级菜单五一', null, null, null, '1', '0', null);
INSERT INTO `func_tree` VALUES ('11', '9', '005001001', '005001001', '三级菜单五一一', null, null, null, '1', '0', 'security:user:lock');
INSERT INTO `func_tree` VALUES ('12', '9', '005001002', '005001002', '三级菜单五一二', null, null, null, '1', '0', 'security:user:unlock');
INSERT INTO `func_tree` VALUES ('13', '7', '004001', '004001', '二级菜单四一', null, null, null, '1', '0', 'security:user:add');
/*
Navicat MySQL Data Transfer

Source Server         : 本地MSQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-31 15:40:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `privilege`
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `PRIVILEGE_ID` int(4) NOT NULL AUTO_INCREMENT,
  `PRIVILEGE_CODE` varchar(50) NOT NULL,
  `PRIVILEGE_GROUP_ID` int(4) DEFAULT NULL,
  `ORD` varchar(20) NOT NULL COMMENT '用于层级排序，前 n - 2 位表示其上级功能权限层级号ORD',
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `STATUS` int(1) NOT NULL COMMENT '0：已实现\n            1：开发中\n            2：改动中\n            3：空缺\n            4：取消',
  `LINK` varchar(100) DEFAULT NULL,
  `REQUEST_METHOD` int(1) DEFAULT NULL COMMENT '0：不限\n            1：POST\n            2：GET',
  PRIMARY KEY (`PRIVILEGE_ID`),
  UNIQUE KEY `AK_PRIV_CODE_UK` (`PRIVILEGE_CODE`) USING BTREE,
  UNIQUE KEY `AK_PRIV_NAME_UK` (`NAME`) USING BTREE,
  KEY `PRIV_ORD` (`ORD`),
  KEY `PRIV_STATUS` (`STATUS`),
  KEY `FK_PRIVILEGE_PRIVILEGEGROUP` (`PRIVILEGE_GROUP_ID`),
  CONSTRAINT `FK_PRIVILEGE_PRIVILEGEGROUP` FOREIGN KEY (`PRIVILEGE_GROUP_ID`) REFERENCES `privilege_group` (`PRIVILEGE_GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('1', 'security:user:query', '2', '01', '功能权限一', 'userQuery', '0', 'hello', '0');
INSERT INTO `privilege` VALUES ('2', 'security:user:load', '2', '02', '功能权限二', 'userLoad', '0', 'management/user/userLoad', '0');
INSERT INTO `privilege` VALUES ('3', 'security:user:add', '2', '03', '功能权限三', 'userAdd', '0', 'management/user/insert', '0');
INSERT INTO `privilege` VALUES ('4', 'security:user:update', '2', '04', '功能权限四', 'userUpdate', '0', 'management/user/update', '0');
INSERT INTO `privilege` VALUES ('5', 'security:user:lock', '2', '05', '功能权限五', 'userLock', '0', null, '0');
INSERT INTO `privilege` VALUES ('6', 'security:user:unlock', '2', '06', '功能权限六', 'userUnlock', '0', null, '0');
/*
Navicat MySQL Data Transfer

Source Server         : 本地MSQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-31 15:40:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `privilege_group`
-- ----------------------------
DROP TABLE IF EXISTS `privilege_group`;
CREATE TABLE `privilege_group` (
  `PRIVILEGE_GROUP_ID` int(4) NOT NULL AUTO_INCREMENT,
  `F_ID` int(4) DEFAULT NULL,
  `CODE` varchar(20) NOT NULL,
  `ORD` varchar(20) NOT NULL COMMENT '用于层级排序，前 n - 2 位表示其上级功能权限层级号ORD',
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PRIVILEGE_GROUP_ID`),
  UNIQUE KEY `AK_PRIV_GROUP_CODE_UK` (`CODE`) USING BTREE,
  UNIQUE KEY `AK_PRIV_GROUP_NAME_UK` (`NAME`) USING BTREE,
  KEY `PRIV_GROUP_F_ID` (`F_ID`),
  KEY `PRIV_GROUP_ORD` (`ORD`),
  CONSTRAINT `FK_PRIVILEGGROUP_SELF` FOREIGN KEY (`F_ID`) REFERENCES `privilege_group` (`PRIVILEGE_GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of privilege_group
-- ----------------------------
INSERT INTO `privilege_group` VALUES ('1', null, '001', '001', '系统管理', null);
INSERT INTO `privilege_group` VALUES ('2', '1', '001001', '001001', '用户帐号', null);
/*
Navicat MySQL Data Transfer

Source Server         : 本地MSQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-31 15:40:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLE_ID` int(4) NOT NULL AUTO_INCREMENT,
  `ROLE_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `ROLE_TYPE` int(1) NOT NULL COMMENT '0：系统内置\n            1：用户定义',
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `AK_ROLE_NAME_UK` (`NAME`) USING BTREE,
  UNIQUE KEY `AK_ROLE_CODE_UK` (`ROLE_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', 'admin', '系统管理员', '0');
INSERT INTO `role` VALUES ('2', 'guest', 'guest', '访客', '1');
/*
Navicat MySQL Data Transfer

Source Server         : 本地MSQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-31 15:40:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `role_priv`
-- ----------------------------
DROP TABLE IF EXISTS `role_priv`;
CREATE TABLE `role_priv` (
  `ROLE_PRIV_ID` int(6) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(4) NOT NULL,
  `PRIVILEGE_ID` int(4) NOT NULL,
  `OPERABLE` int(1) DEFAULT NULL COMMENT '0：无\n            1：有',
  `GRANTABLE` int(1) DEFAULT NULL COMMENT '0：无\n            1：有',
  PRIMARY KEY (`ROLE_PRIV_ID`),
  UNIQUE KEY `AK_ROLEPRIV_RID_PID_UK` (`ROLE_ID`,`PRIVILEGE_ID`) USING BTREE,
  KEY `ROLEPRIV_PP` (`PRIVILEGE_ID`),
  KEY `ROLEPRIV_RID` (`ROLE_ID`),
  CONSTRAINT `FK_ROLEPRIV_PRIVILEGE` FOREIGN KEY (`PRIVILEGE_ID`) REFERENCES `privilege` (`PRIVILEGE_ID`),
  CONSTRAINT `FK_ROLEPRIV_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of role_priv
-- ----------------------------
INSERT INTO `role_priv` VALUES ('1', '1', '1', null, null);
INSERT INTO `role_priv` VALUES ('2', '1', '2', null, null);
INSERT INTO `role_priv` VALUES ('3', '1', '3', null, null);
INSERT INTO `role_priv` VALUES ('4', '1', '4', null, null);
INSERT INTO `role_priv` VALUES ('5', '1', '5', null, null);
INSERT INTO `role_priv` VALUES ('6', '1', '6', null, null);
/*
Navicat MySQL Data Transfer

Source Server         : 本地MSQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-31 15:40:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_account`
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `USER_ID` int(6) NOT NULL AUTO_INCREMENT,
  `USER_CODE` varchar(20) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `DEPARTMENT_ID` int(4) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `SALT` varchar(64) NOT NULL,
  `PW` varchar(64) NOT NULL,
  `OPENDATE` datetime NOT NULL,
  `ACCOUNT_EXPIRE` decimal(3,0) DEFAULT NULL,
  `PW_EXPIRE` decimal(3,0) DEFAULT NULL,
  `LAST_LOG` datetime DEFAULT NULL,
  `LAST_PW` datetime DEFAULT NULL,
  `PW_ERROR_COUNT` decimal(2,0) DEFAULT NULL,
  `LOG_REC` decimal(1,0) DEFAULT NULL,
  `OP_REC` decimal(1,0) DEFAULT NULL,
  `LOCK_DATETIME` datetime DEFAULT NULL,
  `UNLOCK_DATETIME` datetime DEFAULT NULL,
  `CREATOR_USER_ID` decimal(6,0) DEFAULT NULL,
  `CREATE_DATETIME` datetime NOT NULL,
  `LAST_OP_USER_ID` decimal(6,0) DEFAULT NULL,
  `LAST_OP_DATETIME` datetime DEFAULT NULL,
  `STATUS` decimal(1,0) NOT NULL COMMENT '1：正常\n            2：锁定\n            3：注销',
  `CANCEL_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `AK_USER_NAME_MEMBER_UK` (`USERNAME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('2', 'a0001', '系统管理员', '1', 'admin', '系统管理员', '6e46c767f233b59f', '6f47257976b5bd9a9ab4691722f237509b379387', '2017-09-27 15:00:51', null, null, '2018-05-08 15:47:35', null, null, null, null, null, null, null, '2017-09-27 15:00:51', null, null, '1', null);
