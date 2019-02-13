<div class="container user-content pt-80 pb-120">
	<div class="row">
		<div class="col-md-10 offset-md-1">
			<div class="title-1">Сообщения от посетителей</div>
			<?php foreach ($messages as $message):
				include ROOT . "templates/contacts/massega-card.tpl";
			endforeach; ?>
		</div>
	</div>
</div>