<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 구인구직사이트 로그인</h1>
<form>
<table>
<tr>
<th>ID</th>
<td><input type="text" name="id"/></td>
</tr>
<tr>
<th>PW</th>
<td><input type="password" name="pw"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="로그인" /> </td>
</tr>
</table>
</form>
<br>
<h3>
<input type="button" value="개인 회원가입" name="applierSign">
</h3>
<h3>
<input type="button" value="기업 회원가입" name="supplierSign">
</h3>
</body>
</html>