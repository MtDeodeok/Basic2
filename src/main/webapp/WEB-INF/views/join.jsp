<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/join" method="post">
		<div>
			<label for="id">ID</label> <input type="text" id="id" name="id">
		</div>
		<div>
			<label for="pw">Password</label> <input type="password" id="password" name="password">
		</div>
		<div>
			<label for="name">Name</label> <input type="text" id="name" name="name">
		</div>
		<div>
			<label for="phone">Phone</label> <input type="text" id="phone" name="phone">
		</div>
		<div>
			<button type="submit">회원가입</button>
			<button type="button" onclick="location.href='/login'">취소</button>
		</div>
	</form>
</body>
</html>