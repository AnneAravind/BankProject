package bankProject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import dao.UserDao;
import dto.Userdto;
@WebServlet("/login")
public class UserSignUp extends HttpServlet 
{
		@Override
		public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
		{
			//System.out.println("Done");
			String accountholderName=req.getParameter("accountholderName");
			String email=req.getParameter("email");
			Long phone=Long.parseLong(req.getParameter("phone"));
			int age = Integer.parseInt(req.getParameter("age"));
		    String gender=req.getParameter("gender");
		    String password =req.getParameter("password");
		    String address=req.getParameter("address");
		    //System.out.println("name is:"+name+" \n email is : "+email+"\n phone is : "+ph+" \n gender is :"+gender+" \n password is : "+password+" \n address is :"+address);
		    res.setContentType("text/html");
		    PrintWriter pw = res.getWriter();
		    UserDao Dao= new UserDao();
			Userdto user = new Userdto(accountholderName, email,phone,age,gender,password,address);
			try
			{
				int resp = Dao.saveUser(user);
				if(resp>0)
				{
					pw.println(user.getAccountholderName()+"Data Saved Successfully");
					pw.print("<h1 style='color:red'>"+user.getAccountholderName()+"Svaed Successfully"+"</h1>");
					
				}
				
			}
			catch(Exception e){
				pw.println(user.getEmail()+ " data already Exist please try with new Data");
				
			}
		}

	}

