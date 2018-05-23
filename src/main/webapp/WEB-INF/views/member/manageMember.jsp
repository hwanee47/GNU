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


	<div class="container" id="div-container-manageUser"
		style="width: 100%">
		<div class="row">
			<button class="btn btn-sm btn-primary btn-block" type="submit"
				id="btn-search">
				<span>조회</span>
			</button>
			<center>
				<h2>
					<b>USER LIST</b>
				</h2>
			</center>
			<div class="col-lg-12">
				<input type="search" class="form-control" id="input-search"
					placeholder="Search Attendees...">
			</div>
			<br>
			<form name="form" id="form" method="post">

				<div class="searchable-container">
														
					
					<table style="width: 100%">

						<c:forEach var="memberList" items="${memberList}">
							<tr>
								
								<td>
									<div class="items col-xs-12 col-sm-6 col-md-6 col-lg-6 clearfix">
										<div class="info-block block-info clearfix">
											<div class="square-box pull-left">
												<span class="glyphicon glyphicon-user glyphicon-lg"></span>
											</div>
											
											<h5 id="id">아이디 : ${memberList.ID}</h5>
											<button type="button" class="btn btn-default btn-sm" style="float: right; margin-top: -10px;" onclick="deleteMember(this)" name="${memberList.ID}">
												<span class="glyphicon glyphicon-trash"></span>
											</button>

											<h5>이&nbsp&nbsp&nbsp&nbsp름 : ${memberList.NAME}</h5>

											권&nbsp&nbsp&nbsp&nbsp한 :
											<c:if test="${memberList.AUTH eq 'ROLE_ADMIN'}">관리자</c:if>
											<c:if test="${memberList.AUTH eq 'ROLE_USER'}">일반</c:if>
											
										</div>
									</div>
										
								</td>
								
							</tr>
						</c:forEach>

					</table>
				</div>
			</form>

		</div>
	</div>

	<script>
		$(document).ready(function() {

		});

		$('#btn-search').click(function() {
			fn_SearchMemberList();
		});

		function fn_SearchMemberList(){
			$('#form').attr("action","${pageContext.request.contextPath }/home/searchMemberList.do").submit();
		}
		
		$(function() {
			$('#input-search').on('keyup', function() {
				var rex = new RegExp($(this).val(), 'i');
				$('.searchable-container .items').hide();
				$('.searchable-container .items').filter(function() {
					return rex.test($(this).text());
				}).show();
			});
		});

		$("#memberdelete").click(function() {
			//alert($(this).parent().eq(0).text());
			//$('#form').attr("action","${pageContext.request.contextPath }/home/deleteMember.do").submit();
		});
		
		function deleteMember(obj){
			
			if(!confirm("삭제하시겠습니까?")) return;
			
			var id=obj.name;
			
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath }/home/deleteMember.do?id="+id,
				success:function(result){
					alert("삭제되었습니다.");
					fn_SearchMemberList();
				}
			});
		}
	</script>
</body>
</html>