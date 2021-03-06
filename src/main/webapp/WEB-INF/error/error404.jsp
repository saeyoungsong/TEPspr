<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Error 404</title>

   <meta name="keywords" content="">

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

	
    <!-- Css animations  -->
    <link href="<c:url value='/resources/bootstrap/uni/css/animate.css'/>" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="<c:url value='/resources/bootstrap/uni/css/style.red.css'/>" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="<c:url value='/resources/bootstrap/uni/css/custom.css'/>" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png" />
    <!-- owl carousel css -->

    <link href="<c:url value='/resources/bootstrap/uni/css/owl.carousel.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/bootstrap/uni/css/owl.theme.css'/>" rel="stylesheet">
</head>

<body>

    <div id="all">
    <%@ include file="/tiles/layout/uni_header.jsp" %>

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Error 404</h1>
                    </div>
                </div>
            </div>
        </div>
		
		<div id="content">
		    <div class="container">
		        <div class="col-sm-6 col-sm-offset-3" id="error-page">
		            <div class="box">
		                <h3>죄송합니다. <br>이 페이지는 더 이상 존재하지 않습니다.</h3>
		                <h4 class="text-muted">Error 404 - 페이지를 찾을수 없습니다.</h4>
		                <p class="buttons"><a href="<c:url value="/main"/>" class="btn btn-template-main"><i class="fa fa-home"></i> 홈으로</a>
		                </p>
		            </div>
		        </div>
		        <!-- /.col-sm-6 -->
		    </div>
		    <!-- /.container -->
		</div>
		<!-- /#content -->		
		
   	<%@ include file="/tiles/layout/uni_footer.jsp" %>		
    </div>
    <!-- /#all -->

    <!-- #### JAVASCRIPT FILES ### -->

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="<c:url value='/resources/bootstrap/uni/js/jquery-1.11.0.min.js'/>"><\/script>')
    </script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <script src="<c:url value='/resources/bootstrap/uni/js/jquery.cookie.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/waypoints.min.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/jquery.counterup.min.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/jquery.parallax-1.1.3.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/front.js'/>"></script>

    <!-- owl carousel -->
    <script src="<c:url value='/resources/bootstrap/uni/js/owl.carousel.min.js'/>"></script>

</body>

</html>