package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.certVO;

@WebServlet("/JS_SEND_TEST")
public class JS_SEND_TEST extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      request.setCharacterEncoding("utf-8");

      ArrayList<certVO> list = new ArrayList<certVO>();
      ArrayList<certVO> wish_list = new ArrayList<certVO>();

      String get = request.getParameter("test");
      String wish = request.getParameter("test");
      
      Connection conn = null;
      PreparedStatement psmt = null;
      ResultSet rs = null;

      PreparedStatement psmt2 = null;
      ResultSet rs2 = null;

      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
         String dbid = "cgi_4_2";
         String dbpw = "smhrd2";

         conn = DriverManager.getConnection(url, dbid, dbpw);

         String sql = "select count(cert_name),cert_name from GETCERT where mem_id in (select mem_id from member where mem_job=?) group by cert_name order by count(cert_name) desc";
         String sql2 = "select count(cert_name),cert_name from WISHCERT where mem_id in (select mem_id from member where mem_job=?) group by cert_name order by count(cert_name) desc";

         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, get);
         rs = psmt.executeQuery();
         
         psmt2 = conn.prepareStatement(sql2);
         
         psmt2.setString(1, wish);
         rs2 = psmt2.executeQuery();

         int cnt = 0;
         int cnt2 = 0;

         while (rs.next()) {

            String count = rs.getString("count(cert_name)");
            String name = rs.getString("cert_name");

            list.add(new certVO(count, name));

            if (cnt == 3) {
               break;
            }
            cnt++;

         }
         
         while (rs2.next()) {

            String count = rs2.getString("count(cert_name)");
            String name = rs2.getString("cert_name");

            wish_list.add(new certVO(count, name));

            if (cnt2 == 3) {
               break;
            }
            cnt2++;

         }

         String get_name1 = list.get(0).getCert_name();
         String get_name2 = list.get(1).getCert_name();
         String get_name3 = list.get(2).getCert_name();
         String get_name4 = list.get(3).getCert_name();

         String get_a = list.get(0).getCount();
         String get_b = list.get(1).getCount();
         String get_c = list.get(2).getCount();
         String get_d = list.get(3).getCount();

         request.setAttribute("cert_name1", get_name1);
         request.setAttribute("cert_name2", get_name2);
         request.setAttribute("cert_name3", get_name3);
         request.setAttribute("cert_name4", get_name4);

         request.setAttribute("cnt1", get_a);
         request.setAttribute("cnt2", get_b);
         request.setAttribute("cnt3", get_c);
         request.setAttribute("cnt4", get_d);
         
         
         for (int i = 0; i<wish_list.size(); i++) {
            System.out.print(wish_list.get(i).getCert_name());
         }

         String wish_name1 = wish_list.get(0).getCert_name();
         String wish_name2 = wish_list.get(1).getCert_name();
         String wish_name3 = wish_list.get(2).getCert_name();
         String wish_name4 = wish_list.get(3).getCert_name();

         request.setAttribute("wish_name1", wish_name1);
         request.setAttribute("wish_name2", wish_name2);
         request.setAttribute("wish_name3", wish_name3);
         request.setAttribute("wish_name4", wish_name4);

         String wish_a = wish_list.get(0).getCount();
         String wish_b = wish_list.get(1).getCount();
         String wish_c = wish_list.get(2).getCount();
         String wish_d = wish_list.get(3).getCount();

         request.setAttribute("wish_cnt1", wish_a);
         request.setAttribute("wish_cnt2", wish_b);
         request.setAttribute("wish_cnt3", wish_c);
         request.setAttribute("wish_cnt4", wish_d);
         
          ServletContext context = getServletContext(); 
          RequestDispatcher dispatcher = context.getRequestDispatcher("/test.jsp"); 
          dispatcher.forward(request,response);
          
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