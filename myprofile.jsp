 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%Integer uid=(Integer)session.getAttribute("USER");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <style>
            .body
            {
                position: absolute;
                height: 100vh;
                width: 100%;
                background-image: url(bg1.jpg);
            background-color: transparent;
            background-size:100% 100% ;
            background-repeat: no-repeat;
            background-position: center;
            box-shadow: 5px 5px 7px 6px #682860;
            }
          .body h2
          {
              position: absolute;
              top: 70px;

               left: 710px;
            text-shadow:0 0 5px #FFFF00,0 0 10px #000000,0 0 20px #ffffff,0 0 40px #DDA0DD;
            color: purple;
            font-size: 25px;
            margin-top:20px; 
          }
                .tabletheme
        {
            position: relative;
            border: ridge;
            background-color:transparent;
            padding: 20px;
            padding-left: 45px;
            width: 23%;
            height: 380px;
            top: 140px;
            left: 580px;
          
        }
            
        </style>
    </head>
    <body>
        <%
             Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
     PreparedStatement st = con.prepareStatement("select * from userdetail where userid=?");
     st.setInt(1, uid);
     ResultSet rs = st.executeQuery();
     if(rs.next())
     {
     String name=rs.getString(1);
     String username=rs.getString(2);
      int userid=rs.getInt(6);
     long cont=rs.getLong(4);
     String mail=rs.getString(5);
        
             
            %>
            <div class="body">
                <h2>My Profile</h2>
                <%@include file="head.jsp" %>
                <div class="tabletheme">
                    <table align="center">
                        <tr>
                            <td ><div>
                                    <h3 style="position: absolute;left: 115px;">Username: <% out.println(username);%></h3>
                                    <img src="profile.png" style="position: absolute;height: 220px;width: 220px; left: 80px;">
                                </div></td>
                                
                        </tr>
                        <tr align="center" style="position: absolute; top:230px; left: 80px; font-size: 18px; font-weight: bold;">
                            <td >Name: <% out.println(name);%></td>
                        </tr>
                        <tr align="center" style="position: absolute; top:260px; left: 80px; font-size: 18px; font-weight: bold;">
                            <td >Email Address: <% out.println(mail);%></td>
                        </tr>
                        <tr align="center" style="position: absolute; top:290px; left: 80px; font-size: 18px; font-weight: bold;">
                            <td >Contact detail: <% out.println(cont);%></td>
                        </tr>
                        <tr align="center" style="position: absolute; top:320px; left: 80px; font-size: 18px; font-weight: bold;">
                            <td >UserId: <% out.println(userid);%></td>
                        </tr>
                    </table>
                </div>
            </div>
                                    <%}%>
    </body>
</html>
