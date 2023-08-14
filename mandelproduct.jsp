<%@include file="mansecurityguard.jsp" %>
<%@page import="javax.swing.JFrame"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection" %>
            <%
                JFrame f;
                f=new JFrame();
                f.setVisible(true);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");  
                  int product_id = 0;
    String productIdParam = request.getParameter("product_id");
    
    if (productIdParam != null && !productIdParam.isEmpty()) 
    {
    product_id = Integer.parseInt(productIdParam);
    }
                PreparedStatement st = con.prepareStatement("delete from product where pid=?");
                st.setInt(1,product_id);
               
                int choice=JOptionPane.showConfirmDialog(f,"Do you want to delete your product?");
                if(choice==0)
                {
                st.executeUpdate();
                
            }
           
           
                %>
                <script>
            // Redirect the parent window to ownerpage.jsp
            window.top.location.href = 'managerpage.jsp';
        </script>
