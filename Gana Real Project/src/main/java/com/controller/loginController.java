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
import javax.servlet.http.HttpSession;


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
			//jdbc 드라이버 동적 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//db에 로그인할 url, id, pw 지정
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_2";
			String dbpw = "smhrd2";
			
			//Connection 객체 생성
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
			//sql문 작성
			String sql = "select * from MEMBER where MEM_ID=? and MEM_PW=?";
			
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			System.out.println(id);
			System.out.println(pw);
			
			rs = psmt.executeQuery();
			
			//아이디가 겹치지 않을 경우
			if(rs.next()){
				String getid = rs.getString(1);
				String getnick = rs.getString(3);
				
				
				
				HttpSession session = request.getSession();
				
				session.setAttribute("getid", getid);
				session.setAttribute("getnick", getnick);
				
				response.sendRedirect("index.jsp");
				
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
