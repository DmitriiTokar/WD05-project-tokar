<div class="container user-content pt-70 make-relative">
	<div class="row">
		<div class="col-10 offset-1">

			<div class="blog-post">
				<div class="blog-post-heading-wrapper">
					<div class="profile justify-content-between">
						<div class="title-1 profile__title"><?=$post['title']?></div>
						<div class="">
							<input class="button button-edit" type="submit" value="Редактировать"
							       name="name"/>
						</div>
					</div>
				</div>
					<div class="blog-post__info">
						<div class="blog-post__info-name">Емельян Казаков</div>
						<div class="blog-post__info-category"><a href="#!">Путешествия</a></div>
						<div class="blog-post__info-date"><? echo rus_date("j F Y H:i", strtotime($post['date_time']))?></div>
						<div class="blog-post__info-comment-count"><a href="#!">2 комментария</a></div>
					</div>
				</div>
				<?php if ($post->post_img_small != "") { ?>
					<img class="blog-post__image" src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>"/>
				<?php } else { ?>
					<img src="<?= HOST ?>usercontent/blog-no-image-big.png?>" alt=""/>
				<?php } ?>
				<div class="blog-post__content">
					<?=$post['text']?>
				</div>
			</div>
			<div class="blog__buttons mt-30 mb-35">
				<div class="button__arrow-wrap"><a class="button button-backward" href="#!">Назад</a><i
							class="fas fa-arrow-left"></i></div>
				<div class="button__arrow-wrap"><a class="button button-forward" href="#!">Вперед</a><i
							class="fas fa-arrow-right"></i></div>
			</div>
			<div class="two-comments__title">2 комментария</div>
			<div class="two-comments-container">
				<div class="two-comments-container__avatar">
					<div class="avatar"><img src="../img/avatars/avatar-2.png"/></div>
				</div>
				<div class="two-comments-container-block">
					<div class="two-comments-container-block-wrap">
						<div class="two-comments-container-block-wrap__name">Джон До</div>
						<div class="two-comments-container-block-wrap__date"><i
									class="far fa-clock two-comments-container-block-wrap-icon"></i>05 Мая 2017 года в
							15:45
						</div>
					</div>
					<div class="two-comments-container-block__message">Замечательный парк, обязательно отправлюсь туда
						этим летом.
					</div>
				</div>
			</div>
			<div class="two-comments-container">
				<div class="two-comments-container__avatar">
					<div class="avatar"><img src="../img/avatars/avatar-3.png"/></div>
				</div>
				<div class="two-comments-container-block">
					<div class="two-comments-container-block-wrap">
						<div class="two-comments-container-block-wrap__name">Джон До</div>
						<div class="two-comments-container-block-wrap__date"><i
									class="far fa-clock two-comments-container-block-wrap-icon"></i>05 Мая 2017 года в
							15:45
						</div>
					</div>
					<div class="two-comments-container-block__message">Замечательный парк, обязательно отправлюсь туда
						этим летом.
					</div>
				</div>
			</div>
			<div class="comment mt-35 mb-120">
				<div class="leave-comment-title">Оставить комментарий</div>
				<div class="leave-comment">
					<div class="leave-comment-avatar">
						<div class="avatar"><img src="../img/avatars/avatar-1.jpg"/></div>
					</div>
					<form class="leave-comment-form">
						<div class="leave-comment-form__name">Юрий Ключевский</div>
						<div class="notification__error">Комментарий не может быть пустым.</div>
						<div class="mb-10"></div>
						<textarea class="textarea" type="text" placeholder="Присоединиться к обсуждению..."></textarea>
						<div class="mb-10"></div>
						<input class="button" type="submit" value="Опубликовать" name="button"/>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>