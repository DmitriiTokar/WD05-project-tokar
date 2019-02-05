<form class="registration-form" method="POST" action="<?= HOST ?>lost-password">
	<h1 class="title-1 registration-form__caption">Восстановление пароля</h1>
	<?php require ROOT . "templates/_parts/_errors.tpl" ?>
	<?php require ROOT . "templates/_parts/_success.tpl" ?>
	<div class="registration-form__email">
		<input class="input-text" type="text" placeholder="E-mail" name="email"/>
	</div>
	<div class="password-remember-wrapper">

		<div class="d-inline-block text-center w-100"><a class="registration-form__password-recovery"
		                                                 href="<?= HOST ?>login">Вернуться на страницу входа</a></div>

	</div>
	<div class="registration-form__button">
		<input class="button button-enter button-small" type="submit"
		       value="Отправить"
		       name="lost-password"/>
	</div>
</form>