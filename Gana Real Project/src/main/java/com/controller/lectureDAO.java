package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class lectureDAO {

	public ArrayList<lectureVO> selectAll() {
		// 모든 회원들의 정보를 돌려주는 selectAll
		ArrayList<lectureVO> arr = new ArrayList<lectureVO>();
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String CERT_NAME = "정보처리기사";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_2";
			String dbpw = "smhrd2";
			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "SELECT LEC_ID, LEC_INFO, LEC_TEACH, LEC_FREE, LEC_LINK, LEC_TEST, LEC_COST, LEC_NUM, LEC_BF, LEC_DATE, LEC_SUB, LEC_NAME, LEC_SITE FROM LECTURE WHERE CERT_ID = ( SELECT CERT_ID FROM CERTIFICATION WHERE CERT_NAME =?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, CERT_NAME);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString(1);
				String info = rs.getString(2);
				String teach = rs.getString(3);
				int free = rs.getInt(4);
				String link = rs.getString(5);
				int test = rs.getInt(6);
				int cost = rs.getInt(7);
				String num = rs.getString(8);
				int bf = rs.getInt(9);
				String date = rs.getString(10);
				int sub = rs.getInt(11);
				String name = rs.getString(12);
				String site = rs.getString(13);

				arr.add(new lectureVO(id, info, teach, free, link, test, cost, num, bf, date, sub, name, site));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				psmt.close();
				conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return arr;
	}
	
	
	public ArrayList<wishlectureVO> recommendAll(String lec_id) {
		// 모든 회원들의 정보를 돌려주는 selectAll
		ArrayList<wishlectureVO> art = new ArrayList<wishlectureVO>();
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String LEC_ID = "lec_id";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_2";
			String dbpw = "smhrd2";
			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "SELECT LEC_ID FROM WISHLEC WHERE MEM_ID = ( SELECT MEM_ID FROM WISHLEC WHERE LEC_ID = ? )";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, LEC_ID);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString(1);

				art.add(new wishlectureVO(id));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				psmt.close();
				conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return art;
	}
}