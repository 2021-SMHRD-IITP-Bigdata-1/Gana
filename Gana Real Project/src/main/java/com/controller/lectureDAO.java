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
		String CERT_NAME = "전기기사";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_2";
			String dbpw = "smhrd2";
			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "SELECT LEC_INFO, LEC_TEACH, LEC_FREE, LEC_LINK, LEC_TEST, LEC_COST, LEC_NUM, LEC_BF, LEC_DATE, LEC_SUB, LEC_NAME, LEC_SITE FROM LECTURE WHERE CERT_ID = ( SELECT CERT_ID FROM CERTIFICATION WHERE CERT_NAME =?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, CERT_NAME);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String info = rs.getString(1);
				String teach = rs.getString(2);
				int free = rs.getInt(3);
				String link = rs.getString(4);
				int test = rs.getInt(5);
				int cost = rs.getInt(6);
				String num = rs.getString(7);
				int bf = rs.getInt(8);
				String date = rs.getString(9);
				int sub = rs.getInt(10);
				String name = rs.getString(11);
				String site = rs.getString(12);

				arr.add(new lectureVO(info, teach, free, link, test, cost, num, bf, date, sub, name, site));
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
}