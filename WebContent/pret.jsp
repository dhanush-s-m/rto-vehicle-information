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

      <link rel="stylesheet" href="assets/style6.css">
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
  background-image: url("images/beat.jpg");
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

Connection connection = null;



ResultSet rs=null;

try {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	connection = DriverManager.getConnection(connectionURL,"root","root");
     
	String vnum=request.getParameter("vnum");
	String queryString ="select v.vname,v.vcatg,v.vnum,v.cname,v.color,v.chnum,v.fuel,o.oname,o.mnum,o.ownership from vehicle v,owner3 o where v.vnum=o.vnum and v.vnum=? and o.vnum=?";
	PreparedStatement ps=connection.prepareStatement(queryString);
	ps.setString(1,vnum);
	ps.setString(2,vnum);


     rs= ps.executeQuery();
   
   
	
   
   while(rs.next())
   {
	 %>	  
	 
	 <div class="container">
  <header>
    <i class="fa fa-bars" aria-hidden="true"></i>
  </header>
  <main>
    <div class="row">
      <div class="left col-lg-4">
        <div class="photo-left">
          <img class="photo" src="images/dad.jpg">
          <div class="active"></div>
        </div>
        <h4 class="name">OWNER NAME:&nbsp;&nbsp; <%=rs.getString(8) %></h4>
        <h2 class="name">OWNER NUMBER:&nbsp;&nbsp;<%=rs.getString(9) %></h2>
       
        
        
        
        </div>
        <p class="desc"></p>
        <div class="social">
          <i class="fa fa-facebook-square" aria-hidden="true"></i>
          <i class="fa fa-twitter-square" aria-hidden="true"></i>
          <i class="fa fa-pinterest-square" aria-hidden="true"></i>
          <i class="fa fa-tumblr-square" aria-hidden="true"></i>
        </div>
      </div>
      <CENTER>
        <table>
        <tr>
       <td> <h4 class="name">&nbsp;&nbsp;VEHICLE NAME</h4></td><td><h4 class="name">&nbsp;&nbsp; &nbsp;  <%=rs.getString(1) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;VEHICLE CATEGORY</h4></td><td><h4 class="name">&nbsp;&nbsp; &nbsp;  <%=rs.getString(2) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;REGISTRATION NUMBER</h4></td><td><h4 class="name">&nbsp;&nbsp; &nbsp;  <%=rs.getString(3) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;COMPANY NAME</h4></td><td><h4 class="name">&nbsp;&nbsp; &nbsp;  <%=rs.getString(4) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;COLOUR</h4></td><td><h4 class="name"> &nbsp;&nbsp; &nbsp; <%=rs.getString(5) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;CHASSIS NUMBER</h4></td><td><h4 class="name"> &nbsp;&nbsp; &nbsp; <%=rs.getString(6) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;FUEL</h4></td><td><h4 class="name">&nbsp;&nbsp; &nbsp;  <%=rs.getString(7) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;OWNER NAME</h4></td><td><h4 class="name">&nbsp;&nbsp; &nbsp;  <%=rs.getString(8) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;OWNER PHONE NUMBER</h4></td><td><h4 class="name"> &nbsp;&nbsp; &nbsp; <%=rs.getString(9) %></h4></td></tr>
       <td> <h4 class="name">&nbsp;&nbsp;OWNERSHIP</h4></td><td><h4 class="name"> &nbsp;&nbsp; &nbsp; <%=rs.getString(10) %></h4></td></tr>
        </table>
        </CENTER>
        <div class="row gallery">
         
       
       
          &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a  href="vnum.html"  align="center"> BACK  </a>
          
        </div>
      </div>
  </main>
</div>
	 
	 
	 
	
	
	 
	 
     <%
   }

   
}catch(Exception e)
{
}
finally {



	connection.close();

	}

	
%>



  


</body>
</html>