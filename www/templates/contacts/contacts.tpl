<div class="container user-content pt-80 pb-80">
	<div class="row">
		<div class="col contacts-links">
			<div class="contacts-links__button"><a class="button button-edit" href="<?= HOST ?>contacts-edit">Редактировать</a>
			</div>
			<div class="contacts-links__button"><a class="button" href="<?= HOST ?>messages">Сообщения</a></div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 contacts">
			<div class="contacts__title">Контакты</div>
			<div class="row">
				<?php if ($contacts['name'] != '') { ?>
					<div class="col-4 contacts__name">Имя</div>
					<div class="col-6 contacts__value contacts__value--link"><a href="#!"><?= $contacts['name'] ?></a>
					</div>
				<?php } ?>
				<?php if ($contacts['surname'] != '') { ?>
					<div class="col-4 contacts__name">Фамилия</div>
					<div class="col-6 contacts__value contacts__value--link"><a href="#!"><?= $contacts['surname'] ?></a>
					</div>
				<?php } ?>
				<?php if ($contacts['email'] != '') { ?>
					<div class="col-4 contacts__name">Email</div>
					<div class="col-6 contacts__value contacts__value--link"><a href="#!"><?= $contacts['email'] ?></a>
					</div>
				<?php } ?>
			</div>
			<div class="row">
				<?php if ($contacts['skype'] != '') { ?>
					<div class="col-4 contacts__name">Skype</div>
					<div class="col-6 contacts__value contacts__value--link"><a class="contacts__value--link"
					                                                            href="#!"><?= $contacts['skype'] ?></a>
					</div>
				<?php } ?>
			</div>
			<div class="row">
				<?php if ($contacts['vk'] == '' && $contacts['fb'] == '' && $contacts['github'] == '' && $contacts['twitter'] == '') { ?>
				<?php } else { ?>
					<div class="col-4 contacts__name">Социальные сети</div>
				<?php } ?>
				<div class="col-6 contacts__value">
					<?php if ($contacts['vk'] != '') { ?>
						<div class="contacts__value--bold-link"><a href="<?= $contacts['vk'] ?>">Профиль Вконтакте</a>
						</div>
					<?php } ?>
					<?php if ($contacts['fb'] != '') { ?>
						<div class="contacts__value--bold-link"><a href="<?= $contacts['fb'] ?>">Профиль Facebook</a>
						</div>
					<?php } ?>
					<?php if ($contacts['github'] != '') { ?>
						<div class="contacts__value--bold-link"><a href="<?= $contacts['github'] ?>">Профиль GitHub</a>
						</div>
					<?php } ?>
					<?php if ($contacts['twitter'] != '') { ?>
						<div class="contacts__value--bold-link"><a href="<?= $contacts['twitter'] ?>">Профиль Twitter</a>
						</div>
					<?php } ?>
				</div>
			</div>
			<div class="row mt-15">
				<?php if ($contacts['phone'] != '') { ?>
				<div class="col-4 contacts__name">Телефон</div>
				<div class="col-6 contacts__value mb-10"><?= $contacts['phone'] ?></div>
				<?php } ?>
			</div>
			<div class="row">
				<?php if ($contacts['address'] != '') { ?>
				<div class="col-4 contacts__name">Адрес</div>
				<div class="col-6 contacts__value"><?= $contacts['address'] ?></div>
				<?php } ?>
			</div>
		</div>
		<div class="col-md-4">
			<form class="form-contact">
				<div class="form-contact__title">Связаться со мной</div>
				<div class="form-contact__name"><input class="input-text" type="text" placeholder="Введите имя"/></div>
				<div class="form-contact__email"><input class="input-text" type="text" placeholder="Email"/></div>
				<div class="form-contact__message"><textarea class="textarea" type="text"
				                                             placeholder="Сообщение"></textarea></div>
				<div class="form-contact__load-file">
					<div class="load-file-title">Прикрепить файл</div>
					<div class="load-file-opis">jpg, png, pdf, doc, весом до 2Мб.</div>
					<div class="load-file-fieldset"><input class="inputfile inputfile-rad" id="file" type="file"
					                                       name="file" data-multiple-caption="{count} файлов выбрано"
					                                       multiple=""/><label for="file">Выбрать файл</label><span>Файл не выбран</span>
					</div>
				</div>
				<div class="form-contact__save"><input class="button button-save" type="submit" value="Отправить"
				                                       name="name"/></div>
			</form>
		</div>
	</div>
</div>