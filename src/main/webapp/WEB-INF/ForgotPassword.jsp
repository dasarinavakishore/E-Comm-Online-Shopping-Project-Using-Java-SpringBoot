<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700"
	rel="stylesheet">
<title>Forgot Password</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js"></script>
<link rel="stylesheet"
	href="/vendors/formvalidation/dist/css/formValidation.min.css">
<style type="text/css">
body {
	color: #fff;
	background: #19aa8d;
	font-family: 'Roboto', sans-serif;
}

.form-control, .form-control:focus, .input-group-addon {
	border-color: #e1e1e1;
}

.form-control, .btn {
	border-radius: 3px;
}

.signup-form {
	width: 390px;
	margin: 0 auto;
	padding: 30px 0;
}

.signup-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #fff;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.signup-form h2 {
	color: #333;
	font-weight: bold;
	margin-top: 0;
}

.signup-form hr {
	margin: 0 -30px 20px;
}

.signup-form .form-group {
	margin-bottom: 20px;
}

.signup-form label {
	font-weight: normal;
	font-size: 13px;
}

.signup-form .form-control {
	min-height: 38px;
	box-shadow: none !important;
}

.signup-form .input-group-addon {
	max-width: 42px;
	text-align: center;
}

.signup-form .btn {
	font-size: 16px;
	font-weight: bold;
	background: #19aa8d;
	border: none;
	min-width: 140px;
}

.signup-form .btn:hover, .signup-form .btn:focus {
	background: #179b81;
	outline: none;
}

.signup-form a {
	color: #fff;
	text-decoration: underline;
}

.signup-form a:hover {
	text-decoration: none;
}

.signup-form form a {
	color: #19aa8d;
	text-decoration: none;
}

.signup-form form a:hover {
	text-decoration: underline;
}

.signup-form .fa {
	font-size: 21px;
}

.signup-form .fa-paper-plane {
	font-size: 18px;
}

.signup-form .fa-check {
	color: #fff;
	left: 17px;
	top: 18px;
	font-size: 7px;
	position: absolute;
}

#register_form input[type=password] {
	width: 100%;
	box-sizing: border-box;
	/* font-size: 14pt;*/
	/*border: none;*/
	/*border: none;*/
	outline: none;
	/*padding: 10px;*/
}
</style>
</head>
<body>
	<script type="text/javascript">
		function checkForm(form) {
			if (form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) {
				if (form.pwd1.value.length < 6) {
					alert("Error: Password must contain at least six characters!");
					form.pwd1.focus();
					return false;
				}
				if (form.pwd1.value == form.username.value) {
					alert("Error: Password must be different from Username!");
					form.pwd1.focus();
					return false;
				}
				re = /[0-9]/;
				if (!re.test(form.pwd1.value)) {
					alert("Error: password must contain at least one number (0-9)!");
					form.pwd1.focus();
					return false;
				}
				re = /[a-z]/;
				if (!re.test(form.pwd1.value)) {
					alert("Error: password must contain at least one lowercase letter (a-z)!");
					form.pwd1.focus();
					return false;
				}
				re = /[A-Z]/;
				if (!re.test(form.pwd1.value)) {
					alert("Error: password must contain at least one uppercase letter (A-Z)!");
					form.pwd1.focus();
					return false;
				}
			} else {
				alert("Error: Please check that you've entered and confirmed your password!");
				form.pwd1.focus();
				return false;
			}

			alert("You entered a valid password: " + form.pwd1.value);
			return true;
		}
		$("#password").password('toggle');
	</script>
	<div class="signup-form">
		<form onsubmit="return checkForm(this);"
			action="/OnlineShopping/forgot" method="post">
			<center>
				<h2>Forgot Password</h2>
			</center>

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-paper-plane"></i></span>
					<input type="email" class="form-control" name="email"
						placeholder="Email Address" required="required">
				</div>
			</div>

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
						type="password" class="form-control" id="password" name="pwd1"
						placeholder="Password" required="required" width="70"
						data-toggle="password">

				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"> <i class="fa fa-lock"></i>
						<i class="fa fa-check"></i>
					</span> <input type="password" class="form-control" id="password"
						name="pwd2" placeholder="Confirm Password" required="required"
						width="70" data-toggle="password">

				</div>
			</div>

			<div class="form-group">
				<center>
					<button type="submit" class="btn btn-primary btn-lg">Submit</button>
				</center>
			</div>
		</form>

	</div>

</body>
</html>
