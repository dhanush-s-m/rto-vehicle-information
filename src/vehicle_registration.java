import java.io.*;
import javax.servlet.*;
import java.sql.*;
public class vehicle_registration extends GenericServlet
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
		String a=request.getParameter("n");
		String ab=request.getParameter("nb");
		String b=request.getParameter("a");
		String c=request.getParameter("b");
		String f=request.getParameter("c");
		String d=request.getParameter("d");
		String e1=request.getParameter("type");
		String br=request.getParameter("e");
		
		int i = 0;
		if(a!=null &&ab!=null &&b!=null &&c!=null &&f!=null  &&d!=null  && e1!=null  &&br!=null ){
			if(a!="" &&ab!="" &&b!="" &&c!="" &&f!="" &&d!="" &&e1!="" &&br!=""){
		
		
		try
		{
		String query="insert into vehicle values(?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1,a);
		ps.setString(2,b);
		ps.setString(3,ab);
		ps.setString(4,c);
		ps.setString(5,f);
		ps.setString(6,d);
		ps.setString(7,e1);
		ps.setString(8,br);
		
		 i=ps.executeUpdate();
		
		if(i!=0)
		{
			pw.println("<script>alert('Vehicle Registred Sucessfully');window.location='license.html';</script>");
		}
		else
		{
			pw.println("<script>alert('Vehicle Not Registred Sucessfully');window.location='vehicle_registration.html';</script>");
		}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			pw.println("<script>alert('Vehicle Not Registred Sucessfully');window.location='vehicle_registration.html';</script>");

		}
		pw.print("<center><a href='vehicle_registration.html'>BACK</a>");
		pw.close();
		
	}
}
	}
}



