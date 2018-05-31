<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="/project/login" method="post">
<table border=3>
<c:forEach items="${menulist}" var="vo">
<tr>
<td><input type=checkbox name="bakeryid"
value="${vo.bakeryid }" > 
${vo.bakeryname } : ${vo.price } </td>
<td><img src=
"/bakery/resources/images/${vo.imagename }" 
width=50 height=50 ></td>
<td><input type=text name="amount" > 개 주문</td>
</tr>
</c:forEach>
<tr><td colspan="3">
<input type=submit value="주문완료" >
</td></tr>
</table>
</form>
</body>
<script 
src="/bakery/resources/jquery-3.2.1.min.js">
</script>
<script type="text/javascript">
$("input[type=checkbox]")
.on('click', function(){
	var index = 
	$("tr").find("input:checkbox").index(this);
	$("input[name=amount]").eq(index).focus();
});
</script>

</html>









