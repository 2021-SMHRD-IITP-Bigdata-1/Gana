package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/joinController")
public class joinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		//필수사항
		String id = request.getParameter("id");
		String pw = request.getParameter("pw2");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		int year = Integer.parseInt(request.getParameter("bYear"));
		int month = Integer.parseInt(request.getParameter("bMonth"));
		int date = Integer.parseInt(request.getParameter("bDate"));
		
		//선택사항
		String gender = request.getParameter("gender");
		String ad1 = request.getParameter("ad1");
		String ad2 = request.getParameter("ad2");
		String job = request.getParameter("job");
		String school = request.getParameter("school");
		String subject = request.getParameter("subject");
		
		//취득자격증
		
		
		/*String gcert1 = request.getParameter("getcert1");
		String gcert2 = request.getParameter("getcert2");
		String gcert3 = request.getParameter("getcert3");
		String gcert4 = request.getParameter("getcert4");
		String gcert5 = request.getParameter("getcert5");
		
		//관심자격증
		String wish1 = request.getParameter("wishcert1");
		String wish2 = request.getParameter("wishcert2");
		String wish3 = request.getParameter("wishcert3");*/
		
		
		
		if(ad1.equals("a")) {
			ad1 = "서울특별시";
		}else if(ad1.equals("b1")){
			ad1 = "부산광역시";
		}else if(ad1.equals("b2")){
			ad1 = "대구광역시";
		}else if(ad1.equals("b3")){
			ad1 = "인천광역시";
		}else if(ad1.equals("b4")){
			ad1 = "광주광역시";
		}else if(ad1.equals("b5")){
			ad1 = "대전광역시";
		}else if(ad1.equals("b6")){
			ad1 = "울산광역시";
		}else if(ad1.equals("c1")){
			ad1 = "세종특별자치구";
		}else if(ad1.equals("c2")){
			ad1 = "제주특별자치도";
		}else if(ad1.equals("d1")){
			ad1 = "경기도";
		}else if(ad1.equals("d2")){
			ad1 = "강원도";
		}else if(ad1.equals("d3")){
			ad1 = "충청북도";
		}else if(ad1.equals("d4")){
			ad1 = "충청남도";
		}else if(ad1.equals("d5")){
			ad1 = "경상북도";
		}else if(ad1.equals("d6")){
			ad1 = "경상남도";
		}else if(ad1.equals("d7")){
			ad1 = "전라북도";
		}else{
			ad1 = "전라남도";
		}
		
		String dateS = Integer.toString(date);
		
		if(date<=9) {
			
			dateS = "0"+dateS;
		}
		
		
		
		
		//Test
		/*System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(nick);
		System.out.println(year);
		System.out.println(month);
		System.out.println(date);
		System.out.println(gender);
		System.out.println(ad1);
		System.out.println(ad2);
		System.out.println(job);
		System.out.println(school);
		System.out.println(subject);
		System.out.println(year+"-"+month+"-"+date);
		System.out.println(ad1+" "+ad2);*/
	
	
		Connection conn = null;
		PreparedStatement psmt = null;
		
		/*PreparedStatement psmt1 = null;
		PreparedStatement psmt2 = null;
		PreparedStatement psmt3 = null;
		PreparedStatement psmt4 = null;
		PreparedStatement psmt5 = null;
		
		PreparedStatement psmt6 = null;
		PreparedStatement psmt7 = null;
		PreparedStatement psmt8 = null;*/
		
		
		
		
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
			
			//member sql문 작성
			String sql = "insert into MEMBER values(?,?,?,?,?,?,?,?,?,?)";
			
			
			
			
			
			
			psmt = conn.prepareStatement(sql);
			
		
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, nick);
			psmt.setString(4, name);
			psmt.setString(5, gender);
			psmt.setString(6, year+"-"+month+"-"+dateS);
			psmt.setString(7, ad1+" "+ad2);
			psmt.setString(8, school);
			psmt.setString(9, subject);
			psmt.setString(10, job);
			
		
			
			
			int row = psmt.executeUpdate();
			


			
			//아이디가 겹치지 않을 경우
			if(row>0){
				//String get_name = rs.getString(3);
				
				//System.out.println(get_name);
				
				response.sendRedirect("loginSuccess.jsp");
				//response.sendRedirect("loginSuccess.jsp?name="+get_name);
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



