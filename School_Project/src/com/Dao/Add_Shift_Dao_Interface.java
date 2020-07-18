package com.Dao;

import java.util.List;

import com.Bean.Add_School_Bean;
import com.Bean.Add_Shift_Bean;

public interface Add_Shift_Dao_Interface 
{
	public int insert_shift_details(Add_Shift_Bean ASB);
	public int delete(int shift_id);
	public Add_Shift_Bean getShift_Id(int shift_id);
	public int update(Add_Shift_Bean ASB1);
	public  List<Add_Shift_Bean> getAllRecords();
	

}
