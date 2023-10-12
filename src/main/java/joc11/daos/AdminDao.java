package joc11.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Service;

import joc11.helper.CinemaHelper;
import joc11.models.AdminModel;


@Service("adminDao")
public class AdminDao {
	public static Connection con=null;
	static {
		con = CinemaHelper.getInstance().getConnection();
	}
	public AdminModel adLogin(String name,String pass) {
		AdminModel admin=null;
		String query="SELECT * FROM admin WHERE name=? AND pass=?";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,name);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) 
			{
				admin = new AdminModel();
				admin.setName(rs.getString("id"));
				admin.setEmail(rs.getString("email"));
				admin.setPass(rs.getString("pass"));
				admin.setCompass(rs.getString("compass"));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return admin;

	}
	public AdminModel forGet(String name,String email) {
		AdminModel admin=null;
		String query="SELECT * FROM admin WHERE name=? AND email=?";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,name);
			ps.setString(2,email);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) 
			{
				admin = new AdminModel();
				admin.setName(rs.getString("id"));
				admin.setEmail(rs.getString("email"));
				admin.setPass(rs.getString("pass"));
				admin.setCompass(rs.getString("compass"));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return admin;

	}
		public int forgetPassword(AdminModel admin) {
			int status=0;
			String query="update admin set email=?,pass=?,compass=? where name=?";
			try {
				PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1, admin.getEmail());
				ps.setString(2, admin.getPass());
				ps.setString(3, admin.getCompass());
				ps.setString(4, admin.getName());
				status = ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return status;
		}
}


