package bankProject;
import java.io.IOException;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	import com.mysql.cj.jdbc.Driver;
	@WebServlet("/up")
	public class UpdateAccountDetails extends HttpServlet {	
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			String AccountType=req.getParameter("type");
			
			String address=req.getParameter("address");
			String phone=req.getParameter("phone");	
			try {
				DriverManager.registerDriver(new Driver());
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet","root","root");
				
				PreparedStatement ps=con.prepareStatement("update accountholderdetails set AccountType=?, address=? where phone=? ");
				ps.setString(1, AccountType);
				ps.setString(2, address);
				ps.setString(3,phone);
				int res=ps.executeUpdate();
				
				if(res>0)
				{
					
						RequestDispatcher dispatch = req.getRequestDispatcher("AccountDetailsUpdatedSuccesfully.jsp");
						dispatch.forward(req, resp);
						
				}
				else
				{
					RequestDispatcher dispatch = req.getRequestDispatcher("AccountDetailsUpdateFailed.jsp");
					dispatch.forward(req, resp);
				}

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

		

	}

