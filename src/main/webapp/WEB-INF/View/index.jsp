<%@ page pageEncoding="UTF-8" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="/security" %>

<c:set var="BASE" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>first page</title>
</head>
<body>
<h1>首页</h1>
<security:guest>
       <p>identification: tourist</p>
       <a href="${BASE}/login">登陆</a>
</security:guest>
<security:user>
       <p> identification: user</p>
       <li><a href="${BASE}/customer"> customer manage</a></li>
       </ul>
</security:user>

</body>
</html>