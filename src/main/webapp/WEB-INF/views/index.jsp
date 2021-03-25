<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sandwich</title>
</head>
<body>
<h1>Sandwich Condiments</h1>
<form action="<c:url value='/ok'/>" method="post">
    <c:if test="${requestScope['condiment'] != null}">
        <ul>
            <c:forEach items="${requestScope['condiment']}" var="c">
                <li><c:out value="${c}"/></li>
            </c:forEach>
        </ul>
    </c:if>
    <div>
        <input type="checkbox" name="condiment" id="lettuce" value="Lettuce" checked> <label for="lettuce">Lettuce</label>
        <input type="checkbox" name="condiment" id="tomato" value="Tomato"> <label for="tomato">Tomato</label>
        <input type="checkbox" name="condiment" id="mustard" value="Mustard"> <label for="mustard">Mustard</label>
        <input type="checkbox" name="condiment" id="sprouts" value="Sprouts"> <label for="sprouts">Sprouts</label>
    </div>
    <div>
        <button type="submit">Save</button>
    </div>
</form>
</body>
</html>
