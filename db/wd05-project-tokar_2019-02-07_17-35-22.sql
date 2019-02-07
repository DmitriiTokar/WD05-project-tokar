#SXD20|20011|50641|70210|2019.02.07 17:35:22|wd05-project-tokar|0|3|7|
#TA categories`3`16384|posts`3`16384|users`1`16384
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
(30,'Python пост','Python пост',4,'2019-02-07 14:27:07','1088495063.jpg','320-1088495063.jpg',5,\N)	;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci	;
#	TD`users`utf8mb4_unicode_520_ci	;
INSERT INTO `users` VALUES 
(4,'dmtokfl@gmail.com','$2y$10$qYhhszQsrADzCflq1KzyzupvnJBfGBKAVEuw2EtxwGBZ0a4jCds6.','admin','Дмитрий','Токарь','Россия','Москва','-251025578.jpg','48--251025578.jpg','VZ1RxjX9QGAOzig',0),
(7,'dmtr3243@gmail.com','$2y$10$ZMLTdWeMuO79FFJ4MpMk6OeoHa9dTXzPm4FB/esLPkBZPkZXm5dpy','user',\N,\N,\N,\N,\N,\N,\N,\N)	;
