   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<html>
<head>
</head>
<body>
<h3>WELCOME</h3>

<table>
<c:forEach items="${user} }" var="item">
<tr>
<td><c:out value="${item.getUserId}"/>
</td>
</tr>
</c:forEach>

</table>




</body>
</html>