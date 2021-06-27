<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.AdminDAO"%>
<%
String id=request.getParameter("id");
String set=request.getParameter("set");
String result=AdminDAO.deleteQuestion(id);

if(result.equals("true")){
	response.sendRedirect("filterQuestions.jsp?set="+set+"&status=true");
}
else{
	response.sendRedirect("filterQuestions.jsp?set="+set+"&status=false");
}
%>