package bankProject;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;

import dao.BankAccountDao;
import dao.Transactiondao;
import dao.UserDao;
import dto.BankAccount;
import dto.Userdto;

import java.util.Date;

@WebServlet("/transtion")
public class TransactionsServlet extends HttpServlet {

    private UserDao userDao = new UserDao();
    private BankAccountDao accountDao = new BankAccountDao();
    private Transactiondao transactiondao=new Transactiondao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String senderAccNo = req.getParameter("senderAcc");
        String phoneNo = req.getParameter("phone");
        String amountStr = req.getParameter("amount");

		try {
			//User senderUser = userDao.findByEmail(email);
			BankAccount senderBank = accountDao.findbyEmail(email);
			BankAccount receiverBank = accountDao.findbyaccountNo(senderAccNo);

			if (receiverBank == null) {
				req.setAttribute("mesg", "Receiver account not found.");

				RequestDispatcher dispatcher = req.getRequestDispatcher("tranferAccount.jsp");
				dispatcher.include(req, res);
				return;
			}

			if (!receiverBank.getPhoneNo().equals(phoneNo)) {
				req.setAttribute("mesg", "Phone number does not match the receiver's account.");

				RequestDispatcher dispatcher = req.getRequestDispatcher("tranferAccount.jsp");
				dispatcher.include(req, res);
				return;
			}

			double transferAmount = Double.parseDouble(amountStr);
			if (senderBank.getBalance() < transferAmount) {
				req.setAttribute("mesg", "Insufficient balance.");
				// forwardWithMessage(req, res, "transferAccount.jsp");
				RequestDispatcher dispatcher = req.getRequestDispatcher("tranferAccount.jsp");
				dispatcher.include(req, res);
				return;
			}

			// Update balances
			senderBank.setBalance(senderBank.getBalance() - transferAmount);
			receiverBank.setBalance(receiverBank.getBalance() + transferAmount);

			// Update the accounts in the database
			accountDao.updateAccount(senderBank);
			accountDao.updateAccount(receiverBank);
			String senderType = "Debited";
			String receverType = "Credited";
			Date date = new Date();

			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String formattedDate = formatter.format(date);

			transactiondao.saveTransaction(senderBank.getAccountNo(), receiverBank.getAccountNo(), transferAmount,
					senderType, receverType, formattedDate);

			req.setAttribute("mesg", "Successfully transferred balance.");
			RequestDispatcher dispatcher = req.getRequestDispatcher("tranferAccount.jsp");
			dispatcher.include(req, res);

		} catch (SQLException e) {
			e.printStackTrace();
			req.setAttribute("mesg", "Transaction failed due to a system error.");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("tranferAccount.jsp");
	        dispatcher.include(req, res);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			req.setAttribute("mesg", "Invalid amount entered.");
		
			RequestDispatcher dispatcher = req.getRequestDispatcher("tranferAccount.jsp");
	        dispatcher.include(req, res);
		}
    }

}
