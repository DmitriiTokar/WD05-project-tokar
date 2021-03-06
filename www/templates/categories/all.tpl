<div class="container user-content pt-80 pb-120">
	<?php
	if (isset($_GET['result'])) {
		include ROOT . "templates/categories/_results.tpl";
	}
	?>
	<div class="blog__header mb-50"><span>Категории блога</span><a class="button button-edit"
	                                                               href="<?= HOST ?>blog/categories-new">Добавить новую
			категорию</a>
	</div>
	<table class="table">
		<thead class="thead-light">
		<tr>
			<th scope="col">id</th>
			<th scope="col">Название</th>
			<th scope="col">Редактировать</th>
			<th scope="col">Удалить</th>
		</tr>
		</thead>
		<tbody>
		<?php foreach ($cats as $cat): ?>
			<tr>
				<th><?= $cat['id'] ?></th>
				<td><?= $cat['cat_title'] ?></td>
				<td><a href="<?= HOST ?>blog/categories-edit?id=<?= $cat['id'] ?>">Редактировать</a></td>
				<td><a href="<?= HOST ?>blog/categories-delete?id=<?= $cat['id'] ?>">Удалить</a></td>
			</tr>
		<?php endforeach ?>
		</tbody>
	</table>

</div>