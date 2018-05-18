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
      		<button class="btn btn-sm btn-primary btn-block" type="submit" id="btn-search"><span>조회</span></button>
            <table class="table table-striped table-condensed">
                  <thead>
                       <h1><strong><div align="center">405동 휴지현황</div><strong></strong></h1>
                        <span class="label label-success" style="float:right;">휴지있음</span><br>
                        <span class="label label-danger" style="float:right;">휴지없음</span><br>
                  
              </thead>
              
             <c:forEach var="groupList" items="${groupList}">
	              <tr>
	              	<th>${groupList.DONG}동</th>
	              	<th>${groupList.FLOOR}층</th>
	              </tr>
	              
              	  <c:forEach var="nowStatusList" items="${nowStatusList}">
              	  	<c:if test="${groupList.DONG eq nowStatusList.DONG && groupList.FLOOR eq nowStatusList.FLOOR}">
              	  	<tbody>
              	  		<tr>
              	  			<td>${nowStatusList.PLACE}</td>
              	  			<td>${nowStatusList.GENDER}</td>
              	  			<td>입구</td>
              	  			<td>
								<c:if test="${nowStatusList.PART1 eq 'N'}">
								   <span class="label label-danger">칸1</span>
								</c:if>
								<c:if test="${nowStatusList.PART1 eq 'Y'}">
								   <span class="label label-success">칸1</span>
								</c:if>
							</td>
              	  			<td>
								<c:if test="${nowStatusList.PART2 eq 'N'}">
								   <span class="label label-danger">칸1</span>
								</c:if>
								<c:if test="${nowStatusList.PART2 eq 'Y'}">
								   <span class="label label-success">칸1</span>
								</c:if>
							</td>
              	  			<td>
								<c:if test="${nowStatusList.PART3 eq 'N'}">
								   <span class="label label-danger">칸1</span>
								</c:if>
								<c:if test="${nowStatusList.PART3 eq 'Y'}">
								   <span class="label label-success">칸1</span>
								</c:if>
							</td>
              	  			
              	  		</tr>
              	  		
              	  	</tbody>
              	  	</c:if>	
              	  </c:forEach>
              	  
              </c:forEach>
              
             <!--  <tr>
                  <th>405동</th>
                  <th>1층</th>                                       
              </tr>
              <tbody>
                <tr>
                    <td>중앙</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>
                    </td>                                       
                </tr>
                <tr>
                    <td>중앙</td>
                    <td>여자</td>
                    <td>입구</td>
                    <td><span class="label label-danger">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>                                        
                </tr>
                <tr>
                    <td>서편</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-success">칸2</span>
                    <td><span class="label label-success">칸3</span>                                   
                </tr>
                <br>
                <thead>
                  <tr>
                      <th><br>405동</th>
                      <th>2층</th>                                       
                  </tr>
              </thead>   
              <tbody>
                <tr>
                    <td>중앙</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>     
                    </td>                                       
                </tr>
                <tr>
                    <td>중앙</td>
                    <td>여자</td>
                    <td>입구</td>
                    <td><span class="label label-danger">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>                                    
                </tr>
                <tr>
                    <td>서편</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-success">칸2</span>
                    <td><span class="label label-success">칸3</span>                                       
                </tr>
                <thead>
                  <tr>
                      <th><br>405동</th>
                      <th>3층</th>                                       
                  </tr>
              </thead>   
              <tbody>
                <tr>
                    <td>중앙</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>
                    </td>                                       
                </tr>
                <tr>
                    <td>중앙</td>
                    <td>여자</td>
                    <td>입구</td>
                    <td><span class="label label-danger">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>                                       
                </tr>
                <tr>
                    <td>서편</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-success">칸2</span>
                    <td><span class="label label-success">칸3</span>                                       
                </tr>
                <thead>
                  <tr>
                      <th><br>405동</th>
                      <th>4층</th>                                       
                  </tr>
              </thead>   
              <tbody>
                <tr>
                    <td>중앙</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>
                    </td>                                       
                </tr>
                <tr>
                    <td>중앙</td>
                    <td>여자</td>
                    <td>입구</td>
                    <td><span class="label label-danger">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>                                      
                </tr>
                <tr>
                    <td>서편</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>                                        
                </tr>
                <thead>
                  <tr>
                      <th><br>405동</th>
                      <th>5층</th>                                       
                  </tr>
              </thead>   
              <tbody>
                <tr>
                    <td>중앙</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-danger">칸1</span>
                    <td><span class="label label-danger">칸2</span>
                    <td><span class="label label-success">칸3</span>
                    </td>                                       
                </tr>
                <tr>
                    <td>중앙</td>
                    <td>여자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-success">칸2</span>
                    <td><span class="label label-success">칸3</span>                                      
                </tr>
                <tr>
                    <td>서편</td>
                    <td>남자</td>
                    <td>입구</td>
                    <td><span class="label label-success">칸1</span>
                    <td><span class="label label-success">칸2</span>
                    <td><span class="label label-success">칸3</span>                                      
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