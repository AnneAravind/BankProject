package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.Userdto;

public class UserDao {
    // Creating connection
    public Connection createConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankservlet?createDatabaseIfNotExist=true", "root", "root");
        PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS register (accountholderName VARCHAR(45), email VARCHAR(45) PRIMARY KEY, phone BIGINT, age INT, gender VARCHAR(45), password VARCHAR(45), address VARCHAR(45))");
        ps.execute();
        ps.close();  // Ensure statement is closed after execution
        return con;
    }

    // Save user information to the database
    public int saveUser(Userdto user) throws SQLException, ClassNotFoundException {
        int result = 0;
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            con = createConnection();
            ps = con.prepareStatement("INSERT INTO register VALUES(?,?,?,?,?,?,?)");
            ps.setString(1, user.getAccountholderName());
            ps.setString(2, user.getEmail());
            ps.setLong(3, user.getPhone());
            ps.setInt(4, user.getAge());
            ps.setString(5, user.getGender());
            ps.setString(6, user.getPassword());  // Consider hashing the password here
            ps.setString(7, user.getAddress());
            result = ps.executeUpdate();
            System.out.println(result + " record(s) inserted.");
        } finally {
            // Close resources in the 'finally' block
            if (ps != null) ps.close();
            if (con != null) con.close();
        }
        return result;
    }
}
