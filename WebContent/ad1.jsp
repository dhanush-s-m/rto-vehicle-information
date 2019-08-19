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
      <td colspan="8"><h1>Vehicle Details</h1></td>
      </tr>
      <tr>
           <th >V-NAME</th>
           <th>V-CATEGORY</th>
           <th>V-NUMBER</th>
           <th>COMPANY NAME</th>
           <th>COLOR</th>
           <th>CHASSIS NUMBER</th>
           <th>FUEL TYPE</th>
           <th>AADHAR NUMBER</th>
           
      </tr>

<% 
String connectionURL ="jdbc:mysql://localhost:3306/rto1";

Connection connection = null;



ResultSet rs=null;

try {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	connection = DriverManager.getConnection(connectionURL,"root","root");
     
	String vnum=request.getParameter("vnum1");
	String queryString ="select * from vehicle where vnum=?";
	PreparedStatement ps=connection.prepareStatement(queryString);
	ps.setString(1,vnum);

     rs= ps.executeQuery();
   
   
	
   
   while(rs.next())
   {
	 %>	   
	 <tr>
	     <td><%=rs.getString(1) %></td>
	     <td><%=rs.getString(2) %></td>
	     <td><%=rs.getString(3) %></td>
	     <td><%=rs.getString(4) %></td>
	     <td><%=rs.getString(5) %></td>
	     <td><%=rs.getString(6) %></td>
	     <td><%=rs.getString(7) %></td>
	     <td><%=rs.getString(8) %></td>
	     
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

<br>

<table align="center">
      <tr>
      <td colspan="8"><h1>Owner Details</h1></td>
      </tr>
      <tr>
           <th >O-NAME</th>
           <th>MOBILE NUMBER</th>
           <th>ADDRESS</th>
           <th>LICENSE NUMBER</th>
           <th>OWNERSHIP</th>
           <th>V-NUMBER</th>
           <th>AADHAR NUMBER</th>
          
           
      </tr>


<% 






Connection con = null;

ResultSet rs1=null;



try {
  
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	con= DriverManager.getConnection("jdbc:mysql://localhost:3306/rto1","root","root");
	
     
	String vnum=request.getParameter("vnum1");
	String queryString ="select * from owner3 where vnum=?";
	PreparedStatement ps=con.prepareStatement(queryString);
	ps.setString(1,vnum);

     rs1= ps.executeQuery();
   
   
	
   
   while(rs1.next())
   {
	 %>	   
	 <tr>
	     <td><%=rs1.getString(1) %></td>
	     <td><%=rs1.getString(2) %></td>
	     <td><%=rs1.getString(3) %></td>
	     <td><%=rs1.getString(4) %></td>
	     <td><%=rs1.getString(5) %></td>
	     <td><%=rs1.getString(6) %></td>
	     <td><%=rs1.getString(7) %></td>
	    
	     
	 </tr>
     <%
   }

   
}catch(Exception e)
{
}
finally {



	con.close();

	}

	
%>


</table>



<br>

<table align="center">
      <tr>
      <td colspan="8"><h1>LICENCE DETAILS</h1></td>
      </tr>
      <tr>
           <th >O-NAME</th>
           <th>LICENCE NUMBER</th>
           <th>LICENCE TYPE</th>
           <th>VEHICLE NUMBER</th>
           <th>VALID FROM</th>
           <th>EXPIRY DATE</th>
         
           
      </tr>


<% 






Connection co = null;

ResultSet rs2=null;



try {
  
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	co= DriverManager.getConnection("jdbc:mysql://localhost:3306/rto1","root","root");
	
     
	String vnum=request.getParameter("vnum1");
	String queryString ="select * from licence1 where vnum=?";
	PreparedStatement ps=co.prepareStatement(queryString);
	ps.setString(1,vnum);

     rs2= ps.executeQuery();
   
   
	
   
   while(rs2.next())
   {
	 %>	   
	 <tr>
	     <td><%=rs2.getString(1) %></td>
	     <td><%=rs2.getString(2) %></td>
	     <td><%=rs2.getString(3) %></td>
	     <td><%=rs2.getString(4) %></td>
	     <td><%=rs2.getString(5) %></td>
	     <td><%=rs2.getString(6) %></td>
	   
	    
	     
	 </tr>
     <%
   }

   
}catch(Exception e)
{
}
finally {



	co.close();

	}

	
%>


</table>

<br>

<table align="center">
      <tr>
      <td colspan="8"><h1>INSURENCE DETAILS</h1></td>
      </tr>
      <tr>
           <th >O-NAME</th>
           <th>INSURENCE NUMBER</th>
           <th>INSURENCE TYPE</th>
            <th>VALID THROUGH</th>
           <th>VEHICLE NUMBER</th>
         
         
           
      </tr>


<% 






Connection co1 = null;

ResultSet rs3=null;



try {
  
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	co1= DriverManager.getConnection("jdbc:mysql://localhost:3306/rto1","root","root");
	
     
	String vnum=request.getParameter("vnum1");
	String queryString ="select * from insurence where vnum=?";
	PreparedStatement ps=co1.prepareStatement(queryString);
	ps.setString(1,vnum);

     rs3= ps.executeQuery();
   
   
	
   
   while(rs3.next())
   {
	 %>	   
	 <tr>
	     <td><%=rs3.getString(1) %></td>
	     <td><%=rs3.getString(2) %></td>
	     <td><%=rs3.getString(3) %></td>
	     <td><%=rs3.getString(4) %></td>
	     <td><%=rs3.getString(5) %></td>
	     
	   
	    
	     
	 </tr>
     <%
   }

   
}catch(Exception e)
{
}
finally {



	co1.close();

	}

	
%>


</table>

<br>

<table align="center">
      <tr>
      <td colspan="8"><h1>REGISTRATION DETAILS</h1></td>
      </tr>
      <tr>
           <th >STATE</th>
           <th>CITY NAME</th>
           <th>RTO BRANCH</th>
            <th>REGISTRATION DATE</th>
           <th>VEHICLE NUMBER</th>
         
         
           
      </tr>


<% 






Connection co2 = null;

ResultSet rs4=null;



try {
  
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	co2= DriverManager.getConnection("jdbc:mysql://localhost:3306/rto1","root","root");
	
     
	String vnum=request.getParameter("vnum1");
	String queryString ="select * from registration where vnum=?";
	PreparedStatement ps=co2.prepareStatement(queryString);
	ps.setString(1,vnum);

     rs4= ps.executeQuery();
   
   
	
   
   while(rs4.next())
   {
	 %>	   
	 <tr>
	     <td><%=rs4.getString(1) %></td>
	     <td><%=rs4.getString(2) %></td>
	     <td><%=rs4.getString(3) %></td>
	     <td><%=rs4.getString(4) %></td>
	     <td><%=rs4.getString(5) %></td>
	     
	   
	    
	     
	 </tr>
     <%
   }

   
}catch(Exception e)
{
}
finally {



	co2.close();

	}

	
%>


</table>
<BR>
<BR>
<center>
   <a  href="ret1.html"  align="center">BACK </a>
   </center>
   
</body>
</html>