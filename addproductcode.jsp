<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.io.*"%>"
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.servlet.annotation.*"%>
<%@page import="javax.servlet.ServletException"%>


<%--<%! 
    private String extractFileName(Part part)
{
String contentDisp = part.getHeader("content-disposition");
String[] items = contentDisp.split(";");
for (String s: items)
{
if(s.trim().startsWith("fileName"))
{
return s.substring(s.indexOf("=")+2,s.length()-1);
}
}
return "";
}
%>--%>

<%             
                String pname = request.getParameter("pname");                
                String price = request.getParameter("price");
                String desc = request.getParameter("desc");
                String cat = request.getParameter("pcat");                
                String pimg = request.getParameter("photo");  
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
                PreparedStatement st = con.prepareStatement("insert into product(descr,price,pname,pcategory,pimg,userid) values(?,?,?,?,?,?)");
                st.setString(1, desc);
                st.setString(2, price);
                st.setString(3, pname);              
                st.setString(4, cat);
                st.setInt(6, (Integer)session.getAttribute("USER"));
                FileInputStream fin = new FileInputStream("G:\\NetBeansProjects\\Wardrobe\\web\\Images\\"+pimg);
                st.setBinaryStream(5, fin);
                st.executeUpdate();
                con.close();
                out.println("Product inserted Successfully");      
    %>