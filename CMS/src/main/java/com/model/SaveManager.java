package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SaveManager {
	String url = "jdbc:mysql://localhost:3306/ep";
	String username = "root";
	String password = "rohith123"; 
	String mysqldriver = "com.mysql.cj.jdbc.Driver";
	
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	//INSERT OPERATION
	  public String saveData(Login L) throws Exception
	  {
	    Class.forName(mysqldriver);
	    con = DriverManager.getConnection(url, username, password);
	    pstmt = con.prepareStatement("insert into  values(?,?)");
		pstmt.setString(1, L.getUsername());
		pstmt.setString(2, L.getPassword());
		pstmt.execute();
		con.close();
		return "Record inserted successfully";
	  }
	  
	
}
