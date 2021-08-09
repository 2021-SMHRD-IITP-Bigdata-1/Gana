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
        
          
      
       
            
            
    </head>
    <body id="login">
          <!-- Navigation-->
          <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
            <div class="container px-5">
                <a class="navbar-brand fw-bold" href="index.jsp">Gana Project</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" style="color: whitesmoke;">
                    Menu
                    <i class="bi-list"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                        <li class="nav-item"><a class="nav-link me-lg-3 mb-0" href="#features">강의 찾기</a></li>
                        <li class="nav-item"><a class="nav-link me-lg-3 mb-0" href="#download">커뮤니티</a></li>
                        <li class="nav-item"><a class="nav-link me-lg-3 mb-0" href="#download">서비스 소개</a></li>
                    </ul>
                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                         
                        <span class="d-flex align-items-center" onClick="location.href='login.jsp'">
                            <i class="bi bi-box-arrow-in-right me-2"></i>
                            <span class="small">로그인</span>
                        </span>
                    </button>
                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                        <span class="d-flex align-items-center" onClick="location.href='join.jsp'">
                            <i class="bi bi-door-open me-2"></i>
                            <span class="small">회원가입</span>
                        </span>
                    </button>
                </div>
            </div>
        </nav>
        <!-- login section -->
        
        <header class="login mx-l200-out">
           
                            <div class="card shadow h-100 py-2">
                                <div class="mx-login card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2 mx-1200">

                                            <div class="text-center mt-4 mb-5">
                                                <h3>로그인</h3>
                                            </div>
                                            
                                            
                                            <!-- login form 시작 -->
                                            <form action="loginController" class="form-subscribe" id="contactForm" method="post" onkeydown="if(event.keyCode==13) return false;">
                                            
                                                <!-- id input-->
                                                    <div class="row mb-4">
                                                        <div class="col">
                                                        	
                                                            <input class="form-control form-control-lg" id="input_id" type="text" placeholder="아이디" name="id" />
                                                       </div>
                                                        
                                                    </div>

                                                 <!-- password input-->
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                    	
                                                        <input class="form-control form-control-lg" id="input_pw" type="password" placeholder="비밀번호" name="password" />
                                                     
                                                    </div>
                                                   
                                                </div>
                                                <div class="text-center col-auto col mb-4"><button class="btn btn-primary btn-lg " id="submitButton" type="submit">로그인</button></div>
                                                <div class="text-center"><a class="a-notdeco" href="#">회원가입</a></div>
                                                
                                            </form>
                                            




                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
        </header>
        
         <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/jquery-3.6.0.min.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        
        
   
        
        </body>
     </html>