#SXD20|20011|50641|70210|2019.02.13 14:07:18|wd05-project-tokar|0|6|14|
#TA categories`3`16384|comments`4`16384|contacts`0`16384|messages`3`16384|posts`3`16384|users`1`16384
#EOH

#	TC`categories`utf8mb4_unicode_520_ci	;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci	;
#	TD`categories`utf8mb4_unicode_520_ci	;
INSERT INTO `categories` VALUES 
(4,'PHP'),
(5,'Python'),
(6,'JS')	;
#	TC`comments`utf8mb4_unicode_520_ci	;
CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_comments_post` (`post_id`),
  KEY `index_foreignkey_comments_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci	;
#	TD`comments`utf8mb4_unicode_520_ci	;
INSERT INTO `comments` VALUES 
(1,30,4,'Новый комментарий','2019-02-08 13:32:44'),
(2,30,4,'Новый комментарий','2019-02-08 15:18:22'),
(3,30,4,'Новый комментарий','2019-02-08 15:18:26'),
(4,30,7,'Новый комментарий','2019-02-08 15:29:30'),
(5,29,4,'Новый комментарий','2019-02-08 15:39:56')	;
#	TC`contacts`utf8_general_ci	;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` text,
  `surname` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8	;
#	TC`messages`utf8mb4_unicode_520_ci	;
CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci	;
#	TD`messages`utf8mb4_unicode_520_ci	;
INSERT INTO `messages` VALUES 
(5,'Дмитрий','dmtokfl@gmail.com','1234','Koala.jpg','1215752192.jpg','2019-02-12 17:29:51'),
(6,'Дмитрий Токарь','dmtr3243@gmail.com','dmtr3243@gmail.com','Chrysanthemum.jpg','1215752192.jpg','2019-02-13 12:47:51'),
(7,'Дмитрий','dmtokfl@gmail.com','dmtokfl@gmail.com',\N,\N,'2019-02-13 13:46:06')	;
#	TC`posts`utf8mb4_unicode_520_ci	;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `autor_id` int(11) unsigned DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` int(11) unsigned DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_posts_autor` (`autor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci	;
#	TD`posts`utf8mb4_unicode_520_ci	;
INSERT INTO `posts` VALUES 
(28,'Js пост','JS пост',4,'2019-02-07 14:26:37','-319576017.jpg','320--319576017.jpg',6,\N),
(29,'PHP пост','JS пост',4,'2019-02-07 14:26:51','106848036.jpg','320-106848036.jpg',4,\N),
(30,'Python пост','<p>Python пост</p>\r\n',4,'2019-02-07 14:27:07','1088495063.jpg','320-1088495063.jpg',5,'2019-02-09 14:33:16')	;
#	TC`users`utf8mb4_unicode_520_ci	;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci	;
#	TD`users`utf8mb4_unicode_520_ci	;
INSERT INTO `users` VALUES 
(4,'dmtokfl@gmail.com','$2y$10$qYhhszQsrADzCflq1KzyzupvnJBfGBKAVEuw2EtxwGBZ0a4jCds6.','admin','Дмитрий','Токарь','Россия','Москва','689408166.jpg','48-689408166.jpg','VZ1RxjX9QGAOzig',0),
(7,'dmtr3243@gmail.com','$2y$10$ZMLTdWeMuO79FFJ4MpMk6OeoHa9dTXzPm4FB/esLPkBZPkZXm5dpy','user','Андрей','Андреев','','','-484073350.jpg','48--484073350.jpg',\N,\N),
(8,'mail@mail.com','$2y$10$Id4FuytKuJICAYH/.W8WfuS4No6j7wE1.O.zYL1PUI1BYAN2PmWue','user',\N,\N,\N,\N,\N,\N,\N,\N)	;
