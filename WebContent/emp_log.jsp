<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
      <%@ page import="java.io.*" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
     font-family:sans-serif;
     font-size:1em;
    }
table{
      width:88%;
     }    
table,th,td{
      border:1px solid black;
      border-collapse:collapse;
      opacity:0.95;
     }    
th,td{
      padding:10px;
      text-align:center;
     }  
th{
   background-color:#7d8471;
   color:white;
  }   
tr:nth-child(even)
    {
      background-color:#e8e8e8;
    }  
tr:nth-child(odd)
    {
      background-color:white;
    }           
</style>
</head>
</head>
<body>


<table align="center">
      <tr>
      <td colspan="8"><h1>Employee Logs</h1></td>
      </tr>
      <tr>
           <th >E-ID</th>
           <th>E-NAME</th>
           <th>ACTION</th>
           <th>DATE/TIME</th>
           
           
      </tr>

<% 
String connectionURL ="jdbc:mysql://localhost:3306/rto1";

Connection connection = null;



ResultSet rs=null;

try {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	connection = DriverManager.getConnection(connectionURL,"root","root");
     
	
	String query = "select * from logs";	
	PreparedStatement ps=connection.prepareStatement(query);

     rs= ps.executeQuery();
   
   
	
   
   while(rs.next())
   {
	 %>	   
	 <tr>
	     <td><%=rs.getString(1) %></td>
	     <td><%=rs.getString(2) %></td>
	     <td><%=rs.getString(3) %></td>
	     <td><%=rs.getString(4) %></td>
	     
	     
	     
	     
	 </tr>
	 
     <%
   }

   
}catch(Exception e)
{
}
finally {



	connection.close();

	}

	
%>
</table>


<center>
   <a  href="profil.html"  align="center">BACK </a>
   </center>
</body>
</html>