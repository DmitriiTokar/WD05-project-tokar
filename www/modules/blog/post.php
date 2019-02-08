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

$sql = 'SELECT
				comments.text, comments.date_time, comments.user_id,
				users.name, users.surname, users.avatar_small, users.id
		FROM	
				`comments`
		INNER JOIN users ON comments.user_id = users.id
		WHERE comments.post_id = ' . $_GET['id'];

$comments = R::getAll($sql);

$title = $post['title'];

if (isset($_POST['addComment'])) {
	if (trim($_POST['commentText']) == '') {
		$errors[] = ['title' => 'Введите текст комментария'];
	}

	if (empty($errors)) {
		$comment = R::dispense('comments');
		$comment->postId = htmlentities($_GET['id']);
		$comment->userId = htmlentities($_SESSION['logged_user']['id']);
		$comment->text = htmlentities($_POST['commentText']);
		$comment->dateTime = R::isoDateTime();
		R::store($comment);
		header('Location: ' . HOST . "blog/post?id=" . $_GET['id']);
		exit();
	}
}

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