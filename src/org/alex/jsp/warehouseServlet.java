package org.alex.jsp;

import java.io.IOException;
import java.util.Collection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ua.partner.suzuki.domain.obm.OBM;
import ua.partner.suzuki.service.ServiceException;
import ua.partner.suzuki.service.WarehouseService;
import ua.partner.suzuki.service.impl.WarehouseServiceImpl;

/**
 * Servlet implementation class warehouseServlet
 */
@WebServlet("/warehouse")
public class warehouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public warehouseServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		WarehouseService warehouseService = new WarehouseServiceImpl();
		Collection<OBM> warehouse;
		try {
			warehouse = warehouseService.getAll();
			request.setAttribute("warehouse", warehouse);
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("warehouse.jsp");
			dispatcher.forward(request, response);
			return;
		} catch (ServiceException e) {
			throw new IOException("Error occured while loading OBMs from Warehouse!", e);
		}
	}
}
