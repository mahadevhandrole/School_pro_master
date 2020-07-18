package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Bean.Add_Society_Bean;
import com.DBConnection.DBConnection;

public class Add_Society_Dao_Class implements Add_Society_Dao_Interface{
	
	DBConnection DB=new DBConnection();
	Connection con=DB.GetConnection();
	
	public int insert_society_details(Add_Society_Bean ASB)
	{
		int status = 0;
		
		
		System.out.println("%%%%%%%%%%%%%%% before insert query  %%%%%%%%%%%%%");
		
		try {
			
			
			
			System.out.println("$$$$$$$ inside try  $$$$$$$$$$");
			
			PreparedStatement ps =con.prepareStatement("insert into society_master(society_name,society_email,society_telephone,society_website,society_contact_person,society_contact_p_number,society_address,society_registration_year,society_registration_no,society_office_no,society_udise_no,society_total_schools,society_number_of_schools)values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			
			ps.setString(1, ASB.getSociety_name());
			ps.setString(2, ASB.getSociety_email());
			ps.setLong(3, ASB.getSociety_telephone());
			ps.setString(4, ASB.getSociety_website());
			ps.setString(5,ASB.getSociety_contact_person());
			ps.setLong(6, ASB.getSociety_contact_p_number());
			ps.setString(7, ASB.getSociety_address());

			ps.setString(8, ASB.getSociety_registration_year());
			ps.setLong(9, ASB.getSociety_registration_number());
			ps.setLong(10, ASB.getSociety_office_number());
			ps.setLong(11,  ASB.getSociety_udise_number());
			ps.setInt(12, ASB.getSociety_total_schools());
			ps.setInt(13, ASB.getSociety_number_of_schools());
			
		
			
			status=ps.executeUpdate();
			
			System.out.println("******************* "+status);
			
			
		} 
		catch (Exception e) {
			System.out.println("in catch");
		}
		System.out.println("After Status");
		return status;
	}
	
	public int society_login(Add_Society_Bean ASB) {
		int status = 0;
		
		
			
		
		System.out.println("%%%%%%%%%%%%%%% before insert query 2  %%%%%%%%%%%%%");
		
	
		
		try {
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
			
			PreparedStatement ps =con.prepareStatement("insert into school_login (society_id,society_userid,society_password,society_c_password) values (?,?,?,?)");
			
			
			
			
			ps.setInt(1, k);
			ps.setString(2,ASB.getSociety_userid());
			ps.setString(3,ASB.getSociety_password());
			ps.setString(4,ASB.getSociety_c_password());

			status=ps.executeUpdate();
			System.out.println("******************* "+status);
			
			
		} catch (Exception e) {
			System.out.println("in catch");
		}
	
			return status;
	
	}
		
	}
	

