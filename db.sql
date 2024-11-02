/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - siliujichengji
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`siliujichengji` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `siliujichengji`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kaochang_id` int(11) DEFAULT NULL COMMENT '考场',
  `kaoshi_types` int(11) DEFAULT NULL COMMENT '考试类型  ',
  `chengji_types` int(11) DEFAULT NULL COMMENT '成绩类型  ',
  `fraction` decimal(10,4) DEFAULT NULL COMMENT '分数   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`yonghu_id`,`kaochang_id`,`kaoshi_types`,`chengji_types`,`fraction`,`create_time`) values (1,1,7,1,1,NULL,'2021-03-23 13:56:39'),(2,2,11,1,3,'98.0000','2021-03-23 15:01:43'),(3,2,9,2,1,NULL,'2021-03-23 15:04:25');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-22 20:58:50'),(2,'sex_types','性别',2,'女',NULL,'2021-03-22 20:58:50'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-22 20:58:50'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-22 20:58:50'),(5,'kaoshi_types','考试类型',1,'四级',NULL,'2021-03-22 20:58:50'),(6,'kaoshi_types','考试类型',2,'六级',NULL,'2021-03-22 20:58:50'),(7,'chengji_types','成绩类型',1,'已报名',NULL,'2021-03-22 20:58:50'),(8,'chengji_types','成绩类型',2,'不及格',NULL,'2021-03-22 20:58:50'),(9,'chengji_types','成绩类型',3,'及格',NULL,'2021-03-22 20:58:50');

/*Table structure for table `kaochang` */

DROP TABLE IF EXISTS `kaochang`;

CREATE TABLE `kaochang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaoshi_id` int(11) DEFAULT NULL COMMENT '考试',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '监考老师',
  `kaochang_name` varchar(200) DEFAULT NULL COMMENT '考场名   ',
  `kaoshi_number` int(11) DEFAULT NULL COMMENT '考场人数',
  `kaochang_address` varchar(200) DEFAULT NULL COMMENT '考场地址  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='考场';

/*Data for the table `kaochang` */

insert  into `kaochang`(`id`,`kaoshi_id`,`laoshi_id`,`kaochang_name`,`kaoshi_number`,`kaochang_address`,`create_time`) values (7,4,3,'第一次四级考试的第一考场',1,'长椿路第一考场','2021-03-23 13:52:59'),(8,4,1,'第一次四级考试的第二考场',0,'长椿路第二考场','2021-03-23 13:52:59'),(9,5,3,'第一次六级考试的第一考场',1,'长椿路第一考场','2021-03-23 13:53:12'),(10,5,1,'第一次六级考试的第二考场',0,'长椿路第二考场','2021-03-23 13:53:12'),(11,6,4,'第二次四级考试的第一考场',1,'长椿路第一考场','2021-03-23 14:55:21'),(12,6,6,'第二次四级考试的第二考场11',0,'长椿路第二考场11','2021-03-23 14:55:21');

/*Table structure for table `kaoshi` */

DROP TABLE IF EXISTS `kaoshi`;

CREATE TABLE `kaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaoshi_name` varchar(200) DEFAULT NULL COMMENT '考试名   ',
  `kaoshi_types` int(11) DEFAULT NULL COMMENT '考试类型   ',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='考试';

/*Data for the table `kaoshi` */

insert  into `kaoshi`(`id`,`kaoshi_name`,`kaoshi_types`,`start_time`,`end_time`,`create_time`) values (4,'第一次四级考试',1,'2021-03-23 00:00:00','2021-03-24 00:00:00','2021-03-23 13:52:59'),(5,'第一次六级考试',2,'2021-03-24 00:00:00','2021-03-25 00:00:00','2021-03-23 13:53:12'),(6,'第二次四级考试',1,'2021-03-25 00:00:00','2021-03-25 03:00:00','2021-03-23 14:55:21');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `laoshi_nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `laoshi_address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`sex_types`,`laoshi_id_number`,`phone`,`laoshi_photo`,`laoshi_nation`,`politics_types`,`laoshi_address`,`create_time`) values (1,'a11','123456','张11老师',1,'410224199610232011','17703789911','http://localhost:8080/siliujichengji/file/download?fileName=1616476258601.jpg','汉',2,'北京3环','2021-03-23 09:16:59'),(2,'a22','123456','张22老师',1,'410224199610232022','17703789922','http://localhost:8080/siliujichengji/file/download?fileName=1616476248833.jpg','汉',2,'北京朝阳区朝阳街2号','2021-03-23 09:17:45'),(3,'a33','123456','张33老师',2,'410224199610232033','17703789933','http://localhost:8080/siliujichengji/file/download?fileName=1616476237511.jpg','维吾尔族',2,'北京2环','2021-03-23 09:18:38'),(4,'a44','123456','张44',2,'410224199610232044','17703789944','http://localhost:8080/siliujichengji/file/download?fileName=1616476225423.jpg','汉',2,'郑州高新区','2021-03-23 09:19:44'),(6,'a55','123456','张55老师',2,'410224199610232055','17703789955','http://localhost:8080/siliujichengji/file/download?fileName=1616482453052.jpg','汉',2,'北京3环','2021-03-23 14:54:28');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','rrqc1tokzvgysyhvs0xjat6u38fyly7f','2021-03-23 11:37:47','2021-03-23 16:18:56'),(2,1,'a11','laoshi','老师','lcxzcxq9t7rr2l5yhe9u74ppec5wdkr4','2021-03-23 13:08:43','2021-03-23 16:02:28'),(3,1,'a1','yonghu','用户','razk7bznbh1lbd52peitk9o2umbv5ow2','2021-03-23 13:54:48','2021-03-23 15:04:39'),(4,2,'a2','yonghu','用户','efd8hm26z5gyiv322x7meontswmw94rp','2021-03-23 15:00:58','2021-03-23 16:04:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-23 10:55:57','日常公告','日常公告','公告信息','2021-03-23 10:55:57'),(2,'2021-03-23 10:55:57','紧急公告','紧急公告','公告信息','2021-03-23 10:55:57'),(3,'2021-03-23 10:55:57','其他公告','其他公告','公告信息','2021-03-23 10:55:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`sex_types`,`id_number`,`phone`,`yonghu_photo`,`nation`,`politics_types`,`address`,`create_time`) values (1,'a1','123456','张1',2,'410224199610232011','17703789991','http://localhost:8080/siliujichengji/file/download?fileName=1616476209551.jpg','汉',1,'郑州东郊','2021-03-22 21:05:12'),(2,'a2','123456','张2',2,'410224199610232012','17703789992','http://localhost:8080/siliujichengji/file/download?fileName=1616476199374.jpg','汉',2,'郑州东郊111','2021-03-22 21:05:58'),(3,'a3','123456','张三',1,'410224199610232013','17703789993','http://localhost:8080/siliujichengji/file/download?fileName=1616476190830.jpg','汉',2,'郑州东郊','2021-03-22 21:06:37'),(4,'a4','123456','张4',2,'410224199610232014','17703789994','http://localhost:8080/siliujichengji/file/download?fileName=1616476180352.jpg','汉',1,'北京2环','2021-03-22 21:07:06'),(5,'a5','123456','张5',2,'410224199610232015','17703789995','http://localhost:8080/siliujichengji/file/download?fileName=1616476169852.jpg','汉',2,'北京朝阳区朝阳街道','2021-03-22 21:07:32'),(6,'a6','123456','张6',2,'410224199610232016','17703789996','http://localhost:8080/siliujichengji/file/download?fileName=1616482355363.jpg','汉',2,'郑州东郊','2021-03-23 14:53:33');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
