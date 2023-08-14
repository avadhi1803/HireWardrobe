<html>
    <style>
        body
        {
            background-image: url("wardrobe3.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .tabletheme
        {
            background-color: #D7B6A5;
            color: black;
            font-weight: bold;
            font-size: 22px;
            font-family: serif;
            border: inset;
            border-color: lightgray;
            border-width: 5px;
        }
        .signup
        {
            color: white;
        }
        .fieldtheme
        {
            width: 200px;
            height: 40px;
            border-radius:25px;
            box-shadow: 5px 5px 10px 2px rgba(0,0,0,.8);
        }
        .btntheme
        {
            width:150px;
            height:30px;
            background-color: black;
            color: white;
            border-radius: 40px;
            font-size: 15px;
            border: solid;
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
        .heading
        {
            font-family: serif;
            margin-top: 30px;
            color: black;
            text-align: center;
            font-size: 70px;
            font-weight: bold;
        }
    </style>
    <body>
        <h1 class="heading">The Hire Wardrobe</h1>
    <form action="signupcode.jsp">
        <table>
            <tr>
                <td>
    <table width="260px" height="370px" border="0px" cellspacing="10" cellpadding="5" class="tabletheme" style="margin-left:270px;margin-top: 180px;">
        <tr><td>Name</td></tr>
    <tr><td><input type="text" name="name" placeholder=" Enter your name" class="fieldtheme" required></td></tr>
    <tr><td>Username</td></tr>
    <tr><td><input type="text" name="username" placeholder=" Enter username" class="fieldtheme" required></td></tr>
    <tr><td>Password</td></tr>
    <tr><td><input type="password" name="password" placeholder=" Enter password" class="fieldtheme" required></td></tr>
    </table>    
                </td>
                <td>
    <table border="0px" cellspacing="10" cellpadding="5" class="signup" style="margin-left:30px;margin-top: 450px;">
    <tr><td><input type="submit" value="Create Account" class="btntheme"></td>
        <td><input type="button" value="Log in" class="btntheme" style="margin-left:30px;"></td></tr>
    </table>    
                </td>
                <td>
    <table width="260px" height="370px" border="0px" cellspacing="10" cellpadding="5" class="tabletheme" style="margin-left:30px;margin-top: 180px;">
    <tr><td>Contact No </td></tr>
    <tr><td><input type="text" name="contact" placeholder=" Enter your contact no" class="fieldtheme" required></td></tr>
    <tr><td>Mail Id </td></tr>
    <tr><td><input type="text" name="mailid" placeholder=" Enter your email id" class="fieldtheme" required></td></tr>
    <tr><td>Color </td></tr>
    <tr><td><input type="text" name="color" placeholder=" Enter your favourite color" class="fieldtheme" required> </td></tr>
    </table>   
                </td>
            </tr>
        </table>
    
        
       
        
    
</form>
    </body>
</html> 