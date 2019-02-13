<div class="container user-content pt-70">
	<h1 class="title-1">Редактировать данные</h1>
	<?php require ROOT . "templates/_parts/_errors.tpl" ?>
	<form action="<?= HOST ?>contacts-edit" method="POST" class="contacts-edit-form">
		<div class="row contacts-edit-form__row">
			<div class="col-md-3"><label class="label">Имя<input class="input-text" type="text"
			                                                     placeholder="Введите имя" name="name"
			                                                     value="<?= @$_POST['name'] != "" ? $_POST['name'] : $contacts['name'] ?>"/></label>
			</div>
			<div class="col-md-3"><label class="label">Фамилия<input class="input-text" type="text"
			                                                         placeholder="Введите фамилию"
			                                                         name="surname" value="<?= @$_POST['surname'] != "" ? $_POST['surname'] : $contacts['surname'] ?>"/></label>
			</div>
		</div>
		<div class="row contacts-edit-form__row">
			<div class="col-md-3"><label class="label">Email<input class="input-text" type="text"
			                                                       placeholder="Введите email" name="email" value="<?= @$_POST['email'] != "" ? $_POST['email'] : $contacts['email'] ?>"/></label>
			</div>
			<div class="col-md-3"><label class="label">Skype<input class="input-text" type="text"
			                                                       placeholder="Введите skype" name="skype" value="<?= @$_POST['skype'] != "" ? $_POST['skype'] : $contacts['skype'] ?>"/></label>
			</div>
		</div>
		<div class="row contacts-edit-form__row">
			<div class="col-md-3"><label class="label">Вконтакте<input class="input-text" type="text"
			                                                           placeholder="Введите ссылку на профиль"
			                                                           name="vk" value="<?= @$_POST['vk'] != "" ? $_POST['vk'] : $contacts['vk'] ?>"/></label></div>
			<div class="col-md-3"><label class="label">Facebook<input class="input-text" type="text"
			                                                          placeholder="Введите ссылку на профиль"
			                                                          name="fb" value="<?= @$_POST['fb'] != "" ? $_POST['fb'] : $contacts['fb'] ?>"/></label></div>
			<div class="col-md-3"><label class="label">Github<input class="input-text" type="text"
			                                                        placeholder="Введите ссылку на профиль"
			                                                        name="github" value="<?= @$_POST['github'] != "" ? $_POST['github'] : $contacts['github'] ?>"/></label></div>
			<div class="col-md-3"><label class="label">Twitter<input class="input-text" type="text"
			                                                         placeholder="Введите ссылку на профиль"
			                                                         name="twitter" value="<?= @$_POST['twitter'] != "" ? $_POST['twitter'] : $contacts['twitter'] ?>"/></label></div>
		</div>
		<div class="row contacts-edit-form__row">
			<div class="col-md-3"><label class="label">Телефон<input class="input-text" type="text"
			                                                         placeholder="Введите телефон"
			                                                         name="phone" value="<?= @$_POST['phone'] != "" ? $_POST['phone'] : $contacts['phone'] ?>"/></label></div>
			<div class="col-md-3"><label class="label">Адрес<input class="input-text" type="text"
			                                                       placeholder="Введите адрес" name="address" value="<?= @$_POST['address'] != "" ? $_POST['address'] : $contacts['address'] ?>"/></label>
			</div>
		</div>
		<div class="row contacts-edit-form__row">
			<div class="form-button-save"><input class="button button-save" type="submit" value="Сохранить"
			                                     name="contactsUpdate"/></div>
			<div class="form-button-cancel">
				<a class="button" href="<?= HOST ?>contacts">Отмена</a>
			</div>
		</div>
	</form>
</div>