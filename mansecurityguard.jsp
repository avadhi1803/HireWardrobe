<%
    
response.addHeader("Pragma","no-Cache");
response.addHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-Cache");
response.setHeader("Cache-Control","no-store");
Integer uid=(Integer)session.getAttribute("MUSER");
if(uid==null)
{
response.sendRedirect("managerlogin.jsp");
}
if(session==null)
{
response.sendRedirect("managerlogin.jsp");
}
    %>