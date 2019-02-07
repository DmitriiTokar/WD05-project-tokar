<?php if ($_GET['result'] == 'postDeleted') {?>
	<div class="notification__success mb-20" data-notify-hide>
		Пост успешно удален!
	</div>
<?php } ?>

<?php if ($_GET['result'] == 'postCreated') {?>
	<div class="notification__success mb-20" data-notify-hide>
		Пост успешно создан!
	</div>
<?php } ?>

<?php if ($_GET['result'] == 'postEdited') {?>
	<div class="notification__success mb-20" data-notify-hide>
		Пост успешно отредактирован!
	</div>
<?php } ?>
