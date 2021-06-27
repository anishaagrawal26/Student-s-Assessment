<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String email=(String)session.getAttribute("email");
if(email!=null){
    if(email.equals("admin")){
        response.sendRedirect("adminHome.jsp");
    }
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style >
td,tr,th{
text-align:center;
}
body{
background-color:rgb(128, 255, 255);
}
</style>
</head>


<body>

    <script type="text/javascript">
        function check(){
            if(document.login.password.value.length<5){
                alert("minimum password length must be 5 characters");
                return false;
            }
            
            if(document.login.password.value.length>15){
                alert("maximum password length must be 15 characters");
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
        <form action="adminLoginDAO.jsp" name="login" onsubmit="return check()">
            <table cellpadding="10px" align="center">
                <tr>
                    <th colspan="2"><h1>Admin Login</h1><br><br></th>
                </tr>        
                
                <tr>
                    <td><b>Email:&nbsp&nbsp&nbsp&nbsp</b><br><br></td>
                    <td><input type="email" name="email" class="form-control" placeholder="enter email" required/><br><br></td>
                </tr>
                
                <tr>
                    <td><b>Password:&nbsp&nbsp&nbsp&nbsp</b><br><br></td>
                    <td><input type="password" name="password" class="form-control" placeholder="enter password"  required/><br><br></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" class="btn btn-success btn-block" value="Login"/></td>
                </tr>
            </table>
        </form>
        </div>
        
    </div>
    

</body>

</html>