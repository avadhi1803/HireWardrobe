<%@page import="java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection"%>
<% 
String userid = request.getParameter("idvalue");
String password = request.getParameter("passvalue");
Class.forName("com.mysql.jdbc.Driver");
Connection con = emergency.connection.CallTheConnection.connectionCode();
PreparedStatement st = con.prepareStatement("select * from userdetail where uname=? && pw=?");
            st.setString(1,userid);
            st.setString(2,password);
            
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                out.println("Logged in successfully");
            }
            else
            {
                out.println("Account doesn't exist");
            }
%>
    

