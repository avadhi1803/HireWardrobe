<%@include file="mansecurityguard.jsp" %>    
<html>
    <head>
        <title>All Feedback</title>
        <script>
                function call()
                {
                    window.print();
                }
        </script>
        <style>
            body
            {
                overflow-y: hidden;
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
         .heading
        {
            font-family: serif;
            margin-top: 40px;
            color: purple;
            font-size: 50px;
            font-weight: bold;
            margin-left: 330px;
        }
       
        .body
        {
            position: relative;
        }
        .body input
        {
            position: absolute;
            right: 20px;
        }
         .tabletheme
        {
            position: absolute;
            height: 300px;
            width: 100%;
            top: 220px;
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
        </style>
    </head>
    <body style="height: 100%;">
        
            <div style='width: 100%; height: 100%;background-image: url(bg3.jpg)' class="body">
            <div class="name">
                <a href="userlogin.jsp"><img src="logo4.png" alt="logo" ></a>
                <h1 class="heading">The Hire Wardrobe</h1>
            </div>
            
            <input type="submit" value="PRINT" onclick="call()">
            <div class="tabletheme">
               <iframe src="manfeedcode.jsp" style="width: 100%;height: 300px; ">
            
                </iframe>
            </div>
         <div style="display: flex; justify-content: space-around;margin-top: 500px;">
            <a href="managerpage.jsp"> <img src="homeicon.png" alt="" class="functions"></a>
            <a href="showmanagerowner.jsp"><img src="owners.png" alt="" class="functions"></a>
            <a href="manfeed.jsp"><img src="feedback.png" alt="" class="functionscurrent"></a>
            <a href="managersettings.jsp"><img src="settings.png" alt="" class="functions"></a>
        </div>
        </div>
        
    </body>
</html>
