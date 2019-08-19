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
<body>

<div class="ab">
<form action="license_update.jsp">

<h1 align="center"><U>LICENSE  UPDATE</U></h1>
<lable>OWNER NAME         :<br><input type="text" name="g"  placeholder="ENTER  OWNER NAME"/> </lable> <br>
<lable>LICENSE NUMBER          :<br><input type="text" name="b" placeholder="ENTER LICENSE NUMBER" /> </lable> <br>
<lable>LICENSE TYPE:</lable>
<select name="typ" size="1">
<option value="MCWG">MCWG</option>
<option value="LMV">LMV</option>
<option value="HMV">HMV</option>
</select>
<br>
<lable>VEHICLE NUMBER          :<br><input type="text" name="nu" placeholder="ENTER VEHICLE NUMBER" /> </lable> <br>
<lable>VALID FROM        :<br><input type="date" name="n"  placeholder="VALID FROM"/> </lable> <br>
<lable>EXPIRY DATE        :<br><input type="date" name="a" placeholder="EXPIRY DATE " /> </lable> <br>

<br>
<p><input type="submit" value="SUBMIT"/>  </p>

</form>
<p> <a href="owner_update.jsp"><input type="submit" value="NEXT" > </a> </p>
<center>
<a href="vehicle_update.jsp"><font color="white">BACK</font></a> <br>  <br>
</center>


 <%

try
 {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rto1","root","root");
   String oname=request.getParameter("g");
   String lnum=request.getParameter("b");
  String ltype=request.getParameter("typ");
  String vnum=request.getParameter("nu");
  String vfrom=request.getParameter("n");
  String edate=request.getParameter("a");
  


   
   
   PreparedStatement st=con.prepareStatement("update licence1 set oname=?,lnum=?,ltype=?,valid_from=?,expir=? where vnum=?");
   st.setString(1,oname);
   st.setString(2,lnum);
   st.setString(3,ltype);
   st.setString(4,vfrom);
   st.setString(5,edate);
   st.setString(6,vnum);
   

  

   
   
   int i=st.executeUpdate();
	
	if(i!=0)
	{
		%>
		<center><table style="background-color: black;" width="50%" border="1">
		<tr><th>LICENCE UPDATED SUCCESSFULLY</th></tr>
		</table></center>
	<% }
	
	}
	catch(Exception e)
	{
		 out.println(e);
		 
		 out.println("LICENCE NOT UPDATED");
	}


%>
 </div>
</form>
 </body>
 </html>