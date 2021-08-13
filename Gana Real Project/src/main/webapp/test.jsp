<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="UTF-8">
    
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Gana Project</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   
       <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />

            
    </head>
<body>


   <form action="JS_SEND_TEST" method="post">

      <select class="lead mb-0" id="browsers2" name="test" required
         autofocus>

         <option value="대학생">대학생</option>
         <option value="공무원">공무원</option>
         <option value="취업준비생">취업준비생</option>
         <option value="직장인">직장인</option>
         <option value="자영업">자영업</option>

      </select> 
      <br> 
      
      <input type="submit" value="전송">   

   </form>

      <%
      //ArrayList<certVO> list = new ArrayList<certVO>();
      //list = (ArrayList<certVO>) request.getAttribute("send1");
      //String name = list.get(1).getCert_name();
      
      String name1 = (String) request.getAttribute("cert_name1");
      String name2 = (String) request.getAttribute("cert_name2");
      String name3 = (String) request.getAttribute("cert_name3");
      String name4 = (String) request.getAttribute("cert_name4");

      String cnt1 = (String)request.getAttribute("cnt1");
      String cnt2 = (String)request.getAttribute("cnt2");
      String cnt3 = (String)request.getAttribute("cnt3");
      String cnt4 = (String)request.getAttribute("cnt4");
      
      String wish_name1 = (String) request.getAttribute("wish_name1");
      String wish_name2 = (String) request.getAttribute("wish_name2");
      String wish_name3 = (String) request.getAttribute("wish_name3");
      String wish_name4 = (String) request.getAttribute("wish_name4");
      
      String wish_cnt1 = (String) request.getAttribute("wish_cnt1");
      String wish_cnt2 = (String) request.getAttribute("wish_cnt2");
      String wish_cnt3 = (String) request.getAttribute("wish_cnt3");
      String wish_cnt4 = (String) request.getAttribute("wish_cnt4");
      
      //System.out.print("데이터: "+ request.getAttribute("cnt1"));
      
      
      
      
      
      %>
      
      
      

      <input type="button" id="test1" value="<%=name1%>"> 
      <input type="button" id="test2" value="<%=name2%>"> 
      <input type="button" id="test3" value="<%=name3%>"> 
      <input type="button" id="test4" value="<%=name4%>">
      
      <input type="button" id="cnt1" value="<%=cnt1%>">
      <input type="button" id="cnt2" value="<%=cnt2%>">
      <input type="button" id="cnt3" value="<%=cnt3%>">
      <input type="button" id="cnt4" value="<%=cnt4%>"> 
      
      <input type="button" id="wish_name1" value="<%=wish_name1%>"> 
      <input type="button" id="wish_name2" value="<%=wish_name2%>"> 
      <input type="button" id="wish_name3" value="<%=wish_name3%>"> 
      <input type="button" id="wish_name4" value="<%=wish_name4%>"> 
      
      <input type="button" id="wish_cnt1" value="<%=wish_cnt1%>"> 
      <input type="button" id="wish_cnt2" value="<%=wish_cnt2%>"> 
      <input type="button" id="wish_cnt3" value="<%=wish_cnt3%>"> 
      <input type="button" id="wish_cnt4" value="<%=wish_cnt4%>">

   <section class="features-icons bg-light text-center">
      <div class="container">
         <div class="row">
            <div class="col-lg-4">
               <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">

                  <h4>선택 해주세요</h4>

                  <div class="col-lg-section1 float-start">
                     <button type="button" class="btn-s1 mb-2 mb-md-0 btn-primary">Default</button>
                  </div>
                  <div class="col-lg-section1 float-start">
                     <button type="button" class="btn-s1 mb-2 mb-md-0 btn-secondary">Default</button>
                  </div>

               </div>
            </div>
            <div class="col-lg-4">
               <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">

                  <h4>가장많이 취득한 자격증</h4>


                  <div class="chart-pie pt-4 pb-2">
                     <canvas id="myPieChart"></canvas>
                  </div>
                  <div class="mt-4 text-center small">

                     <span>
                         <strong
                        style="font-size: 25px; color: aqua;">●</strong> 정보처리기사
                     </span><span>
                     
                     <strong style="font-size: 25px; color: indianred;">●</strong> 
                     
                     전기기사
                     </span> <span> <strong
                        style="font-size: 25px; color: darkblue;">●</strong> 컴활1급
                     </span>
                  </div>


               </div>
            </div>
            <div class="col-lg-4">
               <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                  <h4>요즘 관심있는 자격증은??</h4>

                  <div class="chart-pie pt-4 pb-2">
                     <canvas id="myPieChart2"></canvas>
                  </div>
                  <div class="mt-4 text-center small">

                     <span>
                        <strong
                        style="font-size: 25px; color: aqua;">●</strong> 정보처리기사
                     </span> <span> <strong
                        style="font-size: 25px; color: indianred;">●</strong> 전기기사
                     </span> <span> <strong
                        style="font-size: 25px; color: darkblue;">●</strong> 컴활1급
                     </span>




                  </div>

               </div>
            </div>



         </div>
      </div>
   </section>




   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
   <!-- Core theme JS-->
   <script src="js/scripts.js"></script>
   <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
   <!-- * *                               SB Forms JS                               * *-->
   <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
   <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
   <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
   <script src="chart_js/Chart.min.js"></script>
    <script src="chart_js/chart-pie-demo.js"></script>
    <script src="chart_js/chart-pie-demo2.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>

    <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
  <script src="js/main.js"></script>

</body>


</html>