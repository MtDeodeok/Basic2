<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="commentBox">
	<c:if test="${not empty memberID}">
		<form action="createComment" method="post">
			<input type="hidden" name="title" value="${detail.title}">
			<input type="hidden" name="boardidx" value="${detail.idx}">
			<input type="hidden" name="memberid" value="${session.memberID}">
			<input type="text" name="comment">
			<button type="submit">등록</button>
		</form>
	</c:if>
	</div>
	
	<div>
	<form id="commentForm" method="post">
		<c:forEach items="${boardComment}" var="comment" varStatus="status">
			<input type="hidden" id="id${status.count}" value="${comment.id}">
			<input type="hidden" name="index" value="${status.count}">
			<input type="hidden" id="memberid${status.count}" value="${comment.memberid}">
			<input type="text" id="comment${status.count}" value="${comment.comment}" readonly>
			<label>등록일 :</label> <span>${comment.writeDate}</span>
			<label>수정일 : </label><span>${comment.modifiyDate}</span>
			<label>작성자 : </label><span id="memberid${status.count}">${comment.memberid}</span>
			
			
			<c:if test="${memberID eq comment.memberid}">
				<input type="button" id="${status.count}" onclick="btnCommentUpdate(this)" name="commentUpdate" value="수정">
				<input type="button" id="${status.count+10}" onclick="btnCommentUpdateOk(this)" name="commentUpdateOk" style="display: none;" value="확인">
				<input type="button" id="${status.count}" onclick="btnCommentDelete(this)" name="commentDelete" value="삭제">
			</c:if>
		</c:forEach>
	</form>
	</div>
</body>
</html>