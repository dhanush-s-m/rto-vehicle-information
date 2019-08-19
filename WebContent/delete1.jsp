<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


</head>
<body>

<center>


<%	try{
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rto1","root","root");
	String vnum = request.getParameter("vnum1");
    String query="select * from vehicle v,licence1 l,owner3 o,insurence i,registration r where v.vnum=? and l.vnum=? and o.vnum=? and i.vnum=? and r.vnum=?" ;
    
    
    
	PreparedStatement ps=con.prepareStatement(query);
	
	ps.setString(1,vnum);
    ps.setString(2,vnum);
    ps.setString(3,vnum);
    ps.setString(4,vnum);
    ps.setString(5,vnum);
	
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
	
	//out.println(n);
	         String q="delete  from  registration   where vnum=? " ;
	         String q1="delete  from  insurence   where vnum=? " ;
	         String q3="delete  from  licence1   where vnum=? " ;
	         String q2="delete  from  owner3   where vnum=? " ;
	         String q4="delete  from  vehicle   where vnum=? " ;
	         
	     	 PreparedStatement statement=con.prepareStatement(q);
	     	PreparedStatement statement1=con.prepareStatement(q1);
	    	PreparedStatement statement2=con.prepareStatement(q3);
	    	PreparedStatement statement3=con.prepareStatement(q2);
	    	PreparedStatement statement4=con.prepareStatement(q4);
	     	 
	     	statement.setString(1,vnum);
	     	statement1.setString(1,vnum);
	     	statement2.setString(1,vnum);
	     	statement3.setString(1,vnum);
	     	statement4.setString(1,vnum);
	     	
             int i=statement.executeUpdate();
             int j=statement1.executeUpdate();
             int k=statement3.executeUpdate();
             int l=statement2.executeUpdate();
             int m=statement4.executeUpdate();
             if(i>0 && j>0 && k>0 && l>0 && m>0){
            	 out.println("<script>alert('deleted sucessfully');window.location='delete1.html';</script>");
             }
	}
	else
	{
   	 out.println("<script>alert('NOT RECORDS FOUND TO DELETE');window.location='delete1.html';</script>");

	}

     }catch(Exception e){
    	 
    	 out.println(e);
    	 out.println("Unable to connect to database.");

     }
	%>
  </form>
    </div>
</center>

</body>
</html>