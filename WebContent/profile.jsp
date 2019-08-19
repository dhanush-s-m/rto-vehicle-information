<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
      <%@ page import="java.io.*" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600'>

      <link rel="stylesheet" href="assets/style5.css">
<style>
body{
     font-family:sans-serif;
     font-size:1em;
    }
table{
      width:70%;
     }    
table,th,td{
      border:1px solid black;
      border-collapse:collapse;
      opacity:0.95;
     }    
th,td{
      padding:10px;
      text-align:left;
     }  
th{
   background-color:#7d8471;
   color:white;
  }   
   
    
    header {
    
  background: #eee;
  background-image: url("images/em.png");
  background-repeat: no-repeat;
  
  background-size: cover;
  background-color: red;
  height: 360px;
}       
</style>
</head>
</head>
<body>



<% 
String connectionURL ="jdbc:mysql://localhost:3306/rto1";

Connection con = null;



ResultSet rs=null;

try {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	con = DriverManager.getConnection(connectionURL,"root","root");
     
	String name=request.getParameter("username");
	String password=request.getParameter("password1");
	String query = "select name,password from employee where name=? and password=?";		
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,name);
	ps.setString(2,password);

     rs= ps.executeQuery();
   
   
	if(rs.next()){
   
   
	 %>	  
	 
	 <div class="container">
  <header>
    <i class="fa fa-bars" aria-hidden="true"></i>
  </header>
  <main>
    <div class="row">
      <div class="left col-lg-4">
        <div class="photo-left">
          <img class="photo" src="images/lo.png">
          <div class="active"></div>
        </div>
        <h4 class="name">EMPLOYEE NAME:&nbsp;&nbsp; <%=name %></h4>
       
       
        
        
        
        </div>
        <p class="desc"></p>
        <div class="social">
          <i class="fa fa-facebook-square" aria-hidden="true"></i>
          <i class="fa fa-twitter-square" aria-hidden="true"></i>
          <i class="fa fa-pinterest-square" aria-hidden="true"></i>
          <i class="fa fa-tumblr-square" aria-hidden="true"></i>
        </div>
      </div>
      
      <a  href="emp_login.html"  align="center"> <span class="follow">  LOGOUT  </span></a>
      <div class="right col-lg-8">
        <ul class="nav">
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
        
        
        
        <div class="row gallery">
          <div class="login-box">
     <a href="vehicle_reg.html"><h1 style="color:#fff">Register Vehicle</h1></a><br>
     </div>
          
          <div class="login-box1">
     <a href="ret1.html"><h1 style="color:#fff">Retrive Information</h1></a><br> 
     </div>
     
    
    
     <div class="login-box3">
     <a href="update2.jsp"><h1 style="color:#fff">Update Vehicle</h1></a><br> 
     </div>
     
     
     <div class="login-box4">
     <a href="delete1.html"><h1 style="color:#fff">Delete Vehicle</h1></a><br> 
     </div>
     
       
         
      
        </div>
      </div>
  </main>
</div>
	 
	 
	 
	
	
	 
	 
     <%
   

	}
	
	else
		
	{
		 RequestDispatcher rd=request.getRequestDispatcher("emp_login.html");
        rd.forward(request,response);
	}
		
	
	
}catch(Exception e)
{
}
finally {



	con.close();

	}

	
%>



  


</body>
</html>