<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Study Meet :: easily find a study meeting.</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap/bootstrapTemplete.css" rel="stylesheet">
    <link href="/css/commoncss.css" rel="stylesheet">

    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .jumbotron .btn {
            padding: 5px 10px;
        }
    </style>
</head>

<body>

<div class="container">
    <%-- <div class="header">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation" class="active"><a href="/">Home</a></li>
                <li role="presentation"><a href="/signin">SignIn</a></li>
                <li role="presentation"><a href="/signup">SignUp</a></li>
            </ul>
        </nav>
        <h3 class="text-muted"><a href="/" style="text-decoration: none;">StudyMeet</a></h3>
    </div> --%>
    
    <jsp:include page="common/header.jsp"></jsp:include>
    
    <div class="jumbotron">
        <div id="category-group-container">
            <!-- 검색어 입려 후 엔터키 -> #검색어 로 변환되어 말풍선되어 이곳에 모임 -->
            <button type="button" class="btn btn-primary btn-sm">#대전</button>
            <button type="button" class="btn btn-secondary btn-sm">#java</button>
            <button type="button" class="btn btn-success btn-sm">#javascript</button>
            <button type="button" class="btn btn-danger btn-sm">#평일</button>
            <button type="button" class="btn btn-warning btn-sm">#초급</button>
            <button type="button" class="btn btn-info btn-sm">#웹개발자</button>
        </div>
        <div class="container">
            <input class="form-control form-control-lg" type="text" placeholder="원하는 검색어를 입력해주세요">
        </div>
    </div>

    <div class="list-group">
        <a href="/meetingPost/meetingPostRetrieve" class="list-group-item list-group-item-action flex-column align-items-start active">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">Click me!! 대전 자바 스터디 모집합니다. (태그 있으면 좋겠다..)</h5>
                <small>2018-05-01 13:30</small>
            </div>
            <p class="mb-1">대전에서 쓸쓸하게 혼자서 자바 공부하시는 분들 안녕하세요.</p>
        </a>
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">토익 500점 목표 스터디</h5>
                <small class="text-muted">2018-05-01 11:31</small>
            </div>
            <p class="mb-1">i want find toeic stydy meeting. in Soeul</p>
        </a>
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">인묵님과 함께 하는 라이프리?</h5>
                <small class="text-muted">2018-04-29 19:11</small>
            </div>
            <p class="mb-1">열심히해보아요.........</p>
        </a>
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">토익 500점 목표 스터디</h5>
                <small class="text-muted">2018-05-01 11:31</small>
            </div>
            <p class="mb-1">i want find toeic stydy meeting. in Soeul</p>
        </a>
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">토익 500점 목표 스터디</h5>
                <small class="text-muted">2018-05-01 11:31</small>
            </div>
            <p class="mb-1">i want find toeic stydy meeting. in Soeul</p>
        </a>
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">토익 500점 목표 스터디</h5>
                <small class="text-muted">2018-05-01 11:31</small>
            </div>
            <p class="mb-1">i want find toeic stydy meeting. in Soeul</p>
        </a>
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">토익 500점 목표 스터디</h5>
                <small class="text-muted">2018-05-01 11:31</small>
            </div>
            <p class="mb-1">i want find toeic stydy meeting. in Soeul</p>
        </a>
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">토익 500점 목표 스터디</h5>
                <small class="text-muted">2018-05-01 11:31</small>
            </div>
            <p class="mb-1">i want find toeic stydy meeting. in Soeul</p>
        </a>
    </div>

    <nav aria-label="Page navigation example" style="text-align: center">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </nav>

    <footer class="footer">
        <p>&copy; Company 2018</p>
    </footer>

</div> <!-- /container -->
</body>

<script type="text/javascript">

    $(document).ready(function(){

    });

</script>

</html>
