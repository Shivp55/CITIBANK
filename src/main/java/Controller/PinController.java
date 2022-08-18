package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.PinDao;
import Model.PinModel;

/**
 * Servlet implementation class PinController
 */
@WebServlet("/PinController")
public class PinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PinController() {
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
		if(action.equalsIgnoreCase("Register Pin")) {
			PinModel p=new PinModel();
			p.setPid(Integer.parseInt(request.getParameter("id")));
			p.setPin(Integer.parseInt(request.getParameter("pin")));
			String pass1=request.getParameter("pass1");
			String pass2=request.getParameter("pass2");
			boolean flag=PinDao.checkPinInserted(p);
			if(pass1.equals(pass2)) {
				if(flag==true) {
					request.setAttribute("pin2", "Pin Updated Successfully");
					PinDao.updatePin(p);
					
					request.getRequestDispatcher("register-pin.jsp").forward(request, response);
				}
				else {
					PinDao.insertPin(p);
					request.setAttribute("pin", "pin inserted");
					
					request.getRequestDispatcher("register-pin.jsp").forward(request, response);
	
				}
							}
			else {
				request.setAttribute("pin1","password incorrect");
				request.getRequestDispatcher("register-pin.jsp").forward(request, response);
			}
		}
	}

}
