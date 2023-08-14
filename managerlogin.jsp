
<!DOCTYPE html>
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
          left: 545px;
          
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
                <tr align="center">
                    <td><a href="changePass.jsp">Forgot Password?</a></td>
                </tr>
            </table>
        </div>
        <div class="form">
        <form action="managerlogincode.jsp">
    <table width="260px" height="330px" border="0px" cellspacing="7" cellpadding="5" class="tabletheme" align="center">
   
        <tr>
            <td style="font-size:20px;">ID</td>
        </tr>
        <tr>
            <td >
                <input type="text" placeholder="Enter manager name" class="fieldtheme" name="idvalue">
            </td>
        </tr>
         <tr>
             <td style="font-size:20px;">Password</td>
        </tr>
        <tr>
            <td>
                <input type="password" placeholder="Enter manager password" class="fieldtheme" name="passvalue">
            </td>
        </tr>
        <tr>
            <td align="center">
                <div><input type="submit" value="Login" class="btntheme"  ></div>
              
            </td>
        </tr>
    </table>
</form>
            </div>
    </body>
</html>
