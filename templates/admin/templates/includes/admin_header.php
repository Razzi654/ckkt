<!DOCTYPE html>
<head>
	<meta http-equiv = "Content-Type" content = "text/html" charset = "UTF-8">
	<meta http-equiv = "Content-Language" Content = "ru">
	<meta http-equiv = "X-UA-Compatible" content = "IE=edge">
	<meta name = "description" content = "Сайт Цикловой комиссии Компьютерных технологий ГПОУ ДЭМТ">
	<meta name = "viewport" content = "width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<title>ЦК "Компьютерные технологии"</title>

	<script src="https://cdn.ckeditor.com/ckeditor5/10.0.1/decoupled-document/ckeditor.js"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/10.0.1/decoupled-document/translations/ru.js"></script>

	<!-- Bootstrap CSS -->
	<link rel = "stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css">
	<link rel = "stylesheet" href = "https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">
	<link rel = "stylesheet" href = "https://use.fontawesome.com/releases/v5.0.10/css/all.css"
	      integrity = "sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin = "anonymous">
	<link rel = "stylesheet" href = "../../css/add_css/fonts.css">
	<link rel = "stylesheet" href = "../../css/add_css/media.css">
	<link rel = "stylesheet" href = "../../css/main.css">
	<link rel = "stylesheet" href = "../../css/admin.css">
	<link rel = "stylesheet" href = "../../css/hovmenu.css">
	<link rel = "stylesheet" href = "../../css/contacts.css">
	<link rel = "stylesheet" href = "../../css/messages.css">
	<link rel = "shortcut icon" href = "http://cliparts.co/cliparts/8iA/o5o/8iAo5o9aT.jpg">
</head>

<header>
	<nav class = "navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class = "container">
			<a class = "navbar-brand" href = "#">Container</a>
			<button class = "navbar-toggler" type = "button" data-toggle = "collapse" data-target = "#navbarsExample07"
			        aria-controls = "navbarsExample07" aria-expanded = "false" aria-label = "Toggle navigation">
				<span class = "navbar-toggler-icon"></span>
			</button>
			
			<div class = "collapse navbar-collapse" id = "navbarsExample07">
				<ul class = "navbar-nav mr-auto">
					<li class = "nav-item active">
						<a class = "nav-link" href = "/">Главная<span class = "sr-only">(current)</span></a>
					</li>
					<li class = "nav-item">
						<a class = "nav-link" href = "/squad">Состав</a>
					</li>
					<li class = "nav-item dropdown">
						<a class = "nav-link dropdown-toggle" href = "#" id = "dropdown06" data-toggle = "dropdown"
						   aria-haspopup = "true" aria-expanded = "false">Абитуриенту
						</a>
						<div class = "dropdown-menu" aria-labelledby = "dropdown06">
							<a class = "dropdown-item" href = "/specialities">Специальности</a>
							<a class = "dropdown-item" href = "/disciplines">Дисциплины</a>
						</div>
					</li>
					<li class = "nav-item dropdown">
						<a class = "nav-link dropdown-toggle" href = "#" id = "dropdown07" data-toggle = "dropdown"
						   aria-haspopup = "true" aria-expanded = "false">Студенту</a>
						<div class = "dropdown-menu" aria-labelledby = "dropdown07">
							<a class = "dropdown-item" href = " /schedule">Расписание</a>
							<a class = "dropdown-item" href = "/disciplines">Дисциплины</a>
							<a class = "dropdown-item" href = "/manuals" ">Методические пособия</a>
							<a class = "dropdown-item" href = "/diploma">Дипломное
							                                             проектирование</a>
							<a class = "dropdown-item" href = "/clubs">Кружки</a>
						</div>
					</li>
					<li class = "nav-item dropdown">
						<a class = "nav-link dropdown-toggle" href = "#" id = "dropdown08" data-toggle = "dropdown"
						   aria-haspopup = "true" aria-expanded = "false">Работа ЦК</a>
						<div class = "dropdown-menu" aria-labelledby = "dropdown08">
							<a class = "dropdown-item" href = "/edu-work" ">Воспитательная работа</a>
							<a class = "dropdown-item" href = "/meth-work" ">Методическая работа</a>
							<a class = "dropdown-item" href = "/diploma" ">Дипломирование</a>
							<a class = "dropdown-item" href = "/clubs" ">Кружки</a>
						</div>
					</li>
					<li class = "nav-item">
						<a class = "nav-link" href = " /contacts" ">Контакты</a>
					</li>
				</ul>
				<form action = "" class = "form-inline my-2 my-lg-0">
					<input type = "text" class = "form-control mr-sm-2" placeholder = "Поиск" aria-label = "Search">
					<button class = "btn btn-outline-success my-2 my-sm-0">
						<i class = "fa fa-search" aria-hidden = "true"></i></button>
				</form>
			</div>
		</div>
	</nav>
</header>

<aside id = "sidebar">
	<h1><a href="/admin">Admin Dashboard</a></h1>
	<hr>

	<ul>
		<li class = "icn_new_article"><a href = "/admin/newArticle">Новая статья</a></li>
		<li class = "icn_edit_article"><a href = "/admin/editArticle">Редактировать статью</a></li>
	
		<li class = "icn_folder"><a href = "/admin/messages">Сообщения</a></li>
		<li class = "icn_photo"><a href = "#">Архив сообщений</a></li>
		<li class = "icn_jump_back"><a href = "/admin/query/logout/1">Выйти</a></li>
	</ul>
	
	<footer>
		<h5><strong>Copyright &copy; 2011 Website Admin</strong></h5>
		<h6>Theme by <a href = "https://medialoot.com">MediaLoot</a></h6>
	</footer>
</aside><!-- end of sidebar -->