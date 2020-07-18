 package com.Servlet;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Add_Society_Bean;
import com.Dao.Add_Society_Dao_Class;
import com.Dao.Add_Society_Dao_Interface;


@WebServlet("/Add_Society_Servlet")
public class Add_Society_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Add_Society_Servlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Add_Society_Bean ASB= new Add_Society_Bean();
		//int i =ASB.getId();
		
		String society_name = request.getParameter("society_name");
		String society_email = request.getParameter("society_email");
		long society_telephone = Long.parseLong(request.getParameter("society_telephone"));
		String society_website = request.getParameter("society_website");
		String society_contact_person = request.getParameter("society_contact_person");
		long society_contact_p_number = Long.parseLong(request.getParameter("society_contact_person_number"));
		String society_address = request.getParameter("society_address");
		
		String society_registration_year = request.getParameter("society_registration_year");
		long society_registration_number = Long.parseLong(request.getParameter("society_registration_number"));
		long society_office_number = Long.parseLong(request.getParameter("society_office_number"));
		long society_udise_number = Long.parseLong(request.getParameter("society_udise_number"));
		int society_total_schools = Integer.parseInt(request.getParameter("total_number_of_schools"));
		int society_number_of_schools = Integer.parseInt(request.getParameter("number_of_schools"));
		
		String society_userid = request.getParameter("society_userid");
		String society_password = request.getParameter("society_password");
		String society_c_password = request.getParameter("society_c_password");
		
	
		
		
		//ASB.setId(i);
		ASB.setSociety_name(society_name);
		ASB.setSociety_email(society_email);
		ASB.setSociety_telephone(society_telephone);
		ASB.setSociety_website(society_website);
		ASB.setSociety_contact_person(society_contact_person);
		ASB.setSociety_contact_p_number(society_contact_p_number);
		ASB.setSociety_address(society_address);
		
		ASB.setSociety_registration_year(society_registration_year);
		ASB.setSociety_registration_number(society_registration_number);
		ASB.setSociety_office_number(society_office_number);
		ASB.setSociety_udise_number(society_udise_number);
		ASB.setSociety_total_schools(society_total_schools);
		ASB.setSociety_number_of_schools(society_number_of_schools);
		
		ASB.setSociety_userid(society_userid);
		ASB.setSociety_password(society_password);
		ASB.setSociety_c_password(society_c_password);
		
		
		
		
		System.out.println("name :" +ASB.getSociety_name());
		System.out.println("email :" +ASB.getSociety_email());
		System.out.println("telephone :" +ASB.getSociety_telephone());
		System.out.println("website :" +ASB.getSociety_website());
		System.out.println("con person :" +ASB.getSociety_contact_person());
		System.out.println("con person no:" +ASB.getSociety_contact_p_number());
		System.out.println("address :" +ASB.getSociety_address());
		
		
		System.out.println("reg year :" +ASB.getSociety_registration_year());
		System.out.println("reg number :" +ASB.getSociety_registration_number());
		System.out.println("offic no. :" +ASB.getSociety_office_number());
		System.out.println("udise no. :" +ASB.getSociety_udise_number());
		System.out.println("total_school: " +ASB.getSociety_total_schools());
		System.out.println("no. of school :" +ASB.getSociety_number_of_schools());
		
		
		System.out.println("userid: "+ASB.getSociety_userid());
		System.out.println("password: "+ASB.getSociety_password());
		System.out.println("confirm password: "+ASB.getSociety_c_password());
		

		int status=0;
		int Login_Status=0;
		
		Add_Society_Dao_Interface ASD=new Add_Society_Dao_Class();
		
		status=ASD.insert_society_details(ASB);
		Login_Status=ASD.society_login(ASB);
		
		
		
		
		System.out.println("STATUS    "+status);
		System.out.println("Login status " +Login_Status);
		if(status >0 && Login_Status>0)
		{
			System.out.println("insert Successful");
			response.sendRedirect("view/Add_School.jsp");
		}
		else
		{
			System.out.println("insert unsuccessful");
			response.sendRedirect("view/Add_School.jsp");
		}
	}

}
