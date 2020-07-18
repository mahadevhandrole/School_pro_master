<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Dao.Add_Shift_Dao_Interface" %>
<%@ page import="com.Dao.Add_Shift_Dao_Class" %>
<%@ page import="com.Bean.Add_Shift_Bean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Add_Shift_Dao_Interface ASD = new Add_Shift_Dao_Class();
Add_Shift_Bean ASB= new Add_Shift_Bean();
int status = ASD.update(ASB);

System.out.println("Statussssssssssss " +status);
if(status>0)
{
	System.out.println("Update Successful");
	response.sendRedirect("Add_Shift.jsp");
}
else
{
	System.out.println("Update unsuccessful");
response.sendRedirect("afterlogin.jsp");
}



%>

</body>
</html>