<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생성적처리</title>
</head>
<body>
<br>
<br>
<div align="center">
<font size=4>학생성적처리</font><br><br>
<form action="form_ok.jsp">
<table border=1>
	<tr>
		<td>번호</td>
		<td><input type="text" name="custno" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="custname" /></td>
	</tr>
	<tr>
		<td>국어</td>
		<td><input type="text" name="kor" /></td>
	</tr>
	<tr>
		<td>영어</td>
		<td> <input type="text" name="eng" /></td>
	</tr>
    <tr><td colspan=2 align="center"><input type="submit" value="저장하기" /></td></tr>
</table>
</form>
</div>
</body>
</html>