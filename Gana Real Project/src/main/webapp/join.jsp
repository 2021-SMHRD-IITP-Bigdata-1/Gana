<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
    
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
                <a class="navbar-brand fw-bold" href="index.html">Gana Project</a>
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
                         
                        <span class="d-flex align-items-center ">
                            <i class="bi bi-box-arrow-in-right me-2"></i>
                            <span class="small">로그인</span>
                        </span>
                    </button>
                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                        <span class="d-flex align-items-center">
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
                                                <h3>회원가입</h3>
                                            </div>
                                            <form class="form-subscribe" id="contactForm" data-sb-form-api-token="API_TOKEN">
                                                <!-- id input-->
                                                    <div>
                                                        <h5 class="joininfo ms-2">아이디</h5>
                                                    </div>
                                                    <div class="row mb-4">
                                                        <div class="col">
                                                            <input class="form-control form-control-lg" id="emailAddress" type="text" data-sb-validations="required,email" />
                                                       </div>
                                                        
                                                    </div>

                                                 <!-- password input-->
                                                 <div>
                                                    <h5 class="joininfo ms-2">비밀번호</h5>
                                                </div>
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                        <input class="form-control form-control-lg" id="emailAddress" type="password" data-sb-validations="required,email" />
                                                     
                                                    </div>
                                                   
                                                </div>

                                                <!-- password again input-->
                                                <div>
                                                    <h5 class="joininfo ms-2">비밀번호 재확인</h5>
                                                </div>
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                        <input class="form-control form-control-lg" id="emailAddress" type="password" data-sb-validations="required,email" />
                                                     
                                                    </div>
                                                   
                                                </div>

                                                 <!-- name input-->
                                                 <div>
                                                    <h5 class="joininfo ms-2">이름</h5>
                                                </div>
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                        <input class="form-control form-control-lg" id="emailAddress" type="text" data-sb-validations="required,email" />
                                                     
                                                    </div>
                                                   
                                                </div>

                                                <!-- name input-->
                                                <div>
                                                    <h5 class="joininfo ms-2">닉네임</h5>
                                                </div>
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                        <input class="form-control form-control-lg" id="emailAddress" type="text" data-sb-validations="required,email" />
                                                     
                                                    </div>
                                                   
                                                </div>

                                                 <!-- birth input-->
                                                 <div>
                                                    <h5 class="joininfo ms-2">생년월일</h5>
                                                </div>
                                                 <div class="row mb-end">
                                                    <div class="col">
                                                        <input class="form-control-little form-control-lg me-2" id="emailAddress" type="text" placeholder="연도">
                                                        <select class="form-control-little form-control-lg me-2" id="emailAddress">
                                                            <option>월</option>
                                                            <option value="01">1</option>
                                                            <option value="02">2</option>
                                                            <option value="03">3</option>
                                                            <option value="04">4</option>
                                                            <option value="05">5</option>
                                                            <option value="06">6</option>
                                                            <option value="07">7</option>
                                                            <option value="08">8</option>
                                                            <option value="09">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            
                                                        </select>
                                                        <input class="form-control-little form-control-lg" id="emailAddress" type="text" data-sb-validations="required,email" placeholder="일">
                                                        
                                                     
                                                    </div>
                                                   
                                                </div>

                                                <div class="text-center mt-5 mb-5">
                                                    <h3 class="mb-2">선택사항</h3>
                                                    <p class="mb-end">선택사항을 입력하면 더 많은 정보를 얻으실 수 있습니다.<p>
                                                </div>

                                                <!-- sex input-->
                                                <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">성별</h5>
                                                        <label for="emailAddress">남자</label>
                                                        <input id="emailAddress" type="radio" value="men" name="gender">
                                                        <label for="emailAddress">여자</label>
                                                        <input id="emailAddress" type="radio" value="men" name="gender">
                                                    </div> 
                                                </div>

                                                  <!-- address input-->
                                                  <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">주소</h5>
                                                        
                                                            <select class="form-control form-control-little me-2" id="addressKindU" name="addressKindU" onchange="addressKindChange(this)">
                                                              <option>특별시/광역시/도 &nbsp;&nbsp;  </option>
                                                              <option value="a">서울특별시</option>
                                                              <option value="b-1">부산광역시</option>
                                                              <option value="b-2">대구광역시</option>
                                                              <option value="b-3">인천광역시</option>
                                                              <option value="b-4">광주광역시</option>
                                                              <option value="b-5">대전광역시</option>
                                                              <option value="b-6">울산광역시</option>
                                                              <option value="c-1">세종특별자치시</option>
                                                              <option value="c-2">제주특별자치도</option>
                                                              <option value="d-1">경기도</option>
                                                              <option value="d-2">강원도</option>
                                                              <option value="d-3">충청북도</option>
                                                              <option value="d-4">충청남도</option>
                                                              <option value="d-5">경상북도</option>
                                                              <option value="d-6">경상남도</option>
                                                              <option value="d-7">전라북도</option>
                                                              <option value="d-8">전라남도</option>
                                                              <option value="d-9">전라남도</option>
                                                              <option value="d-9">전라남도</option>



                                                            </select>
                                                          
                                                          
                                                            <select class="form-control form-control-little me-2" id="addressKindD" name="addressKindD">
                                                              <option>시/군/구</option>
                                                            </select>

                                                    </div> 
                                                </div>

                                                 <!-- job input-->
                                                 <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">직업</h5>
                                                        <select class="form-control form-control-little me-2" id="emailAddress">
                                                            <option>직업</option>
                                                            <option value="취준생">취준생</option>
                                                            <option value="학생">학생</option>
                                                            <option value="공무원">공무원</option>
                                                            <option value="직장인">직장인</option>
                                                            <option value="자영업">자영업(프리랜서)</option>
                                                        </select>
                                                    </div> 
                                                </div>

                                                 <!-- school input-->
                                                 <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">학력</h5>
                                                        <select class="form-control form-control-little me-2" id="emailAddress">
                                                            <option>학력</option>
                                                            <option value="고졸">고졸</option>
                                                            <option value="재학">재학</option>
                                                            <option value="대졸">대졸</option>
                                                            <option value="전문대졸">전문대졸</option>
                                                            <option value="대학원재학">대학원재학</option>
                                                            <option value="대학원졸업">대학원졸업</option>
                                                        </select>
                                                    </div> 
                                                </div>

                                                 <!-- subject input-->
                                                 <div>
                                                    
                                                </div>
                                                 <div class="row mb-end">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">학과</h5>
                                                        <input class="form-control-little me-2" id="emailAddress" type="text">
                                                    </div> 
                                                </div>






                                                <div class="text-center col-auto col mb-4"><input class="btn btn-primary btn-lg " id="submitButton" type="submit" value="작성완료"></div>
                                                
                                                
                                            </form>
                                            




                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
        </header>
        
        
   
        
        </body>
     </html>
        
         <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>