package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Bean.Add_School_Bean;
import com.DBConnection.DBConnection;


public class SelectCheckboxDao implements SelectCheckboxInterface {

	DBConnection DB=new DBConnection();
	Connection con=DB.GetConnection();
	
	public List <Add_School_Bean> Select_Section()
	{
		
		ArrayList<Add_School_Bean> arraylist = new ArrayList<Add_School_Bean>();
		
		System.out.println("%%%%%%%%%%%%%%% before insert query  %%%%%%%%%%%%%");
		
		
		try {
			
			
			System.out.println("$$$$$$$ inside try  $$$$$$$$$$");
			
			PreparedStatement ps=con.prepareStatement("select section_name from section_master where School_Id=1");
			
			
			ResultSet rs = ps.executeQuery();
			System.out.println("After result set");
			int i=0;
			while(rs.next())
			{
				Add_School_Bean studentbean = new Add_School_Bean();
				studentbean.setSections(rs.getString(1));
				System.out.println("Section Name" +rs.getString(1));
			
				arraylist.add(studentbean);
			}
			

		}

			catch (Exception e) 
			{
				System.out.println("in catch");
			}
		
				return arraylist;
}
	
}
