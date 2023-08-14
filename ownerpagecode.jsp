<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.mysql.jdbc.Blob"%>
<% Integer uid=(Integer)session.getAttribute("USER");%>
<%@page %>
<%!
public String getImage(Object object){
 try{
            Blob b = (Blob)object;
            InputStream in = b.getBinaryStream();
            ByteArrayOutputStream os = new ByteArrayOutputStream();
            byte[] bytes = new byte[4096];
            int rd = - 1;
            while((rd = in.read(bytes)) != -1){
              os.write(bytes , 0 , rd);
            }
            byte[] img = os.toByteArray();
            String image = Base64.getEncoder().encodeToString(img);
            in.close();
            os.close();
            String imageesss = "data:image/jpg;base64,"+image;
            return imageesss;
           }catch(Exception e){}
        return null;
        
}
%>
<html>
    <head>
        <style>
        
        .box
        {
            height: 400px;
            margin-bottom: 20px;
            width: 350px;
            border: solid;
            border-radius: 20px;
            border-color: black;
        }
        
        .pname
        {
          font-family: serif;
          font-size: 30px;
          font-weight: bold;
          color: purple;
          background: yellow;  
         
        }
        .pimg
        {
            width: 170px;
            height: 210px;
        }
        .price
        {
            color: red;
            font-weight: bold;
            font-size: 20px;
            font-family: serif;
            
        }
        .pstatus
        {
            font-size: 20px;
            color: red; 
            font-family: serif;
        }
        .pdesc
        {
            font-family: serif;
            font-size: 20px;
            color: black;
            font-weight: bold;
        }
        .order
        {
            width: fit-content;
            height: 30px;
            background-color: green;
            color: white;
            font-family: serif;
            font-size: 20px;
            padding: 2px;
            border: solid;
            border-color: black;
            
        }
        .order:hover
        {
            color: yellow;
            text-decoration: none;
        }
        a
        {
            text-decoration: none;
        }
    </style>
    </head>
</html> 

<%@page import="java.sql.DriverManager,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection,java.util.*" %>
            <%
                int COUNT=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
                
                PreparedStatement st1 = con.prepareStatement("select * from product where userid = ?");
                st1.setInt(1, uid); 
                ResultSet rs = st1.executeQuery();
                ArrayList list1 = new ArrayList();
                  ArrayList list2 = new ArrayList();
                   ArrayList list3 = new ArrayList();
                    ArrayList list4 = new ArrayList(); 
                     ArrayList list5 = new ArrayList();                    
                      ArrayList list6 = new ArrayList();
                      while(rs.next())
                      {
                      list1.add(rs.getString(1));
                      list2.add(rs.getInt(2));
                      list3.add(rs.getString(3));
                      list4.add(rs.getString(4)); 
                      list5.add(rs.getInt(7));
                      list6.add(rs.getBlob(8));
                      Integer id = rs.getInt(7);
                      }
                      ArrayList<Boolean> list7 = new ArrayList();
                      for(int i=0;i<list5.size();i++) 
                      {
                          list7.add(false);
                      }
                      List<List<?>> list = new ArrayList<>();
                      list.add(list1);
                      list.add(list2);
                      list.add(list3);
                      list.add(list4);
                      list.add(list5);
                      list.add(list6);
                      list.add(list7);
            %>
            
            <div style="width:100%;">
                    <table width="100%" align="center">
                        
                        <%
                    int i=0;
                    while(i<list5.size())
                    {
                    %>
                    
                <tr align="center">
                    <td><div class="box">
                        <span class="pname"><%=list1.get(i)%></span>
                        <br><br>
                        <span><img class="pimg" src="<%=getImage(list6.get(i))%>"></span>
                        <br><br>
                        <div style="display:flex; justify-content: space-around;">
                         <span class="price">Rs. <%=list2.get(i)%></span>                        
                         
                         <span class="pstatus"><%=list4.get(i)%></span>                         
                         </div>
                         <br>
                         <span class="pdesc"><%=list3.get(i)%></span>
                         <br>
                         <br>
                         <button class="order" onclick="redirectToPayment(this)" data-product-id="<%= list5.get(i) %>">Update</button>
                        </div></td> 
                        <%i++; 
                        if(i>=list5.size())
                        {
                        break;
                        }
                        %>
                        <td><div class="box">
                        <span class="pname"><%=list1.get(i)%></span>
                        <br><br>
                     
                        <span><img class="pimg" src="<%=getImage(list6.get(i))%>"></span>
                        <br><br>
                        <div style="display:flex; justify-content: space-around;">
                         <span class="price">Rs. <%=list2.get(i)%></span>                        
                         
                         <span class="pstatus"><%=list4.get(i)%></span>                         
                         </div>
                         <br>
                         <span class="pdesc"><%=list3.get(i)%></span>
                         <br>
                         <br>
                         <button class="order" onclick="redirectToPayment(this)" data-product-id="<%= list5.get(i) %>">Update</button>
                        </div></td>
                        <%i++;
                        if(i>=list5.size())
                        {
                        break;
                        }
                        %>
                        <td><div class="box">
                        <span class="pname"><%=list1.get(i)%></span>
                        <br><br>
                        <span><img class="pimg" src="<%=getImage(list6.get(i))%>"></span>
                        <br><br>
                        <div style="display:flex; justify-content: space-around;">
                         <span class="price">Rs. <%=list2.get(i)%></span>                        
                         
                         <span class="pstatus"><%=list4.get(i)%></span>                         
                         </div>
                         <br>
                         <span class="pdesc"><%=list3.get(i)%></span>
                         <br>
                         <br>
                         <button class="order" onclick="redirectToPayment(this)" data-product-id="<%= list5.get(i) %>">Update</button>
                         </div></td>
                        <%i++;
                        %>
                        
                    
                </tr>
                 <% } %>
                    </table>  
                </div>
                 <%
                     
                 %>
                 <script>
function redirectToPayment(button) {
  // Get the product ID from the data attribute of the button
  var productId = button.getAttribute("data-product-id");
  console.log("Product ID:", productId);
  // Redirect to the payment page with the product ID as a query parameter
  window.location.href = "productupdate.jsp?product_id=" + encodeURIComponent(productId);
}
</script> 
                    
                  