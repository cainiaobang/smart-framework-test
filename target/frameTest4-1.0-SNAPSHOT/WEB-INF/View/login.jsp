<%@ page pageEncoding="UTF-8" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="/security" %>

<c:set var="BASE" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>login in</title>
</head>
<body>
<h1>login in</h1>
<security:guest>
    <form action="${BASE}/login" method="post">
        <table>
            <tr>
                <td> user name: </td>
                <td> <input type="text" name="username"></td>
             </tr>
             <tr>
                <td>password:  </td>
                <td><input type="password" name="password"></td>
             </tr>
             <tr>
                  <td colspan="2">
                  <button type="submit"> login in </button>
                  </td>
              </tr>
         </table>
     </form>
  </security:guest>

  <security:user>
  <c:redirect url="${BASE}/" />
  </security:user>