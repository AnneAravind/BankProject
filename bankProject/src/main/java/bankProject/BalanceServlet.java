package bankProject;

import java.io.IOException;
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

@WebServlet("/BalanceServlet")
public class BalanceServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String balance = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the driver
            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet", "root", "root")) {
                String sql = "SELECT initialBalance FROM accountholderdetails WHERE email = ?";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, email);
                    ResultSet rs = stmt.executeQuery();
                    if (rs.next()) {
                        balance = rs.getString("initialBalance");
                    } else {
                        request.setAttribute("error", "No balance information found for this email.");
                    }
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace(); // Handle the driver not found exception
            request.setAttribute("error", "JDBC Driver not found.");
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQL exceptions
            request.setAttribute("error", "Database error occurred: " + e.getMessage());
        }

        request.setAttribute("balance", balance);
        RequestDispatcher dispatcher = request.getRequestDispatcher("balance.jsp");
        dispatcher.forward(request, response);
    }
}
