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

@WebServlet(urlPatterns="/search")

public class Search extends HttpServlet {
	AccommodationService accommodationService = new AccommodationServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		if (req.getParameter("address") != null) {
			String address = req.getParameter("address");
			if((req.getParameter("costFrom") != null) || (req.getParameter("costTo") != null) || req.getParameter("status") != null) {
				String costFrom = req.getParameter("costFrom");
				if(costFrom.equals("")) {
					costFrom = "0";
				}
				String costTo = req.getParameter("costTo");
				if(costTo.equals("")) {
					costTo = String.valueOf(Long.MAX_VALUE);
				}
				String status = req.getParameter("status");
				if (status == null) status = "";
				List<Accommodation> accommodationList = accommodationService.advancedSearch(address, costFrom, costTo, status);
				req.setAttribute("accList", accommodationList);
			} else {
				List<Accommodation> accommodationList = accommodationService.searchAddress(address);
				req.setAttribute("accList", accommodationList);
			}
		}
		req.getRequestDispatcher("/view/client/view/searchResult.jsp").forward(req, resp);
	}
}
