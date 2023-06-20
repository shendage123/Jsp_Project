
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%



String Id=request.getParameter("Id");
 int id1=Integer.parseInt(Id);
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collage","root","root");
PreparedStatement ps=con.prepareStatement("select * from data  id=?");
ps.setInt(1,id1);
ResultSet rs=ps.executeQuery();
rs.next();
%>
</body>
<form action="Update.jsp">
id:<input type="number " name="id" value="<%=rs.getInt(1) %>">
Name:<input type="text " name="name" value="<%=rs.getString(2) %>">
Email:<input type="	email" name="email" value="<%=rs.getInt(3) %>">
<input type="submit">


</form>
</html>