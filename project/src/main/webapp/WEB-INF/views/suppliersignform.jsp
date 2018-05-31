<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title></title>
<style>
	.a{
		background-color: navy;
		color: white;
	}
</style>

</head>
<body>
		<h1> 회원 가입 </h1> 	
									<!-- enctype라고 작성필수 -->
<form action="/login/supplier" method="post" enctype="multipart/form-data"> 

	
	<table>
	<tr>
	<th>ID</th>
	<td><input type="text" name="ap_id"> <input type="button" value="중복검색"></td>
	</tr>
	
	<tr>	
	<th>비밀번호</th>
	<td><input type="password" name="ap_pw"></td>
	</tr>	
<!-- 
	<tr>	
	<th>비밀번호 재입력</th>
	<td><input type="password" name="supplierpw2"></td>
	</tr>		 -->
	
	<tr>	
	<th>이름</th>
	<td><input type="text" name="ap_name"></td>
	</tr>	
	
	<tr>	
	<th>사진</th>
	<td><input type="file" name="imagefile"></td>
	</tr>	
	
	<tr>	
	<th>주민등록번호</th>
	<td><input type="text" name="birth"></td>
	</tr>
	
	<tr>	
	<th>거주지 주소</th>
	<td><input type="text" name="addr"></td>
	</tr>
	
	<tr>	
	<th>이메일 주소</th>
	<td><input type="text" name="email"></td>
	</tr>
	
	<tr>	
	<th>희망 직군</th>
	<td><input type="text" name="classify"></td>
	</tr>
	
	<tr>	
	<th>희망 연봉</th>
	<td><input type="text" name="salary">만원</td>
	</tr>
	</table>
	<h1><input type="submit" value="회원가입"></h1>
	
	</form>
	
</body>

<!-- ../resources/jquery-3.2.1.min.js라고 작성하면 상위루트로 이동하기때문에 x  -->

<!-- resources/jquery-3.2.1.min.js라고 작성하면, springbakery까지는 web.xml에서 /까지 자동작성되기때문에 인식된다.  -->
<!-- /springbakery/resources/jquery-3.2.1.min.js라고 작성하면, 직접경로로써 인식된다.  -->

<!-- 따라서, spring(pom.xml)이나 tomcat으로 라이브러리를 적용시키는게 아닌이상 resources에 파일을 넣어주고 경로설정을 하면 된다.  -->

<script src="resources/jquery-3.2.1.min.js"></script>
<script>
//data는 json형태하려면 {파라미터이름:파라미터값}블록으로 
///url은 어디로 보낼지 (컨트롤러메소드호출url,)
//function의 매개변수로 임의로 server_out라고 작성해놓으면 ==> 이는 서버에서 전달받은 값을 의미한다

	$('input[type=button]').on('click',function(){
		$('#jsonresult').html(""); //1. 시작할때마다 이전내용 공백처리로 시작하게끔
		var name=
			$('input[name=bakeryname]').val();
			$.ajax({
				type : 'post',
				data : {'name':name},
				url : 'checkname',
				success : function(server_out){
					//server-out=json
					//리스트=javasript에서는 리스트가 없으니까 배열로서 인식하면된다.
					//2. 위에서 초기화했던 div에 집어넣는다 
					for(var i =0; i<server_out.length; i++){
						$('#jsonresult').append("<h4>"+server_out[i]+"</h4>");
					}//for
				}//success
			});//ajax
		});
</script>
</html>