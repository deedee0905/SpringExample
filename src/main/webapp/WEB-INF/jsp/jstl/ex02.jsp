<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 라이브러리2</title>
</head>
<body>

	<h2>조건 : if else</h2>
		<%-- 몸무게가 70이하면 치킨, 80이하면 샐러드, 그게 아니면 굶어 --%>
		<c:choose>
			<c:when test="${weight <= 70}">
				<h4>치킨먹자</h4>
			</c:when>
			
			<c:when test="${weight <= 80 }">
				<h4>샐러드 먹자</h4>
			</c:when>
			
			<c:otherwise>
				<h4>그게 아니면</h4>
			</c:otherwise>
		</c:choose>	
		
		<hr>
		
		<h2>반복문</h2>
			<%-- for(int i = 0; i <5; i++) --%>
			<c:forEach var="i" begin="0" end="4" step="1">
				${i }
			</c:forEach>
			
			<hr>
			
			<%-- for(String fruit " fruitList) --%>
			<c:forEach var="fruit" items="${fruitList }" varStatus="status">
				<h4>${fruit } :::: ${status.count } ${status.index } ${status.first } ${status.last }</h4>
			
			</c:forEach>
			
			<hr>
			
			<%-- List<Map<String, Object>> userList --%>
			<%-- for(<Map<String, Object>> user : userList) --%>
			<c:forEach var="user" items="${userList }" varStatus="status">
				<h3>${status.count }번째 사용자 정보</h3>
				<h4>이름 : ${user.name }</h4>
				<h4>나이 : ${user.age }</h4>
				<h4>취미 : ${user.hobby }</h4>
			</c:forEach>
			
			<table border="1">
				<thead>
					<tr>
						<th>제목</th>
						<th>작가</th>
						<th>출판사</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="book" items="${books }"> 
						<tr>
							<td>${book.title }</td>
							<td>${book.author }</td>
							<td>${book.publisher }</td>
						</tr>
					</c:forEach>
					
				</tbody>
			
			
			
			</table>
		
		

</body>
</html>