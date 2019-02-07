<?php

$sql = 'SELECT 
				posts.id, posts.title, posts.text, posts.post_img, posts.date_time, posts.autor_id, posts.cat, posts.update_time,
				users.name, users.surname,
				categories.cat_title
		FROM
				`posts`
		LEFT JOIN categories ON posts.cat = categories.id
		INNER JOIN users ON posts.autor_id = users.id
		WHERE posts.id = ' . $_GET['id'] . ' LIMIT 1';

$post = R::getAll($sql);
$post = $post[0];

$title = $post['title'];

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>