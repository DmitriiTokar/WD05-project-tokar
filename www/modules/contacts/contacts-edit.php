<?php

$title = "Редактировать контакты";

$contacts = R::load('contacts', 1);

if (isset($_POST['contactsUpdate'])) {
	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите EMAIL'];
	}

	if (trim($_POST['phone']) == '') {
		$errors[] = ['title' => 'Введите телефон'];
	}

	if (trim($_POST['address']) == '') {
		$errors[] = ['title' => 'Введите адрес'];
	}

	if (empty($errors)) {
		$contacts->email = htmlentities($_POST['email']);
		$contacts->phone = htmlentities($_POST['phone']);
		$contacts->address = htmlentities($_POST['address']);

		$contacts->name = htmlentities($_POST['name']);
		$contacts->surname = htmlentities($_POST['surname']);
		$contacts->vk = htmlentities($_POST['vk']);
		$contacts->fb = htmlentities($_POST['fb']);
		$contacts->github = htmlentities($_POST['github']);
		$contacts->twitter = htmlentities($_POST['twitter']);
		$contacts->skype = htmlentities($_POST['skype']);

		R::store($contacts);

		header('Location: ' . HOST . "contacts");
		exit();
	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts-edit.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>