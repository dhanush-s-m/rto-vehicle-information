import java.io.*;
import javax.servlet.*;
import java.sql.*;
public class license extends GenericServlet
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
		String b=request.getParameter("b");
		String c=request.getParameter("typ");
		String c1=request.getParameter("nu");
		String f=request.getParameter("n");
		String d=request.getParameter("a");
		
		
		int i = 0;
		if(a!=null &&b!=null &&c!=null &&c1!=null &&f!=null  &&d!=null  ){
			if(a!="" &&b!="" &&c!="" &&c1!="" &&f!="" &&d!="" ){
		
		
		
		try
		{
		String query="insert into licence1 values(?,?,?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1,a);
		ps.setString(2,b);
		ps.setString(3,c);
		ps.setString(4,c1);
		ps.setString(5,f);
		ps.setString(6,d);
		
		
		
		 i=ps.executeUpdate();
		
		if(i>0)
		{
			pw.println("<script>alert('Licence Registred Sucessfully');window.location='owner.html';</script>");
		}
		else
		{
			pw.println("<script>alert('Licence Not Registred Sucessfully');window.location='licence.html';</script>");
		}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			pw.println("<script>alert('Licence Not Registred Sucessfully');window.location='licence.html';</script>");

		}
		pw.print("<center><a href='license.html'>BACK</a>");
		pw.close();
		
	}
}
	}
}


