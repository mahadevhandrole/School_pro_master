package com.Servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Add_School_Bean;
import com.Bean.Add_Society_Bean;
import com.Dao.Add_School_Dao_Class;
import com.Dao.Add_School_Dao_Interface;

/**
 * Servlet implementation class Add_School_Servlet
 */
@WebServlet("/Add_School_Servlet")
public class Add_School_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_School_Servlet() {
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
		
		
	
	String school_name=request.getParameter("school_name");
	long school_registartion_number=Long.parseLong(request.getParameter("school_registartion_number"));
	String school_registration_year = request.getParameter("school_registration_year");
	String school_email = request.getParameter("school_email");
	int school_pincode = Integer.parseInt(request.getParameter("school_pincode"));
	String school_area = request.getParameter("school_area"); 
	String school_city = request.getParameter( "school_city");
	String school_state = request.getParameter("school_state");
	long school_telephone = Long.parseLong(request.getParameter("school_telephone"));
	long school_mobile = Long.parseLong(request.getParameter("school_mobile"));
	String[] sections = request.getParameterValues("sections");
	
		Add_School_Bean asb= new Add_School_Bean();
	Add_Society_Bean asb1 = new  Add_Society_Bean();
		Add_School_Dao_Interface asd=new Add_School_Dao_Class();
		int status1=0;
		
		asb1.getId();
		asb.setSchool_name(school_name);
		asb.setSchool_registartion_number(school_registartion_number);
		asb.setSchool_registration_year(school_registration_year);
		asb.setSchool_email(school_email);
		asb.setSchool_pincode(school_pincode);
		asb.setSchool_area(school_area);
		asb.setSchool_city(school_city);
		asb.setSchool_state(school_state);
		asb.setSchool_telephone(school_telephone);
		asb.setSchool_mobile(school_mobile);
	
		int st=asd.insert_school_details(asb);
		
	for(String  s: sections )
		{
			System.out.println("inside for loop");
			int i =asb.getId();
			System.out.println("id in for loop"+i);
			asb.setId(st);
			asb.setSections(s);
			 status1=asd.school_section_details(asb);
		}
	
		System.out.println("Society id is:"+asb1.getId());
		System.out.println("school name: "+asb.getSchool_name());
		System.out.println("School registartion num: "+asb.getSchool_registartion_number());
		System.out.println("School re"
				+ "gistartion year" +asb.getSchool_registration_year());
		System.out.println("school email :" +asb.getSchool_email());
		System.out.println("school pincode: "+asb.getSchool_pincode());
		System.out.println("school area: " +asb.getSchool_area());
		System.out.println("School city" +asb.getSchool_city());
		System.out.println("School state: "+asb.getSchool_state());
		System.out.println("School telephone "+asb.getSchool_telephone());
		System.out.println("School mobile"+asb.getSchool_mobile());
		System.out.println("School sections: "+asb.getSections());
		
			
	if(st>0 && status1>0)
		{
			System.out.println("insert Successful");
			response.sendRedirect("view/Add_School.jsp");
		}
		else
		{
			System.out.println("insert unsuccessful");
			RequestDispatcher rd= request.getRequestDispatcher("view/addschool.jsp");
			rd.forward(request, response);
		}
	}
		
}


