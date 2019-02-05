<?php
foreach ($success as $item) {
	if (count($item) == 1) { ?>
		<div class="notification__success mb-10">
			<?=$item['title']?>
		</div>
		<?php
	} else if (count($item) == 2) { ?>
		<div class="notification__error--text mb-10 pt-70">
			<div class="notification__success notification__error--top notification__error--top-border-radius ">
				<?=$item['title']?>
			</div>
			<span class="mb-20"><?=$item['desc']?></span>
		</div>
		<?php
	}
}
?>