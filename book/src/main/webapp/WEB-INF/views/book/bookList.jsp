<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.box{
	width:50%;
	float:left;
	display:inline-block;
	height : 500px;
}
.footer{
	display:flow-root;
}
.page{
	display:block;
}
.button{
float:right;
}

.information{
 display:contents;
}
.right{
	width:50%;	
	height:80%;
	float:right;
	padding-top: 150px;
    text-align: center;
}
.left{
	width:50%;
	height:80%;
	float: left;
    display: inline-block;
}
.img {
    width: 300px;
    height: 400px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
<div class="main">
		<span class="page">
			<c:if test="${pgh.prev}">
			<a href="/book/search?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}&keyword=${pgh.pgvo.keyword}">prev</a>
			</c:if>
			<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
				<a href="/book/search?pageNo=${i}&qty=${pgh.pgvo.qty}&keyword=${pgh.pgvo.keyword}">${i} ｜ </a>
			</c:forEach>
			<c:if test="${pgh.next}">
			<a href="/book/search?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}&keyword=${pgh.pgvo.keyword}">next</a>
			</c:if>
		</span>
						<c:forEach items="${list}" var="book">
						<div class="box">
						
						<div class="left">
					
							<img class ="img" alt="아직없음" src="/resources/image/logo.jpg">
			
						</div>
						<div class="right">
							제목 : ${book.book_title}<br>		
							글쓴이 : ${book.book_writer}<br>
					   		가격 : ${book.book_price}<br>
							재고 : ${book.book_count}<br>
						</div>
							<a href="#" class="button"><button  class="btn btn-outline-success">장바구니에넣기</button><br></a>
							<a href="#" class="button"><button  class="btn btn-outline-success">바로구매</button><br></a>
						</div>	
					    </c:forEach>
		
</div>
<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>