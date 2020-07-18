package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Add_Section_Bean;
import com.Dao.Add_Section_Dao_Class;
import com.Dao.Add_Section_Dao_Interface;

/**
 * Servlet implementation class Add_Section_Servlet
 */
@WebServlet("/Add_Section_Servlet")
public class Add_Section_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Section_Servlet() {
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
		
		
		
		int standard=Integer.parseInt(request.getParameter("standard"));
	
		
		String division=request.getParameter("divisions");
		
		
		String medium=request.getParameter("iCheck");
	
		
		//String shift=request.getParameter("shift");

		
		
		Add_Section_Bean asb = new Add_Section_Bean();
		Add_Section_Dao_Interface asd= new  Add_Section_Dao_Class();
		asb.setStandard(standard);
		asb.setMedium(medium);
		//asb.setShift(shift);
	asb.setDivision(division);
	
		System.out.println("STANDARD     "+asb.getStandard());
		System.out.println("MEDIUM   "+asb.getMedium());
		//System.out.println("SHIFT   "+asb.getShift());
		System.out.println("DIVISION  "+asb.getDivision());

int s=0;
s=asd.insert_Section_details(asb);

if(s>0)
{
	System.out.println("insert Successful");
	response.sendRedirect("view/Add_Section.jsp");
}
else
{
	System.out.println("insert unsuccessful");
	RequestDispatcher rd= request.getRequestDispatcher("view/addschool.jsp");
	rd.forward(request, response);
}
			
		}
	}


