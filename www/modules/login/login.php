<?php

$title = "Вход на сайт";

if (isset($_POST['login'])) {


	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}

	if (trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите пароль'];
	}

//	if (R::count('users', 'email = ?', array($_POST['email']))) {
//		$errors[] = [
//			'title' => 'Пользователь с таким email уже зарегистрирован',
//			'desc' => 'Используйте другой email чтобы создать новый аккаунт. Или воспользуйтесь <a
//							href="#{link}">восстановлением пароля</a>, чтобы войти на сайт.'
//		];
//	}


	if (empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));

		if (empty($user)) {
			$errors[] = ['title' => 'Пользователь с таким EMAIL не зарегистрирован!'];

		} else  if (password_verify($_POST['password'], $user->password)) {
			$_SESSION['logged_user'] = $user;
			$_SESSION['login'] = '1';
			$_SESSION['role'] = $user->role;
			header("Location: " . HOST);
			exit();
		} else {
			$errors[] = ['title' => 'Пароль введен неверно'];
		}
	}
}

ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>