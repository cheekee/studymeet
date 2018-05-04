<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		
		<!-- Bootstrap core CSS -->
		<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
		<link href="/css/bootstrap/bootstrapTemplete.css" rel="stylesheet">
		<link href="/css/commoncss.css" rel="stylesheet">
		
		<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
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
			
			<form id="formSignin" class="form-signin">
				<h2 class="form-signin-heading">Please sign in</h2>
				
				<label for="inputId" class="sr-only">User ID</label>
				<input type="text" id="inputId" class="input-login-data form-control" placeholder="User ID" required="" autofocus="" warning-message="Please input your ID.">
				
				<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" id="inputPassword" class="input-login-data form-control" placeholder="Password" required="" warning-message="Please input your Password.">
				
				<div class="checkbox">
					<label>
						<input type="checkbox" value="remember-me"> Remember me
					</label>
				</div>
				
				<button class="btn btn-lg btn-primary btn-block" type="button" onclick="signin();">Sign in</button>
			</form>
		</div>
	</body>
</html>

<script>

	// Sign in
	function signin(){
		
		var isSubmitState = true;
		
		// Submit Data Validation Check
		$("#formSignin .input-login-data").each(function(){
			if(!hasDataValue(this.value)){
				$("#"+this.id).focus();
				alert($("#"+this.id).attr("warning-message"));
				
				isSubmitState = false;
				return false;
			}
		});
		
		if(isSubmitState){
			console.log("submit");
			// TODO Create AJAX function for sign in check
			// success --> Sign in and move main page
			// error   --> Out put alert message
		}
	}
	
	// Validation Check
	function hasDataValue(dataValue){
		if(dataValue == null || dataValue == ''){
			return false;
		}
		return true;
	}
</script>