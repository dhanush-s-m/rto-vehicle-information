import java.io.*;
import javax.servlet.*;
import java.sql.*;
public class insurence extends GenericServlet
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
		String ab=request.getParameter("b");
		String b=request.getParameter("ty");
		String c=request.getParameter("n");
		String f=request.getParameter("a");
		
		int i = 0;
		if(a!=null &&ab!=null &&b!=null &&c!=null &&f!=null  ){
			if(a!="" &&ab!="" &&b!="" &&c!="" &&f!=""  ){
		
		
		try
		{
		String query="insert into insurence values(?,?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1,a);
		ps.setString(2,ab);
		ps.setString(3,b);
		ps.setString(4,c);
		ps.setString(5,f);
		
	
		
	 i=ps.executeUpdate();
		
		if(i>0)
		{
			pw.println("<script>alert('Insurence Registred Sucessfully');window.location='registration.html';</script>");
		}
		else
		{
			pw.println("<script>alert('Insurence Not Registred Sucessfully');window.location='insurence.html';</script>");
		}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			pw.println("<script>alert('Insurence Not Registred Sucessfully');window.location='insurence.html';</script>");

		}
		pw.print("<center><a href='insurence.html'>BACK</a>");
		pw.close();
		
	}
}
	}
}



