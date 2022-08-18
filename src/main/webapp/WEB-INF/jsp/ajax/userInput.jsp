<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>사용자 등록</title>
</head>
<body>
	<!--  <form method="get" action="/ajax/user/add" id="userForm">-->
		<label>이름</label> <input name="name" type="text" id="nameInput">
		<label>유저아이디</label> <input name="userId" type="text" id="userIdInput">
		<label>생년월일</label> <input name="birthday" type="text" id="birthdayInput">
		<label>이메일</label> <input name="email" type="text" id="emailInput">
		<button type="button" id="saveBtn">저장</button>
	<!--   </form> -->
	
	<script>
		$(document).ready(function() {
			
			$("#saveBtn").on("click", function(){
				
				let name = $("#nameInput").val();
				let userId = $("#userIdInput").val();
				let birthday = $("#birthdayInput").val();
				let email = $("#emailInput").val();
				
				if(name == ""){
					alert("이름을 입력하세요!!");
					return false;
				}
				
				if(userId == ""){
					alert("유저ID를 입력하세요!!");
					return false;
				}
				
				if(birthday == ""){
					alert("생년월일을 입력하세요!!");
					return false;
				}
				
				if(email == ""){
					alert("email을 입력하세요!!");
					return false;
				}
				
				$.ajax({
					type:"get"
					, url:"/ajax/user/add"
					, data:{"name":name, "userId":userId, "birthday":birthday, "email":email}
					, success:function(data) {
							alert("data");
					}
					
					, error:function() {
						alert("저장 에러");
						
					}
				});
				
			
			});
			
			
			
			//$("#saveBtn").on("click", function(){
				/* $("#userForm").on("submit", function(){
					
				let name = $("#nameInput").val();
				let userId = $("#userIdInput").val();
				let birthday = $("#birthdayInput").val();
				let email = $("#emailInput").val();
				
				if(name == ""){
					alert("이름을 입력하세요!!");
					return false;
				}
				
				if(userId == ""){
					alert("유저ID를 입력하세요!!");
					return false;
				}
				
				if(birthday == ""){
					alert("생년월일을 입력하세요!!");
					return false;
				}
				
				if(email == ""){
					alert("email을 입력하세요!!");
					return false;
				}
				
			});
				*/
			
		});
	</script>
	
</body>
</html>