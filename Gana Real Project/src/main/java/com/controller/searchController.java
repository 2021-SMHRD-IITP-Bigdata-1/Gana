package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/searchController")
public class searchController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		lectureDAO dao = new lectureDAO();
		ArrayList<lectureVO> arr = new ArrayList<lectureVO>();
		
		
		request.setCharacterEncoding("UTF-8");
		
		String search = request.getParameter("search");
		String[] filter = request.getParameterValues("filter");
		
		String costname = "";
		int bookY = 1;
		int bookN = 0;
		int pg = 1;
		int sg = 2;
		int pgsg = 3;
		int freeY = 1;
		int freeN = 0;
		
		
		
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		
		if(!filter[0].equals(null)) {
		for (int i = 0; i < filter.length; i++) {
			
			if(filter[i].equals("O1")) {
				
				costname = "LEC_COST";
				
				
			}else if(filter[i].equals("O2")){
				
				bookN = 1;
				
			}else if(filter[i].equals("O3")){
				
				sg = 1;
				pgsg=1;
				
			}else if(filter[i].equals("O4")){
				
				pg = 2;
				pgsg=2;
				
			}else if(filter[i].equals("O5")){
				
				freeN = 1;
				
			}else if(filter[i].equals("O6")){
				
				freeY = 0;
			}
			
		}
		}
			
			
		
		
			System.out.println();
			System.out.println(costname);
			System.out.println(bookY); 
			System.out.println(bookN);
			System.out.println(pg);
			System.out.println(sg);
			System.out.println(pgsg);
			System.out.println(freeY);
			System.out.println(freeN);
			
		
		

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_2";
			String dbpw = "smhrd2";
			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "SELECT LEC_ID, LEC_INFO, LEC_TEACH, LEC_FREE, LEC_LINK, LEC_TEST, LEC_COST, LEC_NUM, LEC_BF, LEC_DATE, LEC_SUB, LEC_NAME, LEC_SITE FROM LECTURE WHERE CERT_ID = ( SELECT CERT_ID FROM CERTIFICATION WHERE CERT_NAME =?) and LEC_FREE in(?,?) and LEC_TEST in(?,?,?) and LEC_BF in(?,?) ORDER BY ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, search);
			psmt.setInt(2, freeY);
			psmt.setInt(3, freeN);
			psmt.setInt(4, pg);
			psmt.setInt(5, sg);
			psmt.setInt(6, pgsg);
			psmt.setInt(7, bookY);
			psmt.setInt(8, bookN);
			psmt.setString(9, costname);
			
		
			

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
			
			if(search!=null) {
				
				
				
				
				request.setAttribute("arr", arr);
				
				ServletContext context = getServletContext();
		         RequestDispatcher dispatcher = context.getRequestDispatcher("/lecturesearch.jsp");
		         dispatcher.forward(request, response);
				
				
				
				
				}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("loginfail.jsp");
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
