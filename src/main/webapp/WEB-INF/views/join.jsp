<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		function readImage(input) {
			if(input.files && input.files[0]) {
				// FileReader 인스턴스 생성
				const reader = new FileReader()
				// 이미지가 로드가 된 경우
				reader.onload = e => {
					const previewImage = document.getElementById("viewimg")
					previewImage.src = e.target.result
				}
				// reader가 이미지 읽도록 하기
				reader.readAsDataURL(input.files[0])
			}
		}
		// input file에 change 이벤트 부여
		const inputImage = document.getElementsByClassName("profileimg")
		inputImage.addEventListener("change", e => {
			readImage(e.target)
		})
</script>
</head>
<body>
	<form action="/join" method="post"enctype="multipart/form-data">
		<div class="profile-img">
			<label for="profileimg">Profile Image</label>
			<img src="https://via.placeholder.com/64x64.png" id="viewimg" alt="프로필 이미지 미리보기" />
			<input type="file" name="profileimg" id="profileimg" onchange="readImage(this)">
		</div>
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