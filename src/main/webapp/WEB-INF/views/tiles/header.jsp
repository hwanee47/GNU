<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width,  initial-scale=1, minimum-scale=1">
<title>GNU 스마트휴지걸이(6조)</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>

<form name="selectOne" action="#LINK">
	<input name="link" type="hidden" />
</form>

<body>
	<div id="test">
	<nav class="navbar navbar-m2p sidebar" role="navigation" id="nav-menu">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-sidebar-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"
					onclick="fn_main_headPageMove('main')"> <b>GNU 스마트휴지걸이</b>
				</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-sidebar-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li class="separator">Content</li>
					<!-- Page -->
					<li class=""><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <span
							class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">description</span>
							Pages <span class="caret"></span>
					</a>
						<ul class="dropdown-menu forAnimate" role="menu">
							<li><a href="#"><i class="material-icons">add</i> Add</a></li>
							<li><a href="#"><i class="material-icons">sort</i> List</a></li>
						</ul></li>
					<!-- Tags -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <span style="font-size: 16px;"
							class="pull-right hidden-xs showopacity glyphicon material-icons">label</span>
							Tags <span class="caret"></span>
					</a>
						<ul class="dropdown-menu forAnimate" role="menu">
							<li><a href="#"> <i class="material-icons">add</i> Add
							</a></li>
							<li><a href="#"> <i class="material-icons">sort</i> List
							</a></li>
						</ul></li>
					<li class="separator">System</li>
					<c:if test="${member.auth eq 'ADMIN'}">
						<!-- Users -->
						<li class="#"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"
							onclick="fn_main_headPageMove('member/manageUser')"> <span
								class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">group</span>
								Users 
						</a></li>
					</c:if>
					<!-- Exit -->
					<li><a
						href="${pageContext.request.contextPath}/home/logout.do"> <span
							class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">exit_to_app</span>
							Logout
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	</div>



	<script>
	function fn_main_headPageMove(url){
	    document.selectOne.link.value=url;
	    document.selectOne.action = "<c:url value='/com/pageLink.do'/>";
	    //alert(document.selectOne.action);
	    document.selectOne.submit();
	}

	function htmlbodyHeightUpdate() {
	    var height3 = $(window).height();
	    var height1 = $('.nav').height() + 50;
	    height2 = $('.container-main').height();
	    if (height2 > height3) {
	        $('html').height(Math.max(height1, height3, height2) + 10);
	        $('body').height(Math.max(height1, height3, height2) + 10);
	    } else
	    {
	        $('html').height(Math.max(height1, height3, height2));
	        $('body').height(Math.max(height1, height3, height2));
	    }
	
	}
	
	$(document).ready(function () {
	    htmlbodyHeightUpdate();
	    $(window).resize(function () {
	        htmlbodyHeightUpdate();
	    });
	    $(window).scroll(function () {
	        height2 = $('.container-main').height();
	        htmlbodyHeightUpdate();
	    });
	    
	    
	    var Offset = $( '#test' ).offset();
        $( window ).scroll( function() {
	        if ( $( document ).scrollTop() > Offset.top ) {
	        	$( '#test' ).addClass( 'Fixed' );
	        }
	        else {
	        	$( '#test' ).removeClass( 'Fixed' );
	        }
        });
	});
</script>
</body>
</html>
