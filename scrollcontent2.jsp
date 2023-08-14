
<%@page import="javax.swing.JFrame"%>
<%@page import="javax.swing.JOptionPane"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
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
        <style>
    .tabletheme
        {
            position: absolute;
            height: 300px;
            width: 100%;
        }
        </style>
        <%
                 
            String button=request.getParameter("btn");
            if(button!=null && button.equals("ADD"))
            {
            String getans=request.getParameter("rep");
            int rid=Integer.parseInt(request.getParameter("id"));
            PreparedStatement st2 = con.prepareStatement("update feedback set rstatus=? where rid=?");
                        st2.setInt(2, rid);
                        st2.setString(1, getans);
                         
                        st2.executeUpdate();
                         JFrame f;       

            f=new JFrame();
                f.setVisible(true);
                        int choice=JOptionPane.showConfirmDialog(f,"Do you want to update reply?");
                if(choice==0)
                {
                response.sendRedirect("scrollcontent2.jsp");
            }
            
            }
                        
            %>
    </head>
    <body>
        <%
            int flag=0;
            Integer oid=(Integer)session.getAttribute("USER");
            
            PreparedStatement st = con.prepareStatement("select * from product where userid=?");
            st.setInt(1, oid);
            ResultSet rs = st.executeQuery();
            ArrayList list1=new ArrayList();
            ArrayList list2=new ArrayList();
            ArrayList list3=new ArrayList();
            ArrayList list4=new ArrayList();
            ArrayList list5=new ArrayList();
     
            
            while (rs.next()) {
             int pid = rs.getInt(7);
             PreparedStatement st1 = con.prepareStatement("select * from feedback where pid=?");
             st1.setInt(1, pid);
            ResultSet rs1 = st1.executeQuery();
                while (rs1.next()) {
                  list1.add(rs1.getInt(1));
                   list2.add(rs1.getInt(2));
                    list3.add(rs1.getString(4));
                     list4.add(rs1.getString(6));
                      list5.add(rs1.getString(7));
                    flag++;                     

                }
            }

            if (flag == 0) {
                out.println("No feedbacks");
            }
            %>
        
            
            <div class="tabletheme">
            <table width='100%' align='center' cellpadding='7' cellspacing='5'>
                <tr align='center'  ><th colspan="6" style='font-size: 20px;font-weight: bold'>Feedback Table</th></tr>
                <tr align='center'>
                    <th>Review ID</th>
                    <th>Product ID</th>
                    <th>Review Date</th>
                    <th>Category</th>
                    <th>Review</th>
                    
                </tr>
                <%
                    for(int i=0;i<list1.size();i++)
                    {
                    %>
                    <tr align='center'>
                        <td id="idval"><%=list1.get(i)%></td>
                        <td><%=list2.get(i)%></td>
                        <td><%=list3.get(i)%></td>
                        <td><%=list4.get(i)%></td>
                        <td><%=list5.get(i)%></td>
                        <td></td>
                    </tr>
                    <%}%>
            </table>
            
                        <form action="">
                            <h2 align="center">Add Reply</h2>
                            <p align="center">
            <select name="id">
                <option>...........SELECT ID TO REPLY................</option>
                <%for(int i=0;i<list1.size();i++)
                {%>
                <option><%=list1.get(i)%></option>
                <%}%>
            </select>
            <input type="text" placeholder="Reply... " name="rep" id="ans"><input type="submit" value="ADD" name="btn">
            </p>
            </form>
            </div>
    </body>
</html>
