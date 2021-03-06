<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
    
    <head>
        <meta charset="UTF-8"/>
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
           <% String get_id = (String)session.getAttribute("getid"); 
    	     String get_nick = (String)session.getAttribute("getnick");%>
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
                        <li class="nav-item"><a class="nav-link me-lg-3 mb-0" href="#features">?????? ??????</a></li>
                        <li class="nav-item"><a class="nav-link me-lg-3 mb-0" href="#download">????????????</a></li>
                        <li class="nav-item"><a class="nav-link me-lg-3 mb-0" href="#download">????????? ??????</a></li>
                    </ul>
                    
                    <%if(get_id==null) {%>
                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                         
                        <span class="d-flex align-items-center" onClick="location.href='login.jsp'">
                            <i class="bi bi-box-arrow-in-right me-2"></i>
                            <span class="small">?????????</span>
                        </span>
                    </button>
                    
                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                        <span class="d-flex align-items-center" onClick="location.href='join.jsp'">
                            <i class="bi bi-door-open me-2"></i>
                            <span class="small">????????????</span>
                        </span>
                    </button>
                    <%}else {%>
                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                         
                        <span class="d-flex align-items-center"">
                            <i class="bi bi-person-circle me-2"></i>
                            <span class="small"><%=get_nick %>??? ???????????????!</span>
                        </span>
                    </button>
                    
                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                        <span class="d-flex align-items-center" onClick="location.href='logoutController'">
                            <i class="bi bi-box-arrow-right me-2"></i>
                            <span class="small">????????????</span>
                        </span>
                    </button>
                    <% }%>
                    
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
                                                <h3>????????????</h3>
                                            </div>
                                            <form action="joinController" method="post" class="form-subscribe" id="contactForm" onkeydown="if(event.keyCode==13) return false;">
                                                <!-- id input-->
                                                    <div>
                                                        <h5 class="joininfo ms-2">?????????</h5>
                                                    </div>
                                                    <div class="row mb-4">
                                                        <div class="col">
                                                            <input class="form-control form-control-lg" id="input_id" type="text" name="id" required oninput = "checkId()">
                                                            <span class="id_ok mt-2">?????? ????????? ??????????????????.</span>
															<span class="id_already mt-2 ">????????? ??? ???????????? ???????????? ?????????.</span>
                                                            
                                                            
                                                       </div>
                                                        
                                                    </div>

                                                 <!-- password input-->
                                                 <div>
                                                    <h5 class="joininfo ms-2">????????????</h5>
                                                </div>
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                        <input class="form-control form-control-lg" id="input_pw" type="password" name="pw" maxlength="15" required oninput = "checkPw()"/>
                                                     
                                                    </div>
                                                   
                                                </div>

                                                <!-- password again input-->
                                                <div>
                                                    <h5 class="joininfo ms-2">???????????? ?????????</h5>
                                                </div>
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                        <input class="form-control form-control-lg" id="input_pw2" type="password" name="pw2" maxlength="15" required oninput = "checkPw()" />
                                                        <span class="pw_ok mt-2">??????????????? ???????????????.</span>
														<span class="pw_notOk mt-2 ">??????????????? ???????????? ????????????.</span>
                                                     
                                                    </div>
                                                   
                                                </div>

                                                 <!-- name input-->
                                                 <div>
                                                    <h5 class="joininfo ms-2">??????</h5>
                                                </div>
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                        <input class="form-control form-control-lg" id="input_name" type="text" name="name"  />
                                                     
                                                    </div>
                                                   
                                                </div>

                                                <!-- name input-->
                                                <div>
                                                    <h5 class="joininfo ms-2">?????????</h5>
                                                </div>
                                                 <div class="row mb-4 ">
                                                    <div class="col ">
                                                        <input class="form-control form-control-lg" id="input_nick" type="text" name="nick" required oninput = "checkNick()"/>
                                                     	<span class="nick_ok mt-2">?????? ????????? ??????????????????.</span>
														<span class="nick_already mt-2">????????? ??? ???????????? ???????????? ?????????.</span>
                                                    </div>
                                                   
                                                </div>

                                                 <!-- birth input-->
                                                 <div>
                                                    <h5 class="joininfo ms-2">????????????</h5>
                                                </div>
                                                 <div class="row mb-end">
                                                    <div class="col">
                                                        <input class="form-control-little form-control-lg me-2" name="bYear" type="text" placeholder="??????">
                                                        <select class="form-control-little form-control-lg me-2" name="bMonth">
                                                            <option>???</option>
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
                                                        <input class="form-control-little form-control-lg" name="bDate" type="text" placeholder="???">
                                                        
                                                     
                                                    </div>
                                                   
                                                </div>

                                                <div class="text-center mt-5 mb-5">
                                                    <h3 class="mb-2">????????????</h3>
                                                    <p class="mb-end">??????????????? ???????????? ??? ?????? ????????? ????????? ??? ????????????.<p>
                                                </div>

                                                <!-- sex input-->
                                                <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????</h5>
                                                        <label for="input_men">??????</label>
                                                        <input id="input_men" type="radio" value="???" name="gender">
                                                        <label for="input_women">??????</label>
                                                        <input id="input_women" type="radio" value="???" name="gender">
                                                    </div> 
                                                </div>

                                                  <!-- address input-->
                                                  <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????</h5>
                                                        
                                                            <select class="form-control form-control-little me-2" id="input_ad1" name="ad1" onchange="addressKindChange(this)">
                                                              <option>?????????/?????????/??? &nbsp;&nbsp;  </option>
                                                              <option value="a">???????????????</option>
                                                              <option value="b1">???????????????</option>
                                                              <option value="b2">???????????????</option>
                                                              <option value="b3">???????????????</option>
                                                              <option value="b4">???????????????</option>
                                                              <option value="b5">???????????????</option>
                                                              <option value="b6">???????????????</option>
                                                              <option value="c1">?????????????????????</option>
                                                              <option value="c2">?????????????????????</option>
                                                              <option value="d1">?????????</option>
                                                              <option value="d2">?????????</option>
                                                              <option value="d3">????????????</option>
                                                              <option value="d4">????????????</option>
                                                              <option value="d5">????????????</option>
                                                              <option value="d6">????????????</option>
                                                              <option value="d6">????????????</option>
                                                              <option value="d7">????????????</option>
                                                             



                                                            </select>
                                                          
                                                          
                                                            <select class="form-control form-control-little me-2" id="input_ad2" name="ad2">
                                                              <option>???/???/???</option>
                                                            </select>

                                                    </div> 
                                                </div>

                                                 <!-- job input-->
                                                 <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????</h5>
                                                        <select class="form-control form-control-little me-2" id="input_job" name="job">
                                                            <option value="??????">??????</option>
                                                            <option value="?????????">?????????</option>
                                                            <option value="??????">??????</option>
                                                            <option value="?????????">?????????</option>
                                                            <option value="?????????">?????????</option>
                                                            <option value="?????????">?????????(????????????)</option>
                                                        </select>
                                                    </div> 
                                                </div>

                                                 <!-- school input-->
                                                 <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????</h5>
                                                        <select class="form-control form-control-little me-2" id="input_school" name="school">
                                                            <option value="??????">??????</option>
                                                            <option value="??????">??????</option>
                                                            <option value="??????">??????</option>
                                                            <option value="??????">??????</option>
                                                            <option value="????????????">????????????</option>
                                                            <option value="???????????????">???????????????</option>
                                                            <option value="???????????????">???????????????</option>
                                                        </select>
                                                    </div> 
                                                </div>

                                                 <!-- subject input-->
                                                 <div>
                                                    
                                                </div>
                                                 <div class="row mb-4">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????</h5>
                                                        <input class="form-control form-control-little me-2" id="input_subject" type="text" name="subject">
                                                    </div> 
                                                </div>
                                                
                                                <!-- get certificate -->
                                                <div>
                                                </div>
                                                 <div class="row mb-1">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">????????? ?????????</h5>
                                                        <input class="form-control form-control-little me-2" id="getcert1" type="text" name="subject">
                                                        <button class="btn btn-primary btn-lg " id="addButton0" style="padding : 0.5rem !important;" onclick="showcert1()">+</button>
                                                        <button class="btn btn-primary btn-lg minButton0" style="padding : 0.5rem !important;" onclick="disscert1()">-</button>
                                                    </div> 
                                                </div>
                                                
                                                <div>
                                                </div>
                                                 <div class="row mb-1">
                                                    <div class="blind1 col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????????????????&nbsp;</h5>
                                                        <input class="form-control form-control-little me-2" id="getcert2" type="text" name="subject">
                                                        <button class="btn btn-primary btn-lg " id="addButton1" style="padding : 0.5rem !important;" onclick="showcert2()">+</button>
                                                        <button class="btn btn-primary btn-lg minButton1" style="padding : 0.5rem !important;" onclick="disscert2()">-</button>
                                                    </div> 
                                                </div>
                                                
                                                <div>
                                                </div>
                                                 <div class="row mb-1">
                                                    <div class="blind2 col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????????????????&nbsp;</h5>
                                                        <input class="form-control form-control-little me-2" id="getcert3" type="text" name="subject">
                                                        <button class="btn btn-primary btn-lg " id="addButton2" style="padding : 0.5rem !important;" onclick="showcert3()">+</button>
                                                        <button class="btn btn-primary btn-lg minButton2" style="padding : 0.5rem !important;" onclick="disscert3()">-</button>
                                                    </div> 
                                                </div>
                                                
                                                <div>
                                                </div>
                                                 <div class="row mb-1">
                                                    <div class="blind3 col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????????????????&nbsp;</h5>
                                                        <input class="form-control form-control-little me-2" id="getcert4" type="text" name="subject">
                                                        <button class="btn btn-primary btn-lg " id="addButton3" style="padding : 0.5rem !important;" onclick="showcert4()">+</button>
                                                        <button class="btn btn-primary btn-lg minButton3" style="padding : 0.5rem !important;" onclick="disscert4()">-</button>
                                                    </div> 
                                                </div>
                                                <div>
                                                </div>
                                                 <div class="row mb-1">
                                                    <div class="blind4 col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????????????????&nbsp;</h5>
                                                        <input class="form-control form-control-little me-2" id="getcert5" type="text" name="subject">
                                                        <button class="btn btn-primary btn-lg minButton4" style="padding : 0.5rem !important;" onclick="disscert5()">-</button>
                                                        
                                                        
                                                    </div> 
                                                </div>
                                                <span class="blind4 font mb-4" style="color:red; margin-left:155px">?????? 5????????? ?????? ??? ????????????.</span>
                                                
                                                
                                                
                                                
                                                
                                                 <!-- wish certificate -->
                                                <div>
                                                </div>
                                                 <div class="row mb-1">
                                                    <div class="col ms-2">
                                                        <h5 class="joininfo float-start me-4">?????? ?????????</h5>
                                                        <input class="form-control form-control-little me-2" id="wishcert1" type="text" name="subject">
                                                        <button class="btn btn-primary btn-lg " id="addButton4" style="padding : 0.5rem !important;" onclick="showcert6()">+</button>
                                                        <button class="btn btn-primary btn-lg minButton5" style="padding : 0.5rem !important;" onclick="disscert6()">-</button>
                                                    </div> 
                                                </div>
                                                
                                                <div>
                                                </div>
                                                 <div class="row mb-1">
                                                    <div class="blind5 col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????????????????&nbsp;</h5>
                                                        <input class="form-control form-control-little me-2" id="wishcert2" type="text" name="subject">
                                                        <button class="btn btn-primary btn-lg " id="addButton5" style="padding : 0.5rem !important;" onclick="showcert7()">+</button>
                                                        <button class="btn btn-primary btn-lg minButton6" style="padding : 0.5rem !important;" onclick="disscert7()">-</button>
                                                    </div> 
                                                </div>
                                                
                                                <div>
                                                </div>
                                                 <div class="row mb-1">
                                                    <div class="blind6 col ms-2">
                                                        <h5 class="joininfo float-start me-4">??????????????????&nbsp;</h5>
                                                        <input class="form-control form-control-little me-2" id="wishcert3" type="text" name="subject">
                                                        <button class="btn btn-primary btn-lg minButton7" style="padding : 0.5rem !important;" onclick="disscert8()">-</button>
                                                    </div> 
                                                </div>
                                                <span class="blind6 font mb-4" style="color:red; margin-left:155px">?????? 3????????? ?????? ??? ????????????.</span>
                                                
                                                






                                                <div class="text-center col-auto col mb-4"><button class="btn btn-primary btn-lg " id="submitButton" type="submit">????????????</button></div>
                                                
                                                
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
        <script src="js/scripts.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  
   
   
        
        </body>
     </html>
        
       
        
   