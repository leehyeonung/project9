<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
<div class="main">
<form action="/board/modify" method="post">
번호:<input type="text" name="brd_num" value="${board.brd_num}" readonly><br>
제목:<input type="text" name="brd_title" value="${board.brd_title}" required><br>
작성자:<input type="text" name="brd_writer" value="${board.brd_writer}" readonly><br>
작성일:<input type="text" name="brd_regdate" value="${board.brd_regdate}" readonly ><br>
내용:<textarea rows="3" cols="30" name="brd_content" required>${board.brd_content}</textarea><br>
<button type="submit" class="btn btn-secondary">수정</button>
</form>
</div>
<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>