<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가장 최신 사용자 정보</title>
</head>
<body>

	<h1>${title}</h1>
	<table border="1">
		<tr>
			<th>이름</th>
			<td>${user.name}</td>
		</tr>
		
		<tr>
			<th>생년월일</th>
			<td>${user.yyyymmdd}</td>
		</tr>
		
		<tr>
			<th>자기소개</th>
			<td>${user.introduce}</td>
		</tr>
	
	
	</table>

</body>
</html>