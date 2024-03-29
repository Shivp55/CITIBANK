package Controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.CustomerDao;
import Model.Amount;
import Model.Customer;
import Services.Services;

/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerController() {
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
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Register")) {
			Customer c=new Customer();
			String email=request.getParameter("email");
			String account=request.getParameter("selectaccnt");
			c.setFname(request.getParameter("fname"));
			c.setMname(request.getParameter("mname"));
			c.setLname(request.getParameter("lname"));
			c.setSelectaccnt(request.getParameter("selectaccnt"));
			c.setContact(request.getParameter("contact"));
			c.setAddress(request.getParameter("address"));
			c.setEmail(request.getParameter("email"));
			c.setPassword(request.getParameter("password"));
			boolean flag=CustomerDao.checkEmailAndAccount(email,account);
			if(flag==true) {
				request.setAttribute("alreg", "Already Exists..Please Login");
				request.getRequestDispatcher("customer-login.jsp").forward(request, response);
			}
			else {
			CustomerDao.insertCustomer(c);
			request.setAttribute("register", "Successfully Registered.. Please Login.");
			request.getRequestDispatcher("customer-login.jsp").forward(request, response);
			}
			
		}
		else if(action.equalsIgnoreCase("Login")) {
			Customer c=new Customer();
			c.setEmail(request.getParameter("email"));
			c.setPassword(request.getParameter("password"));
			Customer c1=CustomerDao.customerLogin(c);
			
			
			if(c1==null) {
			request.setAttribute("data", "email or password incorrect");
			request.getRequestDispatcher("customer-login.jsp").forward(request, response);
			
			}
			else {
				HttpSession session=request.getSession();
				session.setAttribute("data",c1);
				
				request.getRequestDispatcher("customer-index.jsp").forward(request, response);
				}
			
		}
		else if(action.equalsIgnoreCase("update")) {
			Customer c= new Customer();
			c.setId(Integer.parseInt(request.getParameter("id")));
			c.setFname(request.getParameter("fname"));
			c.setMname(request.getParameter("mname"));
			c.setLname(request.getParameter("lname"));
			c.setSelectaccnt(request.getParameter("selectaccnt"));
			c.setContact(request.getParameter("contact"));
			c.setAddress(request.getParameter("address"));
			c.setEmail(request.getParameter("email"));
			CustomerDao.updateCustomer(c);
			HttpSession session = request.getSession();
			session.setAttribute("data", c);
			request.getRequestDispatcher("customer-index.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("change")) {
			int id= Integer.parseInt(request.getParameter("id"));
			String op=request.getParameter("op");
			String np=request.getParameter("np");
			String cnp=request.getParameter("cnp");
			boolean flag=CustomerDao.checkOldPassword(id, op);
			if(flag==true) {
				if(np.equals(cnp)) {
					CustomerDao.updatePassword(cnp, id);
					response.sendRedirect("customer-index.jsp");
					
				}
				else {
					request.setAttribute("msg1", "New Password and Confirm new password not matched");
					request.getRequestDispatcher("customer-change-password.jsp").forward(request, response);
					
				}
			}
			else {
				request.setAttribute("msg", "old password not matched");
				request.getRequestDispatcher("customer-change-password.jsp").forward(request, response);
			}
			
		}
		else if (action.equalsIgnoreCase("get otp")) {
			String email = request.getParameter("email");
			boolean flag = CustomerDao.checkEmail(email);
			System.out.println(flag);
			if (flag == true) {
				Services s = new Services();
				Random r = new Random();
				int num = r.nextInt(9999);
//				System.out.println(num);
				s.sendMail(email, num);
//				System.out.println(email+num);
				request.setAttribute("email", email);
				request.setAttribute("otp", num);
				request.getRequestDispatcher("customer-verify-otp.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "email id not registerd");
				request.getRequestDispatcher("customer-forgot-password.jsp").forward(request, response);
			}
		} 
		else if (action.equalsIgnoreCase("verify")) {
			String email = request.getParameter("email");
			int otp1 = Integer.parseInt(request.getParameter("otp1"));
			int otp2 = Integer.parseInt(request.getParameter("otp2"));
//			System.out.println(email+otp1+otp2);
			if (otp1==otp2) {
				request.setAttribute("email", email);
				request.getRequestDispatcher("customer-new-password.jsp").forward(request, response);
			} else {
				request.setAttribute("validate", "otp not matched");
				request.getRequestDispatcher("customer-verify-otp.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("new password")) {
			String email = request.getParameter("email");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
//			System.out.println(email+np+cnp);
			if(np.equals(cnp)) {
				CustomerDao.newPassword(np, email);
				
				request.setAttribute("msg3", "password changed successfully");
				request.getRequestDispatcher("customer-login.jsp").forward(request, response);
			}
			else {
				request.setAttribute("msg", "new password and confirm new ppassword not matched");
				request.getRequestDispatcher("customer-new-password.jsp").forward(request, response);
			}
		}
		
	}

}



