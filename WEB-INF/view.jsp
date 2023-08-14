
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.Blob,java.io.*, java.sql.SQLException"%>
<%@page import="java.sql.DriverManager,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection,java.util.ArrayList" %>
            <%
                
                              
                
Blob image = null;

byte[] imgData = null;

PreparedStatement stmt=null;

ResultSet rs1 = null;

String id = request.getParameter("id");

try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root"); 

stmt=con1.prepareStatement("select image from product where pid="+id);

rs1= stmt.executeQuery();

if (rs1.next()) {

image= rs1.getBlob(8);

imgData= image.getBytes(1, (int) image.length());

FileOutputStream fileOutputStream = new FileOutputStream("G:\\NetBeansProjects\\Wardrobe\\web\\Images");
			fileOutputStream.write(imgData);  
//                        response.setContentType("image/gif");
fileOutputStream.close();

} else {

out.println("Display Blob Example");

out.println("image not found for given image>");

return;
            }
// display the image


//OutputStream o = response.getOutputStream();
//
//o.write (imgData);
//
//o.flush();
//o.close();

}
catch (Exception e) {

out.println("Unable To Display image"); 
out.println("Image Display Error=" + e.getMessage());

return;

} 
finally {

try {

rs1.close();

stmt.close();

} catch (SQLException e) {

e.printStackTrace();
            }
            }
            
    %>
