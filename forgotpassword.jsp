
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%
    int COUNT1=0;
    int COUNT2=0;
    int COUNT3=0;
    int COUNT4=0;
            String button2 = request.getParameter("btn2");
            String mail = request.getParameter("mail");
            String color = request.getParameter("color");
            String newpass = request.getParameter("newpass");
            String confirmnewpass = request.getParameter("confirmnewpass");
            if(button2!=null && button2.equals("ChangePassword"))
            {
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
//            out.println("Password Changed!");
COUNT4=1;
            }
else
{
//out.println("New Password and Confirm New Password didn't match!");
COUNT3=1;
}
}
else
{
//out.println("Color doesn't match");
COUNT2=1;
}
            }
            else
            {
//            out.println("No user found");
COUNT1=1;
}
}           
            
            

    %>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <style>
             .tabletheme
        {
            border: ridge;
            background-color:lightpink;
            padding: 20px;
            padding-left: 45px;
        }
        .fieldtheme
        {
            width: 240px;
            height: 40px;
            border-radius: 15px;
            padding: 10px;
            font-size: 15px;
        }
        .btntheme
        {
            width: 140px;
            height: 30px;
            background-color:darkmagenta;
            color: white;
            border-radius: 20px;
            font-size: 15px;
            margin-left: 40px;
        }
        .hd
        {
            position: absolute;
            left: 660px;
            text-shadow:0 0 5px #FFFF00,0 0 10px #000000,0 0 20px #ffffff,0 0 40px #DDA0DD;
            color: purple;
            font-size: 15px;
            margin-top:20px; 
        }
        .text
        {
            font-size: 20px;
            font-family: arial;
            font-weight: bold;
            padding-left: 15px;
        }
        .body{
            position: relative; 
        }
        form
        {
            position: absolute;
            top: 130px;
            left: 610px;
        }
        body
        {
              background-image: url(bg1.jpg);
            background-color: transparent;
            background-size:100% 100% ;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
           box-shadow: 5px 5px 7px 6px #682860;
        }
        .options
        {
            position: absolute;
            top: 160px;
            
        }
        </style>
    </head>
    <body>
        <%@include file = "head.jsp" %>
        <div class="body">
            <div class="hd"><h1>The Hire Wardrobe</h1></div>
            <form action="">
<table width="400px" border="0px" cellspacing="7" cellpadding="5" class="tabletheme" align="center">
    <tr>
            <td class="text">Mail Id</td> 
        </tr>
        <tr>
            <td>
                <input type="email" placeholder="Enter mail id" class="fieldtheme" name="mail" required>
                </td>
        </tr>
            <% if(button2!=null && button2.equals("ChangePassword") && COUNT1==1)
        {
            %>
            <tr><td style="color:purple; font-size: 15px; font-family: serif;">No user found!</td></tr>
            <%}%>    
            
        <tr>
            <td class="text">Recovery Question!</td>
                    </tr>
        <tr>
            
            <td class="text">What's your favorite color?</td>
        </tr>
        
        <tr>
            <td >
                <input type="text" placeholder="Enter color" class="fieldtheme" name="color" required>
            </td>
        </tr>
        <% if(button2!=null && button2.equals("ChangePassword") && COUNT2==1)
        {
            %>
            <tr><td style="color:purple; font-size: 15px; font-family: serif;">Color doesn't match!</td></tr>
            <%}%>    
        <tr>
            <td class="text">New Password</td> 
        </tr>
        <tr>
            <td>
                <input type="password" placeholder="Enter new password" class="fieldtheme" name="newpass" required>
                
            </td>
        </tr
              
          <tr>
            <td class="text">Confirm New Password</td>
            
        </tr>
        <tr>
            <td >
                <input type="password" placeholder="Confirm new password" class="fieldtheme" name="confirmnewpass" required>
            </td>
        </tr>
        <% if(button2!=null && button2.equals("ChangePassword") && COUNT3==1)
        {
            %>
            <tr><td style="color:purple; font-size: 15px; font-family: serif;">New Password and Confirm New Password didn't match!</td></tr>
            <%}%>  
        <tr>
            <td >
                <div><input type="submit" value="ChangePassword" class="btntheme" name="btn2"></div>
            </td>
        </tr>
        <% if(button2!=null && button2.equals("ChangePassword") && COUNT4==1)
        {
            %>
            <tr><td style="color:purple; font-size: 15px; font-family: serif;">Password Changed Successfully!</td></tr>
            <%}%>  
    </table>
</form>
          
        </div>
        <div class="options">
        
        </div>
    </body>
</html>
