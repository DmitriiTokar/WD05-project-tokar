<form class="registration-form" method="POST" action="<?= HOST ?>registration">
	<h1 class="title-1 registration-form__caption">Регистрация</h1>

	<?php require ROOT . "templates/_parts/_errors.tpl"?>

	<div class="registration-form__error">
	</div>
	<div class="registration-form__email">
		<input name="email" class="input-text" type="text" placeholder="E-mail"/>
	</div>
	<div class="registration-form__password">
		<input name="password" class="input-text" type="password"
		       placeholder="Пароль"/></div>
	<div class="registration-form__button">
		<input class="button button-enter" type="submit"
		       value="Регистрация" name="register"/></div>
</form>