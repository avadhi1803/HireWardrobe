<%
    response.addHeader("Pragma", "no-Cache");
    response.addHeader("Cache-Control","no-Store");
    response.setHeader("Pragma", "no-Cache");
    response.setHeader("Cache-Control","no-Store");
    Integer userid = (Integer) session.getAttribute("USER");
    if(userid==null)
    {
    response.sendRedirect("homepage.jsp");
    }
    if(session==null)
    {
    response.sendRedirect("homepage.jsp");
    }
%>