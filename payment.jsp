<%@ page import="java.sql.DriverManager,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection,java.util.ArrayList" %>
<html>
    <head>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <title>Payment</title>
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
            width: 220px;
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
            left: 660px;
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
            
            left: 610px;
        }
        
        .options
        {
            position: absolute;
            top: 160px;
            
        }
        
        </style>
    </head>
    <body>
        <!-- Your HTML content here -->
        <%
            // Your existing JSP code before the "Proceed" button handling
    int COUNT=0;
    int COUNT2=0;
    String button2 = request.getParameter("btn2");
    String method = request.getParameter("paymethod");
    String upiid = request.getParameter("upiid");
    int product_id = 0;
    String productIdParam = request.getParameter("product_id");
    
    if (productIdParam != null && !productIdParam.isEmpty()) 
    {
    product_id = Integer.parseInt(productIdParam);
    }
    
    session.setAttribute("ORDERED_PRODUCT_ID", product_id);
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
                
                PreparedStatement st1 = con.prepareStatement("select pstatus from product where pid=?");
                st1.setInt(1,product_id);
               ResultSet rs = st1.executeQuery();
               String str="";
               if(rs.next())
               {
               str=rs.getString(1);
        }
        if(str.equals("Not Available"))
        { %>
        <script>
            // Redirect the parent window to ownerpage.jsp
            alert("Product is not available");
            window.top.location.href = 'customerpage.jsp';
        </script>
        <%
        }      

            // Now, let's handle the "Proceed" button click using JavaScript and AJAX
        %>
        <div style="display:flex">
        <table width="350px" border="0px" cellspacing="7" cellpadding="5" class="tabletheme" align="center">
        <tr>
            <td class="text">Terms and Conditions</td>
        </tr>
        <tr>
            <td >
                <h3 style="font-size: 12px; color: darkmagenta;">1) You can rent an outfit only for 3 days. If you do not return it on or before the return date, the owner can file complaint against you.
                    <br><br>2) If the outfit is damaged, then you will have to pay some extra charges to the Owner.
                    </h3>
            </td>
        </tr>
        
        <tr>
            <td class="text">Payment Method</td> 
        </tr>
        <tr>
            <td>
                
                <select class="fieldtheme" name="paymethod" id="paymethod" style="height: 40px;">
                    <option value="paymethod">Select Payment Method</option>
                    <option value="cash">Cash On Delivery</option>
                    <option value="upi">UPI(online)</option>
                </select>
                <br>
                
            </td>
        </tr>
            
        <tr>
            <td >
                <textarea placeholder="If UPI, enter id" class="fieldtheme" name="upiid" id="upiname" style="height:45px;"></textarea>
                <br><br>
                <% if(button2!=null && button2.equals("Proceed") && COUNT==1)
        {
            %>
            <tr><td style="color:black; font-size: 15px; font-family: serif;">Enter UPI id.</td></tr>
            <%}%>   
                <input id="proceedBtn" type="submit" value="Proceed" class="btntheme" name="btn2">
                <% if(button2!=null && button2.equals("Proceed") && COUNT2==1)
        {
            %>
            <tr><td style="color:black; font-size: 15px; font-family: serif;">Order Placed Successfully!</td></tr>
            <%}%>   
            </td>
        </tr>
        
    </table>
          
        </div>
            <img src="GooglePay_QR.png" alt="alt" style="width:100px;height:100px; margin-top: -300px; margin-left: 300px;"/>
            </div>


        <!-- Add the JavaScript code to handle the "Proceed" button click -->
        <script>
            $(document).ready(function() {
                $("#proceedBtn").on("click", function() {
                    // Get the selected payment method and UPI ID
                    var selectedMethod = $("#paymethod").val();
                    let upiId = document.getElementById("upiname").value;
                    
                    // Get the product ID from the session
                    var productId = <%= product_id %>;

                    // Prepare data for AJAX request
                    var formData = {
                        product_id: productId,
                        paymethod: selectedMethod,
                        upiid: upiId
                    };

                    // Make an AJAX POST request to the server to save payment details
                    $.ajax({
                        type: "POST", // Use POST or GET based on your server-side implementation
                        url: "save_payment_details.jsp", // Replace with the URL to handle the database update
                        data: formData,
                        success: function(response) {
                            // Handle the server response (if needed)
                            alert("Payment details saved successfully!");
                            // Optionally, you can redirect the user to a thank-you page here
                            // window.location.href = "thank_you.jsp";
                        },
                        error: function(xhr, status, error) {
                            // Handle errors (if any)
                            alert("Error occurred while saving payment details.");
                        }
                    });
                });
            });
        </script>
    </body>
</html>




