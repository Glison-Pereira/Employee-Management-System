<%@ page import="java.sql.*" %>
<html>
<head>
     <title>Employee Management System</title>
     <link rel="stylesheet" href="style.css">
     <link rel="icon" href="https://4.imimg.com/data4/OO/UR/ANDROID-14010578/product.jpeg">
     <script src="script.js"></script>
</head>
<body>
        <h1>Update Employee</h1>
        <form  method="post" autocomplete="off">
                <h3> Update</h3><hr>
                <h2>Enter your ID:</h2><input type="number" name="id" id="9" placeholder="Enter your ID here" min="1"><br>
                <h2>Enter your name:</h2><input type="text" name="name" id="10" placeholder="Enter your name here"><br>
		<h2>Enter your salary:</h2><input type="number" name="salary" id="11" placeholder="Enter your salary here" min="1"><br>
                <input type="submit" onclick="return validate()" value="Save" class="btn" name="button" ><br>
		<input type="submit" value="Back" class="bttn" name="buttton" >
        </form>
        <% 
           if(request.getParameter("button")!=null)
           {
              String id=request.getParameter("id");
              String name=request.getParameter("name");
              String salary=request.getParameter("salary");
              try{
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url="jdbc:mysql://localhost:3306/javaintern4employee";
			Connection con=DriverManager.getConnection(url,"root","abc123");
			String sql="update employee set name=?,salary=? where id=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,name);
                        pst.setString(2,salary);
                        pst.setString(3,id);
			pst.executeUpdate();
			out.println("record updated");
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