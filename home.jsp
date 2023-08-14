<!-- ridge,solid,dotted,inset,outset -->
<html>
    <style>
        .tabletheme
        {
            border:ridge;
        }
        .fieldtheme
        {
            width: 300px;
            height: 30px;
            border-radius:30px;
        }
        .btntheme
        {
            width:100px;
            height:30px;
            background-color: black;
            color: white;
            border-radius: 40px;
            font-size: 15px;
        }
        .tdtheme
        {
            background-color: rgba(0,0,0,0.9);
            color: white;
            width: 20px;
            height: 60px;
            font-size: 20px;
            text-transform: uppercase;
        }
        .tdtheme:hover
        {
            background-color: green;
        }
        .current
        {
            background-color: green;
            color: white;
            width: 20px;
            height: 60px;
            font-size: 20px;
            text-transform: uppercase;
        }
        a
        {
            text-decoration: none;
            color: white;
        }
    </style>
    <body>
        <table width="100%">
            <tr align="center">
                <td class="current"><a href="home.jsp">home</a></td>
                <td class="tdtheme"><a href="about.jsp">about</a></td>
                <td class="tdtheme"><a href="contact.jsp">contact</a></td> 
                <td class="tdtheme"><a href="career.jsp">career</a></td>
                <td class="tdtheme"><a href="transport.jsp">transport</a></td>
                <td class="tdtheme"><a href="mailto:avadhipatni18@gmail.com">query</a></td>
            </tr>
        </table>
        
                    <table width="100%">
                        <tr>
                            <td><img src="login.jpg" width="300px" height="200px"></td>
                            <td><font size="100px">GO PACKERS & MOVERS</font></td>             
                        </tr>
                        <tr>
                            <td colspan="2"><marquee scrollamount="15"><img src="metro.jpg" width="300px" height="80px"></marquee> </td>
                        </tr>
                    </table>
        <hr>
        
        <img src="pack1.jpg">
        <table width="100%">
            <tr>
                <td>
                    <img src="packers.jpg">
                </td>
                
                <td>
                  <form action="logincode.jsp">
                      <table width="300px" border="0px" cellspacing="10" cellpadding="5" class="tabletheme" align="center">
                          <tr align="center">
                              <td><img src="userlogin.jpg"></td>
                          </tr>
                          <tr><td>ID</td></tr>
                          <tr><td><input type="text" placeholder="Enter user id" class="fieldtheme" name="idvalue"></td></tr>
                          <tr><td>Password</td></tr>
                          <tr><td><input type="password" name="passvalue" placeholder="Enter password" class="fieldtheme"></td></tr>
                          <tr><td><input type="submit" value="LogIn" class="btntheme"> </td></tr>
                          <tr><td><input type="submit" value="SignUp" class="btntheme"> </td></tr>
                      </table>
 

</form>    
                </td>
            </tr>
        </table>
    </body>
</html>




