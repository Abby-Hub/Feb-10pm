package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	public static Connection con =null;
	
	public static Connection getConnection(){
		try {
			if(con == null) {
		Class.forName("com.mysql.jdbc.Driver");
		con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_nikitha", "root", "root");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}
