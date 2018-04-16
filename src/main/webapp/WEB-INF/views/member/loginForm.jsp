<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=300,  initial-scale=1, minimum-scale=1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">


			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#login-form">
						LOGIN <span class="glyphicon glyphicon-user"></span>
				</a></li>
				<li><a data-toggle="tab" href="#registration-form">
						REGISTER <span class="glyphicon glyphicon-pencil"></span>
				</a></li>
			</ul>
			<div class="tab-content">
				<div id="login-form" class="tab-pane fade in active">
					<div class="wrapper">
						<form class="form-signin">
							<h2 class="form-signin-heading">LOGIN <span class="glyphicon glyphicon-user"></span></h2>
							<input type="text" class="form-control" name="username" placeholder="Enter your id" required="" autofocus="" id="ip-id"/> 
							<input type="password" class="form-control" name="password" placeholder="Enter your password" required="" id="ip-pwd"/> 
							<label class="checkbox">
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
							</label>
							<button class="btn btn-lg btn-primary btn-block" type="submit">LOGIN</button>
						</form>
					</div>

				</div>
				<div id="registration-form" class="tab-pane fade">
					<div class="wrapper">
					<form class="form-register">
						<h2 class="form-signin-heading">REGISTER <span class="glyphicon glyphicon-pencil"></span></h2>
						<div class="form-group">
							<label for="name">Your Name:</label> 
							<input type="text" class="form-control" id="name" placeholder="Enter your name" name="name" required="">
						</div>
						<div class="form-group">
							<label for="newemail">Id:</label> 
							<input type="text" class="form-control" id="newemail" placeholder="Enter new id" name="newemail" required="">
						</div>
						<div class="form-group">
							<label for="newpwd">Password:</label> 
							<input type="password" class="form-control" id="newpwd" placeholder="New password" name="newpwd" required="">
						</div>
						<button class="btn btn-lg btn-info btn-block" type="submit">REGISTER</button>
					</form>
					</div>
				</div>

			</div>

		</div>
	</div>

	<script>
		$(document).ready(function() {
			//$('#btn_Loginform').hide();
			//$('#btn_Loginform').click();

		})
	</script>
</body>
</html>