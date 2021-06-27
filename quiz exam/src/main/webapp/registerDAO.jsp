<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random"%>
<%@page import="com.UserDAO"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String set=request.getParameter("set");
String result=UserDAO.registerUser(name,email);
int id=0;
if(set.equals("set1"))
	id=1;
if(set.equals("set2"))
	id=2;
if(set.equals("set3"))
	id=3;
	

if(result.equals("true")){
	Random random=new Random();
	int i=random.nextInt(3)+1;
	session.setAttribute("email",email);
	session.setAttribute("set", ""+id);
	response.sendRedirect("home.jsp");
}

if(result.equals("false")){
	response.sendRedirect("index.jsp?status=false");
}

if(result.equals("registered")){
    response.sendRedirect("index.jsp?status=registered");
}
%>