<%@ page import="com.javapoint.dao.UserDao" %>
<%@ page import="com.javapoint.bean.User" %>

<jsp:useBean id="u" class="com.javapoint.bean.User" />
<jsp:setProperty property="*" name="u" />

<%
    try {
        int i = UserDao.register(u);
        if (i > 0) {
            response.sendRedirect("adduser-success.jsp");
        } else {
            response.sendRedirect("adduser-error.jsp");
        }
    } catch (Exception e) {
        // Print or log the exception
        e.printStackTrace();
        // Redirect to an error page
        response.sendRedirect("error.jsp");
    }
%>
