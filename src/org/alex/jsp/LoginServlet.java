package org.alex.jsp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ua.partner.suzuki.domain.dealer.Dealer;
import ua.partner.suzuki.service.GenericService;
import ua.partner.suzuki.service.ServiceException;
import ua.partner.suzuki.service.impl.DealerServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String id, password;
		id = request.getParameter("userID");
		password = request.getParameter("password");

		GenericService<Dealer, String> loginService = new DealerServiceImpl();
		Dealer dealer;
		try {
			dealer = loginService.get(id);
			if (password.equals(dealer.getPassword())) {
				request.setAttribute("dealer", dealer);
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("startPage.jsp");
				dispatcher.forward(request, response);
				return;
			}

			else {
				response.sendRedirect("login.jsp");
				return;
			}
		} catch (ServiceException e) {
			throw new IOException("Please correct your login!", e);
		}
	}
}
