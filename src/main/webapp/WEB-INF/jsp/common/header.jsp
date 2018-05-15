<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="header">
	<c:choose>
		<c:when test="${not empty sessionScope.loginId}">
			<nav>
				<ul class="nav nav-pills pull-right">
					MEMBER : ${sessionScope.loginId}
					<li role="presentation" class="active"><a href="/">Home</a></li>
					<li role="presentation"><a href="/logout">LogOut</a></li>
				</ul>
			</nav>
		</c:when>
		
		<c:when test="${empty sessionScope.loginId}">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="active"><a href="/">Home</a></li>
					<li role="presentation"><a href="/signin">SignIn</a></li>
					<li role="presentation"><a href="/signup">SignUp</a></li>
				</ul>
			</nav>
		</c:when>
	</c:choose>
	<h3 class="text-muted">
		<a href="/" style="text-decoration: none;">StudyMeet</a>
	</h3>
</div>