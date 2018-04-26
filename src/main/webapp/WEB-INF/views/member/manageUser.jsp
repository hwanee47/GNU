<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport"
	content="width=device-width,  initial-scale=1, minimum-scale=1">
	

</head>
<body>
	<div class="container" id="div-container-manageUser">
		<div class="row">
			<center><h2><b>USER LIST</b></h2></center>
			<div class="col-lg-12">
				<input type="search" class="form-control" id="input-search"
					placeholder="Search Attendees...">
			</div>
			<br>
			<div class="searchable-container">
				<div class="items col-xs-12 col-sm-6 col-md-6 col-lg-6 clearfix">
					<div class="info-block block-info clearfix">
						<div class="square-box pull-left">
							<span class="glyphicon glyphicon-user glyphicon-lg"></span>
						</div>
						<h5>카카오프렌즈</h5>
						<h4>Name: 라이언</h4>
						<p>Title: Manager</p>
						<span>Phone: 555-555-5555</span> <span>Email:
							sample@company.com</span>
					</div>
				</div>
				<div class="items col-xs-12 col-sm-12 col-md-6 col-lg-6 clearfix">
					<div class="info-block block-info clearfix">
						<div class="square-box pull-left">
							<span class="glyphicon glyphicon-user glyphicon-lg"></span>
						</div>
						<h5>카카오프렌즈</h5>
						<h4>Name: 네오양</h4>
						<p>Title: Manager</p>
						<span>Phone: 555-555-5555</span> <span>Email:
							sample@company.com</span>
					</div>
				</div>
				<div class="items col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="info-block block-info clearfix">
						<div class="square-box pull-left">
							<span class="glyphicon glyphicon-user glyphicon-lg"></span>
						</div>
						<h5>카카오프렌즈</h5>
						<h4>Name: 어피치</h4>
						<p>Title: Manager</p>
						<span>Phone: 555-555-5555</span> <span>Email:
							sample@company.com</span>
					</div>
				</div>
				<div class="items col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="info-block block-info clearfix">
						<div class="square-box pull-left">
							<span class="glyphicon glyphicon-user glyphicon-lg"></span>
						</div>
						<h5>카카오프렌즈</h5>
						<h4>Name: 튜브</h4>
						<p>Title: Manager</p>
						<span>Phone: 555-555-5555</span> <span>Email:
							sample@company.com</span>
					</div>
				</div>
				<div class="items col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="info-block block-info clearfix">
						<div class="square-box pull-left">
							<span class="glyphicon glyphicon-user glyphicon-lg"></span>
						</div>
						<h5>카카오프렌즈</h5>
						<h4>Name: 콘과 무지</h4>
						<p>Title: Manager</p>
						<span>Phone: 555-555-5555</span> <span>Email:
							sample@company.com</span>
					</div>
				</div>
				<div class="items col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="info-block block-info clearfix">
						<div class="square-box pull-left">
							<span class="glyphicon glyphicon-user glyphicon-lg"></span>
						</div>
						<h5>카카오프렌즈</h5>
						<h4>Name: 프로도</h4>
						<p>Title: Manager</p>
						<span>Phone: 555-555-5555</span> <span>Email:
							sample@company.com</span>
					</div>
				</div>
				<div class="items col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="info-block block-info clearfix">
						<div class="square-box pull-left">
							<span class="glyphicon glyphicon-user glyphicon-lg"></span>
						</div>
						<h5>카카오프렌즈</h5>
						<h4>Name: 제이지</h4>
						<p>Title: Manager</p>
						<span>Phone: 555-555-5555</span> <span>Email:
							sample@company.com</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<script>
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