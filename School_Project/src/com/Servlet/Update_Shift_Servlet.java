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
 * Servlet implementation class Update_Shift_Servlet
 */
@WebServlet("/Update_Shift_Servlet")
public class Update_Shift_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Shift_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		/*int status=0;

		Add_Shift_Bean ASB= new Add_Shift_Bean();
		Add_Shift_Dao_Interface ASD=new Add_Shift_Dao_Class();
		
		//int shift_id = Integer.parseInt(request.getParameter("shift_id"));
		String shift_name=request.getParameter("shift_name");
		String shift_start_time	=request.getParameter("shift_start_time");
		String shift_end_time	=request.getParameter("shift_end_time");
		
		//ASB.getShift_Id();
		//ASB.setShift_Id(shift_id);
		ASB.setShift_name(shift_name);
		ASB.setShift_start_time(shift_start_time);
		ASB.setShift_end_time(shift_end_time);
	

		System.out.println("Shift name:" +shift_name);
		System.out.println("Start time: "+shift_start_time);
		System.out.println("End time: "+shift_end_time);
		
	
		//ASD.getShift_Id(shift_id);
		status=ASD.update(ASB);
		if(status>0 )
		{
			System.out.println("Update Successful");
			response.sendRedirect("view/Add_Shift.jsp");
		}
		else
		{
			System.out.println("Update unsuccessful");
		response.sendRedirect("view/afterlogin");
		}
	
	
	}
*/
}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		int status=0;
		
		Add_Shift_Bean ASB= new Add_Shift_Bean();
		String shift_id = request.getParameter("id1");
		int id=Integer.parseInt(shift_id);  

		String shift_name=request.getParameter("shift_name");
		System.out.println("shift name" +shift_name);
		String shift_start_time	=request.getParameter("shift_start_time");
		System.out.println("start time" +shift_start_time);
		String shift_end_time=request.getParameter("shift_end_time");
		System.out.println("end time" +shift_end_time);
		
		
		ASB.setShift_Id(id);
		ASB.setShift_name(shift_name);
		ASB.setShift_start_time(shift_start_time);
		ASB.setShift_end_time(shift_end_time);
		

		System.out.println("Shift name:" +shift_name);
		System.out.println("Start time: "+shift_start_time);
		System.out.println("End time: "+shift_end_time);
		
		Add_Shift_Dao_Interface ASD=new Add_Shift_Dao_Class();
		status=ASD.update(ASB);
		
		
		
		System.out.println("Statussssssssssss " +status);
		
		if(status>0 )
		{
			System.out.println("Update Successful");
			response.sendRedirect("view/Add_Shift.jsp");
		}
		else
		{
			System.out.println("Update unsuccessful");
		response.sendRedirect("view/afterlogin");
		}

		



}
}