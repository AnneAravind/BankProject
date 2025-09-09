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
@WebServlet("/com")
public class forgot extends HttpServlet 
{	
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String email=req.getParameter("email");	
			String password=req.getParameter("password");
			String confirmPassword=req.getParameter("confirmPassword");
			
			try {
				DriverManager.registerDriver(new Driver());
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet","root","root");
				PreparedStatement ps=con.prepareStatement("update register set password=? where email=? ");
				ps.setString(2,email);
				ps.setString(1, password);
				int res=ps.executeUpdate();

				
				if(res>0)
				{
					if(password.equals(confirmPassword))
					{
						RequestDispatcher dispatch = req.getRequestDispatcher("login.jsp");
						dispatch.forward(req, resp);
						
					}
					else
					{
						req.setAttribute("msg", "password is In-Valid");
						System.out.println("InCorrect Psssword");
						RequestDispatcher dispatch = req.getRequestDispatcher("forgotPassword.jsp");
						dispatch.include(req, resp);
					}
				}
				else
				{
					req.setAttribute("msg", "mail is In-Valid");
					System.out.println("InCorrect Email");
					RequestDispatcher dispatch = req.getRequestDispatcher("forgotPassword.jsp");
					dispatch.include(req, resp);
				}

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

	}
