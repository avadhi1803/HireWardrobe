<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet, java.sql.DriverManager"%>
 <%
       int COUNT=0;
       String button1=request.getParameter("btn");
     
       if(button1!=null && button1.equals("Login"))
       {
    String userName = request.getParameter("idvalue");
    String pass = request.getParameter("passvalue");
    if(userName.equals("") ||  pass.equals(""))
    {
    COUNT=1;
   }
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
    PreparedStatement st = con.prepareStatement("select * from userdetail where uname=? and pw=?");
    st.setString(1, userName);
    st.setString(2, pass);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
    
    int userid=rs.getInt(6);
    Cookie ck=new Cookie("Wardrobe",userName);
    ck.setMaxAge(100000);
    response.addCookie(ck);
    session.setAttribute("USER",userid);
    LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        
        
            PreparedStatement st2 = con.prepareStatement("SELECT * FROM customerorder");
            ResultSet resultSet = st2.executeQuery();

            while (resultSet.next()) {
                // Convert the database date string to LocalDate
                int pid = resultSet.getInt(1);
                String dateFromDatabase = resultSet.getString(4);
                LocalDate dateInDatabase = LocalDate.parse(dateFromDatabase, formatter);

                // Compare the dates
                if (dateInDatabase.isBefore(currentDate)) {
                    // Date in the database is less than the current date
                    PreparedStatement st3 = con.prepareStatement("update product set pstatus=? where pid=?");
                    st3.setString(1, "Available");  
                    st3.setInt(2, pid);
                    st3.executeUpdate();                    
                } 
            }

      response.sendRedirect("customerpage.jsp");
    }
    
   }
   
%>
<html>
    <style>
        .tabletheme
        {
            border: ridge;
            background-color:rgba(221,160,221,0.4);
        }
        .fieldtheme
        {
            width: 260px;
            height: 35px;
            border-radius: 15px;
            padding: 10px;
            font-size: 15px;
        }
        .btntheme
        {
            width: 100px;
            height: 30px;
            background-color:darkmagenta;
            color: white;
            border-radius: 20px;
            font-size: 15px;
        }
        body
        {
            background-image:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url(logi1.jpg);
            background-color: transparent;
            background-size:70% 100% ;
            background-repeat: repeat;
            background-position: center;
            height: 100vh;
            box-shadow: 5px 5px 7px 6px #682860;
           
        }
        .form
        {
            position: absolute;
            top: 180px;
           left: 520px;
            
        }
        .hd
        {
            position: absolute;
            left: 590px;
            text-shadow:0 0 5px #000700,0 0 10px #0000DD,0 0 20px #DDA0DD,0 0 40px #DDA0DD;
            color: white;
            font-size: 15px;
            margin-top:-20px; 
        }
       
        .cloud
        {
            
            height: 110px;
            width: 330px;
            margin-left: 550px;
            margin-top: -40px;
            background-color: transparent;
        }
       
        .c1
        {
            position: absolute;
            height: 15px;
            width: 15px;
            right: 480px;
         top: 100px;
        }
       .base
       {
           position: relative;
       }
      .but
      {
          position: relative;
          font-size: 17px;
          font-family: arial;
          font-weight: bold;
          text-align: center;
      }
      .but table
      {
          position: absolute;
          top: 480px;
          left: 465px;
          
      }
      .but table td
      {
          border: 7px darkorchid inset;
          width: 150px;
          margin-right: 30px;
          background-color: blanchedalmond;
      }
      .but table td a
      {
          text-decoration: none;
          color: black;
      }
       
       
    </style>
     <head>
        <title>Login Page</title>
    </head>
    <body>
     

        <%@include file="head.jsp" %>
        <div class="base">
        <div class="hd"><h1>The Hire Wardrobe</h1></div>
        
            <img src="logi2.png" class="cloud">
            <img src="logi2.png" class="c1">
            <img src="logi2.png" class="c1" style="width:25px;height: 25px;top: 70px;right: 510px;">
            <img src="logi2.png" class="c1" style="width:35px;height: 35px;top: 35px;right: 545px;">
            
        </div>
        <div class="but">
            <table cellspacing="10" cellpadding="10" >
                <tr>
                    <td><a href="signupnew.jsp">New User?</a></td>
                   
                    <td><a href="forgotpassword.jsp">Forgot Password?</a></td>
                </tr>
            </table>
        </div>
        <div class="form">
        <form action="">
    <table width="260px" height="330px" border="0px" cellspacing="7" cellpadding="5" class="tabletheme" align="center">
        
        <tr>
          
            <td style="font-size:20px; color: white; font-weight: bold; font-family: serif">UserName</td>
        </tr>
        <tr>
            <td >
                <input type="text" placeholder="Enter username" class="fieldtheme" name="idvalue">
            </td>
        </tr>
        <% if(button1!=null && button1.equals("Login") && COUNT==0)
        {
            %>
            <tr><td style="color:yellow; font-size: 15px; font-family: serif;">Invalid Credentials!</td></tr>
            <%}%>
            <% if(button1!=null && COUNT==1 && button1.equals("Login"))
        {
            %>
            <tr><td style="color:yellow; font-size: 15px; font-family: serif;">Password or Username is required</td></tr>
            <%}%>
         <tr>
             <td style="font-size:20px; color: white; font-weight: bold; font-family: serif">Password</td>
        </tr>
        <tr>
            <td>
                <input type="password" placeholder="Enter password" class="fieldtheme" name="passvalue">
            </td>
        </tr>
        <tr>
            <td align="center">
                <div><input type="submit" value="Login" class="btntheme" name="btn" ></div>
              
            </td>
        </tr>
    </table>
</form>
            </div>
    </body>
</html>
