<? include "includes/admin_header.php"; ?>
	
	<section id = "main">
<? MessageShow (); ?>
	
	<article class = "module">
		<header><h3>Content Manager</h3></header>
		
		<table id = "example" class = "table table-striped table-bordered module" style = "width:100%">
			<thead>
				<tr>
					<th>Name</th>
					<th>Themes</th>
					<th>E-Mail</th>
					<th>Message</th>
					<th>Date</th>
				</tr>
			</thead>
			<tbody>
				<? foreach ($messages as $value) { ?>
					<tr>
						<td><? echo $value["name"] ?></td>
						<td><? echo $value["themes"] ?></td>
						<td><? echo $value["email"] ?></td>
						<td><? echo $value["message"] ?></td>
						<td><? echo $value["date"] ?></td>
					</tr>
				<? } ?>
			</tbody>
			<tfoot>
				<tr>
					<th>Name</th>
					<th>Themes</th>
					<th>E-Mail</th>
					<th>Message</th>
					<th>Date</th>
				</tr>
			</tfoot>
		</table>
	</article><!-- end of content manager article -->

<? include "includes/admin_footer.php"; ?>