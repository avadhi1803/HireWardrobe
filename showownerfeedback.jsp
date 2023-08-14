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
    <body>
        
            <div style='width: 100%; height: 100vh;background-image: url(bg1.jpg)' class="body">
            <div class="name">
                <a href="userlogin.jsp"><img src="logo4.png" alt="logo" ></a>
                <h1 class="heading">The Hire Wardrobe</h1>
            </div>
            
            <input type="submit" value="PRINT" onclick="call()">
            <div class="tabletheme">
               <iframe src="scrollcontent2.jsp" style="width: 100%;height: 300px; ">
            
                </iframe>
            </div>
            
         <div style="display: flex; justify-content: space-around;margin-top: 520px;">
            <a href="ownerpage.jsp"><img src="homeicon.png" class="functions"></a>
            <a href="AddProduct.jsp"><img src="addproduct.png" class="functions"></a>
            <a href="viewownerorder.jsp"><img src="viewownerorder.png" class="functions"></a>
            <a href="showownerfeedback.jsp"><img src="feedback.png" class="functionscurrent"></a>
            <a href="settingsowner.jsp"><img src="settings.png" class="functions"></a>
        </div>
        </div>
        
    </body>
</html>
