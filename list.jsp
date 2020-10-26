<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ page import = "java.sql.*" %>
<meta charset="UTF-8">
<body>
<% 
	Class.forName ("oracle.jdbc.OracleDriver"); 
	Connection con
	= DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String sql = "select * from t1026";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
	
%>
	<%=rs.getString("custno") %>
	<%=rs.getString("custname") %>
	<%=rs.getString("kor") %>
	<%=rs.getString("eng") %><br>
	
<%
	}
%>
	
	
</body>