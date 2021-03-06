<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>

<%
String email=(String)session.getAttribute("email");
if(email==null){
	response.sendRedirect("index.jsp");
}

%>

<html>
<head>
<title>Code Warrior</title>
<link rel="stylesheet" type="text/css" href="style.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body style="background-color:rgb(128, 255, 255)">

    <jsp:include page="header.jsp"></jsp:include>        
        
    <div id="section">
    <h2>Instructions:</h2>
    <ul>
	  <li>Total Questions: 15</li>
	  <li>Time Alloted: 20 Minutes</li>
	  <li>Questions based on C and C++</li>
	  <li>There is no negative marking</li>
	  <li>Top 20 will be short listed for the next round</li>
	  <li>Click on <b>Start</b> button to start the test</li>
	  <li>After the test starts, don't press back or refresh button or don't close the browser window</li>
	  <li>You have only one attempt.</li>
	</ul>  
    
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button  class="btn btn-block btn-success " id="start" style="width:60px;height:30px" onClick="parent.location='test.jsp'">Start</button>    
    </div>
    
</body>

</html>