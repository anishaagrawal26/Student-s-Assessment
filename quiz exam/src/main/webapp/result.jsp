<%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>


<html>
<head>
<title>Code Warrior</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>

    <script type="text/javascript">
        window.onbeforeunload = function() { return "Warning: Your work will be lost!"; };
    </script>

    <jsp:include page="header.jsp"></jsp:include>        
        
    <div id="section">
    <h2>Test Finished:</h2>
    <ul>
      <li>Your result is saved.</li>
     <li>Your results will be soon informed to you by your teacher.</li>
    </ul>  
    
    <br/>
    <h2>Hope you are studying well !!</h2>
    </div>
    
</body>

</html>