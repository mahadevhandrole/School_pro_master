package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.Bean.Add_Shift_Bean;
import com.DBConnection.DBConnection;

public class SelectShiftDao implements SelectShiftInterface
{
	DBConnection DB=new DBConnection();
	Connection con=DB.GetConnection();
	
	public List <Add_Shift_Bean> Select_Shift()
	
	{
		ArrayList<Add_Shift_Bean> arraylist = new ArrayList<Add_Shift_Bean>();
		
		System.out.println("%%%%%%%%%%%%%%% before insert query  %%%%%%%%%%%%%");
		
		try {
			
			
			System.out.println("$$$$$$$ inside try  $$$$$$$$$$");
			
			PreparedStatement ps=con.prepareStatement("select shift_name from shift_timing_master where shift_id=1");
			ResultSet rs = ps.executeQuery();
			System.out.println("After result set");
			int i=0;
			while(rs.next())
			{
				Add_Shift_Bean shiftbean = new Add_Shift_Bean();
				shiftbean.setShift_name(rs.getString(1));
				System.out.println("Shift Name" +rs.getString(1));
			
				arraylist.add(shiftbean);
		
			}
			
			}catch (Exception e) 
			{
				System.out.println("in catch");
			}
		
				return arraylist;
}

			
		
		
		
}


