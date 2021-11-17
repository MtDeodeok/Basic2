<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<form action="write" method="POST">
		<div>
			<label>제목:</label>
			<input type="text" id="title" name="title">
		</div>
		<div>
			<label>내용:</label>
			<textarea rows="5" id="contents" name="contents"></textarea>
		</div>
		<button type="submit">글쓰기</button>
		<button type="button" onclick="location.href='/board'">취소</button>
	</form>
</body>
</html>