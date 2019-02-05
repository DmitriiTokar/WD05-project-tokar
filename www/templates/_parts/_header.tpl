<?php

if (isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == 'admin') {
	include ROOT . "templates/_parts/_admin-panel.tpl";
}


?>

<div class="header">
	<div class="header__left-side">
		<div class="header__logo mb-35">
			<?php include(ROOT . "templates/_parts/_header-logo.tpl"); ?>
		</div>
		<?php include(ROOT . "templates/_parts/_header-nav.tpl"); ?>
	</div>

	<?php

	if (isset($_SESSION['logged_user']) && $_SESSION['login'] == 1) {
		if ($_SESSION['role'] != 'admin') {
			include(ROOT . "templates/_parts/_header-user-logout.tpl");
		}

	} else {
		include(ROOT . "templates/_parts/_header-user-login.tpl");
	}

	?>

</div>
