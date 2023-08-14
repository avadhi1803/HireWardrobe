<%@include file="mansecurityguard.jsp" %>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <style>
        body
        {
            background-image: url("bg1.jpg");
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
            margin-top: 50px;
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
        .table
        {
            height: 420px;
            
            margin-top: 60px;
        }
    </style>
    </head>
   
    <body>
        <div class="title">
            <div class="name">
                <a href="managerlogin.jsp"><img src="logo4.png" alt="logo" ></a>
                <h1 class="heading">The Hire Wardrobe</h1>
            </div>
            
        </div>
        <div class="table">
            <iframe src="managershowpage.jsp" style="width: 100%; height: 420px;">
                
            </iframe>
            
        </div>
        <div style="display: flex; justify-content: space-around;margin-top: 50px;">
            <a href="managerpage.jsp"> <img src="homeicon.png" alt="" class="functionscurrent"></a>
            <a href="showmanagerowner.jsp"><img src="owners.png" alt="" class="functions"></a>
            <a href="manfeed.jsp"><img src="feedback.png" class="functions"></a>
            <a href="managersettings.jsp"><img src="settings.png" alt="" class="functions"></a>
        </div>
        
    </body>
</html> 