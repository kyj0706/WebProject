<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>form</title>
			<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
			<script type="text/javascript">
				function formCheck() {
						alert("폼체크 시작!");
					//jQuery				
					if($("#memId").val()==""){
						alert("다른 방법");
						$("memId").focus();
						return false;
					}
					if($("#pw").val() !=$("#pw2").val()){
						alert("패스워드가 일치하지 않습니다.");
						$("#pw").val("");
						$("#pw2").val("");
						$("#pw").focus();
						return false;
					}
					
					
					
					//javacript
					if(memberForm.memId.value==""){
						alert("id를 입력해주세요");
						memberForm.memId.focus();
						return false;
					}
					if(memberForm.memId.value.length<=3){
						alert("4자리 이상 입력해주세요");
						memberForm.memId.focus();
						return false;
					} 
				
					
					return document.memberForm.submit();
					//return true;
				}
			
			
			
			
			
			</script>
			
		</head>
	<body>
		<h2>회원가입</h2>
		<form action="./formOk.jsp" method="post" name="memberForm">
		<label for="memId">아이디</label>
		<!-- id는 라벨을 사용한다. css의 Id이다 -->
		<!-- name은 변수이다. 없어도 되는데 파일이 안넘어간다.-->
		<input type="text" id="memId" name="memId" required placeholder="아이디를 입력" ><br>
		<label for="pw">패스워드</label>
		<input type="password" id="pw" name="pw"><br>
		<label for="pw2">패스워드 확인</label>
		<input type="text" id="pw2" name="pw2"><br>
		<label for="name">이름</label>
		<input type="text" id="name" name="name"><br>
		
		<label>성별</label><br>
		<input type="radio" id="male" name="gender" value="남자">
		<label for="male">남자</label>		
		<input type="radio" id="female" name="gender" value="여자ㅣ">
		<label for="female">여자</label><br>
		
		
		<!-- checkbox는 중복선택이 가능하기 때문에 배열로 받아야한다 -->
		<!--겟파라미터벨류주 -->
		<label>취미</label><br>
		<input type="checkbox" id="cook" name="hobby" value="cook">
		<label for="cook">요리</label>
		<input type="checkbox" id="run" name="hobby" value="run">
		<label for="run">조깅</label>
		<input type="checkbox" id="game" name="hobby" value="game">
		<label for="game">게임</label>
		<input type="checkbox" id="read" name="hobby" value="read">
		<label for="read">독서</label>
		<input type="checkbox" id="swim" name="hobby" value="swim">
		<label for="swim">수영</label>
		
		<label for="channel">유입경로</label><br>
			<select>
				<option value="internet">인터넷</option>		
				<option value="new">뉴스</option>		
				<option value="odvertising">광고</option>		
				<option value="pamphlet">팜플렛</option>		
			</select><br>
		<!-- <input type="button" onclick="formCheck()" value="저장">	 -->
		<input type="button" onclick="formCheck()" value="전송">
		<input type="reset" value="취소">
		
		</form>
	
	</body>
</html>