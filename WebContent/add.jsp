<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDoWebApp</title>
</head>

<body>
	<header>
        <nav>
            <a href="show.jsp">Show List</a>
            <a href="add.jsp">Add</a>
			<a href="delete.jsp">Delete</a>
		</nav>
    </header>
<form name="myForm" action="show.jsp" method="post">
<table>
	
		<tbody>
			<tr>
				<td>Add to list:</td>
				<td><input type="text" name="add" value="" size="50"/></td>
			</tr>	
				
		</tbody>
	
</table>
	<input type="reset" value="Clear" name="clear"/>
	<input type="submit" value="Submit" name="submit"/>	
</form>
</body>
</html>