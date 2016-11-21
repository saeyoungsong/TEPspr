<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/common-header.jspf" %>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/board.write.css"/>">
<script src="<c:url value="/resources/js/ckeditor/ckeditor.js"/>"></script>
<script>
	window.onload = function() {
		CKEDITOR.replace('b_content');
	}
</script>
<script type="text/javascript">
function cmt_check() {
	var area = document.getElementById('cmt_content');

	if(!isLoginCheck("${sessionScope.session_m_email}")){
		return false;
	}
	
	if (!area.value) {
		alertify.error("댓글에 내용이 입력되지 않았습니다.");
		area.focus();
		return false;
	}
}
</script>
</head>
<body>
<div id="heading-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1>Mypage</h1>
            </div>
            <div class="col-md-5">
                <ul class="breadcrumb">
                    <li><a href="<c:url value="/main"/>">홈</a>
                    </li>
                    <li>상세보기</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="content">
	<div class="container features-buttons">
		<section>
			<div class="row">
<%@ include file="/WEB-INF/include/mypage2.jspf" %>
<div class="col-md-9">
<div class="heading">
	<h3>게시판</h3>
</div>
<table style="width:890px;" border="0" align=center>
<tr>
<td align="right"><input type="button" class="btn btn-template-main" value="목록보기" onclick="javascript:location.href('javascript:history.back();')"></td>
</tr>
</table>

<table class="table" align=center border="0">

<tr>
<td class="bw_title">종&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류</td>
<td  class="bw_content">
<c:if test="${data.B_KIND == 0 }">
일반
</c:if>
<c:if test="${data.B_KIND == 1 }">
스승찾기
</c:if>
<c:if test="${data.B_KIND == 2 }">
제자찾기
</c:if>
</td>
</tr>

<tr>
<td class="bw_title">카테고리</td>
<td  class="bw_content">
${data.B_CATEGORY}
</td>
</tr>

<tr>
<td class="bw_title">관심분야</td>
<td class="bw_content">
${data.B_FAV_FIELD}
</td>
</tr>

<tr>
<td class="bw_title">관심지역</td>
<td class="bw_content">
${data.B_FAV_AREA}
</td>
</tr>

<tr>
<td class="bw_title">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</td>
<td class="bw_content">${data.B_TITLE}</td>
</tr>

<tr>
<td colspan="2">
<textarea id="b_content" disabled="disabled">${data.B_CONTENT}</textarea>
</td>
</tr>

<c:if test="${sessionScope.session_m_no != null && sessionScope.session_m_no == data.M_NO }">
<tr>
<td colspan="2" align="right" style="border:none;">
<input type="button" class="btn btn-template-main" value="수정" id="modifyBtn">
<input type="button" class="btn btn-template-main" value="삭제" id="deleteBtn">
</td>
</tr>
</c:if>

<tr>
<td colspan="2">
<!-- 댓글 -->
<div style="font-weight: bold;font-size:small;padding-top: 10px">댓글(${fn:length(cmtList)})</div>
<hr class="om_detail_hr">

<c:forEach items="${cmtList }" var="cmt">
<hr />
<div style="padding-left:13px;font-weight: bold;font-family: sans-serif;font-size: x-small;">
${cmt.C_NAME }&nbsp;&nbsp;&nbsp;
<font style="font-size: xx-small;font-weight: lighter;"><fmt:formatDate value="${cmt.C_DATE}" pattern="yy/MM/dd hh:mm:ss"/></font>

<!-- 댓글 삭제 -->
<c:if test="${sessionScope.session_m_no != null && sessionScope.session_m_no == cmt.M_NO }">
	<span style="float:right;">
		<a href="#this" name="deleteCmtBtn">삭제</a>
		<input type="hidden" id="c_no" value="${cmt.C_NO}">
	</span>
</c:if>

</div>
<div style="padding-top:5px; padding-left:13px;font-family: monospace;font-size: x-small;">${cmt.C_CONTENT }</div>
</c:forEach>
<table class="table"><td></td></table>
</td>
</tr>

</table>
</div>
</div></section></div></div>
<%@ include file="/WEB-INF/include/common-body.jspf" %>
<script type="text/javascript">
    $(document).ready(function(){
        $("a[name='deleteCmtBtn']").on("click", function(e){ // 코멘트 삭제
            e.preventDefault();
            fn_deleteCmt($(this));
        });
        
        $("#modifyBtn").on("click", function(e){ // 수정버튼
            e.preventDefault();
            fn_boardModify();
        });
        
        $("#deleteBtn").on("click", function(e){ // 삭제버튼
            e.preventDefault();
            fn_boardDelete();
        });
        
        $("#backBoardListBtn").on("click",function(e){ // 목록버튼
        	e.preventDefault();
        	var url = "<c:url value='/board?currentPageNo=${currentPageNo}'/>";
        	$(location).attr("href",url);
        });
    });
    
    function fn_deleteCmt(obj){
        var cs = new CustomSubmit();
        cs.setUrl("<c:url value='/board/deletecmt' />");
        cs.addParam("c_no", obj.parent().find("#c_no").val());
        cs.addParam("b_no", '${data.B_NO }');
        cs.submit();
    }
    
	function fn_boardModify(){
		var cs = new CustomSubmit();
        cs.setUrl("<c:url value='/board/modify' />");
        cs.addParam("b_no", '${data.B_NO }');
        cs.submit("GET");
	}
	
	function fn_boardDelete(){
		var cs = new CustomSubmit();
        cs.setUrl("<c:url value='/board/delete' />");
        cs.addParam("b_no", '${data.B_NO }');
        cs.submit();
	}
</script> 

</body>
</html>