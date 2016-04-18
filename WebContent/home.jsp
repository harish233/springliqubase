<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewtGlobal</title>
<script type="text/javascript" language="JavaScript" src="script/sbi.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
</head>
<body>
<form action="save.do">
	<h2>Welcome to newt | global</h2>
	
	<h4>Register</h4>
	
	Name : <input type="text" name="name"><br><br>
	Email : <input type="text" name="email"><br><br>
	Phone : <input type="text" name="phone"><br><br>
	Profile : <input type="text" name="profile"><br><br>
	<input type="submit" value="Save Employee"><br><br>
	
	<table border="1">
		 <tr> 
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Profile</th>   
         </tr>
		<c:forEach items="emplist" var="obj">
		<tr onMouseOver="this.className='tablecell_over'" onMouseOut="this.className=''">
			<!-- <td class="tablecell">hellooooo</td>
			<td class="tablecell">hellooooooooooooooo</td> -->
			<td class="tablecell" > <input type="radio" name="selGeoId" value="${obj.id}"></td>
			<td class="tablecell">${obj.name}</td>
			<td class="tablecell">${obj.email}</td>
			<td class="tablecell">${obj.phone}</td>
			<td class="tablecell">${obj.profile}</td>
		</tr>
		</c:forEach>
	</table>
	<!-- <input type="button" value="Get Employee"> -->
</form>	
</body>
</html>