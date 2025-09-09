package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;
import dto.Userdto;
public class UserDao {
		public Connection createConnection() throws SQLException
		{
			DriverManager.registerDriver(new Driver());
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankServlet?createDatabaseIfNotExist=true","root","root");
			PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS register(name varchar(45),email varchar(45) primary key,phone bigint,age int,gender varchar(45),password varchar(45),address varchar(45))");
			ps.execute();
			return con;	
		}
		public int saveUser(Userdto user) throws SQLException
		{
			Connection con = createConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO  register VALUES(?,?,?,?,?,?,?)");
			ps.setString(1,user.getName());
			ps.setString(2,user.getEmail());
			ps.setLong(3, user.getPhone());
			ps.setInt(4,user.getAge());
			ps.setString(5,user.getGender());
			ps.setString(6,user.getPassword());
			ps.setString(7,user.getAddress());
			int re=ps.executeUpdate();
			System.out.println(re);
			return re;
		}
		

	}
