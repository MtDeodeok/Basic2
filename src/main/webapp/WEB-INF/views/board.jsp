<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#boardList tr").on("click", function() {
		var tdArr = new Array();
		var tr = $(this)
		var td = tr.children();
		
		if(td.eq(0).text()!="번호"){
			var title = td.eq(1).text();
			var idx = td.eq(0).text();
	
			$('input[id=titleMark]').val(title);
			$('input[id=idxMark]').val(idx);
			$("#detail").attr("action", "pageView");
			$("#detail").submit();
		}
	});
});	
</script>
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
	
	<form method="post" id="detail">
		<input type="hidden" id="titleMark" name="title">
		<input type="hidden" id="idxMark" name="idx">
	</form>
	
	<div>
		<table id="boardList" border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
					<th>수정일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList}" var="board">
					<tr>
						<td>${board.idx}</td>
						<td>${board.title}</td>
						<td>${board.memberid}</td>
						<td>${board.writeDate}</td>
						<td>${board.modifyDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>