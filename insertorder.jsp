<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<% Integer uid=(Integer)session.getAttribute("USER");%>
<script>
            function order()
            {
                    <%
                        
                        Integer pid=(Integer)session.getAttribute("PID");
                        
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
                
                        PreparedStatement st2 = con.prepareStatement("insert into customerorder(pid,userid) values(?,?)");
                        
                        st2.setInt(1,pid);
                        st2.setInt(2,uid);
                        st2.executeUpdate();
                        %>
                                
                                alert("Order Placed Successfully!");
            }
        </script>