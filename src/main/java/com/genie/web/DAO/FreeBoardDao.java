package com.genie.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.genie.web.entity.Notice;


public class FreeBoardDao {
	//JDBC 드라이버 객체생성
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	//리스트 DAO
	public List<Notice> getList(){
		String sql = "select n.* from (select @rownum := @rownum +1 rn , n.* from (select * from notice "
				+ "order by regdate desc) n,(select @rownum := 0) rn) n "
				+ "where n.rn between 1 and 10 ";
		List<Notice> list = new ArrayList<Notice>();
		
		try {
			Connection con = dataSource.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				Notice notice = new Notice();
				
				notice.setBoardnum(rs.getInt("BOARDNUM"));
				notice.setTitle(rs.getString("TITLE"));
				notice.setUserId(rs.getString("USERID"));
				notice.setRegDate(rs.getDate("REGDATE"));
				notice.setHit(rs.getInt("HIT"));
				
				list.add(notice);
				
			}
			rs.close();
			st.close();
			con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	//디테일 DAO
	public Notice getDetail(int id){
		String sql = "select * from notice "
				+ "where BOARDNUM = ? ";
		
		Notice notice = new Notice();
		PreparedStatement st;
		try {
			Connection con = dataSource.getConnection();
			st = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			
			rs.next();
				
				
				notice.setBoardnum(rs.getInt("BOARDNUM"));
				notice.setTitle(rs.getString("TITLE"));
				notice.setContent(rs.getString("CONTENT"));
				notice.setUserId(rs.getString("USERiD"));
				notice.setRegDate(rs.getDate("REGDATE"));
				notice.setHit(rs.getInt("HIT"));
				
				
				rs.close();
				st.close();
				con.close();
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return notice;
	}
	
	public void postDel(int boardnum) {
		
	}

}
