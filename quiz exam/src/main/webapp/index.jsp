<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>
<html>
<head>
<title>Student's Assessment</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


<body style="background-color:rgb(128, 255, 255);">

	<script type="text/javascript">
    	function check(){
    		if(document.register.name.value.length<5){
    			alert("minimum name length must be 5 characters");
    			return false;
    		}
    		
            if(document.register.name.value.length>50){
                alert("maximum name length must be 50 characters");
                return false;
            }

            if(document.register.email.value.length>50){
                alert("maximum email length must be 50 characters");
                return false;
            }            
    	}
	</script>

    <jsp:include page="header.jsp"></jsp:include>        
        
    <div id="section">
    
        <br/><br/>
        
        <div align="center">
        <form action="registerDAO.jsp" name="register" onsubmit="return check()">
            <table cellspacing="5px" style="text-align:center">
                <tr>
                    <th colspan="2"><h1>Login Student</h1><br><br></th>
                </tr>        
                
                <tr>
                    <td><b>Name:&nbsp&nbsp&nbsp&nbsp</b><br><br></td>
                    <td><input type="text" name="name" class="form-control" required/><br><br></td>
                </tr><br>
                
                <tr>
                    <td><b>Email:&nbsp&nbsp&nbsp&nbsp</b><br><br></td>
                    <td><input type="email" class="form-control" name="email" required/><br><br></td>
                </tr>
                <tr><td colspan="3"> <b>Select Set : </b><br><br></td></tr>
                <tr> <td><input type="radio" id="set1"  name="set" value="set1" required checked>
                <label for="set1">set1</label></td>
                <td><input type="radio" id="set2" name="set" value="set2">
				<label for="set2">set2</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<input type="radio" id="set3" name="set" value="set3">
				<label for="set3">set3</label> </td>
</tr>
                <tr>
                    <td colspan="2" align="center"><br><br><br><input type="submit" class="btn btn-success btn-block" value="Register"/></td>
                </tr>
                
                


            </table>
        </form>
        
        <%
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){%>
        		<p style="color:red">Some error occurred!</p>
        	<%}
        	else if(status.equals("registered")){%>
        		<p style="color:red">Email already registered!</p>
        	<%}
        }
        %>
        </div>
        
    </div>
    
</body>

</html>