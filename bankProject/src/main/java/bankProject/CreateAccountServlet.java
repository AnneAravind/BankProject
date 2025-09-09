package bankProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreateAccount")
public class CreateAccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountHolderName = request.getParameter("accountHolderName");
        String AccountNumber = request.getParameter("AccountNumber");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String initialBalance = request.getParameter("initialBalance");
        String AccountType = request.getParameter("AccountType");
        String Address = request.getParameter("Address");
       // String accountNumber = request.getParameter("accountNumber");
       // double initialBalance = Double.parseDouble(request.getParameter("initialBalance"));   
       // String IFSC = request.getParameter("IFSC");
       // String Address = request.getParameter("Address");
        
         Connection con = null;
        PreparedStatement ps = null;

        try {
            // Database connection setup
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet", "root", "root");

            // SQL query to insert new account
            String query = "INSERT INTO accountholderdetails (accountHolderName,  AccountNumber, email , phone,initialBalance,AccountType,Address) VALUES (?, ?, ?, ?,?,?,?)";
            ps = con.prepareStatement(query);
            ps.setString(1, accountHolderName);
            ps.setString(2, AccountNumber);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, initialBalance);
            ps.setString(6, AccountType);
            ps.setString(7, Address);

            

            int result = ps.executeUpdate();

            if (result > 0) {
                // Redirect to success page after account creation
                response.sendRedirect("accountCreatedSuccesfully.jsp");
            } else {
                // Redirect to failure page if account creation failed
                response.sendRedirect("accountCreationFailed.jsp");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("accountCreationFailed.jsp");
        } finally {
            // Close resources
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

