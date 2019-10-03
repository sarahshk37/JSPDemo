package com.ltil.utilities;
import java.sql.*;

public class ConnectionManager {
	private static Connection connection;
	private ConnectionManager() {}
	
	public static Connection getConnection() {
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection(url, "HR", "hr");
			
		}catch(Exception e) {
			System.out.println(e);
			
		}
		
		 return connection;
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
