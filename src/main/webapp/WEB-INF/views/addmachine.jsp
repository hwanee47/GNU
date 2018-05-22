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
    <div class="center">
	    <button class="btn btn-sm btn-primary btn-block" type="submit" id="btn-search" style="float:left; width:45%;"><span>��ȸ</span></button>
	    <button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block" style="width:45%;">�� ��� ���</button>
    </div>
        <tr>
            <th>��� �̸�</th>
            <th>��</th>
            <th>��</th>
            <th>��ġ</th>
            <th>����</th>
            <th>ĭ</th>
            <th class="text-center">��� ���/����</th>
        </tr>
    </thead>
    		<c:forEach var="machineList" items="${machineList}">
    			<tr>
	                <td>${machineList.MACHINE_NAME}</td>
	                <td>${machineList.DONG}</td>
	                <td>${machineList.FLOOR}</td>
	                <td>${machineList.PLACE}</td>
	                <td>${machineList.GENDER}</td>
	                <td>${machineList.PART}</td>
	                <td class="text-center" ><a href="#" class="btn btn-danger btn-xs" ><span class="glyphicon glyphicon-remove"></span> ����</a></td>
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
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">��</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">�� ��� ���</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form class="form-register">
              <div class="form-group">
                <label for="Inputname">��� �̸�</label>
                <input type="text" class="form-control" id="Inputname" placeholder="Input name" name="machineName" value='<c:if test="${machine.machineName ne null}">${machine.machineName}</c:if>'/>
              </div>
              <div class="form-group">
                <label for="Inputlocation">��</label>
                <select class="form-control" name="dong"> 
                	<option selected>405</option> 
                </select>
                <%-- <input type="text" class="form-control" id="Inputlocation" placeholder="Input location" name="dong" value='<c:if test="${machine.dong ne null}">${machine.dong}</c:if>' /> --%>
              </div>
              <div class="form-group">
                <label for="Inputlocation">��</label>
                <select class="form-control" name="floor"> 
                	<option selected>1</option>
                	<option>2</option>
                	<option>3</option> 
                </select>
                <%-- <input type="text" class="form-control" id="Inputlocation" placeholder="Input location" name="floor" value='<c:if test="${machine.floor ne null}">${machine.floor}</c:if>' /> --%>
              </div>
              <div class="form-group">
                <label for="Inputlocation">��ġ</label>
                <select class="form-control" name="place"> 
                	<option selected>�߾�</option>
                	<option>����</option>
                </select>
                <%-- <input type="text" class="form-control" id="Inputlocation" placeholder="Input location" name="place" value='<c:if test="${machine.place ne null}">${machine.place}</c:if>' /> --%>
              </div>
              <div class="form-group">
                <label for="Inputlocation">����</label>
                <select class="form-control" name="gender"> 
                	<option selected>����</option>
                	<option>����</option>
                </select>
                <%-- <input type="text" class="form-control" id="Inputlocation" placeholder="Input location" name="gender" value='<c:if test="${machine.gender ne null}">${machine.gender}</c:if>' /> --%>
              </div>
              <div class="form-group">
                <label for="Inputlocation">ĭ</label>
                <select class="form-control" name="part"> 
                	<option selected>1</option>
                	<option>2</option>
                	<option>3</option>
                </select>
                <%-- <input type="text" class="form-control" id="Inputlocation" placeholder="Input location" name="part" value='<c:if test="${machine.part ne null}">${machine.part}</c:if>' /> --%>
              </div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
			<div class="btn-group" role="group">
					<button type="button" id="register" class="btn btn-default btn-hover-green" data-action="save" role="button">���</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">���</button>
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

});

$("#register").click(function(){
	$('.form-register').attr("action","${pageContext.request.contextPath }/home/addmachine.do").submit();
});

$("#btn-search").click(function(){
	fn_SearchMachineList();
});


function fn_SearchMachineList(){
	$('.form-register').attr("action","${pageContext.request.contextPath }/home/searchMachineList.do").submit();
}

$(".text-center").click(function(){
	
	if(!confirm("�����Ͻðڽ��ϱ�?")) return;
	
	var tr = $(this).parent();
	
	var machineName = tr.children().eq(0).text();
	
	$.ajax({
		type:"get",
		url:"${pageContext.request.contextPath }/home/deleteMachine.do?machineName="+machineName,
		success:function(result){
			alert("�����Ǿ����ϴ�.");
			fn_SearchMachineList();
		}
	});
	//$('.form-register').attr("action","${pageContext.request.contextPath }/home/deleteMachine.do?machineName="+machineName).submit();
});

</script>
</body>
</html>	