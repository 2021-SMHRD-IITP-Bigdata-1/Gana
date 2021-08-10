package com.controller;

import java.util.List;
import java.util.Scanner;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/crawling")
public class crawling extends HttpServlet {

   public static final String WEB_DRIVER_ID = "webdriver.chrome.driver"; // 드라이버 ID
   public static final String WEB_DRIVER_PATH = "C:\\chromedriver.exe"; // 드라이버 경로
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      request.setCharacterEncoding("utf-8");

      String test = request.getParameter("test");
      String s_year = request.getParameter("s_year");
      String code = "";

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

         psmt.setString(1, test);

         rs = psmt.executeQuery();

         if (rs.next()) {
            code = rs.getString(1);
            System.out.println(code);

            
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
      
      try {
         System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
      } catch (Exception e) {
         e.printStackTrace();
      }

      // 크롬 설정을 담은 객체 생성
      ChromeOptions options = new ChromeOptions();
      // 브라우저가 눈에 보이지 않고 내부적으로 돈다.
      // 설정하지 않을 시 실제 크롬 창이 생성되고, 어떤 순서로 진행되는지 확인할 수 있다.
      options.addArguments("headless");

      // 위에서 설정한 옵션은 담은 드라이버 객체 생성
      // 옵션을 설정하지 않았을 때에는 생략 가능하다.
      // WebDriver객체가 곧 하나의 브라우저 창이라 생각한다.
      WebDriver driver = new ChromeDriver(options);

      // 이동을 원하는 url
      String url2 = "http://www.q-net.or.kr/crf005.do?id=crf00503&jmCd=" + code + "&gbnn=gbnSubtab2";

      // WebDriver을 해당 url로 이동한다.
      driver.get(url2);

      // 브라우저 이동시 생기는 로드시간을 기다린다.
      // HTTP응답속도보다 자바의 컴파일 속도가 더 빠르기 때문에 임의적으로 1초를 대기한다.
      try {
         Thread.sleep(1000);
      } catch (InterruptedException e) {
      }

      // class="tbl_normal" 인 모든 태그를 가진 WebElement리스트를 받아온다.
      // WebElement는 html의 태그를 가지는 클래스이다.

      List<WebElement> year = driver.findElements(By.cssSelector("td:nth-child(2)"));// 연도별 데이터
      List<WebElement> rate1 = driver.findElements(By.cssSelector("td:nth-child(5)")); // 필기 합격률
      List<WebElement> rate2 = driver.findElements(By.cssSelector("td:nth-child(8)")); // 실기 합격률
      
      List<WebElement> peoplo = driver.findElements(By.cssSelector("td:nth-child(3)")); // 필기 응시자수
      List<WebElement> peoplo2 = driver.findElements(By.cssSelector("td:nth-child(4)")); // 필기 합격자수
      List<WebElement> peoplo3 = driver.findElements(By.cssSelector("td:nth-child(6)")); // 실기 응시자
      List<WebElement> peoplo4 = driver.findElements(By.cssSelector("td:nth-child(7)")); // 실기 합격자수

      
      for (int i = 1; i < year.size(); i++) {

         if (year.get(i).getText().equals(s_year)) {
            System.out.println("필기 합격률 :" + rate1.get(i).getText());
            System.out.println("실기 합격률 :" + rate2.get(i - 1).getText());
            
         
            
            String result =rate1.get(i).getText();
            String result2 =rate2.get(i - 1).getText();
            
            String result3 = peoplo.get(i).getText();
            String result4 = peoplo2.get(i).getText();
            String result5 = peoplo3.get(i).getText();
            String result6 = peoplo4.get(i).getText();
         
            request.setAttribute("send", result); //필기 합격률 
            request.setAttribute("send2", result2); // 실기 합격률 
            request.setAttribute("send3", result3); // 필기 응시자수 
            request.setAttribute("send4", result4);//  필기 합격자수 
            request.setAttribute("send5", result5);//실기 응시자수 
            request.setAttribute("send6", result6); // 실기 합격자수
            
            ServletContext context = getServletContext();
            RequestDispatcher dispatcher = context.getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);

         
            //request.setAttribute(s_year,  rate2.get(i - 1).getText());
            
            
            

         }

      }

   }
}