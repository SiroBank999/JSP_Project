package Controller.Admin;
import java.io.IOException;

import java.nio.file.Files;
import java.nio.file.Path;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.CategoryModel;
@MultipartConfig
@WebServlet("/addcategory")
public class Category_add extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void Upload(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			String namect = request.getParameter("categoryname");
			Part part =request.getPart("photo");
			CategoryModel ct = new CategoryModel();
			//String realPart =request.getServletContext().getRealPath("/Uploads");
			String realPart ="F:\\SHOP\\JSP_Project\\WebContent\\Uploads";
			String filename =Path.of(part.getSubmittedFileName()).getFileName().toString();
			if(!Files.exists(Path.of(realPart))) {
				Files.createDirectory(Path.of(realPart));
			}
			part.write(realPart+ "/"+filename);
			ct.addCategory(namect, filename);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("category_manager");
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Upload(request, response);
	
	}
	
	
 
}