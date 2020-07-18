package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Add_Shift_Bean;
import com.Dao.Add_Shift_Dao_Class;
import com.Dao.Add_Shift_Dao_Interface;

/**
 * Servlet implementation class Shift_Delete
 */
@WebServlet("/Shift_Delete")
public class Shift_Delete1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Shift_Delete1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int status1=0;
		Add_Shift_Bean ASB= new Add_Shift_Bean();
		
		
        
        int shift_id = Integer.parseInt(request.getParameter("shift_id"));        
        ASB.getShift_Id();
        ASB.setShift_Id(shift_id);
        
        Add_Shift_Dao_Interface ASD=new Add_Shift_Dao_Class();
        
        ASD.delete(shift_id);
        
        status1=ASD.delete(shift_id);
        
        
        System.out.println("status Delete" +status1);
        
		
        if(status1>0)
		{
			System.out.println("insert Successful");
			response.sendRedirect("view/Add_Shift.jsp");
		}
		else
		{
			System.out.println("insert unsuccessful");
		response.sendRedirect("view/afterlogin");
		}
			}

}
