
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>

<%
    String userName = request.getParameter("idvalue");
    String pass = request.getParameter("passvalue");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
    PreparedStatement st = con.prepareStatement("select * from manager where mname=? and mpw=?");
    st.setString(1, userName);
    st.setString(2, pass);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
    int mid=rs.getInt(1);
    Cookie ck=new Cookie("Webproject",userName);
    ck.setMaxAge(100000);//time in seconds
    response.addCookie(ck);
session.setAttribute("MUSER",mid);
        response.sendRedirect("managerpage.jsp");
    } else {
        out.println("No user found / Invalid Credentials");
    }
    
%>
 
    