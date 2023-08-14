<%@page import="java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection"%>
<% 
String name = request.getParameter("name");
String uname = request.getParameter("username");
String pw = request.getParameter("password");
String cno = request.getParameter("contact");
String mail = request.getParameter("mailid");
String color = request.getParameter("color");
Class.forName("com.mysql.jdbc.Driver");
Connection con = emergency.connection.CallTheConnection.connectionCode();
PreparedStatement st = con.prepareStatement("insert into userdetail(name,uname,pw,cno,mail,color) values(?,?,?,?,?,?)");
            st.setString(1,name);
            st.setString(2,uname);
            st.setString(3,pw);
            st.setString(4,cno);
            st.setString(5,mail);
            st.setString(6,color);
PreparedStatement st2 = con.prepareStatement("select * from userdetail");
ResultSet rs2 = st2.executeQuery();
while(rs2.next())
{
String mailid = rs2.getString(5);
String contact = rs2.getString(4);
if(mail.equals(mailid) || cno.equals(contact))
{
out.println("Account already exists! \nPlease proceed to login.");
return;
}
}
st.executeUpdate();
out.println("Account Created Successfully!");
PreparedStatement st1 = con.prepareStatement("select userid from userdetail where uname=? && pw=?");  
            st1.setString(1,uname);
            st1.setString(2,pw);
            ResultSet rs = st1.executeQuery();
            if(rs.next())
            {
            int userid = rs.getInt(1);
            out.println("Your user id is: "+userid);
//            response.sendRedirect("homepage.jsp");
            }
else
{
out.println("No user id found!");
}       

%>
