<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width,  initial-scale=1, minimum-scale=1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
    <div class="center"><button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block">새 기기 등록</button></div>
        <tr>
            <th>기기 이름</th>
            <th>기기 위치</th>
            <th class="text-center">기기 등록/삭제</th>
        </tr>
    </thead>
    		<c:forEach var="machineList" items="${machineList}">
    			<tr>
	                <td>${machineList.MACHINE_NAME}</td>
	                <td>${machineList.MACHINE_LOCATION}</td>
	                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
            	</tr>
    		</c:forEach>
            
            
    </table>
    </div>
</div>
<!-- pop up -->
<div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">새 기기 등록</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form class="form-register">
              <div class="form-group">
                <label for="Inputname">기기 이름</label>
                <input type="text" class="form-control" id="Inputname" placeholder="Input name" name="machineName" value='<c:if test="${machine.machineName ne null}">${machine.machineName}</c:if>'/>
              </div>
              <div class="form-group">
                <label for="Inputlocation">기기 위치</label>
                <input type="text" class="form-control" id="Inputlocation" placeholder="Input location" name="machineLocation" value='<c:if test="${machine.machineLocation ne null}">${machine.machineLocation}</c:if>' />
              </div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
			<div class="btn-group" role="group">
					<button type="button" id="register" class="btn btn-default btn-hover-green" data-action="save" role="button">등록</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">취소</button>
				</div>
			</div>
			</div>
			</form>
		</div>
	</div>
  </div>
</div>
<script>
$(document).ready(function() {
$("#register").click(function(){
	$('.form-register').attr("action","${pageContext.request.contextPath }/home/addmachine.do").submit();
});
});
</script>
</body>
</html>	