package com.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Bean.Add_Shift_Bean;
import com.DBConnection.DBConnection;





public class Add_Shift_Dao_Class implements Add_Shift_Dao_Interface
{
	static DBConnection DB=new DBConnection();
	static Connection con=DB.GetConnection();
	
	
	
	public int insert_shift_details(Add_Shift_Bean ASB)
	{
		int status = 0;
	
		try
		{
		
			Statement sql=con.createStatement();
			System.out.println("Select section_id");
			ResultSet rs = sql.executeQuery("select section_id from section_master");
		
			
			int k=0;
			while(rs.next())
			{
				k=rs.getInt(1);
				System.out.println("section id,,,,,,,,,,,,,,,,,,:"+k);
			}
		
		
		
		System.out.println("%%%%%%%%%%%%%%% before insert query  %%%%%%%%%%%%%");
		
		
		

		
			
			
			System.out.println("$$$$$$$ inside try  $$$$$$$$$$");
			
			PreparedStatement ps =con.prepareStatement("insert into shift_timing_master (section_id,shift_name,shift_start_time,shift_end_time) values(?,?,?,?)");
			System.out.println("5555555555");
			ps.setInt(1, k); 
			System.out.println(" Section id inside -----"+k);
			ps.setString(2, ASB.getShift_name());
			ps.setString(3, ASB.getShift_start_time());
			ps.setString(4, ASB.getShift_end_time());
		
			
			status=ps.executeUpdate();
			System.out.println("******************* "+status);
		}
			
		 catch (Exception e) {
			 e.printStackTrace();
			System.out.println("in catch");
		}
	
			return status;
	
	}
	
	
	public  int delete(int shift_id){  
	    int status1=0; 
	    
	    try{  
	         
	        PreparedStatement ps1=con.prepareStatement("delete from shift_timing_master where shift_id=?"); 
	        System.out.println("In try block");
	        ps1.setInt(1,shift_id);
	        status1=ps1.executeUpdate();
	        System.out.println("****Delete status*************** "+status1);
	    }catch(Exception e)
	    
	  
	    {
	    	System.out.println(e);
	    }  
	  
	    return status1;  
	} 
	
	

			
	
	public int update(Add_Shift_Bean ASB1)
	{  
		   int status2=0;
		   
		   int b = ASB1.getShift_Id();
		   
	        try
	        {
	        System.out.println("In shift update" +b);
	        
	    	
	        PreparedStatement ps2=con.prepareStatement("update shift_timing_master set shift_name=?,shift_start_time=?,shift_end_time=? where shift_id="+b);  
	        System.out.println("In update prepared");
	        Add_Shift_Bean ASB = new Add_Shift_Bean();
	    	ps2.setString(1,ASB1.getShift_name());  
	        ps2.setString(2,ASB1.getShift_start_time());  
	        ps2.setString(3,ASB1.getShift_end_time());
	        //ps2.setInt(4,ASB1.getShift_Id());
	        
	        System.out.println("After  update");
	        status2=ps2.executeUpdate();
	        
	        
	        System.out.println("update status Dao" +status2);
	    }catch(Exception e)
	        {
	        	System.out.println(e);
	        
	        }  
	    
	        return status2;  
	}
	
	public  ArrayList<Add_Shift_Bean> getAllRecords()
	{  
	    ArrayList<Add_Shift_Bean> list=new ArrayList<Add_Shift_Bean>();  
	      
	    try{  
	      
	        PreparedStatement ps=con.prepareStatement("select * from shift_timing_master");  
	        ResultSet rs=ps.executeQuery();  
	          while(rs.next())
	        {  
	        	  
	        	Add_Shift_Bean ASB=new Add_Shift_Bean();
	        	
	        	ASB.setShift_Id(rs.getInt("shift_id"));
	        	ASB.setShift_name(rs.getString("shift_name"));  
	        	ASB.setShift_start_time(rs.getString("shift_start_time"));  
	        	ASB.setShift_end_time(rs.getString("shift_end_time"));   
	          
	            list.add(ASB);  
	        }  
	          
	    }catch(Exception e)
	    {
	    	System.out.println(e);
	    	}  
	    return list;  
	}  
	public Add_Shift_Bean getShift_Id(int shift_id)
	{
		System.out.println("my method id" +shift_id);
		 
		
		Add_Shift_Bean ASB =null;
		 
		try {
			
			System.out.println("In try of shift id");
			 PreparedStatement ps=con.prepareStatement("select * from shift_timing_master where shift_id=?");
			 System.out.println("In show prepared");
			 ps.setInt(1,shift_id);
			 ResultSet rs = ps.executeQuery();
			 while(rs.next())
			 {	
				 ASB=new Add_Shift_Bean();
				 ASB.setShift_Id(rs.getInt("shift_id"));
				 System.out.println("print"+rs.getInt("shift_id"));
				 ASB.setShift_name(rs.getString("shift_name"));
				 ASB.setShift_start_time(rs.getString("shift_start_time"));
				 ASB.setShift_end_time(rs.getString("shift_end_time"));
			 }
			  
			
		System.out.println("After while");
		
		} catch (Exception e) 
		{
			System.out.println(e);
			
		}
		return ASB;
	}
	
}




