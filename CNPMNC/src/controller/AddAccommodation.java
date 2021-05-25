package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.AccommodationService;
import service.impl.AccommodationServiceImpl;
import model.Accommodation;

@WebServlet(urlPatterns="/addAccommodation")

public class AddAccommodation extends HttpServlet {
	AccommodationService accommodationService = new AccommodationServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/view/client/view/addAccommodation.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		String address = req.getParameter("address");
		String cost = req.getParameter("cost");
		String description = req.getParameter("description");
		String contact = req.getParameter("contact");
		
		Accommodation acc = new Accommodation();
		acc.setAddress(address);
		acc.setContact(contact);
		acc.setCost(Integer.parseInt(cost));
		acc.setDescription_acc(description);
		acc.setStatus_acc("empty");
		
		if(accommodationService.insert(acc)) {
			req.setAttribute("addStatus","Add new accommodation successfully");
		} else {
			req.setAttribute("addStatus","Failed to add new accommodation");
		}
		req.getRequestDispatcher("/view/client/view/addAccommodation.jsp").forward(req, resp);
	}
}
