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
	<script  src="/js/jquery/jquery-1.4.2.min.js"></script>


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
		
		<form id="insertMember" class="form-horizontal" action='/exesignup' onsubmit="return false;" method="post" enctype="application/x-www-form-urlencoded" accept-charset="utf-8">
			<fieldset>
				<div id="legend">
					<legend class="">Register</legend>
				</div>
				
				<div class="control-group">
					<!-- Username -->
					<label class="control-label" for="userId">USER ID</label>
					<div class="controls">
						<input type="text" id="userId" name="id" placeholder="" class="input-xlarge form-control" style="width: 80%; margin-right: 2%; float: left;">
						<button class="btn btn-primary" onclick="duplicateCheck();" style="width: 18%;">Duplcate Check</button>
						<div id="duplicateCheckResult" style="margin-top: 5px;"></div>
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
					<label class="control-label" for="name">USER NAME</label>
					<div class="controls">
						<input type="text" id="userName" name="name" placeholder="" class="input-xlarge form-control">
					</div>
				</div>
				
				<div class="control-group">
					<!-- Username -->
					<label class="control-label" for="">GENDER</label>
					<div class="controls">
						<label><input type="radio" class="gender" name="gender" value="MAN" placeholder="" >MAN</label>
						&nbsp;
						<label><input type="radio" class="gender" name="gender" value="WOMAN" placeholder="">WOMAN</label>
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
		$.ajax({
			url:'/checkId',
			type:'post',
			data: {"userId" : $("#userId").val() },
			success:function(data){
				var idDuplicate = data.result;
				alert("idDuplicate : " + idDuplicate);
				
				var duplicateCheckResult = $("#duplicateCheckResult");
				if(idDuplicate){
					duplicateCheckResult.attr("available", "unavailable").css("color", "red").text("Unavailable ID.");
					//$("</span>").attr("available", "unavailable").text("Unavailable ID.").css("color","red").appendTo(duplicateCheckResult);
				} else {
					duplicateCheckResult.attr("available", "available").css("color", "##0000cd").text("Available ID.");
				}
			}, error:function(data, e){
				alert("Process Error!!")
			}
		});
	}
	
	function insertMember(){
		$("#insertMember").submit();
	}
</script>