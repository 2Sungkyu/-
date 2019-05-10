<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>    


<script type="text/javascript"
 src="/resources/smarteditor2/js/service/HuskyEZCreator.js"
 charset="utf-8"></script>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnWrite").click(function() {
		//스마트에디터 내용을 <textarea>에 적용하기
// 		submitContents($("#btnWrite"));
		
		$("form").submit();
	});
	
	$("#btnCancel").click(function() {
		history.go(-1);
	});
});
</script>

<style type="text/css">
#content {
	width: 100%;
}
</style>

<div class="container">

<h3>게시글 글쓰기</h3>
<hr>

<div>
<form action="/board/write" method="post">
<table class="table table-bordered">
<tr><td class="info">아이디</td><td>${id }</td></tr>
<tr><td class="info">닉네임</td><td>${nick }</td></tr>
<tr>
	<td class="info">제목</td>
	<td><input type="text" name="title" style="width:100%; " value="${view.title }"/></td>
</tr>
<tr><td class="info" colspan="2">본문</td></tr>
<tr><td colspan="2"><textarea id="content" name="content">${view.content }</textarea></td></tr>
</table>
</form>
</div>

<div class="text-center">	
	<button type="button" id="btnWrite" class="btn btn-primary">작성</button>
	<button type="button" id="btnCancel" class="btn btn-danger">취소</button>
</div>
</div>


<script type="text/javascript">
// 스마트에디터 스킨 적용
// var oEditors = [];
// nhn.husky.EZCreator.createInIFrame({
//     oAppRef: oEditors,
//     elPlaceHolder: "content", //<textarea>의 id를 입력
//     sSkinURI: "/resources/smarteditor2/SmartEditor2Skin.html",
//     fCreator: "createSEditor2",
//     htParams: {
//     	bUseToolbar: true, //툴바 사용여부
//     	bUseVerticalResizer: false, //입력창 크기 조절 바
//     	bUseModeChanger: false //모드 탭
//     }
// });


// <form>의 submit동작에 맞춰 스마트에디터에 작성한 내용을
//<textarea>의 내용으로 전송함 -> <form>태그의 값으로 적용
//  function submitContents(elClickedObj) {
//     oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
//     try {
//         elClickedObj.form.submit();

//     } catch(e) {}
// }
  </script>  





















    