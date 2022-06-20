package webprj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {

	public static void main(String[] args) {
		String url = "jdbc:mysql://127.0.0.1:3306/test1?useUnicode=true&serverTimezone=Asia/Seoul";
		String user = "KT";
		String Password = "5369";
		String sql = "SELECT * FROM NOTICE";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("드라이버 로딩");
			Connection con = DriverManager.getConnection(url, user, Password);
			System.out.println("연결");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next())
			
			
			System.out.println(rs.getDate("REGDATE"));
			
			
			
			rs.close();
			st.close();
			con.close();
		} 
		catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩에 실패 하였습니다.");
		} 
		catch (SQLException e) {
			System.out.println("연결실패");
			e.printStackTrace();
		} 
		
		
	}

}
