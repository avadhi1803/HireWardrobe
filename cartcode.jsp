<%@include file="securityguard.jsp" %>
<% Integer uid=(Integer)session.getAttribute("USER");%>
<html>
    <head>
        <style>
            .pid,.odate,.rtndate,.oid,.ostatus
       {
           font-weight: bolder;
           font-size: 25px;
           font-family: serif;
       }
       .oid
       {
         background-color: yellow;
         
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
        .orders
        
        {
            margin-left: 720px;
            margin-bottom: 30px;
            font-family: serif;
            font-weight: bold;
        }
        .box
        {
            height: 270px;
            margin-bottom: 20px;
            width: 350px;
            border: solid;
            border-radius: 20px;
            border-color: black;
        }
        .table
        {
            height: 390px;
            
            margin-top: 30px;
        }
        </style>
    </head>
</html>
<%@page import="java.sql.DriverManager,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection,java.util.ArrayList" %>
            <%
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
                
                PreparedStatement st1 = con.prepareStatement("select * from customerorder where userid=?");
                st1.setInt(1,uid);
                ResultSet rs = st1.executeQuery();
                ArrayList list1 = new ArrayList();
                  ArrayList list2 = new ArrayList();
                   ArrayList list3 = new ArrayList();
                    ArrayList list4 = new ArrayList(); 
                     ArrayList list5 = new ArrayList();                    
                      
                      while(rs.next())
                      {
                      list1.add(rs.getInt(1)); //pid
                      list2.add(rs.getString(2)); //odate
                      list3.add(rs.getInt(3)); //oid
                      list4.add(rs.getString(4)); //rtndate
                      list5.add(rs.getString(5)); //status
                      
            }
            %>
            
            
            <div style="width:100%;" class="table">
                <table>
                    <tr>
                    <h1 class="orders">Your Orders</h1> 
                    </tr>
                    <tr>
                      <table width="100%" align="center">
                        
                    <%
                    int i=0;
                    while(i<list1.size())
                    {
                %>
                <tr align="center">
                    <td><div class="box">
                            <br>
                        <span class="oid">Order ID: <%=list3.get(i)%></span>
                        <br><br>                        
                         <span class="pid">Product ID: <%=list1.get(i)%></span>
                         <br><br>
                         <span class="odate">Order Date: <%=list2.get(i)%></span>                     
                         <br>
                         <br>
                         <span class="rtndate">Return Date: <%=list4.get(i)%></span>
                         <br>
                         <br>
                         <span class="ostatus">Order Status: <%=list5.get(i)%></span>
                         <br>
                         <br>

                         
                        </div></td>
                        <%i++;
                        if(i>=list1.size())
                        {
                        break;
                        }                        
                        %>
                        <td><div class="box">
                                <br>
                        <span class="oid">Order ID: <%=list3.get(i)%></span>
                        <br><br>                        
                         <span class="pid">Product ID: <%=list1.get(i)%></span>
                         <br><br>
                         <span class="odate">Order Date: <%=list2.get(i)%></span>                     
                         <br>
                         <br>
                         <span class="rtndate">Return Date: <%=list4.get(i)%></span>
                         <br>
                         <br>
                         <span class="ostatus">Order Status: <%=list5.get(i)%></span>
                         <br>
                         <br>

                         
                        </div></td>
                        <%i++;
                        if(i>=list1.size())
                        {
                        break;
                        }
                        %>
                        <td><div class="box">
                                <br>
                        <span class="oid">Order ID: <%=list3.get(i)%></span>
                        <br><br>                        
                         <span class="pid">Product ID: <%=list1.get(i)%></span>
                         <br><br>
                         <span class="odate">Order Date: <%=list2.get(i)%></span>                     
                         <br>
                         <br>
                         <span class="rtndate">Return Date: <%=list4.get(i)%></span>
                         <br>
                         <br>
                         <span class="ostatus">Order Status: <%=list5.get(i)%></span>
                         <br>
                         <br>

                         
                        </div></td>
                        
                        <%i++;
                        %> 
                        
                        
                    
                </tr>
                 <% } %>
                    </table>    
                    </tr>
                </table>
                    
                </div>
