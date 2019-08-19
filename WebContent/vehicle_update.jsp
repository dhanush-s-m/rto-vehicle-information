<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update vehicle</title>
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
top:100%;
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
<body>

<div class="ab">
<form action="vehicle_update.jsp">

<h1 align="center"><U>VEHICLE  REGISTRATION</U></h1>
<lable>VEHICLE NAME           :<br><input type="text" name="n"  placeholder="ENTER  V-NAME"/> </lable> <br>

<lable>VEHICLE CATEGORY:</lable>
<select name="a" size="1">
<option value="BIKE">BIKE</option>
<option value="CAR">CAR</option>
<option value="JEEP">JEEP</option>
<option value="LORRY">LORRY</option>
</select>
<br>

<lable>VEHICLE NUMBER          :<br><input type="text" name="nb"  placeholder="ENTER  V-NUMBER"/> </lable> <br>


<lable>COMPANY NAME          :<br><input type="text" name="b" placeholder="ENTER COMPANY NAME" /> </lable> <br>
<lable>COLOUR          :<br><input type="text" name="c" placeholder="ENTER  V-COLOUR" /> </lable> <br>
<lable>CHASSIS NUMBER         :<br><input type="text" name="d" placeholder="ENTER CHASSIS NUMBER" /> </lable> <br>
<lable>FUEL TYPE:</lable>
<select name="type" size="1">
<option value="PETROL">Petrol</option>
<option value="DIESEL">Diesel</option>
</select>
<br>

<lable>AADHAR NUMBER  :<br><input type="text" name="e" placeholder="ENTER AADHAR NUMBER" /> </lable> <br>
<br>
<p><input type="submit" value="SUBMIT"/>  </p>


<p> <a href="license_update.jsp"><input type="submit" value="NEXT" > </a> </p>
<center>
<a href="profil.html"><font color="white">BACK</font></a> <br>  <br>
</center>




 <%

try
 {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rto1","root","root");
   String vname=request.getParameter("n");
   String vcatg=request.getParameter("a");
  String cname=request.getParameter("b");
  String color=request.getParameter("c");
  String chnum=request.getParameter("d");
  String fuel=request.getParameter("type");
  String aadhar=request.getParameter("e");
  String vnum=request.getParameter("nb");


   
   
   PreparedStatement st=con.prepareStatement("update vehicle set vname=?,vcatg=?,cname=?,color=?,chnum=?,fuel=?,aadhar=? where vnum=?");
   st.setString(1,vname);
   st.setString(2,vcatg);
   st.setString(3,cname);
   st.setString(4,color);
   st.setString(5,chnum);
   st.setString(6,fuel);
   st.setString(7,aadhar);

   st.setString(8,vnum);

   
   
   int i=st.executeUpdate();
	
	if(i!=0)
	{
		%>
		<center><table style="background-color: black;" width="50%" border="1">
		<tr><th>VEHICLE UPDATED SUCCESSFULLY</th></tr>
		</table></center>
	<% }
	
	}
	catch(Exception e)
	{
		 out.println(e);
		 
		 out.println("VEHICLE NOT UPDATED");
	}


%>
 </div>
</form>
 </body>
 </html>