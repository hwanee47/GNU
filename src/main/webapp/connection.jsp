<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB Connection Test</title>
</head>
<body>
	<%
	String DB_URL = "jdbc:mysql://localhost:3306/test?useUnicode=true";
	String DB_USER = "root";
	String DB_PASSWORD= "1234";
	
	Connection conn;
	Statement stmt;
	
	try {
	 Class.forName("com.mysql.jdbc.Driver");
	 conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	 stmt = conn.createStatement();
	 String sql = "SELECT id as username, password as password, enabled as enabled FROM member WHERE id='admin'";
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 
	 ResultSet rs = pstmt.executeQuery();
	   //===================================================


	   while(rs.next()) {          // 쿼리 결과 보여주기
	       out.println(rs.getString(1));
	       out.println(rs.getString(2));
	       out.println(rs.getString(3));
	       out.println(rs.getString(4));
	   }
	 
	 conn.close();
	 out.println("MySql jdbc test: connect ok!!");
	} catch(Exception e) {
	 out.println(e.getMessage());
	}
	%>
</body>
</html>



