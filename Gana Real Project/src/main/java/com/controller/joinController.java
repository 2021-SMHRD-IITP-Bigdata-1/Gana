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
		
		//�ʼ�����
		String id = request.getParameter("id");
		String pw = request.getParameter("pw2");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		int year = Integer.parseInt(request.getParameter("bYear"));
		int month = Integer.parseInt(request.getParameter("bMonth"));
		int date = Integer.parseInt(request.getParameter("bDate"));
		
		//���û���
		String gender = request.getParameter("gender");
		String ad1 = request.getParameter("ad1");
		String ad2 = request.getParameter("ad2");
		String job = request.getParameter("job");
		String school = request.getParameter("school");
		String subject = request.getParameter("subject");
		
		//����ڰ���
		
		
		/*String gcert1 = request.getParameter("getcert1");
		String gcert2 = request.getParameter("getcert2");
		String gcert3 = request.getParameter("getcert3");
		String gcert4 = request.getParameter("getcert4");
		String gcert5 = request.getParameter("getcert5");
		
		//�����ڰ���
		String wish1 = request.getParameter("wishcert1");
		String wish2 = request.getParameter("wishcert2");
		String wish3 = request.getParameter("wishcert3");*/
		
		
		
		if(ad1.equals("a")) {
			ad1 = "����Ư����";
		}else if(ad1.equals("b1")){
			ad1 = "�λ걤����";
		}else if(ad1.equals("b2")){
			ad1 = "�뱸������";
		}else if(ad1.equals("b3")){
			ad1 = "��õ������";
		}else if(ad1.equals("b4")){
			ad1 = "���ֱ�����";
		}else if(ad1.equals("b5")){
			ad1 = "����������";
		}else if(ad1.equals("b6")){
			ad1 = "��걤����";
		}else if(ad1.equals("c1")){
			ad1 = "����Ư����ġ��";
		}else if(ad1.equals("c2")){
			ad1 = "����Ư����ġ��";
		}else if(ad1.equals("d1")){
			ad1 = "��⵵";
		}else if(ad1.equals("d2")){
			ad1 = "������";
		}else if(ad1.equals("d3")){
			ad1 = "��û�ϵ�";
		}else if(ad1.equals("d4")){
			ad1 = "��û����";
		}else if(ad1.equals("d5")){
			ad1 = "���ϵ�";
		}else if(ad1.equals("d6")){
			ad1 = "��󳲵�";
		}else if(ad1.equals("d7")){
			ad1 = "����ϵ�";
		}else{
			ad1 = "���󳲵�";
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
			//jdbc ����̹� ���� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//db�� �α����� url, id, pw ����
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_2";
			String dbpw = "smhrd2";
			
			//Connection ��ü ����
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
			//member sql�� �ۼ�
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
			


			
			//���̵� ��ġ�� ���� ���
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



