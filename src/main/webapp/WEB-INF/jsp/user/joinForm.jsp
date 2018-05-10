<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up</title>

	<!-- Bootstrap core CSS -->
	<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="/css/bootstrap/bootstrapTemplete.css" rel="stylesheet">
	<link href="/css/commoncss.css" rel="stylesheet">
	
	<!-- js -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>


</head>
<body>
	<div class="container">
		
		<div class="header">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="active"><a href="/">Home</a></li>
					<li role="presentation"><a href="/signin">SignIn</a></li>
				</ul>
			</nav>
			<h3 class="text-muted"><a href="/" style="text-decoration: none;">StudyMeet</a></h3>
		</div>
		
		<form id="insertMember" class="form-horizontal" action='/exesignup' onsubmit="return false;" method="post" enctype="application/x-www-form-urlencoded">
			<fieldset>
				<div id="legend">
					<legend class="">Register</legend>
				</div>
				
				<div class="control-group">
					<!-- Username -->
					<label class="control-label" for="userId">USER ID</label>
					<div class="controls">
						<input type="text" id="userId" name="userId" placeholder="" class="input-xlarge form-control">
						<button class="btn btn-primary" onclick="duplicateCheck();">중복확인</button>
					</div>
				</div>
				
				<div class="control-group">
					<!-- Password-->
					<label class="control-label" for="password">Password</label>
					<div class="controls">
						<input type="password" id="password" name="password" placeholder="" class="input-xlarge form-control">
						<p class="help-block">Password should be at least 4 characters</p>
					</div>
				</div>
	
				<div class="control-group">
					<!-- Password -->
					<label class="control-label" for="password_confirm">Password
						(Confirm)</label>
					<div class="controls">
						<input type="password" id="password_confirm" name="password_confirm" placeholder="" class="input-xlarge form-control">
						<p class="help-block">Please confirm password</p>
					</div>
				</div>
				
				<div class="control-group">
					<!-- Username -->
					<label class="control-label" for="username">USER NAME</label>
					<div class="controls">
						<input type="text" id="userName" name="userName" placeholder="" class="input-xlarge form-control">
					</div>
				</div>
				
				<div class="control-group">
					<!-- Username -->
					<label class="control-label" for="gender">GENDER</label>
					<div class="controls">
						<input type="radio" id="gender" name="gender" value="MAN" placeholder="" >MAN
						&nbsp;
						<input type="radio" id="gender" name="gender" value="WOMAN" placeholder="">WOMAN
					</div>
				</div>
	
				<div class="control-group">
					<!-- E-mail -->
					<label class="control-label" for="address">ADDRESS</label>
					<div class="controls">
						<input type="text" id="address" name="address" placeholder="" class="input-xlarge form-control">
					</div>
				</div>
				
				<div class="control-group">
					<!-- E-mail -->
					<label class="control-label" for="phone">PHONE</label>
					<div class="controls">
						<input type="text" id="phone" name="phone" placeholder="010-1234-5678" class="input-xlarge form-control">
					</div>
				</div>
				
				<div class="control-group">
					<!-- E-mail -->
					<label class="control-label" for="email">E-mail</label>
					<div class="controls">
						<input type="text" id="email" name="email" placeholder="yourEmail@SiteAddress" class="input-xlarge form-control">
						<p class="help-block">Please provide your E-mail</p>
					</div>
				</div>
	
				<div class="control-group">
					<!-- Button -->
					<div class="controls">
						<button class="btn btn-success" onclick="insertMember();">Register</button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>

<script>

	function duplicateCheck(){
		alert("test");
		var userId = $("#userId").val();
		alert("userId : " + userId);
		
		$.ajax({
            url:'/checkId',
            type:'post',
            data:$('#userId').val(),
            success:function(data){
                var result = data.result;
                if(result){
                	alert("result true");	
                } else {
                	alert("result false");	
                }
            }, error:function(){
            	alert("Process Error!!")
            }
        })
	}
	
	function insertMember(){
		$("#insertMember").submit();
	}
</script>