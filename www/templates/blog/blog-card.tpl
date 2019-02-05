<div class="card-post mb-20 mr-20">
	<div class="card-post__image mb-15">
		<?php if ($post->post_img_small != "") { ?>
			<img src="<?= HOST ?>usercontent/blog/<?= $post->post_img_small ?>" alt=""/>
		<?php } else { ?>
			<img src="<?= HOST ?>usercontent/blog-no-image.png?>" alt=""/>
		<?php } ?>

	</div>
	<div class="card-post__title">

		<?php

		echo mbCutString($post->title, 48);

		?>


	</div>
	<a class="button" href="<?= HOST ?>blog/post?id=<?= $post->id ?>">Читать</a>
</div>