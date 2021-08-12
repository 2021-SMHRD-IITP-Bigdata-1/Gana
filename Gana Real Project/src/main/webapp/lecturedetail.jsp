<%@page import="com.controller.lectureVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.controller.lectureDAO"%>
<%@page import="com.controller.Image"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Modern Business - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
   rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column">
<from action= "about" method="post">
   <main class="flex-shrink-0">
   

      <!-- Navigation-->
      <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm"
         id="mainNav">
         <div class="container px-5">
            <a class="navbar-brand fw-bold" href="index.html">렉쳐ON!</a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
               aria-controls="navbarResponsive" aria-expanded="false"
               aria-label="Toggle navigation" style="color: whitesmoke;">
               Menu <i class="bi-list"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
               <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                  <li class="nav-item"><a class="nav-link me-lg-3 mb-0"
                     href="#features">강의 찾기</a></li>
                  <li class="nav-item"><a class="nav-link me-lg-3 mb-0"
                     href="#download">커뮤니티</a></li>
                  <li class="nav-item"><a class="nav-link me-lg-3 mb-0"
                     href="#download">서비스 소개</a></li>
               </ul>
               <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0"
                  data-bs-toggle="modal" data-bs-target="#feedbackModal">

                  <span class="d-flex align-items-center"
                     onClick="location.href='login.html'"> <i
                     class="bi bi-box-arrow-in-right me-2"></i> <span class="small">로그인</span>
                  </span>
               </button>
               <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0"
                  data-bs-toggle="modal" data-bs-target="#feedbackModal">
                  <span class="d-flex align-items-center"> <i
                     class="bi bi-door-open me-2"></i> <span class="small">회원가입</span>
                  </span>
               </button>
            </div>
         </div>
      </nav>
      <!-- Header-->
      <header class="py-5">
         <!-- 헤더부분 채우기 -->
      </header>
      <!-- About section one-->
      <section class="py-5 bg-light" id="scroll-target">
         <div class="container px-5 my-5">
            <div>
               <!--<div class="row gx-5 align-items-center"> -- >이거 넣으면 네칸 분할"-->
               <div>
               
               <%
               Image itc = new Image();
               String link = (String) request.getAttribute("link");
               String LEC_ID = (String) request.getAttribute("id");
               %>
                  <img class="img-fluid rounded mb-5 mb-lg-0"
                     src="<%=itc.test2(link) %>" alt="..." />
               </div>
               

               <a href="<%=link %>">수강신청 바로가기</a>
               <p class="lead fw-normal text-muted mb-0"> </p>
               <br>
           
               <div>
                  <h2 class="fw-bolder">강의제목</h2>
                  <p class="lead fw-normal text-muted mb-0">정보처리기사</p>
                  <br>
                  <h3 class="fw-bolder">강의정보</h3>
                  <p class="lead fw-normal text-muted mb-0">
                  <%
                  
                        String info = (String) request.getAttribute("info");
                        
                        %>
                        <%=info %>
               
                  </p>
                  <br>
                  <h2 class="fw-bolder">가격</h2>
                  <p class="lead fw-normal text-muted mb-0">
                  <%
                  
                        int cost = (int) request.getAttribute("cost");
                  
                  if (cost==0){
                     %> <span>이 강의는 무료입니다.</span> <%
                  }else {
                     %><%=cost %>원<% }%>
                  
                       
                                      
                  </p>
                  <br>
                  <h3 class="fw-bolder">강의수</h3>
                  <p class="lead fw-normal text-muted mb-0">
                  <%
                  
                        String num = (String) request.getAttribute("num");
                        
                        %>
                        <%=num %>
                  
                  </p>
                  <br>
                  <h3 class="fw-bolder">강의 열람일</h3>
                  <p class="lead fw-normal text-muted mb-0">
                  
                  <%
                  
                        String date = (String) request.getAttribute("date");
                        
                        %>
                        <%=date %>
                  
                  
                  </p>
                  <br>
                  <h3 class="fw-bolder">강사이름</h3>
                  <p class="lead fw-normal text-muted mb-0">
                  
                  <%
                  
                        String teach = (String) request.getAttribute("teach");
                        
                        %>
                        <%=teach %>
                  
                  
                  
                  
                  </p>
                  <br>
                  <h3 class="fw-bolder">교재</h3>
                  <p class="lead fw-normal text-muted mb-0">
                  <%
                  
                        int bf = (int) request.getAttribute("bf");
                  if(bf==1){%>
                  <span>무료 제공</span>
                     <%
                  } else{%>
                  <span>별도 구입</span>
                     <% 
                  }
                        %>
                       
                  
                  
                  </p>
                  
                  <br>
                  
               </div>
            </div>
         </div>
      </section>

      <!-- Team members section-->
      <section class="py-5 bg-light">
         <div class="container px-5 my-5">
            <div class="text-center">
               <h2 class="fw-bolder">이 강의에 관심이 있는 분들이 다음 강의에도 관심이 있습니다.</h2>
               <p class="lead fw-normal text-muted mb-5">    </p>
            </div>
            <div
               class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
               
               <%
               lectureDAO dao = new lectureDAO();
               ArrayList<lectureVO> arr = dao.recommandAll(LEC_ID);
               
               for(int i=0; i<4; i++){ %>
               <div class="col mb-5 mb-5 mb-xl-0">
                  <div class="text-center">
                     <img class="img-fluid rounded-circle mb-4 px-4"
                        src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                     <h5 class="fw-bolder">Ibbie Eckart</h5>
                     <div class="fst-italic text-muted">Founder &amp; CEO</div>
                  </div>
               </div>
               <%} %>
               
               
            </div>
         </div>
      </section>
   </main>
   <!-- Footer-->
   <footer class="footer bg-light">
      <div class="container">
         <div class="row">
            <div>
               <ul class="list-inline mb-2">
                  <li class="list-inline-item"><a href="#!">About</a></li>
                  <li class="list-inline-item">⋅</li>
                  <li class="list-inline-item"><a href="#!">Contact</a></li>
                  <li class="list-inline-item">⋅</li>
                  <li class="list-inline-item"><a href="#!">Terms of Use</a></li>
                  <li class="list-inline-item">⋅</li>
                  <li class="list-inline-item"><a href="#!">Privacy Policy</a></li>
               </ul>
               <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website
                  2021. All Rights Reserved.</p>
            </div>
            <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
               <ul class="list-inline mb-0">
                  <li class="list-inline-item me-4"><a href="#!"><i
                        class="bi-facebook fs-3"></i></a></li>
                  <li class="list-inline-item me-4"><a href="#!"><i
                        class="bi-twitter fs-3"></i></a></li>
                  <li class="list-inline-item"><a href="#!"><i
                        class="bi-instagram fs-3"></i></a></li>
               </ul>
            </div>
         </div>
      </div>
   </footer>
   <!-- Bootstrap core JS-->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
   <!-- Core theme JS-->
   <script src="js/scripts.js"></script>
   </from>
</body>
</html>