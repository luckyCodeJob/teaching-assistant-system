-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.38 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 t407 的数据库结构
DROP DATABASE IF EXISTS `t407`;
CREATE DATABASE IF NOT EXISTS `t407` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t407`;

-- 导出  表 t407.config 结构
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

-- 正在导出表  t407.config 的数据：~3 rows (大约)
DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

-- 导出  表 t407.dictionary 结构
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

-- 正在导出表  t407.dictionary 的数据：~22 rows (大约)
DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'kecheng_types', '课程类型', 1, '课程类型1', NULL, NULL, '2023-02-22 05:21:46'),
	(2, 'kecheng_types', '课程类型', 2, '课程类型2', NULL, NULL, '2023-02-22 05:21:46'),
	(3, 'kecheng_types', '课程类型', 3, '课程类型3', NULL, NULL, '2023-02-22 05:21:46'),
	(4, 'jiaoxueshipin_types', '教学视频类型', 1, '教学视频类型1', NULL, NULL, '2023-02-22 05:21:46'),
	(5, 'jiaoxueshipin_types', '教学视频类型', 2, '教学视频类型2', NULL, NULL, '2023-02-22 05:21:46'),
	(6, 'jiaoxueshipin_types', '教学视频类型', 3, '教学视频类型3', NULL, NULL, '2023-02-22 05:21:46'),
	(7, 'zuoye_types', '作业类型', 1, '作业类型1', NULL, NULL, '2023-02-22 05:21:46'),
	(8, 'zuoye_types', '作业类型', 2, '作业类型2', NULL, NULL, '2023-02-22 05:21:46'),
	(9, 'zuoye_types', '作业类型', 3, '作业类型3', NULL, NULL, '2023-02-22 05:21:46'),
	(10, 'zuoyetijiao_types', '作业成绩', 4, '优', NULL, NULL, '2023-02-22 05:21:46'),
	(11, 'zuoyetijiao_types', '作业成绩', 3, '良', NULL, NULL, '2023-02-22 05:21:46'),
	(12, 'zuoyetijiao_types', '作业成绩', 2, '差', NULL, NULL, '2023-02-22 05:21:46'),
	(13, 'zuoyetijiao_types', '作业成绩', 1, '未评分', NULL, NULL, '2023-02-22 05:21:46'),
	(14, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-02-22 05:21:47'),
	(15, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-02-22 05:21:47'),
	(16, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-02-22 05:21:47'),
	(17, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-02-22 05:21:47'),
	(18, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-02-22 05:21:47'),
	(19, 'banji_types', '班级', 1, '班级1', NULL, NULL, '2023-02-22 05:21:47'),
	(20, 'banji_types', '班级', 2, '班级2', NULL, NULL, '2023-02-22 05:21:47'),
	(21, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-02-22 05:21:47'),
	(22, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-02-22 05:21:47');

-- 导出  表 t407.forum 结构
DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='交流平台';

-- 正在导出表  t407.forum 的数据：~9 rows (大约)
DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `jiaoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, NULL, '发布内容1', 199, 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(2, '帖子标题2', 3, NULL, NULL, '发布内容2', 19, 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(3, '帖子标题3', 3, NULL, NULL, '发布内容3', 466, 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(4, '帖子标题4', 3, NULL, NULL, '发布内容4', 77, 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(5, '帖子标题5', 1, NULL, NULL, '发布内容5', 37, 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(8, NULL, 1, NULL, NULL, '1231', 5, 2, '2023-02-22 06:41:59', NULL, '2023-02-22 06:41:59'),
	(9, NULL, NULL, 1, NULL, '123', 5, 2, '2023-02-22 06:44:05', NULL, '2023-02-22 06:44:05'),
	(10, NULL, NULL, 3, NULL, '321', 5, 2, '2023-02-22 06:45:07', NULL, '2023-02-22 06:45:07'),
	(11, NULL, NULL, NULL, 1, '231321', 5, 2, '2023-02-22 06:45:58', NULL, '2023-02-22 06:45:58'),
	(12, NULL, 1, NULL, NULL, '6666', 4, 2, '2024-09-27 05:38:31', NULL, '2024-09-27 05:38:31');

-- 导出  表 t407.jiaoshi 结构
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `jiaoshi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

-- 正在导出表  t407.jiaoshi 的数据：~3 rows (大约)
DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `sex_types`, `jiaoshi_photo`, `jiaoshi_id_number`, `jiaoshi_phone`, `jiaoshi_email`, `jiaoshi_delete`, `create_time`) VALUES
	(1, '教师1', '123456', '教师姓名1', 2, 'upload/jiaoshi1.jpg', '410224199010102001', '17703786901', '1@qq.com', 1, '2023-02-22 05:21:56'),
	(2, '教师2', '123456', '教师姓名2', 1, 'upload/jiaoshi2.jpg', '410224199010102002', '17703786902', '2@qq.com', 1, '2023-02-22 05:21:56'),
	(3, '教师3', '123456', '教师姓名3', 2, 'upload/jiaoshi3.jpg', '410224199010102003', '17703786903', '3@qq.com', 1, '2023-02-22 05:21:56');

-- 导出  表 t407.jiaoxueshipin 结构
DROP TABLE IF EXISTS `jiaoxueshipin`;
CREATE TABLE IF NOT EXISTS `jiaoxueshipin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoxueshipin_name` varchar(200) DEFAULT NULL COMMENT '教学视频标题 Search111',
  `jiaoxueshipin_photo` varchar(200) DEFAULT NULL COMMENT '教学视频照片',
  `jiaoxueshipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `jiaoxueshipin_file` varchar(200) DEFAULT NULL COMMENT '教学资料',
  `jiaoxueshipin_types` int DEFAULT NULL COMMENT '教学视频类型 Search111',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `jiaoxueshipin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `jiaoxueshipin_content` text COMMENT '教学视频详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='教学视频';

-- 正在导出表  t407.jiaoxueshipin 的数据：~5 rows (大约)
DELETE FROM `jiaoxueshipin`;
INSERT INTO `jiaoxueshipin` (`id`, `jiaoxueshipin_name`, `jiaoxueshipin_photo`, `jiaoxueshipin_video`, `jiaoxueshipin_file`, `jiaoxueshipin_types`, `jiaoshi_id`, `jiaoxueshipin_delete`, `jiaoxueshipin_content`, `create_time`) VALUES
	(1, '教学视频标题1', 'upload/kecheng1.jpg', 'upload/video.mp4', 'upload/file.rar', 1, 2, 1, '教学视频详情1', '2023-02-22 05:21:56'),
	(2, '教学视频标题2', 'upload/kecheng2.jpg', 'upload/video.mp4', 'upload/file.rar', 2, 3, 1, '教学视频详情2', '2023-02-22 05:21:56'),
	(3, '教学视频标题3', 'upload/kecheng3.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 1, 1, '教学视频详情3', '2023-02-22 05:21:56'),
	(4, '教学视频标题4', 'upload/kecheng4.jpg', 'upload/video.mp4', 'upload/file.rar', 1, 3, 1, '教学视频详情4', '2023-02-22 05:21:56'),
	(5, '教学视频标题5', 'upload/kecheng5.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 2, 1, '教学视频详情5', '2023-02-22 05:21:56');

-- 导出  表 t407.kecheng 结构
DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE IF NOT EXISTS `kecheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程标题 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_types` int DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_shichang` int DEFAULT NULL COMMENT '课程时长',
  `kecheng_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `kecheng_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `kecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息';

-- 正在导出表  t407.kecheng 的数据：~5 rows (大约)
DELETE FROM `kecheng`;
INSERT INTO `kecheng` (`id`, `kecheng_name`, `kecheng_photo`, `kecheng_types`, `kecheng_shichang`, `kecheng_time`, `banji_types`, `jiaoshi_id`, `kecheng_delete`, `kecheng_content`, `create_time`) VALUES
	(1, '课程标题1', 'upload/kecheng1.jpg', 2, 25, '2023-02-22 05:21:56', 2, 3, 1, '课程详情1', '2023-02-22 05:21:56'),
	(2, '课程标题2', 'upload/kecheng2.jpg', 3, 235, '2023-02-22 05:21:56', 2, 2, 1, '课程详情2', '2023-02-22 05:21:56'),
	(3, '课程标题3', 'upload/kecheng3.jpg', 2, 51, '2023-02-22 05:21:56', 2, 2, 1, '课程详情3', '2023-02-22 05:21:56'),
	(4, '课程标题4', 'upload/kecheng4.jpg', 3, 336, '2023-02-22 05:21:56', 2, 3, 1, '课程详情4', '2023-02-22 05:21:56'),
	(5, '课程标题5', 'upload/kecheng5.jpg', 1, 130, '2023-02-22 05:21:56', 2, 3, 1, '课程详情5', '2023-02-22 05:21:56');

-- 导出  表 t407.news 结构
DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='通知公告';

-- 正在导出表  t407.news 的数据：~5 rows (大约)
DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-02-22 05:21:56', '公告详情1', '2023-02-22 05:21:56'),
	(2, '公告标题2', 1, 'upload/news2.jpg', '2023-02-22 05:21:56', '公告详情2', '2023-02-22 05:21:56'),
	(3, '公告标题3', 2, 'upload/news3.jpg', '2023-02-22 05:21:56', '公告详情3', '2023-02-22 05:21:56'),
	(4, '公告标题4', 2, 'upload/news4.jpg', '2023-02-22 05:21:56', '公告详情4', '2023-02-22 05:21:56'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-02-22 05:21:56', '公告详情5', '2023-02-22 05:21:56');

-- 导出  表 t407.token 结构
DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

-- 正在导出表  t407.token 的数据：~5 rows (大约)
DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '学生', 'aju6d9vnhs0sz13ukcrnsy02hja838o5', '2023-02-22 05:35:32', '2024-09-27 06:38:15'),
	(2, 1, 'admin', 'users', '管理员', 'sq2xrg3vk34mvb3ylwgv8akkyed0i8gq', '2023-02-22 05:58:31', '2024-09-27 06:35:09'),
	(3, 1, 'a1', 'jiaoshi', '教师', 'lyzry3tad71nybj89lepy70m4e7oy5db', '2023-02-22 06:28:57', '2024-09-27 06:36:31'),
	(4, 2, 'a2', 'jiaoshi', '教师', 'yvdgmdqtj2j34yiaoce2t4ave3nk6ems', '2023-02-22 06:29:05', '2023-02-22 07:29:05'),
	(5, 3, 'a3', 'jiaoshi', '教师', '60i112nn5lu6h7wop22w7vw1wt80t8dl', '2023-02-22 06:29:18', '2023-02-22 07:44:16');

-- 导出  表 t407.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

-- 正在导出表  t407.users 的数据：~1 rows (大约)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

-- 导出  表 t407.yonghu 结构
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

-- 正在导出表  t407.yonghu 的数据：~3 rows (大约)
DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_photo`, `yonghu_id_number`, `yonghu_phone`, `yonghu_email`, `banji_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '学生1', '123456', '学生姓名1', 1, 'upload/yonghu1.jpg', '410224199010102001', '17703786901', '1@qq.com', 2, 1, '2023-02-22 05:21:56'),
	(2, '学生2', '123456', '学生姓名2', 1, 'upload/yonghu2.jpg', '410224199010102002', '17703786902', '2@qq.com', 2, 1, '2023-02-22 05:21:56'),
	(3, '学生3', '123456', '学生姓名3', 2, 'upload/yonghu3.jpg', '410224199010102003', '17703786903', '3@qq.com', 1, 1, '2023-02-22 05:21:56');

-- 导出  表 t407.zuoye 结构
DROP TABLE IF EXISTS `zuoye`;
CREATE TABLE IF NOT EXISTS `zuoye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业标题 Search111',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '作业照片',
  `zuoye_types` int DEFAULT NULL COMMENT '作业类型 Search111',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111',
  `zuoye_content` text COMMENT '作业详情',
  `zuoye_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='作业';

-- 正在导出表  t407.zuoye 的数据：~5 rows (大约)
DELETE FROM `zuoye`;
INSERT INTO `zuoye` (`id`, `zuoye_name`, `zuoye_photo`, `zuoye_types`, `zuoye_file`, `jiaoshi_id`, `banji_types`, `zuoye_content`, `zuoye_delete`, `insert_time`, `create_time`) VALUES
	(1, '作业标题1', 'upload/zuoye1.jpg', 3, 'upload/file.rar', 2, 1, '作业详情1', 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(2, '作业标题2', 'upload/zuoye2.jpg', 2, 'upload/file.rar', 3, 2, '作业详情2', 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(3, '作业标题3', 'upload/zuoye3.jpg', 1, 'upload/file.rar', 3, 1, '作业详情3', 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(4, '作业标题4', 'upload/zuoye4.jpg', 3, 'upload/file.rar', 3, 2, '作业详情4', 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56'),
	(5, '作业标题5', 'upload/zuoye5.jpg', 1, 'upload/file.rar', 3, 1, '作业详情5', 1, '2023-02-22 05:21:56', '2023-02-22 05:21:56');

-- 导出  表 t407.zuoyetijiao 结构
DROP TABLE IF EXISTS `zuoyetijiao`;
CREATE TABLE IF NOT EXISTS `zuoyetijiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_id` int DEFAULT NULL COMMENT '作业',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `zuoyetijiao_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoyetijiao_types` int DEFAULT NULL COMMENT '作业评分 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='作业提交';

-- 正在导出表  t407.zuoyetijiao 的数据：~6 rows (大约)
DELETE FROM `zuoyetijiao`;
INSERT INTO `zuoyetijiao` (`id`, `zuoye_id`, `yonghu_id`, `zuoyetijiao_file`, `zuoyetijiao_types`, `create_time`) VALUES
	(1, 5, 3, 'upload/file.rar', 1, '2023-02-22 05:21:56'),
	(2, 5, 1, 'upload/file.rar', 2, '2023-02-22 05:21:56'),
	(3, 5, 2, 'upload/file.rar', 3, '2023-02-22 05:21:56'),
	(4, 4, 1, 'upload/file.rar', 2, '2023-02-22 05:21:56'),
	(5, 4, 2, 'upload/file.rar', 4, '2023-02-22 05:21:56'),
	(6, 3, 1, 'upload/1677048173174.rar', 4, '2023-02-22 06:42:55');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
