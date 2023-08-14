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
        .title
        {
            display: flex;
            justify-content: space-between;
        }
        .functions
        {
            width: 80px;
            height: 60px;
        }
        .functionscurrent
        {
            width: 80px;
            height: 60px;
            background-color: gray;
        }
        .name img
        {
            height: 130px;
            width: 150px;
            margin-top: 20px;
        }
        .table
        {
            height: 420px;
            
            margin-top: 60px;
        }
    </style>
    <body>
        <div class="title">
            <div class="name">
                <a href="userlogin.jsp"><img src="logo4.png" alt="logo" ></a>
                <h1 class="heading">The Hire Wardrobe</h1>
            </div>
            <div class="name" style="justify-content: space-between; width: 20%;">
                <a href="customerpage.jsp" style="height:50px; width: 130px; background-color: purple; color: white; margin-top: 40px; margin-right: 20px; font-size: 15px; padding-left: 5px;">
                    Go to customer's page!
                </a>
                <a href="destroysession.jsp" style="height:50px; width: 80px; background-color: purple; color: white; margin-top: 40px; margin-right: 20px; font-size: 15px; padding-left: 5px;">Sign Out</a>
            
                <!--<img src="chat.png" style="width: 70px; height: 70px; margin-top: 35px;margin-right: 50px;">-->
            </div>
        </div>
        
        <div class="table">
               <iframe src="ownerpagecode.jsp" style="width: 100%;height: 420px;"> 
            
                </iframe>
            </div>
        
        <div style="display: flex; justify-content: space-around;margin-top: 50px;">
            <a href="ownerpage.jsp"><img src="homeicon.png" class="functionscurrent"></a>
            <a href="AddProduct.jsp"><img src="addproduct.png" class="functions"></a>
            <a href="viewownerorder.jsp"><img src="viewownerorder.png" class="functions"></a>
            <a href="showownerfeedback.jsp"><img src="feedback.png" class="functions"></a>
            <a href="settingsowner.jsp"><img src="settings.png" class="functions"></a>
        </div>
    </body>
</html> 