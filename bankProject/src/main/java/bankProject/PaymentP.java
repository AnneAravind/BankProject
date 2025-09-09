package bankProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.Transaction;
@WebServlet("/TransferServlet")
public class PaymentP extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	long AccountNumber = Long.parseLong(request.getParameter("AccountNumber"));
    	String IFSC = request.getParameter("IFSC");
        String type = request.getParameter("type");
    	 String amount = request.getParameter("amount");
        String password = request.getParameter("password");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet", "root", "root")) {
            String query = "INSERT INTO transactions (AccountNumber,IFSC,type, amount, password) VALUES (?, ?, ?, ?,?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setLong(1, AccountNumber);
            stmt.setString(2, IFSC);
            stmt.setString(3, type);
            stmt.setDouble(4, Double.parseDouble(amount));
            stmt.setString(5, password);
            stmt.executeUpdate();

            response.sendRedirect("transactionSuccessfull.jsp"); // Redirect on success
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("transactionfailed.jsp"); // Redirect on failure
        }
    }
}
