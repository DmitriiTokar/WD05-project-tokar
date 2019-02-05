<div class="header__nav ml-55">
	<nav class="navigation">
		<? ($uri[0] == "blog") ? "active" : ""; ?>
		<ul>
			<li class="navigation__item"><a class="<? echo ($uri[0] == "") ? "active" : ""; ?>" href="<?= HOST ?>">Главная</a>
			</li>
			<li class="navigation__item"><a class="<? echo ($uri[0] == "about") ? "active" : ""; ?>"
			                                href="<?= HOST ?>about">Обо мне</a></li>
			<li class="navigation__item"><a class="<? echo ($uri[0] == "portfolio") ? "active" : ""; ?>"
			                                href="<?= HOST ?>portfolio">Работы</a></li>
			<li class="navigation__item"><a class="<? echo ($uri[0] == "blog") ? "active" : ""; ?>"
			                                href="<?= HOST ?>blog">Блог</a></li>
			<li class="navigation__item"><a class="<? echo ($uri[0] == "contacts") ? "active" : ""; ?>"
			                                href="<?= HOST ?>contacts">Контакты</a></li>
		</ul>
	</nav>
</div>