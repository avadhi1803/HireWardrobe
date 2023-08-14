<%@page import="javax.swing.JFrame"%>
<%@page import="javax.swing.JOptionPane"%>
<%@include file="mansecurityguard.jsp" %>
<%@page import="java.sql.DriverManager,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection" %>
            <%
                JFrame f;
                f=new JFrame();
                f.setVisible(true);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");  
                Integer useid=(Integer)session.getAttribute("MUSER");
                PreparedStatement st = con.prepareStatement("delete from manager where mid=?");
                st.setInt(1,useid);
                st.executeUpdate();
                int choice=JOptionPane.showConfirmDialog(f,"Do you want to delete your account?");
                if(choice==0)
                {
                response.sendRedirect("destroysession.jsp");
            }
           
                %>
