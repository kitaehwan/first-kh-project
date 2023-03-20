<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		if(f.writer.value == '') {
			alert('글쓴이를 입력해주세요');
			f.writer.focus();
			return false;
		}
		if(f.title.value == '') {
			alert('글제목을 입력해주세요');
			f.title.focus();
			return false;
		}
		if(f.cont.value == '') {
			alert('글내용을 입력해주세요');
			f.cont.focus();
			return false;
		}
		if(f.pwd.value == '') {
			alert('비밀번호를 입력해주세요');
			f.pwd.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<div align="center">
	 	<hr width="50%" color="gray">
			<h3> 전체 목록</h3>
	 	<hr width="50%" color="gray">
	 	<br>
	 	
	 	<form method="post" name="f" action="<%=request.getContextPath() %>/write.do" onsubmit="return check()">
	 		<table border="1" cellspacing="0" width="450"> 
	 		<tr>
	 			<th>글쓴이</th>
	 			<td><input type="text" name="writer"></td>
	 		</tr>
	 		<tr>
	 			<th>글제목</th>
	 			<td><input type="text" name="title"></td>
	 		</tr>
	 		<tr>
	 			<th>글내용</th>
	 			<td>
					<textarea rows="7" cols="25" name="cont"></textarea>
				</td>
	 		</tr>
	 		<tr>
	 			<th>비밀번호</th>
	 			<td><input type="password" name="pwd"></td>
	 		</tr>
	 	</table>
	 	
	 	<br>
	 
	 	<input type="submit" value="완료">
	 	<input type="reset" value="리셋">
	 	</form>
	</div>
</body>
</html>