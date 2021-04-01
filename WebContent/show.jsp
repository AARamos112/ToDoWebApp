<%@page language="java" 
contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDoWebApp</title>
</head>

<%
	String add = request.getParameter("add");

%>

<body>
	<header>
        <nav>
            <a href="show.jsp">Show List</a>
            <a href="add.jsp">Add</a>
			<a href="delete.jsp">Delete</a>
		</nav>

    </header>
<h3>My To-Do List</h3>



		<table border="1">
		<tbody>
			<tr>
				<td>
		<%
	//input from add.jsp and delete.jsp
	String addItem= request.getParameter("add");
	String delItem= request.getParameter("delete");
	
	
	//Datatbase name and credentials
	String jdbcURL = "jdbc:mysql://localhost:3306/todoappschema";
	String user = "Angel";
	String pass = "Angel";
	try {
		//connecting to database
		System.out.println("Connecting to Database: " + jdbcURL);
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection myconn = DriverManager.getConnection(jdbcURL, user, pass);		
		Statement st = myconn.createStatement();
		
		//adding item to database
		if(addItem == null || addItem == " "){
		}
		else{
			String sql = ("INSERT INTO mylist (listItem) VALUES ('" + addItem + "')");
			st.execute(sql);
		}
		
		//deleting item from database
		if(delItem == null || delItem == " "){
		}
		else{
			String sql = ("DELETE FROM mylist WHERE (listItem = '" + delItem + "')");
			st.execute(sql);
		}
		
		//printing table from database
		String query="SELECT * FROM mylist";
		ResultSet rs=st.executeQuery(query);
		while(rs.next()){

			%>
			
               <%= rs.getString("listItem")%>
            	<br>
			<%
		
		}
	}
	catch (Exception exc) {
		exc.printStackTrace();
	}
	
	
%>
			
		
		
		
				</td>
			</tr>
		</tbody>
	</table>
	
	
</body>
</html>