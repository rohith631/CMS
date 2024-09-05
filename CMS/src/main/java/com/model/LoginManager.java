package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginManager {
	String url = "jdbc:mysql://localhost:3306/ep";
	String dbuser = "root";
	String dbpassword = "rohith123";
	String mysqldriver = "com.mysql.cj.jdbc.Driver";
	
	Connection con = null;
	PreparedStatement stmt = null;
	
	public String validateCredentials(Login L) throws Exception
	{
		Class.forName(mysqldriver);
		con = DriverManager.getConnection(url, dbuser, dbpassword);
		stmt = con.prepareStatement("select username from userlogin where username=? and password=?");
		stmt.setString(1, L.getUsername());
		stmt.setString(2, L.getPassword());
		ResultSet rs = stmt.executeQuery();
		String res = "";
		if(rs.next())
			res = rs.getString(1);
		con.close();
		
		return res;
	}
}
