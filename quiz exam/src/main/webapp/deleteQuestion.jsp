<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.AdminDAO"%>
<%@page import="com.UserDAO"%>
<%@page import="org.json.simple.JSONObject"%>
<%
String email=(String)session.getAttribute("email");
if(email!=null){
    if(!email.equals("admin")){
        response.sendRedirect("adminLogin.jsp");
    }
}
else{
    response.sendRedirect("adminLogin.jsp");
}
%>


<html>
<head>
<title>Student's Assessment </title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


<body>


    <jsp:include page="header.jsp"></jsp:include>        
    <jsp:include page="navigation.jsp"></jsp:include>  
      
    <div id="section">
        <h2>Edit Question</h2>
     
      <%
        String set=request.getParameter("set");
        String id=request.getParameter("id");
        %>
    
        <p>Are sure you want to delete this question?</p><br/>
        <a  class="success" href="deleteQuestionDAO.jsp?id=<%=id%>&set=<%=set%>"><button class="btn btn-success">Yes</button></a> &nbsp; <a href="filterQuestions.jsp?set=<%=set%>"><button class="btn btn-success">No</button></a>
    </div>
</body>

</html>