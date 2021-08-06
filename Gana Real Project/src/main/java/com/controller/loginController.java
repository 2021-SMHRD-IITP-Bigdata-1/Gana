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


@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		

		try{
			//jdbc ����̹� ���� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//db�� �α����� url, id, pw ����
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_2";
			String dbpw = "smhrd2";
			
			//Connection ��ü ����
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
			//sql�� �ۼ�
			String sql = "select * from MEMBER where MEM_ID=? and MEM_PW=?";
			
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			rs = psmt.executeQuery();
			
			//���̵� ��ġ�� ���� ���
			if(rs.next()){
				String get_name = rs.getString(1);
				
				response.sendRedirect("loginSuccess.jsp?name="+get_name);
			}else{
				
				response.sendRedirect("loginfail.jsp");
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				psmt.close();
				conn.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}