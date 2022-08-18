package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.AmountDao;
import Dao.CustomerDao;
import Model.Amount;
import Model.Review;
/**
 * Servlet implementation class AmountController
 */
@WebServlet("/AmountController")
public class AmountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AmountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Deposit")) {
			int id=Integer.parseInt(request.getParameter("id"));
			String message=request.getParameter("message");
			String amount=request.getParameter("amount");
			Amount a=new Amount();
			int pin1=Integer.parseInt(request.getParameter("pin1"));
			int pin2=Integer.parseInt(request.getParameter("pin2"));
			a.setCid(Integer.parseInt(request.getParameter("id")));
			a.setBalance(request.getParameter("amount"));
			a.setAccountname(request.getParameter("name"));
			a.setMessage(request.getParameter("message"));
			boolean flag1=AmountDao.checkBalance(a);
			boolean flag2=AmountDao.isPinRegistered(id);
			if(flag2==true) {
			if(flag1==true) {
				if(pin1==pin2) {
					AmountDao.updateAmount(a);
					AmountDao.viewTransactions(id, amount, message);
					request.setAttribute("deposit1", "Amount Updated");
					request.getRequestDispatcher("deposit-money.jsp").forward(request, response);
				}
			
				else {
				request.setAttribute("deposit2", "Declined..Check Pin");
				request.getRequestDispatcher("deposit-money.jsp").forward(request, response);
				}
				
				}
					
				else {
					if(pin1==pin2) {
					AmountDao.InsertAmount(a);
					AmountDao.viewTransactions(id, amount, message);
					request.setAttribute("deposit3", "Amount Inserted");
					request.getRequestDispatcher("deposit-money.jsp").forward(request, response);
					}
					else {
						request.setAttribute("deposit4", "Declined..Check Pin");
						request.getRequestDispatcher("deposit-money.jsp").forward(request, response);
						}
				}
			}
			else {
				request.setAttribute("deposit5", "Pin not Registered ");
				request.getRequestDispatcher("deposit-money.jsp").forward(request, response);
			}
			
	}

		else if(action.equalsIgnoreCase("Send")) {
			int pin1=Integer.parseInt(request.getParameter("pin1"));
			int pin2=Integer.parseInt(request.getParameter("pin2"));
			int id=Integer.parseInt(request.getParameter("id"));
			String message=request.getParameter("message");
			int balance1=Integer.parseInt(request.getParameter("amount"));
			String amount=request.getParameter("amount");
			Amount a=new Amount();
			int balance=AmountDao.checkBalanceForSend(id);
			a.setCid(Integer.parseInt(request.getParameter("accntnum")));
			a.setBalance(request.getParameter("amount"));
			a.setAccountname(request.getParameter("name"));
			a.setMessage(request.getParameter("message"));
			System.out.print(id+amount);
			if(balance>=balance1) {
				if(pin1==pin2) {
					AmountDao.sendMoney(a);
					AmountDao.viewTransactions(id, amount, message);
					AmountDao.updateMoney(id, amount);
					request.setAttribute("sent", "Money Sent Successfully");
					request.getRequestDispatcher("customer-send-money.jsp").forward(request, response);
				
				}
				else {
					request.setAttribute("sent1", "Money Not Sent.. Check Pin");
					request.getRequestDispatcher("customer-send-money.jsp").forward(request, response);
				}
			}
			else {
				request.setAttribute("sent2", "Balance is less for transaction");
				request.getRequestDispatcher("customer-send-money.jsp").forward(request, response);
			}
		}
	}
}


