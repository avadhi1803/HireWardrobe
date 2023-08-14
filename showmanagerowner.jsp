<%-- 
    Document   : showmanagerowner
    Created on : 02-Aug-2023, 6:25:22 pm
    Author     : Nilesh Jain
--%>
<%@include file="mansecurityguard.jsp" %>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Owners</title>
        
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
    <body>
        
            <div style='width: 100%; height: 100vh;background-image: url(bg1.jpg)' class="body">
            <div class="name">
                <a href="managerlogin.jsp"><img src="logo4.png" alt="logo" ></a>
                <h1 class="heading">The Hire Wardrobe</h1>
            </div>
            
            
            <div class="tabletheme">
               <iframe src="showownercode.jsp" style="width: 100%;height: 300px; ">
            
                </iframe>
            </div>
                <div style="display: flex; justify-content: space-around;margin-top: 500px;">
            <a href="managerpage.jsp"> <img src="homeicon.png" alt="" class="functions"></a>
            <a href="showmanagerowner.jsp"><img src="owners.png" alt="" class="functionscurrent"></a>
            <a href="manfeed.jsp"><img src="feedback.png" alt="" class="functions"></a>
            <a href="managersettings.jsp"><img src="settings.png" alt="" class="functions"></a>
        </div>
            </div>
       
        


        
    </body>
</html>
