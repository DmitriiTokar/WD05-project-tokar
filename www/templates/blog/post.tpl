<div class="container user-content pt-70 make-relative">
	<div class="row">
		<div class="col-10 offset-1">
			<div class="blog-post">
				<div class="blog-post-heading-wrapper">
					<div class="profile justify-content-between">
						<div class="title-1 profile__title"><?= $post['title'] ?></div>
						<div class="">
							<?php if (isAdmin()) { ?>
								<a class="button button-edit" href="<?= HOST ?>blog/post-edit?id=<?= $post['id'] ?>">Редактировать</a>
								<a class="button button-delete"
								   href="<?= HOST ?>blog/post-delete?id=<?= $post['id'] ?>">Удалить</a>
							<?php } ?>
						</div>
					</div>
				</div>
				<div class="blog-post__info">
					<div class="blog-post__info-name"><?= $post['name'] ?> <?= $post['surname'] ?></div>
					<div class="blog-post__info-category"><a href="#!"><?= $post['cat_title'] ?></a></div>
					<div class="blog-post__info-date">
						<?php
						if ($post['update_time'] != "") {
							echo "Обновлено: " . rus_date("j F Y H:i", strtotime($post['update_time']));
						} else {
							echo rus_date("j F Y H:i", strtotime($post['date_time']));
						}
						?>
					</div>
					<div class="blog-post__info-comment-count"><a href="#!"><?php commentNumber(count($comments)) ?></a></div>
				</div>
			</div>
			<?php if ($post['post_img'] != "") { ?>
				<img class="blog-post__image" src="<?= HOST ?>usercontent/blog/<?= $post['post_img'] ?>"/>
			<?php } ?>
			<div class="blog-post__content">
				<?= $post['text'] ?>
			</div>
		</div>
	</div>
	<div class="blog__buttons mt-30 mb-35">
		<div class="button__arrow-wrap"><a class="button button-backward" href="#!">Назад</a><i
					class="fas fa-arrow-left"></i></div>
		<div class="button__arrow-wrap"><a class="button button-forward" href="#!">Вперед</a><i
					class="fas fa-arrow-right"></i></div>
	</div>
	<?php if (count($comments) > 0) { ?>
		<div class="two-comments__title"><?php commentNumber(count($comments)) ?></div>
		<?php foreach ($comments as $comment): ?>
			<?php include ROOT . "templates/blog/_comment-card.tpl" ?>
		<?php endforeach; ?>
	<?php } ?>
	<?php include ROOT . "templates/blog/_add-comment-form.tpl" ?>
</div>
