package bankProject;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/delete")
public class delete extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");

        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            // Database connection setup
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet", "root", "root");

            // SQL query to delete the account
            String query = "DELETE FROM register WHERE email = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, email);

            int result = ps.executeUpdate();
            
            if (result > 0) {
                // Redirect to success page after deletion
                response.sendRedirect("deleteSuccesfully.jsp");
            } else {
                // Redirect to failure page if no record was deleted
                response.sendRedirect("deletionFailed.jsp");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("deletionFailed.jsp");
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
