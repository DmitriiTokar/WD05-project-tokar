<?php

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$title = "Редатировать пост";

$post = R::load('posts', $_GET['id']);
$cats = R::find('categories', 'ORDER BY cat_title ASC');

if (isset($_POST['postEdit'])) {
	if (trim($_POST['posttitle']) == '') {
		$errors[] = ['title' => 'Введите название поста'];
	}

	if (trim($_POST['posttext']) == '') {
		$errors[] = ['title' => 'Введите текст поста'];
	}

	if (empty($errors)) {
		$post->title = htmlentities($_POST['posttitle']);
		$post->cat = htmlentities($_POST['postCat']);
		$post->text = $_POST['posttext'];
		$post->autorId = $_SESSION['logged_user']['id'];
		$post->updateTime = R::isoDateTime();

		if (isset($_FILES['postImg']['name']) && $_FILES['postImg']['tmp_name'] != "") {
			$fileName = $_FILES["postImg"]["name"];
			$fileTmpLoc = $_FILES["postImg"]["tmp_name"];
			$fileType = $_FILES["postImg"]["type"];
			$fileSize = $_FILES["postImg"]["size"];
			$fileErrorMsg = $_FILES["postImg"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.'];
			}

			if ($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл не должен быть более 4 Mb'];
			}

			if (!preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName)) {
				$errors[] = [
					'title' => 'Неверный формат файла',
					'desc' => '<p>Файл должен быть в формате gif, jpg, jpeg, или png.</p>',];
			}

			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			}

			if (empty($errors)) {

				$postImg = $post->post_img;
				$postImgFolderLocation = ROOT . 'usercontent/blog/';

				if ( $postImg != "" ) {
					$picurl = $postImgFolderLocation . $postImg;
					// die($picurl);
					if ( file_exists($picurl) ) { unlink($picurl); }
					$picurl320 = $postImgFolderLocation . '320-' . $postImg;
					if ( file_exists($picurl320) ) { unlink($picurl320); }
				}

				$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
				$postImgFolderLocation = ROOT . 'usercontent/blog/';
				$uploadfile = $postImgFolderLocation . $db_file_name;
				$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

				if ($moveResult != true) {
					$errors[] = ['title' => 'Ошибка сохранения файла' ];
				}

				include_once( ROOT . "/libs/image_resize_imagick.php");

				$target_file =  $postImgFolderLocation . $db_file_name;
				$wmax = 920;
				$hmax = 620;
				$img = createThumbnailBig($target_file, $wmax, $hmax);
				$img->writeImage($target_file);

				$post->postImg = $db_file_name;

				$target_file =  $postImgFolderLocation . $db_file_name;
				$resized_file = $postImgFolderLocation . "320-" . $db_file_name;
				$wmax = 320;
				$hmax = 140;
				$img = createThumbnailCrop($target_file, $wmax, $hmax);
				$img->writeImage($resized_file);

				$post->postImgSmall = "320-" . $db_file_name;
			}

		}

		R::store($post);
		header('Location: ' . HOST . "blog?result=postEdited");
		exit();
	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-edit.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>