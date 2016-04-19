<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NewtGlobal</title>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
</head>
<body>

	
	<table border="1">
		 <tr> 
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Profile</th>   
         </tr>
		<c:forEach items="${emplist}" var="obj">
		<tr onMouseOver="this.className='tablecell_over'" onMouseOut="this.className=''">
			
			<%-- <td class="tablecell" > <input type="radio" name="selEmpId" value="${obj.id}"></td> --%>
			<td class="tablecell">${obj.name}</td>
			<td class="tablecell">${obj.email}</td>
			<td class="tablecell">${obj.phone}</td>
			<td class="tablecell">${obj.profile}</td>
		</tr>
		</c:forEach>
	</table><br><br>

	
</body>
</html>