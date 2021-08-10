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

   public static final String WEB_DRIVER_ID = "webdriver.chrome.driver"; // ����̹� ID
   public static final String WEB_DRIVER_PATH = "C:\\chromedriver.exe"; // ����̹� ���
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

      // ũ�� ������ ���� ��ü ����
      ChromeOptions options = new ChromeOptions();
      // �������� ���� ������ �ʰ� ���������� ����.
      // �������� ���� �� ���� ũ�� â�� �����ǰ�, � ������ ����Ǵ��� Ȯ���� �� �ִ�.
      options.addArguments("headless");

      // ������ ������ �ɼ��� ���� ����̹� ��ü ����
      // �ɼ��� �������� �ʾ��� ������ ���� �����ϴ�.
      // WebDriver��ü�� �� �ϳ��� ������ â�̶� �����Ѵ�.
      WebDriver driver = new ChromeDriver(options);

      // �̵��� ���ϴ� url
      String url2 = "http://www.q-net.or.kr/crf005.do?id=crf00503&jmCd=" + code + "&gbnn=gbnSubtab2";

      // WebDriver�� �ش� url�� �̵��Ѵ�.
      driver.get(url2);

      // ������ �̵��� ����� �ε�ð��� ��ٸ���.
      // HTTP����ӵ����� �ڹ��� ������ �ӵ��� �� ������ ������ ���������� 1�ʸ� ����Ѵ�.
      try {
         Thread.sleep(1000);
      } catch (InterruptedException e) {
      }

      // class="tbl_normal" �� ��� �±׸� ���� WebElement����Ʈ�� �޾ƿ´�.
      // WebElement�� html�� �±׸� ������ Ŭ�����̴�.

      List<WebElement> year = driver.findElements(By.cssSelector("td:nth-child(2)"));// ������ ������
      List<WebElement> rate1 = driver.findElements(By.cssSelector("td:nth-child(5)")); // �ʱ� �հݷ�
      List<WebElement> rate2 = driver.findElements(By.cssSelector("td:nth-child(8)")); // �Ǳ� �հݷ�
      
      List<WebElement> peoplo = driver.findElements(By.cssSelector("td:nth-child(3)")); // �ʱ� �����ڼ�
      List<WebElement> peoplo2 = driver.findElements(By.cssSelector("td:nth-child(4)")); // �ʱ� �հ��ڼ�
      List<WebElement> peoplo3 = driver.findElements(By.cssSelector("td:nth-child(6)")); // �Ǳ� ������
      List<WebElement> peoplo4 = driver.findElements(By.cssSelector("td:nth-child(7)")); // �Ǳ� �հ��ڼ�

      
      for (int i = 1; i < year.size(); i++) {

         if (year.get(i).getText().equals(s_year)) {
            System.out.println("�ʱ� �հݷ� :" + rate1.get(i).getText());
            System.out.println("�Ǳ� �հݷ� :" + rate2.get(i - 1).getText());
            
         
            
            String result =rate1.get(i).getText();
            String result2 =rate2.get(i - 1).getText();
            
            String result3 = peoplo.get(i).getText();
            String result4 = peoplo2.get(i).getText();
            String result5 = peoplo3.get(i).getText();
            String result6 = peoplo4.get(i).getText();
         
            request.setAttribute("send", result); //�ʱ� �հݷ� 
            request.setAttribute("send2", result2); // �Ǳ� �հݷ� 
            request.setAttribute("send3", result3); // �ʱ� �����ڼ� 
            request.setAttribute("send4", result4);//  �ʱ� �հ��ڼ� 
            request.setAttribute("send5", result5);//�Ǳ� �����ڼ� 
            request.setAttribute("send6", result6); // �Ǳ� �հ��ڼ�
            
            ServletContext context = getServletContext();
            RequestDispatcher dispatcher = context.getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);

         
            //request.setAttribute(s_year,  rate2.get(i - 1).getText());
            
            
            

         }

      }

   }
}