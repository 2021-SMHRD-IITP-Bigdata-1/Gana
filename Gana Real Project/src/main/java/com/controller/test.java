package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String data = request.getParameter("data");

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_2";
			String dbpw = "smhrd2";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "select CRAWL_ID from CERTIFICATION where cert_name=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, data);

			rs = psmt.executeQuery();

			if (rs.next()) {
				String code = rs.getString(1);
				System.out.println(code);

				response.sendRedirect("loginSuccess.jsp?name=" + code);
			} else {

				response.sendRedirect("loginfail.jsp");

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
	}
}