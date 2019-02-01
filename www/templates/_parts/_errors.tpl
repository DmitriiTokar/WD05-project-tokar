<?php
foreach ($errors as $error) {
	if (count($error) == 1) { ?>
		<div class="notification__error mb-10">
			<?=$error['title']?>
		</div>
		<?php
	} else if (count($error) == 2) { ?>
		<div class="notification__error--text mb-10 pt-70">
			<div class="notification__error notification__error--top notification__error--top-border-radius">
				<?=$error['title']?>
			</div>
			<span class="mb-20"><?=$error['desc']?></span>
		</div>
		<?php
	}
}
?>