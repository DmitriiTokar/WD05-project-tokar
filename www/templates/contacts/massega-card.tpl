<div class="mb-20">
	<div class="message">
		<div class="message-container">
			<div class="delete"><a class="button button-delete button-small" href="!#>">Удалить</a></div>
			<div class="message-date"><?= $message['dateTime'] ?></div>
			<div class="message-author">
				<div class="message-author--name"><?= $message['name'] ?></div>
				<a class="message-author--email" href="mailto:<?= $message['email'] ?>"
				   target="_blank"><?= $message['email'] ?></a>
			</div>
			<div class="message-text">
				<p><?= $message['message'] ?></p>
			</div>
			<div class="message-files">
				<?php if ($message['message_file'] != '') { ?>
					<div class="message-files--title">Прикрепленные файлы:</div>
					<a class="message-files--list"
					   href="<?= ROOT . 'usercontent/uploaded_files/' . $message['message_file'] ?>"><?= $message['message_file_name_original'] ?></a>
				<?php } ?>
			</div>
		</div>
	</div>
</div>