<%@page import="javax.swing.JFrame"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection" %>
            <%
                JFrame f;
                f=new JFrame();
                f.setVisible(true);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");  
                Integer pid=(Integer)session.getAttribute("Prod_id");
                PreparedStatement st = con.prepareStatement("delete from product where pid=?");
                st.setInt(1,pid);
               
                int choice=JOptionPane.showConfirmDialog(f,"Do you want to delete your product?");
                if(choice==0)
                {
                st.executeUpdate();
                
            }
           
           
                %>
                <script>
            // Redirect the parent window to ownerpage.jsp
            window.top.location.href = 'ownerpage.jsp'; 
        </script>
