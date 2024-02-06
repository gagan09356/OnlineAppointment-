package com.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/admin/addDoctors")
@MultipartConfig(fileSizeThreshold = 1024*1024*10,
					maxFileSize = 1024*1024*1000,
					maxRequestSize = 1024*1024*1000)
public class Adddoctors extends HttpServlet {
	PrintWriter out=null;
	Connection conn=null;
	PreparedStatement ps=null;
	HttpSession session=null;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/plain/charset-UTF-8");
		out=response.getWriter();
		session=request.getSession(false);
		String folderName="images";
		String uploadPath=request.getServletContext().getRealPath("")+folderName;
		System.out.println(uploadPath+"path of upload");
		File dir=new File(uploadPath);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		Part filePart=request.getPart("file");
		String name=request.getParameter("d_name");
		String dep=request.getParameter("doctor_dep");
		String spec=request.getParameter("doctor_spec");
		String exp= request.getParameter("experience");
		String mobile=request.getParameter("d_mobile");
		String email=request.getParameter("d_email");
		String address=request.getParameter("d_address");
		String fileName=filePart.getSubmittedFileName();
		String path=folderName+"/"+fileName;
		System.out.println("fileName="+fileName);
		System.out.println("path="+path);
		InputStream is=filePart.getInputStream();
		Files.copy(is,Paths.get(uploadPath+File.separator+fileName),StandardCopyOption.REPLACE_EXISTING);
		AddDoctor addDoctor=new AddDoctor();
		int i=0;
		try {
			i=addDoctor.addingDoctor(name, spec, exp, mobile, address, email, dep,path);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i>0) {
			
			response.setContentType("text/html");
			 out.println("<script type=\"text/javascript\">");
			   out.println("alert('added sucessfully');");
			   out.println("location='AddDoctor.jsp';");	
			   out.println("</script>");
		}
			
		System.out.println(i);
	}

}
