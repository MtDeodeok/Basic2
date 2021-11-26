<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="/login" method="post">
		<div>
			<label for="id">회원 ID</label> <input type="text" id="id" name="id"/>
		</div>
		<div>
			<label for="pw">비밀번호</label> <input type="password" id="password" name="password"/>
		</div>
		<div>
			<button type="button" onclick="location.href='/main'">메인</button>
			<button type="submit">로그인</button>
			<button type="button" onclick="location.href='/join'">회원가입</button>
		</div>
	</form>
</body>
</html>