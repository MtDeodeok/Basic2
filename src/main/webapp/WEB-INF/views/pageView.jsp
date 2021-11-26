<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/pageView.js"></script>
</head>
<body>
<form id="detailForm" method="post">
	<div id="contentsBox">
		<div id="titleDiv">
			<label>제  목 : </label><input type="text" id="title" name="title" readonly="readonly" value="${detail.title}">
		</div>
		<div id="contentDiv">
			<textarea id="contents" name="contents" readonly="readonly">${detail.contents}</textarea> 
		</div>
		<div id="writeDiv">
			<label>등록일 : </label><span>${detail.writeDate}</span>
		</div>
		<div id="modifiyDiv">
			<label>수정일 : </label><span>${detail.modifyDate}</span>
		</div>
		<div id="memberIdDiv">
			<label>작성자 : </label><span id="memberid">${detail.memberid}</span>
		</div>
	</div>
	<div>
	<c:if test="${memberID eq detail.memberid}">
		<input type="hidden" id="idx" name="idx" value="${detail.idx}">
		<input type="hidden" id="memberid" name="memberid" value="${memberID}">
		<div>
			<input type="button" onclick="btn1(this)" name="update" value="수정">
			<input type="button" onclick="btn2(this)" style="display: none;" name="updateok" value="확인">
			<input type="button" onclick="btn3(this)" name="delete" value="삭제">
		</div>
	</c:if>
	<input type="button" onclick="location.href='/board'" value="취소">
	</div>
</form>	
	<div>
	<jsp:include page="comment.jsp" flush="false"/>
	</div>

</body>
</html>