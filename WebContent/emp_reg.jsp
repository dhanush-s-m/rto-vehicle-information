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

body {
	margin: 0;
	padding: 0;
	background-image: url("images/mat.jpg");
	font-family: sans-serif;
	
  background-size: cover;
	
}

.ab
{
top:90%;
left:50%;
position:absolute;
background:rgba(0,0,0,0.4);
   color:#fff;
transform: translate(-50%,-50%)	;
box-sizing: border-box;
padding:70px 80px;

	
}

input[type=text],select{
align:center;
width:100%;
padding:12px 20px;
margin:8px 0;
display:inline-block;
border:1px solid #ccc;
border-radius:4px;
box-sizing:border-box;

}

input[type=password],select{
align:center;
width:100%;
padding:12px 20px;
margin:8px 0;
display:inline-block;
border:1px solid #ccc;
border-radius:4px;
box-sizing:border-box;

}

input[type=mail],select{
align:center;
width:100%;
padding:12px 20px;
margin:8px 0;
display:inline-block;
border:1px solid #ccc;
border-radius:4px;
box-sizing:border-box;

}

input[type=date],select{
align:center;
width:100%;
padding:12px 20px;
margin:8px 0;
display:inline-block;
border:1px solid #ccc;
border-radius:4px;
box-sizing:border-box;

}

input[type=file],select{
align:center;
width:100%;
padding:12px 20px;
margin:8px 0;
display:inline-block;
border:1px solid #ccc;
border-radius:4px;
box-sizing:border-box;
background-color:white;
}

input[type=submit] {
align:center;
width:100%;
background-color:pink;
color:white;
padding:14px 20px;
margin:8px 0;
border:none;
border-radius:4px;
cursor:pointer;
}

input[type=submit]:hover{

background-color:#400040;;
}

div{
border-radius:5px;
background-color:#f2f2f2;
padding:20px;

}

</style>
</head>
</head>
<body>



<div class="ab">
<form action="emp_reg.jsp">

<h1 align="center"><U>EMPLOYEE REGISTRATION</U></h1>
<lable>ID       :<br><input type="text" name="dd"  placeholder="ENTER  EMPLOYEE ID"/> </lable> <br>

<lable>NAME        :<br><input type="text" name="g"  placeholder="ENTER  EMPLOYEE NAME"/> </lable> <br>
<lable>PASSWORD          :<br><input type="password" name="b" placeholder="ENTER PASSWORD" /> </lable> <br>
<lable>PHONE          :<br><input type="text" name="d" placeholder="ENTER PHONE NUMBER" /> </lable> <br>

<lable>EMAIL        :<br><input type="mail" name="n"  placeholder="ENTER MAIL-ID"/> </lable> <br>


<br>
<p><input type="submit" value="SUBMIT"/>  </p>
 </form>

<center>

<a href="profil.html"><font color="white">&nbsp;PROFILE</font></a> 
</center>

	 



<% 
String connectionURL ="jdbc:mysql://localhost:3306/rto1";

Connection con = null;
PreparedStatement ps=null;

PrintWriter pw=response.getWriter();

ResultSet rs=null;


String d=request.getParameter("dd");
String a=request.getParameter("g");
String ab=request.getParameter("b");
String b=request.getParameter("d");
String c=request.getParameter("n");



int i = 0;
if(a!=null &&ab!=null &&b!=null &&c!=null ){
	if(a!="" &&ab!="" &&b!="" &&c!="" ){

	


try {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	con = DriverManager.getConnection(connectionURL,"root","root");
     
	
	
	String query="insert into employee1 values(?,?,?,?,?)";
	
	 ps=con.prepareStatement(query);
	ps.setString(1,d);
	ps.setString(2,a);
	ps.setString(3,ab);
	ps.setString(4,b);
	ps.setString(5,c);
	
	

    
   
   
	
   
      i=ps.executeUpdate();
		
      if(i>0 ){
     	 out.println("<script>alert('Employee  Registred Sucessfully');window.location='emp_reg.jsp';</script>");
      }

else
{
 out.println("<script>alert('EMPLOYEE NOT REGISTRED');window.location='emp_reg.jsp';</script>");

}
	}
		catch(Exception e)
		{
			 out.println(e);
			 
			 out.println("EMPLOYEE NOT REGISTRED");
		}

		
		finally
		{
			ps.close();
			con.close();
			
		}
	}
}
	
%>




</div>
</body>
</html>