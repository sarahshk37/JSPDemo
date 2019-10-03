package com.ltil.dao;
import java.sql.*;

import com.ltil.model.User;
import com.ltil.utilities.ConnectionManager;

public class UserDaoImpl implements UserDao {
	private Connection connection= ConnectionManager.getConnection();
	private String query= "select * from users where userid=? and password=?";
	private PreparedStatement ps = null;
	private ResultSet rs;

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean validateUser(User user) {
		try {
			ps=connection.prepareStatement(query);
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getPassword());
			
			rs = ps.executeQuery();
			
			while (rs.next())
			{
				return true;
			}
			
		}catch(Exception e) {
			
			System.out.println(e);
		}
		return false;
	}

}
