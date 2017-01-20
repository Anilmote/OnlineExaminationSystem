<%@ page import="com.mankraft.RegisterStaffServlet"%>
<jsp:useBean id="s" class="com.mankraft.Staff"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
int i=RegisterStaffServlet.save(s);
if(i>0)
{
response.sendRedirect("regSuccess.html");
}
%>
