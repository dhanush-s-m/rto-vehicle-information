import java.io.*;
import javax.servlet.*;
import java.sql.*;
public class owner extends GenericServlet
{
	Connection con;
	public void init()throws ServletException
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rto1","root","root");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	
	
	
	public void service(ServletRequest request,ServletResponse response) throws ServletException,IOException
	{
		response.setContentType("text/html");
		
		PrintWriter pw=response.getWriter();
		String a=request.getParameter("g");
		String ab=request.getParameter("n");
		String b=request.getParameter("a");
		String c=request.getParameter("b");
		String f=request.getParameter("Ownership");
		String d=request.getParameter("d");
		String br=request.getParameter("e");
		
		
		int i = 0;
		if(a!=null &&ab!=null &&b!=null &&c!=null &&f!=null  &&d!=null    &&br!=null ){
			if(a!="" &&ab!="" &&b!="" &&c!="" &&f!="" &&d!=""  &&br!=""){
		
		try
		{
		String query="insert into owner3 values(?,?,?,?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1,a);
		ps.setString(2,ab);
		ps.setString(3,b);
		ps.setString(4,c);
		ps.setString(5,f);
		ps.setString(6,d);
		ps.setString(7,br);
	
		
		 i=ps.executeUpdate();
		
		if(i>0)
		{
			pw.println("<script>alert('Owner Registred Sucessfully');window.location='insurence.html';</script>");
		}
		else
		{
			pw.println("<script>alert('Owner Not Registred Sucessfully');window.location='owner.html';</script>");
		}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			pw.println("<script>alert('Owner Not Registred Sucessfully');window.location='owner.html';</script>");

		}
		pw.print("<center><a href='owner.html'>BACK</a>");
		pw.close();
		
	}
}
	}
}



