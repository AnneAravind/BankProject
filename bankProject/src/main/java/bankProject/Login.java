package bankProject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/enter")
public class Login extends HttpServlet 
{	
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String email= req.getParameter("email");
			String password= req.getParameter("password");
			//System.out.println(email+" "+password);
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("done");
				Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet","root","root");
				PreparedStatement ps=con.prepareStatement("select * from register where email=? ");
				ps.setString(1,email);
				ResultSet res=ps.executeQuery();
				PrintWriter pr = resp.getWriter(); 
				if(res.next())
				{
					if(res.getString("password").equals(password))
					{
						  HttpSession session = req.getSession();
		                    session.setAttribute("email", email);
						System.out.println("Login Successfully");

						RequestDispatcher dispatch = req.getRequestDispatcher("homePage.jsp");
//						resp.sendRedirect("https://www.flipcart.com");
//						((RequestDispatcher) resp).forward(req, resp);
						dispatch.forward(req, resp);
						
					}
					else
					{
						req.setAttribute("msg", "password is In-Valid");
						System.out.println("InCorrect Psssword");
						RequestDispatcher dispatch = req.getRequestDispatcher("login.jsp");
						dispatch.include(req, resp);
					}
				}
				else
				{
					req.setAttribute("msg", "mail is In-Valid");
					System.out.println("InCorrect Email");
					RequestDispatcher dispatch = req.getRequestDispatcher("login.jsp");
					dispatch.include(req, resp);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

