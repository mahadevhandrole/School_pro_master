package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DBConnection.DBConnection;

public class LoginDao implements LoginDaoInterface{
	
	DBConnection DBC= new DBConnection();
Connection con=DBC.GetConnection();


	public boolean Login(String Username,String Password)
	{	
		try {
			System.out.println("----------IN LOGIN METHOD---------------");
		PreparedStatement ps=con.prepareStatement("select * from logintable where username=? and password=?");
	ps.setString(1, Username);
	ps.setString(2, Password);

	
	ResultSet rs=ps.executeQuery();
	
		if(rs.next())
		{
			return true;
		}
	} catch (Exception e) {
		
		e.printStackTrace();
	}
		return false;
	}
	
}
