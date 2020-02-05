<?php

//константы для удобного использования
define ("TEMPLATE_PATH", "templates");
define ("ADMIN_PATH", "templates/admin");
define ("ADM_TEMPLATE_PATH", "templates/admin/templates");
define ('ADMIN_LOGIN', 'admin');
define ('ADMIN_PASS', '4084');

//возвращает массив с именем хоста, именем БД, именем пользователя и паролем, кодировкой и опциями PDO
return [
	'host' => 'localhost',
	'db_name' => 'ckkt',
	'username' => 'root',
	'password' => '',
	'charset' => 'utf8',
	'option' => [
		PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
		PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
		PDO::ATTR_EMULATE_PREPARES   => false,
	]
];
?>