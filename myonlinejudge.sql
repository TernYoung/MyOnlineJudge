/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : myonlinejudge

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 28/12/2019 19:53:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contest
-- ----------------------------
DROP TABLE IF EXISTS `contest`;
CREATE TABLE `contest`  (
  `Cid` int(10) NOT NULL AUTO_INCREMENT,
  `Title` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `StartDate` datetime(0) NOT NULL,
  `EndDate` datetime(0) NOT NULL,
  `Private` int(1) NOT NULL,
  `Creator` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Hint` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Passwd` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contest
-- ----------------------------
INSERT INTO `contest` VALUES (1, '递归', '2019-12-23 14:00:00', '2019-12-23 16:00:00', 0, 'Tern', '无', NULL);
INSERT INTO `contest` VALUES (2, 'test', '2019-12-28 18:53:42', '2019-12-29 18:53:45', 1, 'Tern', '无', '123');
INSERT INTO `contest` VALUES (15, 'test2', '2019-12-28 19:03:00', '2019-12-29 19:03:00', 0, 'admin', 'test2', '');

-- ----------------------------
-- Table structure for contestcontent
-- ----------------------------
DROP TABLE IF EXISTS `contestcontent`;
CREATE TABLE `contestcontent`  (
  `MyStatus` int(10) NULL DEFAULT NULL,
  `Accept` int(10) NULL DEFAULT 0,
  `Submit` int(10) NULL DEFAULT 0,
  `Pno` char(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `Origin` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Title` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cid` int(10) NULL DEFAULT NULL,
  `Pid` int(10) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contestcontent
-- ----------------------------
INSERT INTO `contestcontent` VALUES (1, 1, 1, '1', 'Tern', '第一题', 1, 1);
INSERT INTO `contestcontent` VALUES (NULL, 0, 0, 'A', NULL, NULL, 12, 1);
INSERT INTO `contestcontent` VALUES (NULL, 0, 0, 'B', NULL, NULL, 12, 2);
INSERT INTO `contestcontent` VALUES (NULL, 0, 0, 'A', NULL, NULL, 13, 1);
INSERT INTO `contestcontent` VALUES (NULL, 0, 0, 'B', NULL, NULL, 13, 2);
INSERT INTO `contestcontent` VALUES (NULL, 0, 0, 'A', NULL, NULL, 14, 1);
INSERT INTO `contestcontent` VALUES (NULL, 0, 0, 'A', NULL, NULL, 15, 1);
INSERT INTO `contestcontent` VALUES (NULL, 0, 0, 'B', NULL, NULL, 15, 2);
INSERT INTO `contestcontent` VALUES (NULL, 0, 0, 'C', NULL, NULL, 15, 3);

-- ----------------------------
-- Table structure for loginhistory
-- ----------------------------
DROP TABLE IF EXISTS `loginhistory`;
CREATE TABLE `loginhistory`  (
  `username` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loginhistory
-- ----------------------------
INSERT INTO `loginhistory` VALUES ('1', '1');
INSERT INTO `loginhistory` VALUES ('123456', '192.168.11.136');
INSERT INTO `loginhistory` VALUES ('123456', '192.168.11.136');
INSERT INTO `loginhistory` VALUES ('123456', '192.168.11.136');
INSERT INTO `loginhistory` VALUES ('123456', '192.168.11.136');
INSERT INTO `loginhistory` VALUES ('123456', '192.168.11.136');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('ACCBoy', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '0:0:0:0:0:0:0:1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('admin', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('admin', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('admin', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('admin', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('123456', '127.0.0.1');
INSERT INTO `loginhistory` VALUES ('admin', '127.0.0.1');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem`  (
  `Pid` int(10) NOT NULL AUTO_INCREMENT,
  `Title` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TimeLimit` double(20, 0) NULL DEFAULT NULL,
  `MemLimit` double(20, 0) NULL DEFAULT NULL,
  `Origin` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `InputDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OutputDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SampleInput` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SampleOutput` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Hint` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES (1, 'A+B 输入输出练习I', 1000, 32, 'Tern', '你的任务是计算a+b。这是为了acm初学者专门设计的题目。你肯定发现还有其他题目跟这道题的标题类似，这些问题也都是专门为初学者提供的。\r\n', '输入包含一系列的a和b对，通过空格隔开。一对a和b占一行。\r\n', ' 对于输入的每对a和b，你需要依次输出a、b的和。\r\n\r\n如对于输入中的第二对a和b，在输出中它们的和应该也在第二行。\r\n', '1 5\r\n10 20', '6\r\n30', '无');
INSERT INTO `problem` VALUES (2, '1', 1, 1, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `problem` VALUES (3, '1', 1000, 128, 'admin', '1', '1', '1', '1', '1', '1');
INSERT INTO `problem` VALUES (4, '123', 1000, 128, 'admin', '123', '123', '123', '123', '123', '123');
INSERT INTO `problem` VALUES (5, '12', 1000, 128, 'admin', '12', '12', '12', '12', '12', '12');
INSERT INTO `problem` VALUES (6, 'A+B 输入输出练习III', 1000, 32, 'admin', '你的任务是计算a+b。', '输入中每行是一对a和b。其中会有一对是0和0标志着输入结束，且这一对不要计算。<span><span style=\"font-size:14px;\"><br>\n</span></span>', '对于输入的每对a和b，你需要在相应的行输出a、b的和。<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 如第二对a和b，他们的和也输出在第二行。', '1 5\n10 20\n0 0', '6\n30', '');

-- ----------------------------
-- Table structure for problemtestdata
-- ----------------------------
DROP TABLE IF EXISTS `problemtestdata`;
CREATE TABLE `problemtestdata`  (
  `pid` int(10) NOT NULL,
  `sampleInput` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sampleOutput` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dataId` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dataId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problemtestdata
-- ----------------------------
INSERT INTO `problemtestdata` VALUES (1, '123\n', '123\n', 1);
INSERT INTO `problemtestdata` VALUES (3, '1', '1', 2);
INSERT INTO `problemtestdata` VALUES (4, '123', '123', 3);
INSERT INTO `problemtestdata` VALUES (5, '12', '12', 4);
INSERT INTO `problemtestdata` VALUES (2, '123\n', '123\n', 6);
INSERT INTO `problemtestdata` VALUES (6, '1 5\n10 20\n0 0', '6\n30', 7);
INSERT INTO `problemtestdata` VALUES (6, '1234\n', '1\n', 8);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `runId` int(20) NOT NULL AUTO_INCREMENT,
  `username` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(10) NULL DEFAULT NULL,
  `pno` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(10) NULL DEFAULT NULL,
  `mem` int(10) NULL DEFAULT NULL,
  `length` int(10) NULL DEFAULT NULL,
  `language` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shared` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `submitDate` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`runId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (1, 'Tern', 1, '1', '1', 1, 1, 1, 'C++', '1', '1', '2019-12-23 16:00:00.000000');
INSERT INTO `status` VALUES (2, '1', 1, '1', '1', 1, 1, 1, '1', '1', '1', '2019-12-23 16:00:00.000000');
INSERT INTO `status` VALUES (3, '123456', 1, '1', '9', 0, 0, 200, '2', '1', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', NULL);
INSERT INTO `status` VALUES (4, '123456', 1, '1', '9', 0, 0, 190, '3', '1', 'boolean isStarted = true;\n					ContestListBean contest = GetInfoFromDatabaseDao.getContestDate(cid);\n					if( contest!=null ){\n						Date now = new Date();\n						Date start;\n						Date end;\n', NULL);
INSERT INTO `status` VALUES (5, '123456', 1, '1', '9', 0, 0, 198, '2', '1', '222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', NULL);
INSERT INTO `status` VALUES (6, 'admin', 15, 'A', '9', 0, 0, 54, '2', '1', '123123123123123123123123123123123123123123123123123123', NULL);

-- ----------------------------
-- Table structure for totalrank
-- ----------------------------
DROP TABLE IF EXISTS `totalrank`;
CREATE TABLE `totalrank`  (
  `username` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accpet` int(10) NULL DEFAULT NULL,
  `submit` int(10) NULL DEFAULT NULL,
  `acRate` double(10, 0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of totalrank
-- ----------------------------
INSERT INTO `totalrank` VALUES ('Tern', 'CPUTern', 1, 1, 100);

-- ----------------------------
-- Table structure for usercontestprobleminfo
-- ----------------------------
DROP TABLE IF EXISTS `usercontestprobleminfo`;
CREATE TABLE `usercontestprobleminfo`  (
  `cid` int(11) NULL DEFAULT NULL,
  `username` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pno` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wrong` int(10) NULL DEFAULT NULL,
  `ac` int(10) NULL DEFAULT NULL,
  `acMinute` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `firstBlood` int(10) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usercontestprobleminfo
-- ----------------------------
INSERT INTO `usercontestprobleminfo` VALUES (1, 'Tern', '1', 1, 1, '10', 1);

-- ----------------------------
-- Table structure for usercontestrank
-- ----------------------------
DROP TABLE IF EXISTS `usercontestrank`;
CREATE TABLE `usercontestrank`  (
  `cid` int(10) NULL DEFAULT NULL,
  `rank` int(10) NULL DEFAULT NULL,
  `username` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `solve` int(10) NULL DEFAULT NULL,
  `penalty` int(10) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usercontestrank
-- ----------------------------
INSERT INTO `usercontestrank` VALUES (1, 1, '1', '1', 1, 1);

-- ----------------------------
-- Table structure for usersinfo
-- ----------------------------
DROP TABLE IF EXISTS `usersinfo`;
CREATE TABLE `usersinfo`  (
  `Username` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Passwd` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NickName` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Date` datetime(0) NULL DEFAULT NULL,
  `IP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usersinfo
-- ----------------------------
INSERT INTO `usersinfo` VALUES ('123456', '123456', '123456', '123456', '2018-02-02 14:00:00', '0:0:0:0:0:0:0:1');
INSERT INTO `usersinfo` VALUES ('admin', 'admin', 'admin', 'admin', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
