package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/nickCheckController")
public class nickCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  String nick = request.getParameter("nick");
			
		  Connection conn = null;
	      PreparedStatement psmt = null;
	      ResultSet rs = null;
	      
	      System.out.println(nick);
	      
  
	      boolean check = true;
	      
    try{
      
       Class.forName("oracle.jdbc.driver.OracleDriver");
       
       //db에 로그인할 url, id, pw 지정
       String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
       String dbid = "cgi_4_2";
       String dbpw = "smhrd2";
    // 변하지 않는 부분 //
       
       //Connection 객체 생성
       conn = DriverManager.getConnection(url, dbid, dbpw);
       
       
       //sql문 작성
       String sql = "select * from MEMBER where MEM_NICK =?";
       
       psmt = conn.prepareStatement(sql);
       
       psmt.setString(1, nick);
       
       
       rs = psmt.executeQuery();
       
       
       
       
       if(rs.next()) {
      	 check = true;
       }else{
      	 check = false;
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
   
    
    
   PrintWriter out = response.getWriter();
    
   out.print(check);

}
}
