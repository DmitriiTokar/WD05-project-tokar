#SXD20|20011|50641|70210|2019.02.01 16:00:37|wd05-project-tokar|0|1|3|
#TA users`3`16384
#EOH

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci	;
#	TD`users`utf8mb4_unicode_520_ci	;
INSERT INTO `users` VALUES 
(4,'dmtokfl@gmail.com','$2y$10$qYhhszQsrADzCflq1KzyzupvnJBfGBKAVEuw2EtxwGBZ0a4jCds6.','admin','Дмитрий','Токарь','Россия','Москва','-251025578.jpg','48--251025578.jpg',\N,\N),
(5,'dmtr3243@gmail.com','$2y$10$LkGvS0vKWkgb7k4fl4SC8uYnt.5FZYMisq3CtKZ7MoHv4.Igm78yO','user','Андрей','Андреев','Россия','Санкт-Петербург','-494332196.jpg','48--494332196.jpg','Y2zjINO6yH7qkLf',-1),
(6,'mail@mail.com','$2y$10$6XhOBewB8Me5fWzHicljSeRHzZOgtupRzztJ7iAyO3nPe/Nq6R5C.','user','Иван','Иванов','Россия','Москва','468042433.jpg','48-468042433.jpg',\N,\N)	;
