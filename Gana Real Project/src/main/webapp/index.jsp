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
        <!-- Masthead-->
        <header class="masthead">
            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <div class="text-center text-white">
                            <!-- Page heading-->
                            <h1 class="mb-2">취득하고픈 <b class="mb-0">자격증</b>을</h1>
                            <h1 class="mb-4">검색하세요</h1>
                            <h4 class="mb-5">강의는 우리가 찾아드릴게요</h4>

                            <!-- Signup form-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- * * SB Forms Contact Form * *-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- This form is pre-integrated with SB Forms.-->
                            <!-- To make this form functional, sign up at-->
                            <!-- https://startbootstrap.com/solution/contact-forms-->
                            <!-- to get an API token!-->
                            <form class="form-subscribe" id="contactForm"></form>
                                
                                <div class="row mb-3">
                                    <div class="col me-2">
                                        <input class="form-control form-control-lg " id="emailAddress" type="text" placeholder="자격증을 검색하세요">
                                        <!--  <div class="invalid-feedback text-white" data-sb-feedback="emailAddress:required">Email Address is required.</div>
                                        <div class="invalid-feedback text-white" data-sb-feedback="emailAddress:email">Email Address Email is not valid.</div> -->
                                    </div>
                                    <div class="col-auto "><button class="btn btn-primary btn-lg" id="submitButton" type="submit">검색</button></div>
                                </div>


                                <!--  -->
                               
                                       
                                    
                                    <div class="row">
                                        <div class="col me-2" >
                                            <select class="js-select2 form-control" multiple="multiple">
                                                <option value="O1" data-badge="">Option1</option>
                                                <option value="O2" data-badge="">Option2</option>
                                                <option value="O3" data-badge="">Option3</option>
                                                <option value="O4" data-badge="">Option4</option>
                                                <option value="O5" data-badge="">Option5</option>
                                                <option value="O6" data-badge="">Option6</option>
                                                <option value="O7" data-badge="">Option7</option>
                                                <option value="O8" data-badge="">Option8</option>
                                                <option value="O9" data-badge="">Option9</option>
                                                <option value="O10" data-badge="">Option10</option>
                                                <option value="O11" data-badge="">Option11</option>
                                                <option value="O12" data-badge="">Option12</option>
                                                <option value="O13" data-badge="">Option13</option>
                                            </select>
                                        </div>
                                    </div>
                 









                                
                                <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>

      

      
        
        <!-- 회원데이터 활용 DB -->
        <!-- Icons Grid-->
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
								<div class="circle"></div>
								<strong style="font-size: 25px; color: aqua;">●</strong> 정보처리기사
							</span> <span> <i class="fas fa-circle text-success"></i><strong
								style="font-size: 25px; color: indianred;">●</strong> 전기기사
							</span> <span> <i class="fas fa-circle text-info"></i><strong
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

							<span >
								<div class="circle"></div>
								<strong style="font-size: 25px; color: aqua;">●</strong> 정보처리기사
							</span> <span > <i class="fas fa-circle text-success"></i><strong
								style="font-size: 25px; color: indianred;">●</strong> 전기기사
							</span> <span > <i class="fas fa-circle text-info"></i><strong
								style="font-size: 25px; color: darkblue;">●</strong> 컴활1급
							</span>




						</div>




					</div>
				</div>
	</section>
	
	<!-- 크롤링을 이용한 데이터 -->
	<section class="features-icons bg-light text-center">
	
	<form action="crawling" method="post">

      <section class="features-icons bg-light text-center">
         <div class="container">
            <div class="row">
               <div class="col-lg-4">
                  <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                     <br>
                     <h4>시험 종목을 선택해주세요</h4>

                     <select class="lead mb-0" id="browsers2" name="test" required
                        autofocus>
                        
                        <option value="정보처리기사" >정보처리기사</option>
                        <option value="정보보안기사">정보보안기사</option>
                        <option value="방송통신기사" >방송통신기사</option>
                        <option value="무선설비기사" >무선설비기사</option>
                        <option value="전파전자통신기사"  >전파전자통신기사</option>
                        <option value="전기기사" >전기기사</option>
                        <option value="전기공사기자">전기공사기자</option>
                        <option value="전기철도기사" >전기철도기사</option>
                        <option value="철도신호기사" >철도신호기사</option>
                        <option value="광학기사">광학기사</option>
                        <option value="반도체설계기사">반도체설계기사</option>
                        <option value="임베디드기사">임베디드기사</option>
                     </select> <br>
                     <br>
                     <h4>연도를 선택해주세요</h4>

                     <select class="lead mb-0" id="browsers2" name="s_year" required
                        autofocus>
                        <option value="2020" >2020</option>
                        <option value="2019" >2019</option>
                        <option value="2018" >2018</option>
                        <option value="2017" >2017</option>
                        <option value="2016" >2016</option>
                        <option value="2015" >2015</option>

                     </select> <br>
                     <br> <input type="submit" class="submitsytle" value="검색">

                  </div>
               </div>
               <div class="col-lg-4">
                  <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                     <div class="features-icons-icon d-flex">
                        <i class="bi-people-fill m-auto text-primary"></i>
                     </div>
                     <h3>필기 합격률</h3>
                     <p class="lead mb-0">
                        <b style="font-size: 40px;">
                        
                        
                        <% 
                        String test = (String) request.getAttribute("send");
                        String people = (String) request.getAttribute("send3");
                        String people2 = (String) request.getAttribute("send4");
                        
                        %>
                        <%=test %>
                         
                        
                        </b> <br>전체 응시자수는 <%=people %>명이며 <%=people2 %>이 합격
                        하였습니다
                     </p>
                  </div>
               </div>
               <div class="col-lg-4">
                  <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                     <div class="features-icons-icon d-flex">
                        <i class="bi-person-check-fill m-auto text-primary"></i>
                     </div>
                     <h3>실기 합격률</h3>
                     <p class="lead mb-0">
                         <b style="font-size: 40px;">
                         
                         <% 
                          String test2 = (String) request.getAttribute("send2");
                        String people3 = (String) request.getAttribute("send5");
                        String people4 = (String) request.getAttribute("send6");
                         %>
                        <%=test2 %>
                         
                         
                         </b> <br>전체 응시자수는 <%=people3 %>명이며 <%=people4 %> 이 합격 하였습니다
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>


   </form>
	
	
	
	
	</section>
	
    
	
	
	
	
	
	
        <!-- Call to Action-->
        <section class="call-to-action text-white text-center" id="signup">
            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <h2 class="mb-4">Ready to get started? Sign up now!</h2>
                        <!-- Signup form-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form class="form-subscribe" id="contactFormFooter" data-sb-form-api-token="API_TOKEN">
                            <!-- Email address input-->
                            <div class="row">
                                <div class="col">
                                    <input class="form-control form-control-lg" id="emailAddressBelow" type="email" placeholder="Email Address" data-sb-validations="required,email" />
                                    <div class="invalid-feedback text-white" data-sb-feedback="emailAddressBelow:required">Email Address is required.</div>
                                    <div class="invalid-feedback text-white" data-sb-feedback="emailAddressBelow:email">Email Address Email is not valid.</div>
                                </div>
                                <div class="col-auto"><button class="btn btn-primary btn-lg disabled" id="submitButton" type="submit">Submit</button></div>
                            </div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    <p>To activate this form, sign up at</p>
                                    <a class="text-white" href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item"><a href="#!">About</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Contact</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Terms of Use</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Privacy Policy</a></li>
                        </ul>
                        <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2021. All Rights Reserved.</p>
                    </div>
                    <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item me-4">
                                <a href="#!"><i class="bi-facebook fs-3"></i></a>
                            </li>
                            <li class="list-inline-item me-4">
                                <a href="#!"><i class="bi-twitter fs-3"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!"><i class="bi-instagram fs-3"></i></a>
                            </li>
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

    
    