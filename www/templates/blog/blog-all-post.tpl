<div class="container user-content pt-80">
	<div class="blog__header mb-50"><span>Блог веб-разработчика</span><a class="button button-edit"
	                                                                     href="<?= HOST ?>blog/post-new">Добавить новый
			пост</a>
	</div>

	<?php



	?>
	<div class="row justify-content-right mb-50">
		<?php foreach ($posts as $post) { ?>
			<?php include ROOT . "templates/blog/blog-card.tpl" ?>
		<?php } ?>
	</div>
</div>