<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Integer pid=(Integer)session.getAttribute("Prod_id");
  
 String val = request.getParameter("val");
        
 Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe", "root", "root");

// Get the values from the form
String column = request.getParameter("pcat");
String updatedValue=val;
    
// Prepare the SQL query using placeholders (?)
String sql = "UPDATE product SET " + column + " = ? WHERE pid = ?";

// Create the PreparedStatement
PreparedStatement st = con.prepareStatement(sql);
st.setString(1, updatedValue);
st.setInt(2, pid);
st.executeUpdate();
 
%>
                
 <script>
            // Redirect the parent window to ownerpage.jsp
            window.top.location.href = 'ownerpage.jsp';
        </script>
