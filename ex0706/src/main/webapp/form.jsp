<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<style type="text/css">
			table,tr,td {border: 1px solid black; border-collapse: collapse; }
		</style>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			function formCheck() {
				alert("테스트");
				if($("#id").val()==""){
					alert("아이디가 입력되지 않았습니다. 입력해주세요");
					$("#id").focus();
					return false;
				}//아이디 if1
				if($("#id").val().length<3){
					alert("3자리 이상 입력해주세요");
					$("#id").focus();
					return false;
				}//아이디 if2
				if($("#pw1").val() != $("#pw2").val()){
					alert("비밀번호가 틀렸습니다.");
					return false;
				}
				
				
					return document.form.submit();
			}
		
		</script>
		
	</head>
	<body>
	<form action="./formOk.jsp" method="post" name="form">
	
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="id" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="pw1" name="pw1"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" id="pw2" name="pw2"></td>
			</tr>
			<tr>
				<td>소식지 수신여부</td>
				<td>
					<input type="radio" id="Tnew" name="Tnew" value="수신">
						<label for="Tok">수신</label>
					<input type="radio" id="Tnew" name="Tnew" value="미수신">
						<label for="Tno">미수신</label>
				</td>
			</tr>	
		</table><br>
	
		<table>
			<tr>
				<td>관심연령</td>
				<td>
					<select name="age">
						<option value="none">선택안함</option>
						<option value="10">10대</option>
						<option value="20">20대</option>
						<option value="30">30대</option>
					</select>
				</td>
				<td>성별</td>
				<td>
					<input type="radio" id=gunchecked name=gender value="선택안함">
						<label for="gunchecked">선택안함</label>
					<input type="radio" id=male name=gender value="남자">
						<label for="male">남자</label>
					<input type="radio" id=female name=gender value="여자">
						<label for="female">여자</label>
				</td>
			</tr>
			<tr>
				<td>결혼여부</td>
				<td>
					<input type="radio" id=munchecked name=marri value="선택안함">
						<label for="munchecked">선택안함</label>
					<input type="radio" id=single name=marri value="미혼">
						<label for="single">미혼</label>
					<input type="radio" id=married name=marri value="기혼">
						<label for="married">기혼</label>
				</td>
				<td>자녀유무</td>
				<td>
					<input type="radio" id=cunchecked name=children value="선택안함">
						<label for="cunchecked">선택안함</label>
					<input type="radio" id=cnone name=children value="없음">
						<label for="cnone">없음 </label>
					<input type="radio" id=chas name=children value="있음">
						<label for="chas">있음</label>
				</td>
			</tr>
			<tr>
			
				<td>직업</td>
				<td colspan="3">
					<select name="job">					
						<option value="선택안함">선택안함</option>
						<option value="학생">학생</option>
						<option value="회사원">회사원</option>
						<option value="군인">군인</option>
					</select>
				</td>
			</tr>
		</table><br>
		
		<table>
			<tr>
				<td>주제</td>
				<td>
				<input type="checkbox" value="가정법률" name="concern">가정법률
				<input type="checkbox" value="아동.청소년/교육" name="concern">아동.청소년/교육
				<input type="checkbox" value="부동산/임대차" name="concern">부동산/임대차
				<input type="checkbox" value="금융/금전" name="concern">금융/금전
				<input type="checkbox" value="사업" name="concern">사업
				<input type="checkbox" value="창업" name="concern">창업
			<br>
				<input type="checkbox" value="무역/출입국" name="concern">무역/출입국
				<input type="checkbox" value="소비자" name="concern">소비자
				<input type="checkbox" value="문화/여가생활" name="concern">문화/여가생활
				<input type="checkbox" value="민형사/소송" name="concern">민형사/소송
				<input type="checkbox" value="교통/운전" name="concern">교통/운전
				<input type="checkbox" value="근로/노동" name="concern">근로/노동
			<br>
				<input type="checkbox" value="복지" name="concern">복지
				<input type="checkbox" value="국방/보훈" name="concern">국방/보훈
				<input type="checkbox" value="정보통신/기술" name="concern">정보통신/기술
				<input type="checkbox" value="환경/에너지" name="concern">환경/에너지
				<input type="checkbox" value="사회안전/범죄" name="concern">사회안전/범죄	
				<input type="checkbox" value="국가 및 지자체" name="concern">국가 및 지자체	
				</td>
			
			</tr>
		</table><br>
		<input type="button" onclick="formCheck()" value="전송">
		<input type="reset" value="취소"> 
	
	
	</form>
	
	</body>
</html>