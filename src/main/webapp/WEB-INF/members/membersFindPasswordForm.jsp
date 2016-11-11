<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/common-header.jspf"%>
<script type="text/javascript">
	function validation2() {
		if (document.findPassword.m_email.value == "") {
			alertify.error("아이디를 입력해주세요.");
			document.findPassword.m_email.focus();
			return false;
		}
		if (document.findPassword.m_name.value == "") {
			alertify.error("이름을 입력해주세요.");
			document.findPassword.m_name.focus();
			return false;
		}
		if (document.findPassword.m_phone.value == "") {
			alertify.error("핸드폰번호를 입력해주세요");
			document.findPassword.m_phone.focus();
			return false;
		}
	}
</script>
<style type="text/css">
body.find_pw_body {
	font-family: sans-serif;
}
</style>
</head>

<body>

	<form action='<c:url value="/members/find/password"/>' name="findPassword" method="post" onsubmit="return validation2();">

		<table align="center" width="350" border="0" cellspacing="0" cellpadding="0">

			<tr height="25">
				<td bgcolor="red" align="left" colspan="1" width="10"></td>
				<td align="left" colspan="3">
					<strong>&nbsp;&nbsp;비밀번호 바꾸기</strong>
				</td>
			</tr>

		</table>

		<br>

		<table align="center" width="350" border="0" cellspacing="0" cellpadding="0">

			<tr bgcolor="red">
				<td height="1" colspan="2"></td>
			</tr>

			<tr height="30">
				<td align="center" bgcolor="#ffe9e9" width="200">
					<font size="2"><strong>이메일</strong></font>
				</td>
				<td width="165">
					&nbsp;&nbsp;
					<input type="text" name="m_email" maxlength="20" />
				</td>
			</tr>

			<tr bgcolor="red">
				<td height="2" colspan="2"></td>
			</tr>

			<tr height="30">
				<td align="center" bgcolor="#ffe9e9" width="100">
					<font size="2"><strong>이름</strong></font>
				</td>
				<td width="165">
					&nbsp;&nbsp;
					<input type="text" name="m_name" maxlength="20" />
				</td>
			</tr>

			<tr bgcolor="red">
				<td height="1" colspan="2"></td>
			</tr>

			<tr height="30">
				<td align="center" bgcolor="#ffe9e9" width="100">
					<font size="2"> <strong>핸드폰 번호</strong>
					</font>
				</td>
				<td width="165">
					&nbsp;&nbsp;
					<input type="text" name="m_phone" maxlength="20" />
				</td>
			</tr>

			<tr bgcolor="red">
				<td height="1" colspan="2"></td>
			</tr>

			<tr height="10">
				<td></td>
			</tr>

			<tr height="15">
				<td></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="찾기" />
				</td>
			</tr>
		</table>
	</form>

</body>
</html>


