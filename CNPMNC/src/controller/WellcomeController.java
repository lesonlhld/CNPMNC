package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Accommodation;
import service.AccommodationService;
import service.impl.AccommodationServiceImpl;

@WebServlet(urlPatterns="/welcome")

public class WellcomeController extends HttpServlet {
	AccommodationService accommodationService = new AccommodationServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Accommodation> accommodationList = accommodationService.getAll();
		req.setAttribute("accList", accommodationList);
		req.getRequestDispatcher("/view/client/view/index.jsp").forward(req, resp);
	}
}
