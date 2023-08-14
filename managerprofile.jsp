<%@include file="mansecurityguard.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%Integer mid=(Integer)session.getAttribute("MUSER");%>
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

               left: 610px;
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
            height: 300px;
            top: 140px;
            left: 480px;
          
        }
            
        </style>
    </head>
    <body>
        <%
             Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
     PreparedStatement st = con.prepareStatement("select * from manager where mid=?");
     st.setInt(1, mid);
     ResultSet rs = st.executeQuery();
     if(rs.next())
     {
     
     String mname=rs.getString(2);
      int manid=rs.getInt(1);
     
             
            %>
            <div class="body">
                <h2>My Profile</h2>
                <%@include file="head.jsp" %>
                <div class="tabletheme">
                    <table align="center">
                        <tr>
                            <td ><div>
                                    <h3 style="position: absolute;left: 100px;">Manager name: <% out.println(mname);%></h3>
                                    <img src="profile.png" style="position: absolute;height: 220px;width: 220px; left: 80px;">
                                </div></td>
                                
                        </tr>
                       
                       
                       
                        <tr align="center" style="position: absolute; top:210px; left: 130px; font-size: 18px; font-weight: bold;">
                            <td >Manager Id: <% out.println(manid);%></td>
                        </tr>
                    </table>
                </div>
            </div>
                                    <%}%>
    </body>
</html>
