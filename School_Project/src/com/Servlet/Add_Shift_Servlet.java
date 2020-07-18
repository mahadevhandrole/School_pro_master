package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Add_Shift_Bean;
import com.Bean.Add_Society_Bean;
import com.Dao.Add_Shift_Dao_Class;
import com.Dao.Add_Shift_Dao_Interface;
import com.Dao.Add_Society_Dao_Class;
import com.Dao.Add_Society_Dao_Interface;

/**
 * Servlet implementation class Add_Shift_Servlet
 */
@WebServlet("/Add_Shift_Servlet")
public class Add_Shift_Servlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("************ INSIDE GET *****************");
		int status1=0;
		Add_Shift_Bean ASB= new Add_Shift_Bean();
		
		
        
        int shift_id = Integer.parseInt(request.getParameter("shift_id"));
        ASB.getShift_Id();
        ASB.setShift_Id(shift_id);
        
        Add_Shift_Dao_Interface ASD=new Add_Shift_Dao_Class();
        
        //ASD.delete(shift_id);
        
        status1=ASD.delete(shift_id);
        
        
        System.out.println("status Delete" +status1);
        
		
        if(status1>0)
		{
			System.out.println("delete Successful");
			response.sendRedirect("view/Add_Shift.jsp");
		}
		else
		{
			System.out.println("delete unsuccessful");
		response.sendRedirect("view/afterlogin");
		}
			}


	
		
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("************ INSIDE POST *****************");
		int status=0;
		//int status1=0;
		Add_Shift_Bean ASB= new Add_Shift_Bean();		
		
		//int shift_id = Integer.parseInt(request.getParameter("shift_id")); 
		String shift_name=request.getParameter("shift_name");
		String shift_start_time	=request.getParameter("shift_start_time");
		String shift_end_time	=request.getParameter("shift_end_time");
		
		

		
		
		
        //ASB.setShift_Id(shift_id);
		ASB.setShift_name(shift_name);
		ASB.setShift_start_time(shift_start_time);
		ASB.setShift_end_time(shift_end_time);
		
	
		System.out.println("Shift name:" +shift_name);
		System.out.println("Start time: "+shift_start_time);
		System.out.println("End time: "+shift_end_time);
		
		Add_Shift_Dao_Interface ASD=new Add_Shift_Dao_Class();
		
		

		
		status=ASD.insert_shift_details(ASB);
		
		System.out.println("Statussssssssssss " +status);
		
		 //ASD.delete(shift_id);
	        
	    // status1=ASD.delete(ASB);
	       
	     //System.out.println("status Delete" +status1);
		

		if(status>0 )
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
