<%@ page language="java" %>

<html>
<body>

<%
String name = request.getParameter("uname");

out.print("Welcome! " + name);
out.print("<br>Session has started for " + name);

// store in session
session.setAttribute("user", name);

// set session expiry (1 minute)
session.setMaxInactiveInterval(60);

out.print("<br>Your name stored in session");
out.print("<br>Session expires in 1 minute");
%>

<br><br>
<a href="second.jsp">Display the value</a>

</body>
</html>