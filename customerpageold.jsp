<%@include file="securityguard.jsp" %>

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <style>
        body
        {
            background-image: url("bg3.jpg");
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
            margin-top: 40px;
            color: purple;
            font-size: 50px;
            font-weight: bold;
            margin-left: 20px;
        }
        .logo
        {
            height: 150px;
            width: 150px;
        }
        .name
        {
            display: flex;
        }
        .name img
        {
            height: 130px;
            width: 150px;
            margin-top: 20px;
        }
        .title
        {
            display: flex;
            justify-content: space-between;
        }
        
    </style>
    <body>
        
        <div class="title">
            <div class="name">
                <a href="userlogin.jsp"><img src="logo4.png" alt="logo" ></a>
                <h1 class="heading">The Hire Wardrobe</h1>
            </div>
            <div class="name" style="justify-content: space-between; width: 30%;">
                <a href="ownerpage.jsp" style="height:50px; width: 130px; background-color: purple; color: white; margin-top: 40px; margin-right: 20px; font-size: 15px; padding-left: 5px;">
                   Go to owner's page! 
                </a>
                <img src="chat.png" style="width: 70px; height: 70px; margin-top: 35px;margin-right: 50px;">
                <a href="destroysession.jsp" style="height:50px; width: 80px; background-color: purple; color: white; margin-top: 40px; margin-right: 20px; font-size: 15px; padding-left: 5px;">Sign Out</a>
            </div>
        </div>
        <%@include file = "customeroptions.jsp" %>
        
    </body>
</html> 