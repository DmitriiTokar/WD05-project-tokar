<form  id="setNewPasswordForm" class="registration-form" method="POST" action="<?= HOST ?>set-new-password">
	<h1 class="title-1 registration-form__caption">Введите новый пароль</h1>
	<?php require ROOT . "templates/_parts/_errors.tpl" ?>
	<?php require ROOT . "templates/_parts/_success.tpl" ?>
	<div class="notification__error mb-10 hidden"></div>
	<?php if ( $newPasswordReady == false ): ?>
		<div class="registration-form__email">
			<input class="input-text" type="password" placeholder="Новый пароль" name="resetpassword"/>
		</div>
	<?php endif ?>
	<div class="password-remember-wrapper">

		<div class="d-inline-block text-center w-100"><a class="registration-form__password-recovery"
		                                                 href="<?= HOST ?>login">Вернуться на страницу входа</a></div>

	</div>
	<div class="registration-form__button">
		<?php if ( $newPasswordReady == false ): ?>
			<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
			<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
			<input class="button button-enter button-small button-set-new-password" type="submit"
			       value="Новый пароль"
			       name="set-new-password"/>
		<?php endif ?>
	</div>
</form>