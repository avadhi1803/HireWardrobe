
<%@page import="java.math.BigDecimal"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
      PreparedStatement st = con.prepareStatement("select distinct userid from product");
            ResultSet rs = st.executeQuery();
             ArrayList list1=new ArrayList();
            ArrayList list2=new ArrayList();
            ArrayList list3=new ArrayList();
            ArrayList list4=new ArrayList();
            ArrayList list5=new ArrayList();
 
            while (rs.next()) {
                int uid = rs.getInt(1);
                PreparedStatement st1 = con.prepareStatement("select * from userdetail where userid=?");
                PreparedStatement st2 = con.prepareStatement("select * from product where userid=?");

                st1.setInt(1, uid);
                st2.setInt(1, uid);

                ResultSet rs1 = st1.executeQuery();                
                ResultSet rs2 = st2.executeQuery();
                int cnt=0;
                while(rs2.next())
                {
                cnt++;
    }
                if (rs1.next()) {
                  list1.add( rs1.getString(1));//name
                  list2.add(rs1.getBigDecimal(4));//contact
                  list3.add(rs1.getInt(6)) ;//ownerid
                    list4.add( rs1.getString(5));  //mail                 
                    list5.add( cnt);//cnt

    }
    }
    %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Owners</title>
        <style>
    .tabletheme
        {
            position: absolute;
            height: 300px;
            width: 100%;
        }
        </style>
        
    </head>
    <body>
      
        <div class="tabletheme">
            <table width='100%' align='center' cellpadding='7' cellspacing='5'>
                <tr align='center'  ><th colspan="5" style='font-size: 20px;font-weight: bold'>Owner List</th></tr>
                <tr align='center'>
                    <th>Owner Name</th>
                    <th>Owner ID</th>
                    <th>Contact No</th>
                    <th>Mail ID</th>
                    <th>Products</th>    
                </tr>
                <%
                    for(int i=0;i<list1.size();i++)
                    {
                    %>
                    <tr align='center'>
                        <td id="idval"><%=list1.get(i)%></td>
                        <td><%=list3.get(i)%></td>
                        <td><%=list2.get(i)%></td>
                        <td><%=list4.get(i)%></td>
                        <td><%=list5.get(i)%></td>
                    </tr>
                    <%}%>
            </table>
            </div>
    </body>
</html>
