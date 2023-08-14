<script>
           function validateAndSubmit() {
    var val = document.getElementById("info").value;
    console.log(val);
    var choice = document.getElementById("pcat").value;

    if (val.length !== 0) {
        // Set the value of the hidden field
        document.getElementById("valHiddenField").value = val;
        // Submit the form to trigger the update process
        document.getElementById("updateForm").submit();
        return true; // Return true to allow the form submission
    } else {
        alert("Please Enter Updated Information!");
        return false; // Return false to prevent the form submission
    }
}

        </script>
<!DOCTYPE html>
<html>
    <head>
        <style>
        .fieldtheme
        {
            width: 380px;
            height: 60px;
            border-radius: 15px;
            padding: 10px;
            font-size: 20px;
        }
         .btntheme
        {
            width: 150px;
            height: 60px;
            background-color:darkmagenta;
            color: white;
            border-radius: 20px;
            font-size: 20px;
        }
        .theme
        {
            display: flex;
            align-content: center;
            justify-content: center;
            margin-bottom: 30px;
        }
        </style>
    </head>
<%String productIdParam = request.getParameter("product_id");
 int prod_id=0;
 if (productIdParam != null && !productIdParam.isEmpty()) 
    {
    prod_id = Integer.parseInt(productIdParam);
    }
    session.setAttribute("Prod_id",prod_id);
    %>
    <body>
        
        <div class="theme">
            <h1>
                What Do You Want To Update?
            </h1>
            
        </div>
         <form id="updateForm" method="post" action="updateproduct.jsp" onsubmit="return validateAndSubmit();">
    <!-- Your other form elements -->
    <div class="theme" style="justify-content:space-evenly;">
                <select class="fieldtheme" name="pcat" id="pcat">
                    <option>Select</option>
                    <option value="pname">Name</option>
                    <option value="price">Price</option>
                    <option value="pcategory">Category</option>
                    <option value="descr">Description</option>
                    
                </select>
              
            
                <textarea placeholder="Enter the updated information" style="width: 360px; height: 50px; font-size: 15px; border-radius: 15px; padding: 10px;" id="info"></textarea>
           
            </div>
            
            <input type="hidden" name="val" id="valHiddenField" value="">
            <div class="theme" style="justify-content: space-evenly; width: 100%;">
                <div><input type="submit" value="UPDATE" class="btntheme"></div>
                
            </div>
        </form>
        <div class="theme"  >
        <button class="btntheme" onclick="location.href='delproduct.jsp';">DELETE</button>
        </div>
    </body>
    
</html>

    
