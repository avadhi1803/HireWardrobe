
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add products</title>
        <style>
             .tabletheme
        {
            border: ridge;
            background-color:lightpink;
            padding: 20px;
           
        }
        .fieldtheme
        {
            width: 180px;
            height: 25px;
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
        .hd
        {
            position: absolute;
            left: 650px;
            text-shadow:0 0 5px #FFFF00,0 0 10px #000000,0 0 20px #ffffff,0 0 40px #DDA0DD;
            color: purple;
            font-size: 15px;
            margin-top:20px; 
        }
        .text
        {
            font-size: 20px;
            font-family: arial;
            font-weight: bold;
            padding-left: 15px;
        }
        .body{
            position: relative; 
        }
        form
        {
            position: absolute;
            top: 130px;
            left: 550px;
        }
        body
        {
              background-image: url(bg1.jpg);
            background-color: transparent;
            background-size:100% 100% ;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
           box-shadow: 5px 5px 7px 6px #682860;
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
        <%@include file = "head.jsp" %>
        <div class="body">
            <div class="hd"><h1>The Hire Wardrobe</h1></div>
            <form action="addproductcode.jsp">
<table width="450px" border="0px" cellspacing="7" cellpadding="5" class="tabletheme" align="center">
        <tr>
            <td class="text">Product name</td>
            <td class="text">Product Category</td>
        </tr>
        <tr>
            <td>
                <input type="text" placeholder="Enter product name" class="fieldtheme" name="pname">
            </td>
            <td>
                
                <select class="fieldtheme" name="pcat" id="pcat" style="height: 60px;">
                    <option value="name">Select Category</option>
                    <option value="saree">Saree</option>
                    <option value="suit">Suit</option>
                    <option value="lehenga">Lehenga</option>
                    <option value="west">Western</option>
                    <option value="indowest">Indo Western</option>
                    <option value="formals">Formals</option>
                </select>
            </td>
            <tr>
            <td class="text">Product Price</td>
            <td class="text">Estimated Price</td>
        </tr>
        <tr>
            <td>
                <input type="number" placeholder="Enter rental Price" class="fieldtheme" name="price">
            </td>
            <td>
                <input type="number" placeholder="Estimated price" class="fieldtheme" name="estprice">
            </td>
        </tr>
       <tr>
            <td class="text">Description</td>
            <td class="text">Photo/Video</td>
        </tr>
        <tr >
            <td>
                <textarea name="desc" placeholder="Write Product Description" class="fieldtheme" style="height:65px;"></textarea>
            </td>
            <td >
            <input type="file" class="fieldtheme" name="photo" style="height:65px;">
            </td>
       
        <tr>
            <td align="center" colspan="2">
                <div><input type="submit" value="ADD" class="btntheme"  ></div>
            </td>
        </tr>
    </table>
</form>
          
        </div>
        
        <div style="display: flex; justify-content: space-around;margin-top: 670px;">
            <a href="ownerpage.jsp"><img src="homeicon.png" class="functions"></a>
            <a href="AddProduct.jsp"><img src="addproduct.png" class="functionscurrent"></a>
            <a href="viewownerorder.jsp"><img src="viewownerorder.png" class="functions"></a>
            <a href="showownerfeedback.jsp"><img src="feedback.png" class="functions"></a>
            <a href="settingsowner.jsp"><img src="settings.png" class="functions"></a>
        </div>
    </body>
</html>
