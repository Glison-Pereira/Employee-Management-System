<%@ page import="java.sql.*" %>
<html>
<head>
     <title>Employee Management System</title>
     <link rel="stylesheet" href="style.css">
     <link rel="icon" href="https://4.imimg.com/data4/OO/UR/ANDROID-14010578/product.jpeg">
     <script src="script.js"></script>
</head>
<body>
        <h1>Delete Employee</h1>
        <form  method="post" autocomplete="off">
                <h3> Delete</h3><hr>
                <h2>Enter your ID:</h2><input type="number" name="id" id="12" placeholder="Enter your ID here" min="1"><br>
                <input type="submit" value="Save" onclick="return validated()" class="btn" name="button" ><br>
		<input type="submit" value="Back" class="bttn" name="buttton" >
        </form>
         <%
        	if(request.getParameter("button")!=null)
      	 	{
          		String id=request.getParameter("id");
          		try{
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
				String url="jdbc:mysql://localhost:3306/javaintern4employee";
				Connection con=DriverManager.getConnection(url,"root","abc123");
				String sql="delete from employee where id=?";
				PreparedStatement pst=con.prepareStatement(sql);
                		pst.setString(1,id);
                		long r=pst.executeUpdate();
                		out.println("record deleted");
				con.close();
        		}
			catch(SQLException e)
			{
				out.println("issue "+ e);
			}
       		}
        %>
        <%
             if(request.getParameter("buttton")!=null)
             {
                   session.invalidate();
                   response.sendRedirect("index.jsp");
             }
        %>
</body>
</html>