package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.Bean.Add_School_Bean;
import com.Bean.Add_Society_Bean;
import com.DBConnection.DBConnection; 


public class Add_School_Dao_Class implements Add_School_Dao_Interface

{
	DBConnection DB=new DBConnection();
	Connection con=DB.GetConnection();
	//Statement s = con.createStatement();
	
	public int insert_school_details(Add_School_Bean asb)
	{
		
	
		
		System.out.println("%%%%%%%%%%%%%%% before insert query  %%%%%%%%%%%%%");
		 
		int i=0;
		int s1=0;
		try
		{
		
			Statement sql=con.createStatement();
			System.out.println("Select society id");
			ResultSet rs = sql.executeQuery("select society_id from society_master");
		
			
			int k=0;
			while(rs.next())
			{
				k=rs.getInt(1);
				System.out.println("Society id,,,,,,,,,,,,,,,,,,:"+k);
			}
			
			
			
			
			System.out.println("$$$$$$$ inside try  $$$$$$$$$$");
			PreparedStatement ps=con.prepareStatement("insert into school_master(society_id,School_Name,School_Registration_Num,School_Registration_Year,School_Email,School_Pincode,School_Area,School_City,School_State,School_Telephone,School_Mobile)values(?,?,?,?,?,?,?,?,?,?,?)");
		
			
			Add_Society_Bean ASB=new Add_Society_Bean();
			
		
			
			String st = asb.getSchool_name();
			
			
			System.out.println("^^^^^^^^^^^^^^SCHOOL NAME^^^^^^^^^^^"+st);
			ps.setInt(1, k);
			
			ps.setString(2, st);
			ps.setLong(3,asb.getSchool_registartion_number());
			ps.setString(4,asb.getSchool_registration_year());
			ps.setString(5,asb.getSchool_email());
			ps.setInt(6, asb.getSchool_pincode());
			ps.setString(7,asb.getSchool_area());
			ps.setString(8,asb.getSchool_city());
			ps.setString(9, asb.getSchool_state());
			ps.setLong(10,asb.getSchool_telephone());
			ps.setLong(11,asb.getSchool_mobile());
		
			
			
			System.out.println("print all");
			
			 s1=ps.executeUpdate();
			
			Statement s = con.createStatement();
			ResultSet rs1 = s.executeQuery("select School_Id from school_master");
			while(rs1.next())
			{
				Add_School_Bean b = new Add_School_Bean();
				i=rs1.getInt(1);
				b.setId(i);
				System.out.println("issssssss:"+i);
			}
			
			System.out.println("print all");	
		} 
		catch (Exception e) 
		{
			System.out.println("in catch");
			e.printStackTrace();
		}
	
			return i;
	
	}
	
	public int school_section_details(Add_School_Bean asb)
	{
		
		int status = 0;
		 
		System.out.println("%%%%%%%%%%%%%%% before insert query  %%%%%%%%%%%%%");
		
		
		try {
			
			
			System.out.println("$$$$$$$ ADD SECTION inside try  $$$$$$$$$$");
			PreparedStatement ps1=con.prepareStatement("insert into section_master(School_Id,section_name)values(?,?)");
		
			ps1.setInt(1, asb.getId());
			ps1.setString(2, asb.getSections());			
			
			
			System.out.println(" ADD SECTION  print all");
			status=ps1.executeUpdate();
			
			System.out.println("******************* "+status);
			
			
		} 
		catch (Exception e) 
		{
			System.out.println("in catch");
		}
	
			return status;
	
	}

}
