<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ page import = "java.sql.*" %>
<meta charset="UTF-8">
<body>
<% 
	String custno = request.getParameter("custno");
	String custname = request.getParameter("custname");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	int kor1 =Integer.parseInt(kor);
	int eng1 =Integer.parseInt(eng);
	int sum = kor1 + eng1;
	double avg = sum / 2.0;
	
	Class.forName ("oracle.jdbc.OracleDriver"); 
	Connection con
	= DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	
	String sql = "insert into t1026 (custno, custname, kor, eng)";
		   sql = sql + " values(?,?,?,?)";
		   
	PreparedStatement pstmt =  con.prepareStatement(sql);
	
	pstmt.setString(1, custno);
	pstmt.setString(2, custname);
	pstmt.setInt(3, kor1);
	pstmt.setInt(4, eng1);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	
	
%>
</body>
