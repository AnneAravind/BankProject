package bankProject;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
////import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import java.sql.*;

@WebServlet("/AccountDetailsServlet")
public class AccountDetailsServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
	     //HttpSession session = request.getSession();
	    String email = request.getParameter("email");

	   // Object emailObj = session.getAttribute("email");
	    
////
        if (email == null || email.isEmpty()) {
            request.setAttribute("error", "Email is required.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
            return;
        }



	    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet", "root", "root")) {
	      
	        PreparedStatement stmt = conn.prepareStatement("SELECT accountHolderName,phone, email, AccountNumber,initialBalance,AccountType, Address FROM accountholderdetails WHERE email = ?");
	        stmt.setString(1, email);
	        ResultSet rs = stmt.executeQuery();

	        if (rs.next()) {
	            request.setAttribute("accountHolderName", rs.getString("accountHolderName"));
	            request.setAttribute("phone", rs.getString("phone"));

                request.setAttribute("email", rs.getString("email"));
	          //  request.setAttribute("Address", rs.getString("Address"));
	            request.setAttribute("AccountNumber", rs.getString("AccountNumber"));
	            request.setAttribute("initialBalance", rs.getString("initialBalance"));
	            request.setAttribute("AccountType", rs.getString("AccountType"));
	            request.setAttribute("Address", rs.getString("Address"));

	           // request.setAttribute("Address", rs.getString("Address"));

	        } else {
	            request.setAttribute("error", "No account details found for this email.");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    RequestDispatcher dispatcher = request.getRequestDispatcher("MyAccountDetails.jsp");
	    dispatcher.forward(request, response);
	}

	}
}

