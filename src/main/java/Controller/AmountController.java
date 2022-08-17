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
			Amount a=new Amount();
			a.setCid(Integer.parseInt(request.getParameter("id")));
			a.setBalance(request.getParameter("amount"));
			a.setAccountname(request.getParameter("name"));
			a.setMessage(request.getParameter("message"));
			boolean flag1=AmountDao.checkBalance(a);
			
			if(flag1==true) {
					AmountDao.updateAmount(a);
					request.getRequestDispatcher("customer-index.jsp").forward(request, response);
				}
				
				
				
			
			else {
				AmountDao.InsertAmount(a);
				request.getRequestDispatcher("customer-index.jsp").forward(request, response);
			
			}
			
	}

		else if(action.equalsIgnoreCase("Send")) {
			int id=Integer.parseInt(request.getParameter("id"));
			String amount=request.getParameter("amount");
			Amount a=new Amount();
			
			a.setCid(Integer.parseInt(request.getParameter("accntnum")));
			a.setBalance(request.getParameter("amount"));
			a.setAccountname(request.getParameter("name"));
			a.setMessage(request.getParameter("message"));
			System.out.print(id+amount);
			AmountDao.sendMoney(a);
			AmountDao.updateMoney(id, amount);
			response.sendRedirect("customer-index.jsp");
			
			
			
		}
	}
}


