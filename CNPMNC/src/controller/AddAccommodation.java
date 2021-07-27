package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import service.AccommodationService;
import service.impl.AccommodationServiceImpl;
import model.Accommodation;

@WebServlet(urlPatterns="/addAccommodation")

public class AddAccommodation extends HttpServlet {
	AccommodationService accommodationService = new AccommodationServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/view/client/view/addAccommodation.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");

		Accommodation acc = new Accommodation();
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
		String image = "";
		Random generator = new Random();

		try {
			List<FileItem> items = servletFileUpload.parseRequest(req);
			for (FileItem item : items) {
				if (item.getFieldName().equals("address")) {
					acc.setAddress(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("type_acc")) {
					acc.setType_acc(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("contact")) {
					acc.setContact(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("cost")) {
					acc.setCost(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("description")) {
					acc.setDescription_acc(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("image")) {
					String root = System.getProperty("user.home");
					File path = new File(root + "/uploads");
					if (!path.exists()) {
						path.mkdirs();
					}
					String originalFileName = item.getName();
					int index = originalFileName.lastIndexOf(".");
					String ext = originalFileName.substring(index + 1);
					String fileName = System.currentTimeMillis() + generator.nextInt(1234) + "." + ext;
					File file = new File(path + "/" + fileName);
					item.write(file);
					image += fileName +",";
				}
			}
			if (image!="") {
				image=image.substring(0, image.length()-1);
			}
			acc.setStatus_acc("Empty");
			acc.setImage(image);

			if(accommodationService.insert(acc)) {
				req.setAttribute("addStatus","Add new accommodation successfully");
			} else {
				req.setAttribute("addStatus","Failed to add new accommodation");
			}
			req.getRequestDispatcher("/view/client/view/addAccommodation.jsp").forward(req, resp);
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
