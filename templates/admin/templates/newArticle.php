<? include "includes/admin_header.php"; 
MessageShow ();

if (!empty($_REQUEST['title']) and !empty($_REQUEST['editor'])) {
	$title = trim (strip_tags ($_REQUEST['title']));
	$category = $_REQUEST['category'];
	$editor = trim (strip_tags ($_REQUEST['editor']));
	
	/*if (isset($_REQUEST['submit'])) {
		$db -> execute ("INSERT INTO `articles` SET	 `title` = '$title', `themes` = '$theme' ");
		MessageSend (3, "Ваше сообщение отправлено");
		echo '	<script>
			        function changeurl(){eval(self.location="/contacts");}
				        window.setTimeout("changeurl();", 0);
				</script>';
	}*/
}
?>
	
	<section id = "main">
		<form action = "" method = "post" class = "module">
			<header><h3>Post New Article</h3></header>
			<div class = "module_content">
				<div class = "row">
					<div class = "col-6">
						<fieldset>
							<label>Post Title</label>
							<input type = "text" name = "title">
						</fieldset>
					</div><!-- /.col-6 -->
					
					<div class = "col-6">
						<fieldset>
							<label>Category</label>
							<select name = "category">
								<? foreach ($categories as $cat) { ?>
									<option><? echo $cat ['name'] ?></option>
								<? } ?>
							</select>
						</fieldset>
					</div><!-- /.col-6 -->
				</div><!-- /.row -->
				<fieldset>
					<h2>Content</h2>
					
					<!-- The toolbar will be rendered in this container. -->
					<div id = "toolbar-container"></div>
					
					<!-- This container will become the editable. -->
					<div id = "editor">
						<input name="editor" type = "hidden"></textarea>
						<p>This is the initial editor content.</p>
					</div>
				
				</fieldset>
			</div><!-- /.module_content -->
			<footer>
				<div class = "submit_link">
					<input type = "submit" name = "submit" value = "Publish" class = "alt_btn">
				</div>
			</footer>
		</form><!-- end of post new article -->
	</section>

<? include "includes/admin_footer.php"; ?>