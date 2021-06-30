<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>memberFrom</title>

		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			alert("테스트");
		 	function memberFrom() {
		 		//이름 유효성 검사
		 		if($("#name").val()==""){
		 			alert("이름이 없습니다. 이름을 입력하세요");
		 			$("#name").focus();
		 			return false;
		 		}
		 		if($("#id").val().length<3){
		 			alert("아이디는 3자리 이상 입력하셔야합니다.");
		 			$("#id").focus();
		 			return false;
		 		}
		 		
		 		
				var salary = Number($("#salary").val());
				var result = salary/10;
				
				
				$("#tax").val(result);
				
				return document.form.submit();
			}
		
		
		</script>
		
		
		
		
		
	</head>
	<body>
	<form action="./j0630_04.jsp" method="post" name="form">
		<label>번호</label>
		<input type="text" id="No" name="No"><br>	
		<label>이름</label>
		<input type="text" id="name" name="name"><br>	
		<label>아이디</label>
		<input type="text" id="id" name="id"><br>	
		<label>전화번호</label>
		<input type="text" id="tel" name="tel"><br>
		<label>성별</label>
		<input type="radio" id="gender" name="gender" value="male" checked="checked"><label for="male">남자</label>
		<input type="radio" id="gender" name="gender" value="female"><label for="female">여자</label><br>	
		<label>월급</label>
		<input type="text" id="salary" name="salary"><br>
		<!-- 세금(공제액) -->
		<input type="hidden" id="tax" name="tax">	
		
		
		<input type="button" onclick="memberFrom()" value="입력">
		<input type="reset" value="초기화">
	
	
	
	</form>	
	
	</body>
</html>