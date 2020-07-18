package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.Bean.Add_Section_Bean;

import com.DBConnection.DBConnection;

public class Add_Section_Dao_Class implements Add_Section_Dao_Interface {
	
	
	
	
		DBConnection DB=new DBConnection();
		Connection con=DB.GetConnection();
		
		
		public int insert_Section_details(Add_Section_Bean asb)
		{
				
			int status = 0;
			
			System.out.println("%%%%%%%%%%%%%%% before insert query  %%%%%%%%%%%%%");
			
			try {
				System.out.println("$$$$$$$ inside try  $$$$$$$$$$");
				Statement sql=con.createStatement();
				System.out.println("Select section id");
				ResultSet rs = sql.executeQuery("select School_Id from section_master");
				
				
		
				int k=0;
				while(rs.next())
				{
					k=rs.getInt(1);
					System.out.println("section id,,,,,,,,,,,,,,,,,,:"+k);
				}
				
				
				System.out.println("Select shift id");
				ResultSet rs1 = sql.executeQuery("select shift_id from shift_timing_master");
				
				int s=0;
				
				while(rs1.next())
				{
					s=rs1.getInt(1);
					System.out.println("shift id,,,,,,,,,,,,,,,,,,:"+s);
				}
				
				
				PreparedStatement ps =con.prepareStatement("insert into std_div_master(section_id,shift_id,standard,div_name,section_medium,shift_name)values(?,?,?,?,?,?)");
				
				ps.setInt(1, k);
				ps.setInt(2, s);
				System.out.println("*************** K **********"+k);
				System.out.println("*************** s **********"+s);	
				ps.setInt(3, asb.getStandard());
				
				ps.setString(4, asb.getDivision());
				
				ps.setString(5, asb.getMedium());
				
				//ps.setString(6, asb.getShift());
				
				
				System.out.println("Print all");	
				
				status=ps.executeUpdate();
				
				System.out.println("******************* "+status);
				
				
			}	
			catch (Exception e) {
				System.out.println("in catch");
			}
		
				return status;
		
		}
}
