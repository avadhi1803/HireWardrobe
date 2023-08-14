<html>
    <style>
        body
        {
            background-image: url("wardrobe4.png");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .tabletheme
        {
            
            background-image: url("brown.jpg");
            color: white;
            font-weight: bold;
            font-size: 22px;
            font-family: serif;
            
        }
        .signup
        {
            color: white;
        }
        .fieldtheme
        {
            width: 150px;
            height: 35px;
            border-radius:25px;
            box-shadow: 5px 5px 10px 2px rgba(0,0,0,.8);
        }
        .btntheme
        {
            width:150px;
            height:30px;
            background-color: transparent;
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
            margin-top: 40px;
            color: black;
            text-align: center;
            font-size: 60px;
            font-weight: bold;
        }
        .quote
        {
            background-image: url("brown.jpg");
            color: white;
            font-family: serif;
            font-size: 22px;
            width: 665px;
            margin-left: 478px;
            height: 140px;
            margin-top: 120px;
            padding-left: 130px;
            padding-top: 30px;
            
        }
    </style>
    <body>
        <%@include file = "head.jsp" %>
        <h1 class="heading">The Hire Wardrobe</h1>
        <p class="quote"> "It's frustrating to not be able to wear the same dress twice,<br>  so I don't have a go-to dress like all girls do. <br>Renting is definitely going to be my new fashion obsession. <br>- Author: Nikki Reed"</p>
    <form action="signupcode.jsp">
        <table>
            <tr>
                <td>
    <table width="210px" height="240px" border="0px" cellspacing="10" cellpadding="5" class="tabletheme" style="margin-left:475px;margin-top:-25px;">
        <tr><td>Name</td></tr>
    <tr><td><input type="text" name="name" placeholder=" Enter your name" class="fieldtheme" required></td></tr>
    <tr><td>Username</td></tr>
    <tr><td><input type="text" name="username" placeholder=" Enter username" class="fieldtheme" required></td></tr>
    <tr><td>Password</td></tr>
    <tr><td><input type="password" name="password" placeholder=" Enter password" class="fieldtheme" required></td></tr>
    </table>    
                </td>
                <td>
    <table border="0px" cellspacing="10" cellpadding="5" class="signup" style="margin-left:45px;margin-top: 220px;">
    <tr><td><input type="submit" value="Create Account" class="btntheme"></td>
    </table>    
                </td>
                <td>
    <table width="205px" height="210px" border="0px" cellspacing="10" cellpadding="5" class="tabletheme" style="margin-left:150px;margin-top: -30px;">
    <tr><td>Contact No </td></tr>
    <tr><td><input type="text" name="contact" placeholder=" Enter your contact no" class="fieldtheme" required></td></tr>
    <tr><td>Mail Id </td></tr>
    <tr><td><input type="text" name="mailid" placeholder=" Enter your email id" class="fieldtheme" required></td></tr>
    <tr><td>Color </td></tr>
    <tr><td><input type="text" name="color" placeholder=" Favourite color" class="fieldtheme" required> </td></tr>
    </table>   
                </td>
            </tr>
        </table>
    
        
       
        
    
</form>
    </body>
</html> 