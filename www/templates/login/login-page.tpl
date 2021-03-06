<body class="content-page">
<div class="registration-wrapper">
	<div class="registration-header-wrapper">
		<div class="logo">
			<div class="logo__icon"><span class="ml-0"><i class="far fa-paper-plane"></i></span><span>Супер Сайт</span>
			</div>
			<div class="logo__text"><span></span></div>
		</div>
		<?php if ($uri[0] == 'registration') { ?>
			<div class="login"><a href="<?= HOST ?>login">Вход</a></div>
		<?php } else { ?>
			<div class="login"><a href="<?= HOST ?>registration">Регистрация</a></div>
		<?php } ?>
	</div>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-4">
				<?= $content ?>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="footer__text text-center">
					<p>© Юрий Ключевский</p>
					<p>Создано с <span>❤</span> в <a href="http://webcademy.ru/" target="_blank">WebCademy.ru</a> в 2018
						году</p>
				</div>
			</div>
		</div>
	</div>
</div>
