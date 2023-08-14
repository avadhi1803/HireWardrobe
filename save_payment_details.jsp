<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.DriverManager,java.sql.PreparedStatement,java.sql.Connection" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%
    // Retrieve the payment details from the AJAX request
    int product_id = Integer.parseInt(request.getParameter("product_id"));
    String method = request.getParameter("paymethod");
    String upiId = request.getParameter("upiid");

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wardrobe","root","root");
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            Calendar c = Calendar.getInstance();
            c.setTime(new Date());
            c.add(Calendar.DATE, 3);
            String rdate = sdf.format(c.getTime());
        //PreparedStatement st1 = con.prepareStatement("insert into customerorder(pid,odate,userid,rtndate) values(?,CURRENT_TIMESTAMP,?,?)");
//        st1.setInt(1, product_id);
//        st1.setInt(2, (Integer) session.getAttribute("USER"));
        

        // Insert payment details into the database
        PreparedStatement st1 = con.prepareStatement("insert into customerorder(pid,userid,rtndate,odate) values(?,?,?,CURRENT_TIMESTAMP)");
        st1.setInt(1, product_id);
        st1.setInt(2, (Integer) session.getAttribute("USER"));
        st1.setString(3, rdate);
        st1.executeUpdate();

        PreparedStatement st2 = con.prepareStatement("insert into payment(upi,paymethod,userid) values(?,?,?)");
        st2.setString(1, upiId);
        st2.setString(2, method);
        st2.setInt(3, (Integer) session.getAttribute("USER"));
        st2.executeUpdate();
        
        PreparedStatement st3 = con.prepareStatement("update product set pstatus=? where pid=?");
        st3.setString(1, "Not Available");
        st3.setInt(2, product_id);
        st3.executeUpdate();

        // Close the database connection
        con.close();

        // Send a success response to the AJAX request
        response.setStatus(HttpServletResponse.SC_OK);
        response.getWriter().write("Payment details saved successfully!");
    } catch (Exception e) {
        e.printStackTrace();

        // Send an error response to the AJAX request
        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        response.getWriter().write("Error occurred while saving payment details.");
    }
%>

