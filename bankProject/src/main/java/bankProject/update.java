// UpdateServlet.java
package bankProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class update extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Retrieve user details from the request
        String email = req.getParameter("email");
        String accountholderName = req.getParameter("accountholderName");
        String phone = req.getParameter("phone");
       
        String address = req.getParameter("address");

        // JDBC connection
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet", "root", "root");

            // Prepare the SQL update statement
            String sql = "UPDATE register SET accountholderName = ?, phone = ?, address = ? WHERE email = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, accountholderName);
            ps.setString(2, phone);
            ps.setString(3, address);
            ps.setString(4, email);

            // Execute the update statement
            int result = ps.executeUpdate();

            // Prepare response to user
            PrintWriter out = resp.getWriter();
            if (result > 0) {
               

                RequestDispatcher rd = req.getRequestDispatcher("updatedSuccesfully.jsp");
                rd.include(req, resp);
            } else {
               

                RequestDispatcher rd = req.getRequestDispatcher("homePage.jsp");
                rd.include(req, resp);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
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
