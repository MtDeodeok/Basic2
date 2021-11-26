function btn1(data){
	var check = $("[name='update']").val();
	if(check=="수정"){
		$("[name='update']").css("display","none");
		$("[name='updateok']").css("display","block");
		$("[name='title']").prop("readonly",false);
		$("[name='contents']").prop("readonly",false);
	}
}
function btn2(data){
	var check = $("[name='updateok']").val();
	if(check=="확인"){
		$("[name='update']").css("display","block");
		$("[name='updateok']").css("display","none");
		$("[name='contents']").prop("readonly",true);
		$("[name='contents']").prop("readonly",true);
		$("#detailForm").attr("action", "updateContents");
		$("#detailForm").submit();
	}
}
function btn3(data){
	var check = $("[name='delete']").val();
	if(check2=="삭제") {
		$("#detailForm").attr("action", "deleteContents");
		$("#detailForm").submit();
	}
}