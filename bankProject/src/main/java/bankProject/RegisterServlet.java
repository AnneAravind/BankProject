// RegisterServlet.java
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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get user details from the request
        String accountholderName = req.getParameter("accountholderName");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        int age = Integer.parseInt(req.getParameter("age"));
        String gender = req.getParameter("gender");
        String password = req.getParameter("password");
        String address = req.getParameter("address");

        // JDBC connection
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankServlet", "root", "root");

            String sql = "INSERT INTO register (accountholderName, email, phone, age, gender, password, address) VALUES (?, ?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,accountholderName);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setInt(4, age);
            ps.setString(5, gender);
            ps.setString(6, password);
            ps.setString(7, address);

            // Execute the insert statement
            int result = ps.executeUpdate();

            // Display the result
            PrintWriter out = resp.getWriter();
            if (result > 0) {
                out.println("<h3>User registered successfully!</h3>");
                RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
                rd.forward(req, resp);
            } else {
                out.println("<h3>Registration failed!</h3>");
                RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
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
