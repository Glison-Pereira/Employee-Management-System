<%@ page import="java.sql.*" %>
<html>
<head>
     <title>Employee Management System</title>
     <link rel="stylesheet" href="style.css">
     <link rel="icon" href="https://4.imimg.com/data4/OO/UR/ANDROID-14010578/product.jpeg">
     <style>
         div{
  		background-color: white;
  		width: 300px;
  		height: 100px;
  		border: 1px solid black;
  		font-size:20px;
  		color:black;
  		overflow-y: scroll;
                margin-left:120px
	}
        h4{
                font-size:20px;
                color:black;
                font-family:cursive;
                font-style:italic;
                margin:2px;
                text-align:center;
        }
        th{
                text-align:center;
        }
     </style>
</head>
<body>
        <h1>View Employees</h1>
        <form onsubmit="return valid()" method="post" autocomplete="off">
                <h3> View</h3><hr>
                <div >
                   <table>
                    
                    <%
          		try{
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
				String url="jdbc:mysql://localhost:3306/javaintern4employee";
				Connection con=DriverManager.getConnection(url,"root","abc123");
				String sql="select * from employee";
				PreparedStatement pst=con.prepareStatement(sql);
				ResultSet rs=pst.executeQuery();
				while(rs.next())
				{
                                
     		  %>              
                                       <tr>     
                              		<th><h4>id:<%= rs.getString(1) %></h4></th>
                                        <th><h4>name:<%= rs.getString(2) %></h4></th>
                                        <th><h4>salary:<%= rs.getString(3) %></h4></th>
                                      </tr>
    		 <%
				}
				con.close();
			}
			catch(SQLException e)
			{
				out.println("issue "+ e);
			}
    		%>
                
                </table>
                </div>
		<input type="submit" value="Back" class="bttn" name="buttton" >
        </form>
        <%
             if(request.getParameter("buttton")!=null)
             {
                   session.invalidate();
                   response.sendRedirect("index.jsp");
             }
        %>
</body>
</html>