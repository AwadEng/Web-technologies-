<%@page import="com.javapoint.dao.UserDao"%>  
<jsp:useBean id="u" class="com.javapoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  