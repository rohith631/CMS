package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserManager {
	String url = "jdbc:mysql://localhost:3306/ep";
	String dbuser = "root";
	String dbpassword = "rohith123";
	String mysqldriver = "com.mysql.cj.jdbc.Driver";
	
	Connection con = null;
	PreparedStatement stmt = null;
	
	public String validateCredentials(Users U) throws Exception
	{
		Class.forName(mysqldriver);
		con = DriverManager.getConnection(url, dbuser, dbpassword);
		stmt = con.prepareStatement("select username from adminlogin where username=? and password=?");
		stmt.setString(1, U.getUsername());
		stmt.setString(2, U.getPassword());
		ResultSet rs = stmt.executeQuery();
		String res = "";
		if(rs.next())
			res = rs.getString(1);
		con.close();
		
		return res;
	}
}
