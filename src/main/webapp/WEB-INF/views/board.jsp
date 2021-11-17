<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

</head>
<body>
	게시판
	<div>
		<c:choose>
			<c:when test="${sessionScope.memberID eq null}">
			<p>Guest님 환영합니다.</p>
		</c:when>
			<c:otherwise>
				<p>${memberID}님 환영합니다.</p>
			</c:otherwise>
		</c:choose>
	</div>

	<div>
		<a href="/main">메인</a>
		<c:choose>
			<c:when test="${sessionScope.memberID eq null}">
				<a href="/login">Login</a>
			</c:when>
			<c:otherwise>
				<a href="/logout">LogOut</a>
				<a href="writeLoginCheck">글쓰기</a>
			</c:otherwise>
		</c:choose>
	</div>
	
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList}" var="board">
					<tr>
						<td>${board.idx}</td>
						<td>${board.title}</td>
						<td>${board.memberid}</td>
						<td>${board.writeDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>