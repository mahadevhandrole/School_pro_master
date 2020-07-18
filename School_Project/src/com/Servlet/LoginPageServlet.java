package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.LoginBean;
import com.Dao.LoginDao;
import com.Dao.LoginDaoInterface;


@WebServlet("/LoginPageServlet")
public class LoginPageServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

    
    public LoginPageServlet() {
    	super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		

		String Username=request.getParameter("username-textbox");
		String Password=request.getParameter("password-textbox");
		
		LoginBean LB= new LoginBean();
		LB.setUsername(Username);
		LB.setPassword(Password);
		
		
		System.out.println("Username" +LB.getUsername());
		System.out.println("Password" +LB.getPassword());
		
		LoginDaoInterface LD= new LoginDao();
		if(LD.Login(Username, Password))
		{
			System.out.println("---------LOGIN SUCCESSFUL-----------");
			HttpSession session=request.getSession();
			session.setAttribute("username", Username);
			
			response.sendRedirect("view/Add_Society.jsp");
			//rd.forward(request, response);
			
			System.out.println("*********** AFTER DISPATCHER*************");
			
//			response.sendRedirect("afterlogin.html");
		}
		else
		{
			System.out.println("---------LOGIN UNSUCCESSFUL-----------");
			response.sendRedirect("index3.html");
		}
		
		
		
		
	}

	}

