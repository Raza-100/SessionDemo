<%@ page language="java" %>

<html>
<body>

<h2>Display Session Value</h2>

<%
String name = (String) session.getAttribute("user");

if (name == null) {
    out.print("Sorry the session has ended");
} else {
    out.print("Hello " + name);
}
%>

</body>
</html>