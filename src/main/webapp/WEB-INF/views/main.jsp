<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="container">
   <div class="row">
      <div class="span5">
      	<form class="form-status">
      		<button class="btn btn-sm btn-primary btn-block" type="submit" id="btn-search"><span>��ȸ</span></button>
            <table class="table table-striped table-condensed">
                  <thead>
                       <h1><strong><div align="center">405�� ������Ȳ</div><strong></strong></h1>
                        <span class="label label-success" style="float:right;">��������</span><br>
                        <span class="label label-danger" style="float:right;">��������</span><br>
                  
              </thead>
              
             <c:forEach var="groupList" items="${groupList}">
	              <tr>
	              	<th>${groupList.DONG}��</th>
	              	<th>${groupList.FLOOR}��</th>
	              </tr>
	              
              	  <c:forEach var="nowStatusList" items="${nowStatusList}">
              	  	<c:if test="${groupList.DONG eq nowStatusList.DONG && groupList.FLOOR eq nowStatusList.FLOOR}">
              	  	<tbody>
              	  		<tr>
              	  			<td>${nowStatusList.PLACE}</td>
              	  			<td>${nowStatusList.GENDER}</td>
              	  			<td>�Ա�</td>
              	  			<td>
								<c:if test="${nowStatusList.PART1 eq 'N'}">
								   <span class="label label-danger">ĭ1</span>
								</c:if>
								<c:if test="${nowStatusList.PART1 eq 'Y'}">
								   <span class="label label-success">ĭ1</span>
								</c:if>
							</td>
              	  			<td>
								<c:if test="${nowStatusList.PART2 eq 'N'}">
								   <span class="label label-danger">ĭ1</span>
								</c:if>
								<c:if test="${nowStatusList.PART2 eq 'Y'}">
								   <span class="label label-success">ĭ1</span>
								</c:if>
							</td>
              	  			<td>
								<c:if test="${nowStatusList.PART3 eq 'N'}">
								   <span class="label label-danger">ĭ1</span>
								</c:if>
								<c:if test="${nowStatusList.PART3 eq 'Y'}">
								   <span class="label label-success">ĭ1</span>
								</c:if>
							</td>
              	  			
              	  		</tr>
              	  		
              	  	</tbody>
              	  	</c:if>	
              	  </c:forEach>
              	  
              </c:forEach>
              
             <!--  <tr>
                  <th>405��</th>
                  <th>1��</th>                                       
              </tr>
              <tbody>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>
                    </td>                                       
                </tr>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-danger">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                        
                </tr>
                <tr>
                    <td>����</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-success">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                   
                </tr>
                <br>
                <thead>
                  <tr>
                      <th><br>405��</th>
                      <th>2��</th>                                       
                  </tr>
              </thead>   
              <tbody>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>     
                    </td>                                       
                </tr>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-danger">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                    
                </tr>
                <tr>
                    <td>����</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-success">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                       
                </tr>
                <thead>
                  <tr>
                      <th><br>405��</th>
                      <th>3��</th>                                       
                  </tr>
              </thead>   
              <tbody>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>
                    </td>                                       
                </tr>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-danger">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                       
                </tr>
                <tr>
                    <td>����</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-success">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                       
                </tr>
                <thead>
                  <tr>
                      <th><br>405��</th>
                      <th>4��</th>                                       
                  </tr>
              </thead>   
              <tbody>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>
                    </td>                                       
                </tr>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-danger">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                      
                </tr>
                <tr>
                    <td>����</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                        
                </tr>
                <thead>
                  <tr>
                      <th><br>405��</th>
                      <th>5��</th>                                       
                  </tr>
              </thead>   
              <tbody>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-danger">ĭ1</span>
                    <td><span class="label label-danger">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>
                    </td>                                       
                </tr>
                <tr>
                    <td>�߾�</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-success">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                      
                </tr>
                <tr>
                    <td>����</td>
                    <td>����</td>
                    <td>�Ա�</td>
                    <td><span class="label label-success">ĭ1</span>
                    <td><span class="label label-success">ĭ2</span>
                    <td><span class="label label-success">ĭ3</span>                                      
                </tr>                                             
              </tbody> -->
            </table>
            </form>
            </div>
   </div>
</div>
<script>
$(document).ready(function() {
	//$('.form-status').attr("action","${pageContext.request.contextPath }/home/searchNowStatus.do").submit();
});

$('#btn-search').click(function(){
	$('.form-status').attr("action","${pageContext.request.contextPath }/home/searchNowStatus.do").submit();
});
</script>
</body>
</html>