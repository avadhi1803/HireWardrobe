<%@page import="javax.swing.JFrame"%>
<%@page import="javax.swing.JOptionPane"%>
<%@include file="securityguard.jsp" %>
<%@page import="java.sql.DriverManager,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection" %>
            <%
                JFrame f;
                f=new JFrame();
                f.setVisible(true);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");  
                Integer uid=(Integer)session.getAttribute("USER");
               
                PreparedStatement st2 = con.prepareStatement("delete from customerorder where userid=? OR pid IN(select pid from product where userid=?)");
                st2.setInt(1,uid);
                st2.setInt(2,uid);
                
                PreparedStatement st1 = con.prepareStatement("delete from product where userid=?");
                st1.setInt(1,uid);
                
                PreparedStatement st = con.prepareStatement("delete from userdetail where userid=?");
                st.setInt(1,uid);
                
                int choice=JOptionPane.showConfirmDialog(f,"Do you want to delete your account?");
                if(choice==0)
                {
                st2.executeUpdate();
                st1.executeUpdate();
                st.executeUpdate();                
                }
                response.sendRedirect("destroysession.jsp");
                %>
