<?php

session_start (); //запуск сессии

include "DB.php";

//описание свойства ссылок. Если массив $_SERVER['REQUEST_URI'] пустой (== '/') 
//то присваиваем значение переменным $Page и $Module значения index (т.е. пусто).
if ($_SERVER['REQUEST_URI'] == '/') {
	$Page = 'index';
	$Module = 'index';
}
//если же не пустой, то разбиваем url функцией parse_url () на части, а части - в массив.
else {
	$URL_Path = parse_url ($_SERVER['REQUEST_URI'], PHP_URL_PATH);
	$URL_Parts = explode ('/', trim ($URL_Path, '/'));
	$Page = array_shift ($URL_Parts);
	$Module = array_shift ($URL_Parts);
	
	if (!empty($Module)) {
		$Param = [];
		for ($i = 0; $i < count ($URL_Parts); $i++) {
			$Param[$URL_Parts[$i]] = $URL_Parts[++$i];
		}
	}
	else $Module = 'main'; // если $Module пустая, то значение по умолчанию = main
}

//добавляем ссылкам относительный путь к файлам с помощью условного оператора if-else и функции in_array, 
//которая ищет совпадения по слову в массиве, т.е. по значениям переменных $Page $Module
if (in_array ($Page, ['index', 'clubs', 'contacts', 'diploma', 'disciplines', 'edu-work', 'manuals', 'meth-work', 'schedule', 'specialities', 'squad'])) include TEMPLATE_PATH."/$Page.php";

else if (in_array ($Page, ['news'])) viewArticle ();

//если $Page == ADMIN_LOGIN (значение константы в файле config.php) то далее проверяем на существование массив $_SESSION['ADMIN_LOGIN_IN'], 
//и если массив существует, то подключаем админ-панель
else if ($Page == ADMIN_LOGIN) {
	if ($_SESSION['ADMIN_LOGIN_IN'] and in_array ($Module, ['main', 'stats', 'query'])) include ADMIN_PATH."/$Module.php";
	else if ($_SESSION['ADMIN_LOGIN_IN'] and in_array ($Module, ['newArticle', 'editArticle', 'editArticle', 'messages', 'archiveMessage'])) include ADM_TEMPLATE_PATH."/$Module.php";
	
	else if ($Module == ADMIN_PASS) {
		$_SESSION['ADMIN_LOGIN_IN'] = 1;
		MessageSend (3, 'Вход в Админ панель выполнен успешно.');
		Redirect ('/'.ADMIN_LOGIN);
	}
	else NotFound ();
}
else NotFound ();
//если нет совпадений, то идёт перенаправление на страницу с ошибкой 404

/**
 * @param        $p1 //номер уведомления (1 - ошибка, 2 - подсказка и 3 - информация)
 * @param        $p2 //текст уведомления
 * @param string $p3
 */
function MessageSend ($p1, $p2, $p3 = '') {
	if ($p1 == 1) $p1 = 'Ошибка' and $p3 = 'danger';
	else if ($p1 == 2) $p1 = 'Подсказка' and $p3 = 'info';
	else if ($p1 == 3) $p1 = 'Информация' and $p3 = 'success';
	
	$_SESSION['message'] = '<div class="alert alert-'.$p3.' alert-dismissible fade show" role="alert" align="center">
								<b>'.$p1.'</b>: '.$p2.'
								                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					                <span aria-hidden="true">&times;</span>
					            </button>
							</div>';
	
}

function MessageShow () {
	if ($_SESSION['message']) $Message = $_SESSION['message'];
	echo $Message;
	$_SESSION['message'] = [];
}

/**
 * @param $p
 */
function Redirect ($p) {
	if ($p) $_SERVER['HTTP_REFERER'] = $p;
	exit(header ('Location: '.$_SERVER['HTTP_REFERER']));
}

function viewArticle () {
	if (!isset($_GET["articleId"]) || !$_GET["articleId"]) {
		require (TEMPLATE_PATH."/index.php");
		
		return;
	}
	$results = [];
	$results['article'] = Database ::getById ((int) $_GET["articleId"]);
	require (TEMPLATE_PATH."/news.php");
}

/**
 * @param $arr
 *
 * @return mixed
 */
function defender_xss ($arr) {
	$filter = ["<", ">", "=", " (", ")", ";", "/"];
	foreach ($arr as $num => $xss) {
		$arr[$num] = str_replace ($filter, "|", $xss);
	}
	
	return $arr;
}

//используйте  функцию перед обработкой входящих данных:
$_REQUEST = defender_xss ($_REQUEST);

function NotFound () {
	header ("HTTP/1.0 404 Not Found");
	exit (include "templates/includes/404.php");
}

?>