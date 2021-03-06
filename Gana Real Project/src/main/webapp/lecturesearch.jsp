<%@page import="java.util.List"%>
<%@page import="com.controller.Image"%>
<%@page import="com.controller.lectureVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.controller.lectureDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	<style>
	img{
	width: 223px;
	height: 180px;
	object-fit: cover;
	}
    </style>
</head>
<body>
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
        
        
        <!-- Header-->
        <header class="bg-primary py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">?????????</h1>
                    <p class="lead fw-normal text-white-50 mb-0">??????</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    
                    <% lectureDAO dao = new lectureDAO();
                    ArrayList<lectureVO> arr = (ArrayList) request.getAttribute("arr"); %>
                    
                    <%
                     
                     Image itc = new Image();
                                                                                
                    for(int i=0; i<arr.size(); i++){
                                                            %>
                    <div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="<%=itc.test2(arr.get(i).getLink()) %>" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h6 style="color: gray">
									<% out.print(arr.get(i).getSite());%>
								</h6>
								<h5 class="fw-bolder">
									<% out.print(arr.get(i).getName());%>
								</h5>
								<!-- Free badge-->
								<div class="badge bg-danger text-white position-absolute"
									style="top: 9.5rem; left: 0.5rem">??????</div>
								<!-- TEST badge-->
								<%
                            		if(arr.get(i).getTest()==1){
                            			%><div
									class="badge bg-success text-white position-absolute"
									style="top: 9.5rem; right: 0.5rem">??????</div>
								<%
                            		}
                            		else if(arr.get(i).getTest()==2){
                            		%>
								<div class="badge bg-warning text-white position-absolute"
									style="top: 9.5rem; right: 0.5rem">??????</div>
								<%} 
                            		else if(arr.get(i).getTest()==3){
                            		%>
								<div class="badge bg-success text-white position-absolute"
									style="top: 9.5rem; right: 0.5rem">??????</div>
								<div class="badge bg-warning text-white position-absolute"
									style="top: 9.5rem; right: 3.5rem">??????</div>
								<%}%>
								<!-- Product price-->
								<%if(arr.get(i).getCost()==0){%>
								<div class="badge bg-primary text-white position-absolute"
									style="top: 9.5rem; left: 0.5rem">??????</div>
								<%} else{ %>
								<div class="badge bg-danger text-white position-absolute"
									style="top: 9.5rem; left: 0.5rem">??????</div>
								<%}
                                    %>
								<%if(arr.get(i).getCost()==0){%>
								<h5 style="color: gray">??????</h5>
								<% }else{ %>
								<h5>
									<% out.print(arr.get(i).getCost());%>???
								</h5>
								<% } %>
							</div>
						</div>
						<form action="lecturedetail" method="post">
						
						
						
						<!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <input type="hidden" id="gameToken" name="data" value="<%=arr.get(i).getId()%>">
                                <button class="btn btn-outline-primary mt-auto" type="submit">????????????</button></div>
                                

						
							</div>
                         </form>
					</div>
					
				</div>
                    <%
                    }
                    %>
                    
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
                            <li class="list-inline-item">???</li>
                            <li class="list-inline-item"><a href="#!">Contact</a></li>
                            <li class="list-inline-item">???</li>
                            <li class="list-inline-item"><a href="#!">Terms of Use</a></li>
                            <li class="list-inline-item">???</li>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>