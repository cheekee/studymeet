<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    <!-- content -->
    <form>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Title</label>
            <div class="col-sm-10">
                대전 자바 스터디 모집합니다.
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">StudyLeader</label>
            <div class="col-sm-10">
                hank song
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Content</label>
            <div class="col-sm-10">
                안녕하세요.<br/>
                창원에서 거주하고 있는 hank song입니다.<br/><br/>

                매주 월요일 창원 스라벅스에서 스터디 하실 예비 개발자분을 구합니다.<br/>
                자세한 일정은 첨부파일(구현한다면)이나 본문 아래에 기재하겠습니다.<br/><br/>

                참여하실 분은 로그인 후 Attend 버튼을 눌러주세요.<br/>
                이 스터디의 스터디원이 된다면 오른쪽 공간의 팀원별 채팅 서비스를 이용할 수 있습니다.<br/>
                당연히 제가 구현한다면 말이죠.<br/><br/>

                파이팅.
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">CurrentMember</label>
            <div class="col-sm-10">
                hank song, inM, someone (3/5)
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-12"  style="text-align: center">
                <button type="submit" class="btn btn-primary">Attend</button>
            </div>
        </div>
    </form>

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
