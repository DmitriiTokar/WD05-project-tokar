<div class="container user-content pt-80">
	<?php
	if (isset($_GET['result'])) {
		include ROOT . "templates/blog/_results.tpl";
	}
	?>
	<div class="blog__header mb-50"><span>Блог веб-разработчика</span>
		<?php if (isAdmin()) { ?>
			<a class="button button-edit" href="<?= HOST ?>blog/post-new">Добавить новый пост</a>
		<?php } ?>
	</div>

	<?php


	?>
	<div class="row justify-content-right mb-50">
		<?php foreach ($posts as $post) { ?>
			<?php include ROOT . "templates/blog/blog-card.tpl" ?>
		<?php } ?>
	</div>
</div>