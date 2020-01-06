<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HSSHOPPPING</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style>
/* Product Items */
.products_container {
	width: calc(100% + 27px);
	left: -14px;
	padding-top: 101px;
}

.product {
	float: left;
	width: calc(100%/ 4);
	padding-left: 14px;
	padding-right: 13px;
	margin-bottom: 45px;
}

.product_image {
	width: 100%;
}

.product_image::after {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: transparent;
	border: solid 5px #bbe432;
	visibility: hidden;
	opacity: 0;
	pointer-events: none;
	content: '';
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.product:hover .product_image::after {
	visibility: visible;
	opacity: 1;
}

.product_image img {
	max-width: 100%;
}

.product_tag {
	position: absolute;
	top: 0;
	right: 0;
	width: 59px;
	height: 59px;
	font-size: 14px;
	color: #FFFFFF;
	font-weight: 700;
	text-transform: uppercase;
	line-height: 59px;
	text-align: center;
	z-index: 1;
}

.product.hot .product_tag {
	background: #bbe432;
}

.product.sale .product_tag {
	background: #fd006b;
}

.product.new .product_tag {
	background: #414141;
}

.product_content {
	padding-top: 40px;
	padding-left: 25px;
	padding-right: 25px;
	padding-bottom: 45px;
	background: #FFFFFF;
}

.btn-success {
	width: 80px;
	hight: 40px;
}

.btn-primary {
	width: 80px;
	hight: 40px;
}

.product_title a {
	font-family: 'Poppins', sans-serif;
	font-size: 16px;
	font-weight: 600;
	color: #414141;
	line-height: 1.2;
	text-transform: uppercase;
}

.product_price {
	font-size: 24px;
	font-weight: 700;
	color: #414141;
	margin-top: 13px;
}

.product.sale .product_price {
	color: #fd006b;
}

.product_price span {
	display: inline-block;
	font-size: 14px;
	font-weight: 700;
	color: #949494;
	margin-left: 12px;
}

.product_button {
	width: 138px;
	height: 45px;
	background: #edf4f6;
	text-align: center;
	margin-top: 22px;
}

.product_button:hover {
	background: #bbe432;
}

.product_button a {
	display: block;
	font-size: 14px;
	font-weight: 700;
	text-transform: uppercase;
	color: #1a1a1a;
	line-height: 45px;
}
/* Credits */
.credits {
	width: 100%;
	background: #1a1a1a;
}

.credits_content {
	width: 100%;
	height: 81px;
}

.credits_text {
	font-family: 'Poppins', sans-serif;
	font-size: 14px;
	color: #787878;
}
</style>
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="/OnlineShopping/">
				<h1>
					<text style="color:#bbe432;">hs</text><b>Shop</b>
				</h1>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link "
						href="/OnlineShopping/login"><button class="btn-success">Login</button></a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="/OnlineShopping/register"><button class="btn-primary">SignUp</button></a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container-fluid">
		<!--<h1 class="mt-4">Logo Nav by Start Bootstrap</h1>-->
		<!-- Product -->
		<div class="section_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="products_container grid">



							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
									<div class="product_image">
										<img src="/WEB-INF/images/shirts1.jpg" alt="shirt">
									</div>
									<div class="product_content text-center">
										<div class="product_title">
											<a href="product.html">shirt</a>
										</div>
										<div class="product_price">&#8377; 299</div>
										<div class="product_button ml-auto mr-auto trans_200">
											<a href="/OnlineShopping/login">add to cart</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
									<div class="product_image">
										<img src="images/product_13.jpg" alt="">
									</div>
									<div class="product_content text-center">
										<div class="product_title">
											<a href="product.html">long red shirt</a>
										</div>
										<div class="product_price">$39.90</div>
										<div class="product_button ml-auto mr-auto trans_200">
											<a href="/OnlineShopping/login">add to cart</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
									<div class="product_image">
										<img src="images/product_13.jpg" alt="">
									</div>
									<div class="product_content text-center">
										<div class="product_title">
											<a href="product.html">long red shirt</a>
										</div>
										<div class="product_price">$39.90</div>
										<div class="product_button ml-auto mr-auto trans_200">
											<a href="/OnlineShopping/login">add to cart</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
									<div class="product_image">
										<img src="images/product_13.jpg" alt="">
									</div>
									<div class="product_content text-center">
										<div class="product_title">
											<a href="product.html">long red shirt</a>
										</div>
										<div class="product_price">$39.90</div>
										<div class="product_button ml-auto mr-auto trans_200">
											<a href="/OnlineShopping/login">add to cart</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
									<div class="product_image">
										<img src="images/product_13.jpg" alt="">
									</div>
									<div class="product_content text-center">
										<div class="product_title">
											<a href="product.html">long red shirt</a>
										</div>
										<div class="product_price">$39.90</div>
										<div class="product_button ml-auto mr-auto trans_200">
											<a href="/OnlineShopping/login">add to cart</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
									<div class="product_image">
										<img src="images/product_13.jpg" alt="">
									</div>
									<div class="product_content text-center">
										<div class="product_title">
											<a href="product.html">long red shirt</a>
										</div>
										<div class="product_price">$39.90</div>
										<div class="product_button ml-auto mr-auto trans_200">
											<a href="/OnlineShopping/login">add to cart</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
									<div class="product_image">
										<img src="images/product_13.jpg" alt="">
									</div>
									<div class="product_content text-center">
										<div class="product_title">
											<a href="product.html">long red shirt</a>
										</div>
										<div class="product_price">$39.90</div>
										<div class="product_button ml-auto mr-auto trans_200">
											<a href="/OnlineShopping/login">add to cart</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
									<div class="product_image">
										<img src="images/product_13.jpg" alt="">
									</div>
									<div class="product_content text-center">
										<div class="product_title">
											<a href="product.html">long red shirt</a>
										</div>
										<div class="product_price">$39.90</div>
										<div class="product_button ml-auto mr-auto trans_200">
											<a href="/OnlineShopping/ogin">add to cart</a>
										</div>
									</div>
								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Credits -->
	<div class="credits">
		<div class="section_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div
							class="credits_content d-flex flex-row align-items-center justify-content-end">
							<div class="credits_text">
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This <u><b>hsShop</b></u> is made by <a
									href="#">Kishore & Chinna</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
