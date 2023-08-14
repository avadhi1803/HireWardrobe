<%@include file="securityguard.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>

<%
    int COUNT=0;
       Integer useid=(Integer)session.getAttribute("USER");
     String button = request.getParameter("btn");
     if(button!=null && button.equals("ADD Feedback"))
            {
    
        
            Integer pid = Integer.parseInt(request.getParameter("pid"));
            //System.out.println("Enter Category of your review");
            String rCat = request.getParameter("rcat");
            //System.out.println("Now write your review on this product");
            String review = request.getParameter("feed");
            
           Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
    
    PreparedStatement st1=con.prepareStatement("select * from product where pid=?");
    st1.setInt(1,pid);
    ResultSet rs=st1.executeQuery();
    if(rs.next())
    {
    PreparedStatement st = con.prepareStatement("insert into feedback(pid,rdate,rcategory,review,userid) values(?,CURRENT_TIMESTAMP,?,?,?)");
            st.setInt(1, pid);
            st.setInt(4, useid);
            st.setString(2, rCat);
            st.setString(3, review);
            st.executeUpdate();
            COUNT=1;
}
else
{
COUNT=2;
}
             con.close();
}
            %>

<!DOCTYPE html>
<html>
    <head>
        
        <title>Add feedback</title>
        <style>
             .tabletheme
        {
            border: ridge;
            background-color:lightpink;
            padding: 20px;
            padding-left: 45px;
        }
        .fieldtheme
        {
            width: 200px;
            height: 25px;
            border-radius: 15px;
            padding: 10px;
            font-size: 15px;
        }
        .btntheme
        {
            width: 140px;
            height: 30px;
            background-color:darkmagenta;
            color: white;
            border-radius: 20px;
            font-size: 15px;
            margin-left: 40px;
        }
        .hd
        {
            position: absolute;
            left: 610px;
            text-shadow:0 0 5px #FFFF00,0 0 10px #000000,0 0 20px #ffffff,0 0 40px #DDA0DD;
            color: purple;
            font-size: 15px;
            margin-top:20px; 
        }
        .text
        {
            font-size: 20px;
            font-family: arial;
            font-style: normal;
            padding-left: 15px;
        }
        .body{
            position: relative; 
        }
        form
        {
            position: absolute;
            top: 100px;
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
           overflow-y: hidden;
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
        <%@include file="head.jsp" %>
        <div class="body">
            <div class="hd"><h1>The Hire Wardrobe</h1></div>
            <form action="">
<table width="350px" border="0px" cellspacing="7" cellpadding="5" class="tabletheme" align="center">
        <tr>
            <td class="text">Product ID</td>
        </tr>
        <tr>
            <td >
                
                <label for="pid"></label>
                <select class="fieldtheme" name="pid" id="pid" style="height:50px;">
                    <%
    Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
    PreparedStatement st2 = con1.prepareStatement("select distinct pid from customerorder where userid=?");
    st2.setInt(1,useid);
    ArrayList<Integer> list = new ArrayList<>();
    ResultSet rs1 = st2.executeQuery();
    while(rs1.next())
    {
        list.add(rs1.getInt(1));    
    }
    int i=0;
    
    while (i < list.size()) {
%>
<option value="<%= list.get(i) %>"><%= list.get(i) %></option>
<%
    i++;
}
%> 
                    
                </select>
            </td>
        </tr>
        <tr>
            <td class="text">Review Category</td> 
        </tr>
        <tr>
            <td>
                <label for="rcat"></label>
                <select class="fieldtheme" name="rcat" id="rcat" style="height:50px;">
                    <option value="Negative">Negative</option>
                    <option value="Positive">Positive</option>
                </select>
            </td>
        </tr>
            
          <tr>
            <td class="text">Feedback</td>
            
        </tr>
        <tr>
            <td >
                <textarea placeholder="Enter your feedback" class="fieldtheme" name="feed" style="height:65px;"></textarea>
            </td>
        </tr>
        <tr>
            <td >
                <div><input type="submit" value="ADD Feedback" class="btntheme" name="btn" ></div>
            </td>
        </tr>
         <% if(button!=null && button.equals("ADD Feedback") && COUNT==1)
        {
            %>
            <tr><td style="color:purple; font-size: 15px; font-family: serif;">Feedback Added Successfully!</td></tr>
            <%}
else if(button!=null && button.equals("ADD Feedback") && COUNT==2)
{
            %>  
            <tr><td style="color:purple; font-size: 15px; font-family: serif;">Invalid Product ID!</td></tr>
            <%}%>
            
    </table>
</form>
           
        </div>
            
            <div style="display: flex; justify-content: space-around;margin-top: 640px;">
            <a href="customerpage.jsp"><img src="homeicon.png" class="functions"></a>
            <a href="customercart.jsp"><img src="cart.png" class="functions"></a>
            <a href="AddFeedback.jsp"><img src="feedback.png" class="functionscurrent"></a>
            <a href="settings.jsp"><img src="settings.png" class="functions"></a>
        </div>
      
    </body>
</html>