<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width,  initial-scale=1, minimum-scale=1">
	

</head>
<body>
	

	<div class="container" id="div-container-manageUser" style="width:100%">
		<div class="row">
			<button class="btn btn-sm btn-primary btn-block" type="submit" id="btn-search"><span>조회</span></button>
			<center><h2><b>USER LIST</b></h2></center>
			<div class="col-lg-12">
				<input type="search" class="form-control" id="input-search"
					placeholder="Search Attendees...">
			</div>
			<br>
			<form name="form" id="form" method="post">
				<div class="searchable-container">
					<c:forEach var="memberList" items="${memberList}">
						<div class="items col-xs-12 col-sm-6 col-md-6 col-lg-6 clearfix">
							<div class="info-block block-info clearfix">
								<div class="square-box pull-left">
									<span class="glyphicon glyphicon-user glyphicon-lg"></span>
								</div>
								<h5>
								아이디 : ${memberList.ID}
								<button type="button" class="btn btn-default btn-sm" style="float:right; margin-top:-10px;">
						          <span class="glyphicon glyphicon-trash"></span> 
						        </button>
								</h5>
								<h5>
								이&nbsp&nbsp&nbsp&nbsp름 : ${memberList.NAME}
								<button type="button" class="btn btn-default btn-sm" style="float:right; margin-top:-10px;">
						          <span class="glyphicon glyphicon-pencil"></span>
						        </button>
								</h5>
								
								권&nbsp&nbsp&nbsp&nbsp한 : <c:if test="${memberList.AUTH eq 'ROLE_ADMIN'}">관리자</c:if><c:if test="${memberList.AUTH eq 'ROLE_USER'}">일반</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
			</form>
			
		</div>
	</div>
	
<script> 
	$(document).ready(function() {
		
		
	});
	
	
	$('#btn-search').click(function(){
		$('#form').attr("action","${pageContext.request.contextPath }/home/searchMemberList.do").submit();
	});

	$(function() {    
	    $('#input-search').on('keyup', function() {
	      var rex = new RegExp($(this).val(), 'i');
	        $('.searchable-container .items').hide();
	        $('.searchable-container .items').filter(function() {
	            return rex.test($(this).text());
	        }).show();
	    });
	});
</script>	
</body>
</html>