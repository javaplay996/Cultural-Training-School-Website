/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmvayj3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmvayj3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmvayj3`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='在线交流';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (91,'2021-04-16 16:54:48',1,1,'提问1','回复1',1),(92,'2021-04-16 16:54:48',2,2,'提问2','回复2',2),(93,'2021-04-16 16:54:48',3,3,'提问3','回复3',3),(94,'2021-04-16 16:54:48',4,4,'提问4','回复4',4),(95,'2021-04-16 16:54:48',5,5,'提问5','回复5',5),(96,'2021-04-16 16:54:48',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmvayj3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmvayj3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmvayj3/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`lianxifangshi`,`youxiang`,`shenfenzheng`,`zhaopian`) values (21,'2021-04-16 16:54:48','教师1','123456','教师姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmvayj3/upload/jiaoshi_zhaopian1.jpg'),(22,'2021-04-16 16:54:48','教师2','123456','教师姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmvayj3/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-04-16 16:54:48','教师3','123456','教师姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmvayj3/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-04-16 16:54:48','教师4','123456','教师姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmvayj3/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-04-16 16:54:48','教师5','123456','教师姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmvayj3/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-04-16 16:54:48','教师6','123456','教师姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmvayj3/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `kechengjieshao` */

DROP TABLE IF EXISTS `kechengjieshao`;

CREATE TABLE `kechengjieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `kechengxiangxi` longtext COMMENT '课程详细',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程介绍';

/*Data for the table `kechengjieshao` */

insert  into `kechengjieshao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`lianxifangshi`,`shangkeshijian`,`shangkedidian`,`jiage`,`kechengjieshao`,`kechengxiangxi`) values (31,'2021-04-16 16:54:48','课程名称1','课程类型1','http://localhost:8080/ssmvayj3/upload/kechengjieshao_fengmian1.jpg','教师工号1','教师姓名1','联系方式1','上课时间1','上课地点1',1,'课程介绍1','课程详细1'),(32,'2021-04-16 16:54:48','课程名称2','课程类型2','http://localhost:8080/ssmvayj3/upload/kechengjieshao_fengmian2.jpg','教师工号2','教师姓名2','联系方式2','上课时间2','上课地点2',2,'课程介绍2','课程详细2'),(33,'2021-04-16 16:54:48','课程名称3','课程类型3','http://localhost:8080/ssmvayj3/upload/kechengjieshao_fengmian3.jpg','教师工号3','教师姓名3','联系方式3','上课时间3','上课地点3',3,'课程介绍3','课程详细3'),(34,'2021-04-16 16:54:48','课程名称4','课程类型4','http://localhost:8080/ssmvayj3/upload/kechengjieshao_fengmian4.jpg','教师工号4','教师姓名4','联系方式4','上课时间4','上课地点4',4,'课程介绍4','课程详细4'),(35,'2021-04-16 16:54:48','课程名称5','课程类型5','http://localhost:8080/ssmvayj3/upload/kechengjieshao_fengmian5.jpg','教师工号5','教师姓名5','联系方式5','上课时间5','上课地点5',5,'课程介绍5','课程详细5'),(36,'2021-04-16 16:54:48','课程名称6','课程类型6','http://localhost:8080/ssmvayj3/upload/kechengjieshao_fengmian6.jpg','教师工号6','教师姓名6','联系方式6','上课时间6','上课地点6',6,'课程介绍6','课程详细6');

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (41,'2021-04-16 16:54:48','类型1'),(42,'2021-04-16 16:54:48','类型2'),(43,'2021-04-16 16:54:48','类型3'),(44,'2021-04-16 16:54:48','类型4'),(45,'2021-04-16 16:54:48','类型5'),(46,'2021-04-16 16:54:48','类型6');

/*Table structure for table `kechengyuyue` */

DROP TABLE IF EXISTS `kechengyuyue`;

CREATE TABLE `kechengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程预约';

/*Data for the table `kechengyuyue` */

insert  into `kechengyuyue`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jiaoshigonghao`,`jiaoshixingming`,`shangkeshijian`,`shangkedidian`,`jiage`,`yonghuming`,`xingming`,`ispay`) values (51,'2021-04-16 16:54:48','课程名称1','课程类型1','教师工号1','教师姓名1','上课时间1','上课地点1','价格1','用户名1','姓名1','未支付'),(52,'2021-04-16 16:54:48','课程名称2','课程类型2','教师工号2','教师姓名2','上课时间2','上课地点2','价格2','用户名2','姓名2','未支付'),(53,'2021-04-16 16:54:48','课程名称3','课程类型3','教师工号3','教师姓名3','上课时间3','上课地点3','价格3','用户名3','姓名3','未支付'),(54,'2021-04-16 16:54:48','课程名称4','课程类型4','教师工号4','教师姓名4','上课时间4','上课地点4','价格4','用户名4','姓名4','未支付'),(55,'2021-04-16 16:54:48','课程名称5','课程类型5','教师工号5','教师姓名5','上课时间5','上课地点5','价格5','用户名5','姓名5','未支付'),(56,'2021-04-16 16:54:48','课程名称6','课程类型6','教师工号6','教师姓名6','上课时间6','上课地点6','价格6','用户名6','姓名6','未支付');

/*Table structure for table `shizililiang` */

DROP TABLE IF EXISTS `shizililiang`;

CREATE TABLE `shizililiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshijieshao` longtext COMMENT '教师介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='师资力量';

/*Data for the table `shizililiang` */

insert  into `shizililiang`(`id`,`addtime`,`biaoti`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`lianxifangshi`,`jiaoshijieshao`) values (61,'2021-04-16 16:54:48','标题1','http://localhost:8080/ssmvayj3/upload/shizililiang_fengmian1.jpg','教师工号1','教师姓名1','联系方式1','教师介绍1'),(62,'2021-04-16 16:54:48','标题2','http://localhost:8080/ssmvayj3/upload/shizililiang_fengmian2.jpg','教师工号2','教师姓名2','联系方式2','教师介绍2'),(63,'2021-04-16 16:54:48','标题3','http://localhost:8080/ssmvayj3/upload/shizililiang_fengmian3.jpg','教师工号3','教师姓名3','联系方式3','教师介绍3'),(64,'2021-04-16 16:54:48','标题4','http://localhost:8080/ssmvayj3/upload/shizililiang_fengmian4.jpg','教师工号4','教师姓名4','联系方式4','教师介绍4'),(65,'2021-04-16 16:54:48','标题5','http://localhost:8080/ssmvayj3/upload/shizililiang_fengmian5.jpg','教师工号5','教师姓名5','联系方式5','教师介绍5'),(66,'2021-04-16 16:54:48','标题6','http://localhost:8080/ssmvayj3/upload/shizililiang_fengmian6.jpg','教师工号6','教师姓名6','联系方式6','教师介绍6');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','y9jq7dpfp7y2casyzgjnu7b8s6165a22','2021-04-16 17:00:15','2021-04-16 18:00:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-16 16:54:48');

/*Table structure for table `xianshangjiaoxueziyuan` */

DROP TABLE IF EXISTS `xianshangjiaoxueziyuan`;

CREATE TABLE `xianshangjiaoxueziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `shipinxiangxi` longtext COMMENT '视频详细',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='线上教学资源';

/*Data for the table `xianshangjiaoxueziyuan` */

insert  into `xianshangjiaoxueziyuan`(`id`,`addtime`,`biaoti`,`fengmian`,`shipin`,`fabushijian`,`shipinjieshao`,`shipinxiangxi`) values (71,'2021-04-16 16:54:48','标题1','http://localhost:8080/ssmvayj3/upload/xianshangjiaoxueziyuan_fengmian1.jpg','','2021-04-16','视频介绍1','视频详细1'),(72,'2021-04-16 16:54:48','标题2','http://localhost:8080/ssmvayj3/upload/xianshangjiaoxueziyuan_fengmian2.jpg','','2021-04-16','视频介绍2','视频详细2'),(73,'2021-04-16 16:54:48','标题3','http://localhost:8080/ssmvayj3/upload/xianshangjiaoxueziyuan_fengmian3.jpg','','2021-04-16','视频介绍3','视频详细3'),(74,'2021-04-16 16:54:48','标题4','http://localhost:8080/ssmvayj3/upload/xianshangjiaoxueziyuan_fengmian4.jpg','','2021-04-16','视频介绍4','视频详细4'),(75,'2021-04-16 16:54:48','标题5','http://localhost:8080/ssmvayj3/upload/xianshangjiaoxueziyuan_fengmian5.jpg','','2021-04-16','视频介绍5','视频详细5'),(76,'2021-04-16 16:54:48','标题6','http://localhost:8080/ssmvayj3/upload/xianshangjiaoxueziyuan_fengmian6.jpg','','2021-04-16','视频介绍6','视频详细6');

/*Table structure for table `xuexiaojianjie` */

DROP TABLE IF EXISTS `xuexiaojianjie`;

CREATE TABLE `xuexiaojianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `chuangshiren` varchar(200) DEFAULT NULL COMMENT '创始人',
  `xianrenxiaozhang` varchar(200) DEFAULT NULL COMMENT '现任校长',
  `chuangbanshijian` date DEFAULT NULL COMMENT '创办时间',
  `xuexiaojieshao` longtext COMMENT '学校介绍',
  `xuexiaoxiangqing` longtext COMMENT '学校详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618563668987 DEFAULT CHARSET=utf8 COMMENT='学校简介';

/*Data for the table `xuexiaojianjie` */

insert  into `xuexiaojianjie`(`id`,`addtime`,`xuexiaomingcheng`,`fengmian`,`chuangshiren`,`xianrenxiaozhang`,`chuangbanshijian`,`xuexiaojieshao`,`xuexiaoxiangqing`) values (1618563668986,'2021-04-16 17:01:08','哈尔滨佛教学院','http://localhost:8080/ssmvayj3/upload/1618563646557.jpg','张三','李四','2014-02-08','测试','<p>测试<img src=\"http://localhost:8080/ssmvayj3/upload/1618563666736.jpg\"></p>');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-16 16:54:48','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmvayj3/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-16 16:54:48','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmvayj3/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-16 16:54:48','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmvayj3/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-16 16:54:48','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmvayj3/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-16 16:54:48','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmvayj3/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-16 16:54:48','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmvayj3/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
