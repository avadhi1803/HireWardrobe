<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%
            String mail = request.getParameter("mail");
            String color = request.getParameter("color");
            String newpass = request.getParameter("newpass");
            String confirmnewpass = request.getParameter("confirmnewpass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
            PreparedStatement st = con.prepareStatement("select * from userdetail where mail=?");
            st.setString(1,mail);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
            String oldcolor = rs.getString(7);
            if(color.equals(oldcolor))
            {
            if(newpass.equals(confirmnewpass))
            {
            PreparedStatement st1 = con.prepareStatement("update userdetail set pw=? where mail=?");
            st1.setString(1, newpass);            
            st1.setString(2, mail);
            st1.executeUpdate();
            out.println("Password Changed!");
            }
else
{
out.println("New Password and Confirm New Password didn't match!");
}
}
else
{
out.println("Color doesn't match");
}
            }
            else
            {
            out.println("No user found");
}
            
            
            

    %>