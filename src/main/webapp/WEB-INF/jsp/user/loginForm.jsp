<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	
	<!-- Bootstrap core CSS -->
	<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="/css/bootstrap/bootstrapTemplete.css" rel="stylesheet">
	<link href="/css/commoncss.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	
		<div class="header">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="active"><a href="/">Home</a></li>
					<li role="presentation"><a href="/login">SignIn</a></li>
					<li role="presentation"><a href="#">SignUp</a></li>
				</ul>
			</nav>
			<h3 class="text-muted"><a href="/" style="text-decoration: none;">StudyMeet</a></h3>
		</div>
		
		<form class="form-signin">
			<h2 class="form-signin-heading">Please sign in</h2>
			
			<label for="inputEmail" class="sr-only">Email address</label>
			<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
			
			<label for="inputPassword" class="sr-only">Password</label>
			<input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
			
			<div class="checkbox">
				<label>
					<input type="checkbox" value="remember-me"> Remember me
				</label>
			</div>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
		</form>
	</div>
</body>
</html>