<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="detailForm" method="post">
	<div id="contentsBox">
		<input type="hidden" name="idx" value="${detail.idx}">
		<div id="titleDiv">
			<label>제  목 : </label><input type="text" name="title" value="${detail.title}">
		</div>
		<div id="contentDiv">
			<textarea name="contents" readonly>${detail.contents}</textarea> 
		</div>
		<div id="writeDiv">
			<label>등록일 : </label><span>${detail.writeDate}</span>
		</div>
		<div id="modifiyDiv">
			<label>수정일 : </label><span>${detail.modifiyDate}</span>
		</div>
		<div id="memberIdDiv">
			<label>작성자 : </label><span id="memberid">${detail.memberid}</span>
		</div>
	</div>
	<div>
	<c:if test="${memberID eq detail.memberid}">
		<div>
			<input type="button" onclick="btn1(this)" name="update" value="수정">
			<input type="button" onclick="btn2(this)" name="delete" value="삭제">
		</div>
	</c:if>
	<input type="button" onclick="location.href='/board'" value="취소">
	</div>
	
	<div>
	<jsp:include page="comment.jsp" flush="false"/>
	</div>
</form>
</body>
</html>