<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="/mem/join" method="post">
	<a href="/">로고자리</a>
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="mem_id"></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="text" name="mem_pw"></td>
		</tr>
		<tr>
			<td>NAME</td>
			<td><input type="text" name="mem_name"></td>
		</tr>
		<tr>
			<td>address</td>
			<td><input type="text"  name="mem_ad"></td>
		</tr>
		<tr>
			<td>age</td>
			<td><input type="text"  name="mem_age"></td>
		</tr>
		<tr>
			<td>gender</td>
			<td><input type="text"  name="mem_gender"></td>
		</tr>
		<tr>
			<td>phone</td>
			<td><input type="text"  name="mem_cell_num"></td>
		</tr>
	</table>
	<button type=submit">가입하기</button>
</form>
</body>
</html>