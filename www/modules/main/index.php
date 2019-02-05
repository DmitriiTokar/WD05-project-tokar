<?php

ob_start();
include ROOT . "templates/_parts/_header.tpl";
$content = ob_get_contents();
ob_end_clean();

$title = "Главная";

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>