<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.AdminDAO"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");

String result=AdminDAO.login(email, password);

if(result.equals("true")){
	session.setAttribute("email", "admin");
	response.sendRedirect("adminHome.jsp");
}
else{
	response.sendRedirect("adminLogin.jsp");
}
%>