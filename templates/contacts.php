<?
include "includes/header.php";

MessageShow ();

include "includes/carousel.php";

if (!empty($_REQUEST['name']) and !empty($_REQUEST['theme']) and !empty($_REQUEST['email']) and !empty($_REQUEST['message'])) {
	$name = trim (strip_tags ($_REQUEST['name']));
	$theme = trim (strip_tags ($_REQUEST['theme']));
	$email = trim (strip_tags ($_REQUEST['email']));
	$message = trim (strip_tags ($_REQUEST['message']));
	if (isset($_REQUEST['submit'])) {
		/*print_r ($name. " | ". $theme. " | ". $email. " | ". $message);*/
		$db -> execute ("INSERT INTO `messages` SET	 `name` = '$name', `themes` = '$theme', `email` = '$email', `message` = '$message'");
		MessageSend (3, "Ваше сообщение отправлено");
		echo '	<script>
			        function changeurl(){eval(self.location="/contacts");}
				        window.setTimeout("changeurl();", 0);
				</script>';
	}
}
?>

<section>
	<h1>"__"</h1>
	<div class = "row">
		<div class = "col-md col-xl-6">
		
		</div><!-- /.col-md col-xl-6 -->
		
		<div class = "col-md col-xl-6">
		
		</div><!-- /.col-md col-xl-6 -->
	</div><!-- /.row -->
	
	<h1>"__"</h1>
	<div class = "row justify-content-center">
		<div class = "col-md col-xl-6">
			<div class = "contact">
				<form action = "" method = "post" onSubmit = "return checkForm(this);">
					<fieldset>
						<div class = "row">
							<div class = "col-md col-xl-6">
								<label class = "input">
									<i class = "fa fa-append fa-user" aria-hidden = "true"></i>
									<input type = "text" name = "name" placeholder = "Имя" required>
								</label>
							</div>
							<div class = "col-md col-xl-6">
								<label class = "input">
									<i class = "fa fa-append fa-tag" aria-hidden = "true"></i>
									<input type = "text" name = "theme" placeholder = "Тема" required>
								</label>
							</div>
						</div>
						<div>
							<label class = "input">
								<i class = "fa fa-append fa-envelope" aria-hidden = "true"></i>
								<input type = "email" name = "email" placeholder = "E-mail" required>
							</label>
						</div>
						<div>
							<label class = "textarea">
								<i class = "fa fa-append fa-comment" aria-hidden = "true"></i>
								<textarea rows = "4" name = "message" placeholder = "Сообщение" required></textarea>
							</label>
						</div>
						<button type = "submit" name = "submit" class = "button">Отправить</button>
					</fieldset>
				</form>
			</div>
		</div><!-- /.col-md col-xl-6 -->
	</div><!-- /.row -->
</section>

<? include "includes/footer.php"; ?>

<script>
    function checkForm(form) {
        var name = form.name.value;
        var n = name.match(/^[A-Za-zА-Яа-я ]*[A-Za-zА-Яа-я ]+$/);
        if (!n) {
            alert("Поле содержит неверные символы, пожалуйста исправьте ошибку");
            return false;
        }
        var email = form.email.value;
        var o = email.match(/^[A-Za-z0-9][A-Za-z0-9\-]*[A-Za-z0-9_]*@([A-Za-z0-9]+([A-Za-z0-9-]*A-Za-z0-9]+)*\.)+[A-Za-z]+$/);
        if (!o) {
            alert("E-mail введен неверно, пожалуйста исправьте ошибку");
            return false;
        }
        return true;
    }
</script>

