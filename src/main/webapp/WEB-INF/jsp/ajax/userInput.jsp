<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>사용자 등록</title>
</head>
<body>
		<!-- <form method="get" action="/ajax/user/add" id="userForm">  -->
		
			<label>이름</label> <input type="text" name="name" id="nameInput">
			<label>생년월일</label> <input type="text" name="birthday" id="birthdayInput">
			<label>이메일</label> <input type="text" name="email" id="emailInput">
			<button type="button" id="saveBtn">저장</button>
			
		<!-- </form> -->
		
		
		<script>
			$(document).ready(function() {
				
				// submit 이벤트를 쓰지 않을 경우
				$("#saveBtn").on("click", function(){
					
					let name = $("#nameInput").val();
					let birthday = $("#birthdayInput").val();
					let email = $("#emailInput").val();
					
					if(name == ""){
						alert("이름을 입력하세요 ㅇㅂㅇ!");
						return;
					}
					
					if(birthday == ""){
						alert("생년월일을 입력하세요.");
						return;
					}
					
					if(email == ""){
						alert("이메일을 입력하세요.");
						return;
					}
					
					
					$.ajax({
						type:"get"
						, url:"/ajax/user/add"
						, data:{"name":name, "birthday":birthday, "email":email}
						, success:function(data) {
							//성공시 : {"result":"success"}
							//실패시 : {"result":"fail"}
							
							if(data.result == "success" ){
								// 성공시
								location.href = "/ajax/user/list";
							} else {
								alert("저장 실패");
							}
						}
						, error:function() {
							alert("저장 에러");
						}
					});
				
				
				
			})
			/* form태그의 submit 이벤트를 이용했을때의 코드	
			
			$("#userForm").on("submit", function() {
					let name = $("#nameInput").val();
					let birthday = $("#birthdayInput").val();
					let email = $("#emailInput").val();
					
					if(name == ""){
						alert("이름을 입력하세요 ㅇㅂㅇ!");
						return false;
					}
					
					if(birthday == ""){
						alert("생년월일을 입력하세요.");
						return false;
					}
					
					if(email == ""){
						alert("이메일을 입력하세요.");
						return false;
					}
					
				}); */
				
			})
			
		
		</script>
		
</body>
</html>