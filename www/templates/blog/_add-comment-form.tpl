<div class="comment mt-35 mb-120">
	<div class="leave-comment-title">Оставить комментарий</div>
	<?php if (isLoggedIn()) { ?>
		<div class="leave-comment">
			<div class="leave-comment-avatar">
				<?php if ($_SESSION['logged_user']['avatar_small'] == "") { ?>
					<div class="avatar"><img src="<?=HOST?>usercontent/avatar/avatar_holder.jpg"/></div>
				<?php } else { ?>
					<div class="avatar"><img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>"/></div>
				<?php } ?>
			</div>
			<form class="leave-comment-form" method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
				<div class="leave-comment-form__name"><?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['surname']?></div>
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>
				<div class="mb-10"></div>
				<textarea class="textarea" type="text" placeholder="Присоединиться к обсуждению..." name="commentText"></textarea>
				<div class="mb-10"></div>
				<input class="button" type="submit" value="Опубликовать" name="addComment"/>
			</form>
		</div>
	<?php } else { ?>
		<div class="comment__register text-center"><a href="<?=HOST?>login">Войдите</a> или <a href="<?=HOST?>registration">зарегистрируйтесь</a><br />чтобы оставить комментарий</div>
	<?php } ?>
</div>