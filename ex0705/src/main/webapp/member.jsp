<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>member</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			function formCheck() {
				alert("테스트");
			if($("#name").val()== "" ) {
					alert("이름이 입력되지 않았습니다. 입력해주세요");
					$("#name").focus();
					return false;
				}
				
			
			return document.form.submit();;
			}
		
		</script>
		
	</head>
	<body>
	
	<h3>멤버정보</h3>
	<form action="./formOk.jsp" method="post" name="form"> 
	
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" id=name name=name> </td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" id=pw name=pw> </td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" id=tel name=tel> </td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
			<input type="radio" id=male name=gender value="male">
			<label for=male>남자</label>
			<input type="radio" id=male name=gender value="female">
			<label for=female>여자</label>
			</td>
		</tr>
		<tr>
			<td>주소1</td>
			<td><input type="text" id=add1 name=add1> </td>
		</tr>
		<tr>
			<td>주소2</td>
			<td><input type="text" id=add2 name=add2> </td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
			<input type="checkbox" id=swim name=hobby value="swim">
			<label for="swim">수영</label>
			<input type="checkbox" id=golf name=hobby value="golf">
			<label for="golf">골프</label>
			<input type="checkbox" id=read name=hobby value="read">
			<label for="read">독서</label>
			<input type="checkbox" id=run name=hobby value="run">
			<label for="swim">조깅</label>
			
			
			 </td>
		</tr>
		<tr>
			<td>유입경로</td>
			<td><select name="rink">
			<option value="internet">인터넷</option>
			<option value="blog">블로그</option>
			<option value="new">뉴스</option>
			<option value="yutu">유투브</option>
			
			</select>
			</td>
		</tr>
	
	
	</table>
	<input type="button" onclick="formCheck()" value="전송" >
	<input type="reset"  value="초기화" >
	
	
	
	
	
	</form>
	
	
	</body>
</html>