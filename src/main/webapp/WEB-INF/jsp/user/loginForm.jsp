<!DOCTYPE html>
<meta name="google-signin-client_id" content="833224171048-qdos7flnh5mqmchp5naijc5c818nue7c.apps.googleusercontent.com">
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		
		<!-- Bootstrap core CSS -->
		<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
		<link href="/css/bootstrap/bootstrapTemplete.css" rel="stylesheet">
		<link href="/css/commoncss.css" rel="stylesheet">
		
		<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="https://apis.google.com/js/platform.js" async defer></script>
	</head>
	<body>
		<div class="container">
			
			<jsp:include page="../common/header.jsp"></jsp:include>
			
			<form id="formSignin" class="form-signin" action="/exesignin" method="post" enctype="application/x-www-form-urlencoded">
				<h2 class="form-signin-heading">Please sign in</h2>
				
				<label for="inputId" class="sr-only">User ID</label>
				<input type="text" id="inputId" name="inputId" class="input-login-data form-control" placeholder="User ID" required="" autofocus="" warning-message="Please input your ID.">
				
				<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" id="inputPassword" name="inputPassword" class="input-login-data form-control" placeholder="Password" required="" warning-message="Please input your Password.">
				
				<div class="checkbox">
					<label>
						<input type="checkbox" value="remember-me"> Remember me
					</label>
				</div>
				
				<button class="btn btn-lg btn-primary btn-block" type="button" onclick="signin();">Sign in</button>
				
				<div class="g-signin2" data-onsuccess="onSignIn"></div>
				<a href="#" onclick="signOut();">Sign out</a>
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
			 $.ajax({
				type : "POST",
				url : "/exesignin",
				data : $("#formSignin").serialize(),
				dataType : "json",
				error : function(){
					alert('Error!!');
				},
				success : function(data){
					var loginResult = data.result;
					if(loginResult){
						window.open("/", "_self");
					} else {
						alert("ID or PW Check!!!");
					}
				}
				 
			});

		}
	}
	
	// Validation Check
	function hasDataValue(dataValue){
		if(dataValue == null || dataValue == ''){
			return false;
		}
		return true;
	}
	
	function onSignIn(googleUser) {
		var profile = googleUser.getBasicProfile();
		console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		console.log('Name: ' + profile.getName());
		console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
		
		var id_token = googleUser.getAuthResponse().id_token;
		console.log("ID Token : " + id_token);
	}
	
	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
		auth2.signOut().then(function () {
			console.log('User signed out.');
		});
	}
</script>