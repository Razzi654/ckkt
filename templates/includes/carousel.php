<div class = "container marketing">
	<section>
		<div id = "myCarousel" class = "carousel slide" data-ride = "carousel">
			<ol class = "carousel-indicators">
				<li data-target = "#myCarousel" data-slide-to = "0" class = "active"></li>
				<li data-target = "#myCarousel" data-slide-to = "1"></li>
				<!--<li data-target = "#myCarousel" data-slide-to = "2"></li>
				<li data-target = "#myCarousel" data-slide-to = "3"></li>
				<li data-target = "#myCarousel" data-slide-to = "4"></li>-->
			</ol>
			<div class = "carousel-inner">
				<? foreach ($articles as $article) { ?>

					<div class = "carousel-item active">
						<div class = "container">
							<img class = "second-slide" src = "../img/carousel/Лого КТ.png" alt = "Second slide" width="100%" height="100%" style="background: #fff;">
							<!--<div class = "carousel-caption d-md-block">
							
							</div>-->
						</div><!-- /.container -->
					</div><!-- /.carousel-item -->

					<div class = "carousel-item">
						<div class = "container">
							<img class = "first-slide" src = "https://lh3.googleusercontent.com/P9XpGggpm8a81vbRzU2nwTEc2WrAkYqj6HTxj8nw6BpLuZQ-kX1UOfoYIh4OOVZrYJ4sT_D2SLU-PV60nPnD92iQ14Kr0sy_x2loxQ9_Frrl94TTXXbVFuUSDKXf4sZ-JCJzkg9RVnaHNpV9eBc-9mknnILx1pyfjI0rRI6hHXRQ9Idvui3GACTJks9pswVddSlj3e49XqERdJaEyjlE2EqfeJnaSKRPQPCwHPNKI3Y_SrJeGibZGGpgMSjWRlE_FAI-1gl5md2pPV5QLIGforELODcxz6CWSfiGQMwnzys1Wy9j9HTC4yHh93_PPgJgHcFaB527T7WpOPazxEi5qB3e0zD83N2a0Rw6wtmaXV9HUHGVKlp98kB_QIP7Z0hF8agJFjyxNTbtd3wiyfSuvIgpIfqxjltkjWhmbLVpU7TSv17m6dV23VNXrZ-Xc86MC0t1PReDAYYL_iyxrBTkaRO6Hr81ATt4oCkDE8tykZYEu8QI8lL-jdX5A8-8VmkLfGVFPBo2KQwJyq6l540FboD4vQfKx3h3xo_OyPEWuFs6oJtM-wRHf6HaAxvO5kl18l4xohv8NDueQY2z8e0oB8VBMeV3w4iqKux_xaQ=w1299-h975-no" alt = "First slide">
						<div class = "container">
							<div class = "carousel-caption d-md-block text-left">
								<h2>Прошла неделя цикловой комиссии</h2>
								<p>С 16 по 23 апреля 2018 года согласно плану работы состоялась неделя цикловой комиссии
								   компьютерных технологий.</p>
								<span><a class = "btn btn-primary" href = "/news?action=viewArticle&amp;articleId=<? echo $article ["ID"] ?>" role = "button">Sign up today</a></span>
							</div>
						</div><!-- /.container -->
					</div><!-- /.carousel-item -->

					<?/*<div class = "carousel-item">
						<img class = "third-slide" src = "data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt = "Third slide">
						<div class = "container">
							<div class = "carousel-caption d-md-block">
								<h2>Another example headline.</h2>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
								   porta
								   gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								<span><a class = "btn btn-primary" href = "/news?action=viewArticle&amp;articleId=<? echo $article ["ID"] ?>" role = "button">Learn more</a></span>
							</div>
						</div><!-- /.container -->
					</div><!-- /.carousel-item -->
					<div class = "carousel-item">
						<div class = "container">
							<img class = "second-slide" src = "../img/carousel/4e9.jpg" alt = "Second slide" width = "100%">
							<div class = "carousel-caption d-md-block text-right">
							
							</div>
						</div><!-- /.container -->
					</div><!-- /.carousel-item -->
					<div class = "carousel-item">
						<img class = "fifth-slide" src = "data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt = "Third slide">
						<div class = "container">
							<div class = "carousel-caption d-md-block text-right">
								<h2>One more for good measure.</h2>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
								   porta
								   gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								<span><a class = "btn btn-primary" href = "/news?action=viewArticle&amp;articleId=<? echo $article ["ID"] ?>" role = "button">Learn more</a></span>
							</div>
						</div><!-- /.container -->
					</div><!-- /.carousel-item -->*/?>
				<? } ?>
			</div><!-- /.carousel-inner -->
			<a class = "carousel-control-prev" href = "#myCarousel" role = "button" data-slide = "prev">
				<span class = "carousel-control-prev-icon" aria-hidden = "true"></span>
				<span class = "sr-only">Previous</span>
			</a>
			<a class = "carousel-control-next" href = "#myCarousel" role = "button" data-slide = "next">
				<span class = "carousel-control-next-icon" aria-hidden = "true"></span>
				<span class = "sr-only">Next</span>
			</a>
		</div><!-- /#myCarousel -->
	</section>