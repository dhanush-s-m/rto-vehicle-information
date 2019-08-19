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
top:250%;
left:50%;
width:60%;
position:absolute;
background:rgba(0,0,0,0.4);
   color:#fff;
transform: translate(-50%,-50%)	;
box-sizing: border-box;
padding:60px 80px;

	
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

input[type=date],select{
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

<% 
String connectionURL ="jdbc:mysql://localhost:3306/rto1";

Connection connection = null;



ResultSet rs=null;

try {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	connection = DriverManager.getConnection(connectionURL,"root","root");
     
	String vnum=request.getParameter("vnum1");
	String queryString ="select * from vehicle v,licence1 l,owner3 o,insurence i,registration r where v.vnum=? and l.vnum=? and o.vnum=? and i.vnum=? and r.vnum=?" ;
	PreparedStatement ps=connection.prepareStatement(queryString);
	ps.setString(1,vnum);
	ps.setString(2,vnum);
	ps.setString(3,vnum);
	ps.setString(4,vnum);
	ps.setString(5,vnum);

	 HttpSession s = request.getSession();
	 
     rs= ps.executeQuery();
   
 
	
   
   while(rs.next())
   {
	%>    
	
	
	
	<body>


<form action=update1.jsp method=post>
<div class="ab">

<h1 align="center"><U>VEHICLE  UPDATE</U></h1><BR>
<lable>VEHICLE NAME  :        <br><input type="text" name="n"  value=<%=rs.getString(1) %>> </lable> <br>

<lable>VEHICLE CATEGORY:</lable>
<select name="a" size="1">
<option value=<%=rs.getString(2) %>><%=rs.getString(2) %></option>
<option value="BIKE">BIKE</option>
<option value="CAR">CAR</option>
<option value="JEEP">JEEP</option>
<option value="LORRY">LORRY</option>
</select>
<br>

<lable>VEHICLE NUMBER          :<br><input type="text" name="nb"  value=<%=rs.getString(3) %>> </lable> <br>


<lable>COMPANY NAME          :<br><input type="text" name="b" value=<%=rs.getString(4) %> > </lable> <br>
<lable>COLOUR          :<br><input type="text" name="c" value=<%=rs.getString(5) %> > </lable> <br>
<lable>CHASSIS NUMBER         :<br><input type="text" name="d" value=<%=rs.getString(6) %> > </lable> <br>
<lable>FUEL TYPE:</lable>
<select name="type" size="1">
<option value=<%=rs.getString(7) %>><%=rs.getString(7) %></option>
<option value="PETROL">Petrol</option>
<option value="DIESEL">Diesel</option>
</select>
<br>

<lable>AADHAR NUMBER  :<br><input type="text" name="e" value=<%=rs.getString(8) %> > </lable> <br>
<br>

<h1 align="center"><U>LICENSE  UPDATE</U></h1><BR>
<lable>OWNER NAME         :<br><input type="text" name="gg"  value=<%=rs.getString(9) %>> </lable> <br>
<lable>LICENSE NUMBER          :<br><input type="text" name="bb" value=<%=rs.getString(10) %>> </lable> <br>
<lable>LICENSE TYPE:</lable>
<select name="typp" size="1">
<option value=<%=rs.getString(11) %>><%=rs.getString(11) %></option>
<option value="MCWG">MCWG</option>
<option value="LMV">LMV</option>
<option value="HMV">HMV</option>
</select>
<br>

<lable>VALID FROM        :<br><input type="date" name="nn"  value=<%=rs.getString(13) %>> </lable> <br>
<lable>EXPIRY DATE        :<br><input type="date" name="aa" value=<%=rs.getString(14) %>> </lable> <br>

<br>




<h1 align="center"><U>OWNER  UPDATE</U></h1><BR>
<lable>OWNER NAME         :<br><input type="text" name="ggg"  value=<%=rs.getString(15) %>> </lable> <br>
<lable>MOBILE NUMBER         :<br><input type="text" name="nnn"  value=<%=rs.getString(16) %>> </lable> <br>
<lable>ADDRESS         :<br><input type="text" name="aaa" value=<%=rs.getString(17) %>> </lable> <br>
<lable>LICENSE NUMBER          :<br><input type="text" name="bbb" value=<%=rs.getString(18) %>> </lable> <br>
<lable>OWNERSHIP:</lable>
<select name="Ownership" size="1">
<option value=<%=rs.getString(19) %>><%=rs.getString(19) %></option>
<option value="FIRST OWNER">First Owner</option>
<option value="SECOND OWNER">Second Owner</option>
<option value="THIED OWNER">Third Owner</option>
<option value="FOURTH OWNER">Fourth Owner</option>
</select>
<br>

<lable>AADHAR NUMBER  :<br><input type="text" name="eee" value=<%=rs.getString(21) %>> </lable> <br>
<br>




<h1 align="center"><U>INSURENCE  UPDATE</U></h1><BR>
<lable>OWNER NAME         :<br><input type="text" name="gggg" value=<%=rs.getString(22) %>> </lable> <br>
<lable>INSURENCE NUMBER          :<br><input type="text" name="bbbb" value=<%=rs.getString(23) %>> </lable> <br>
<lable>INSURENCE TYPE:</lable>
<select name="ty" size="1">
<option value=<%=rs.getString(24) %>><%=rs.getString(24) %></option>
<option value="f">FIRST PARTY</option>
<option value="s">THIRD PARTY</option>
</select>
<br>
<lable>VALID THROUGH        :<br><input type="date" name="nnnn"  value=<%=rs.getString(25) %>> </lable> <br>

<br>





<h1 align="center"><U>REGISTRATION UPDATE</U></h1><BR>
<lable>STATE        :<br><input type="text" name="ga"  value=<%=rs.getString(27) %>> </lable> <br>
<lable>CITY NAME          :<br><input type="text" name="ba" value=<%=rs.getString(28) %>> </lable> <br>
<lable>RTO BRANCH          :<br><input type="text" name="da" value=<%=rs.getString(29) %>> </lable> <br>

<lable>REGISTRATION DATE        :<br><input type="date" name="na"  value=<%=rs.getString(30) %>> </lable> <br>
 <br>

<br>





<p><input type="submit" value="SUBMIT"/>  </p>
<center>
<a  href="update2.jsp"  align="center"><font style=color:white> Back </font> </a>
</center>


 
   <%  
   }

   
}
catch(Exception e)
{
	 out.println(e);
}



	%>












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
  String vnum1=request.getParameter("nb");
  
  String o=request.getParameter("gg");
  String l=request.getParameter("bb");
  String ll=request.getParameter("typp");
  String v=request.getParameter("nn");
  String e=request.getParameter("aa");
  
  
  String n=request.getParameter("ggg");
  String m=request.getParameter("nnn");
  String a=request.getParameter("aaa");
  String ln=request.getParameter("bbb");
  String ow=request.getParameter("ownership");
  String aa=request.getParameter("eee");
  
  
  
  String oo=request.getParameter("gggg");
  String in=request.getParameter("bbbb");
  String it=request.getParameter("ty");
  String va=request.getParameter("nnnn");
  
  String ooo=request.getParameter("ga");
  String inn=request.getParameter("ba");
  String itt=request.getParameter("da");
  String vaa=request.getParameter("na");


   
   
   PreparedStatement st=con.prepareStatement("update vehicle v,licence1 l,owner3 o,insurence i,registration r set vname=?,vcatg=?,v.cname=?,color=?,chnum=?,fuel=?,v.aadhar=?,l.oname=?,l.lnum=?,ltype=?,valid_from=?,expir=?,o.oname=?,mnum=?,address=?,o.lnum=?,ownership=?,o.aadhar=?,i.oname=?,inum=?,itype=?,valid_through=?,state=?,r.cname=?,rbranch=?,rdate=? where v.vnum=? and l.vnum=? and o.vnum=? and i.vnum=? and r.vnum=?");
   st.setString(1,vname);
   st.setString(2,vcatg);
   st.setString(3,cname);
   st.setString(4,color);
   st.setString(5,chnum);
   st.setString(6,fuel);
   st.setString(7,aadhar);
   
   
   st.setString(8,o);
   st.setString(9,l);
   st.setString(10,ll);
   st.setString(11,v);
   st.setString(12,e);
   
   
  
   st.setString(13,n);
   st.setString(14,m);
   st.setString(15,a);
   st.setString(16,ln);
   st.setString(17,ow);
   st.setString(18,aa);
   
   
   
   st.setString(19,oo);
   st.setString(20,in);
   st.setString(21,it);
   st.setString(22,va);
   
   
   st.setString(23,ooo);
   st.setString(24,inn);
   st.setString(25,itt);
   st.setString(26,vaa);
   
   
   
   
   
   st.setString(27,vnum1);
   st.setString(28,vnum1);
   st.setString(29,vnum1);
   st.setString(30,vnum1);
   st.setString(31,vnum1);
   
   
   int i=st.executeUpdate();
	
	if(i!=0)
	{
		%>
		<center><table style="background-color: white;" width="50%" border="1">
		<tr><th>VEHICLE UPDATED SUCCESSFULLY</th></tr>
		</table></center>
		
	<%
	
	}
	
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