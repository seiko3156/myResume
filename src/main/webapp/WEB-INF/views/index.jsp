<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/headerfooter/header.jsp" %> 

    <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-white" data-spy="affix" data-offset-top="510">
        <div class="container">
            <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse mt-sm-20 navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="#home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="#about" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="#resume" class="nav-link">Resume</a>
                    </li>
                </ul>
                <ul class="navbar-nav brand">
                    <img src="/imgs/avatar.jpg" alt="" class="brand-img">
                    <li class="brand-txt">
                        <h5 class="brand-title">류 승준</h5>
                        <div class="brand-subtitle">Developer</div>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item last-item">
                        <a href="#contact" class="nav-link">email</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div id="about" class="row about-section">
            <div class="col-lg-4 about-card">
                <h3 class="font-weight-light">소개</h3>
                <span class="line mb-5"></span>
                <h5 class="mb-3">방문해주셔서 감사합니다.</h5>
                <p class="mt-20">개발자라는 길로 늦게 들어섰지만 누구보다 열심히 노력하는 자세로 임하고있습니다.</p>
            </div>
            <div class="col-lg-4 about-card">
                <h3 class="font-weight-light">Personal Info</h3>
                <span class="line mb-5"></span>
                <ul class="mt40 info list-unstyled">
                    <li><span>Birthdate</span> : 02/25/1989</li>
                    <li><span>Email</span> : seiko315656@naver.com</li>
                    <li><span>Phone</span> : 010-4593-6773</li>
                    <li><span>Name</span> : 류승준 </li>
                    <li><span>Address</span> :  경기도 김포시 구래동</li>
                </ul>
                <ul class="social-icons pt-3">
                    <li class="social-item"><a class="social-link" href="#"><i class="ti-facebook" aria-hidden="true"></i></a></li>
                    <li class="social-item"><a class="social-link" href="#"><i class="ti-twitter" aria-hidden="true"></i></a></li>
                    <li class="social-item"><a class="social-link" href="#"><i class="ti-google" aria-hidden="true"></i></a></li>
                    <li class="social-item"><a class="social-link" href="#"><i class="ti-instagram" aria-hidden="true"></i></a></li>
                    <li class="social-item"><a class="social-link" href="#"><i class="ti-github" aria-hidden="true"></i></a></li>
                </ul>  
            </div>
            <div class="col-lg-4 about-card">
                <h3 class="font-weight-light">좌우명</h3>
                <span class="line mb-5"></span>
                <div class="row">
                    <div class="col-1 text-danger pt-1"><i class="ti-widget icon-lg"></i></div>
                    <div class="col-10 ml-auto mr-3">            
                        <p class="subtitle">"도전하지 않는 삶은 향기가 없다."</p>
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-1 text-danger pt-1"><i class="ti-paint-bucket icon-lg"></i></div>
                    <div class="col-10 ml-auto mr-3">
                        <p class="subtitle">"경청과 공감으로 만드는 긍정적 첫인상"</p>
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-1 text-danger pt-1"><i class="ti-stats-up icon-lg"></i></div>
                    <div class="col-10 ml-auto mr-3">
                        <p class="subtitle">"가장 필요로 하는 전문가가 되자"</p>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Resume Section-->
    <section class="section" id="resume">
        <div class="container">
            <h2 class="mb-5"><span class="text-danger">나의</span>이력</h2>
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                       <div class="card-header">
                            <div class="mt-2">
                                <h4>사회경험</h4>
                                <span class="line"></span>  
                            </div>
                        </div>
                        <div class="card-body">
                            <h6 class="title text-danger">2021.02 - 2022.08</h6>
                            <P>채용관리</P>
                            <P class="subtitle">인재파견 및 채용관련 업무를 했습니다.</P>
                            <hr>
                            <h6 class="title text-danger">2019.05 - 2021.02</h6>
                            <P>채권추심원</P>
                            <P class="subtitle">채권과 관련해서 소송 및 추심을 했습니다.</P>
                            <hr>
                            <h6 class="title text-danger">2016.07 - 2019.04</h6>
                            <P>여객선 승무원</P>
                            <P class="subtitle">한/일간 국제여객선 승무원으로 근무했습니다. </P>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                       <div class="card-header">
                            <div class="mt-2">
                                <h4>Education</h4>
                                <span class="line"></span>  
                            </div>
                        </div>
                        <div class="card-body">
                            <h6 class="title text-danger">2022.09 - 2023.02</h6>
                            <P>신촌이젠아카데미-자바웹프로그래밍 과정</P>
                            <P class="subtitle">1.소프트웨어 시스템의 설계 명세를 이해하여 응용 소프트웨어 개발 및 테스트 직무를 수행 할 수 있는 전문인력 양성을목표로 한다.</P>
                            <P class="subtitle">2. 응용 소프트웨어 개발에 사용되는 프로그래밍 언어의 기초 문법을 적용하고 언어의 특징과 라이브러리를 활용하여 기본 응용 소프트웨어를 구현할 수 있다.</P>
                            <P class="subtitle">3. 응용 소프트웨어의 화면 설계하고 구현할 수 있으며, SQL을 활용하여 데이터를 입 출력할 수 있고 응용 SW 프로그램과연동할 수 있다.</P>
                            <P class="subtitle">4. JAVA 언어의 기본 문법 및 활용 방법을 익혀 응용 SW 프로그래밍을 스스로 코딩하고 웹 개발 분야에 활용할 수 있다.</P>
                            <P class="subtitle">5. JSP및 Spring을 활용하여 웹 서비스를 개발할 수 있다.</P>    
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                       <div class="card-header">
                            <div class="pull-left">
                                <h4 class="mt-2">Skills</h4>
                                <span class="line"></span>  
                            </div>
                        </div>
                        <div class="card-body pb-2">
                           <h6>hTL5 &amp; CSS3</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>JavaScript</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>JSP</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>SQL</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>SPRING</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>JAVA</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section bg-dark py-5">
        <div class="container text-center">
            <h2 class="text-light mb-5 font-weight-normal">문의 할 사항이 있으시다면?</h2>
            <button class="btn bg-primary w-lg" onclick="location.href='board'">문의 게시판 이동</button>
        </div>
    </section>

    <div class="section contact" id="contact">
        <div id="map" class="map"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="contact-form-card">
                        <h4 class="contact-title">Send a message</h4>
                        <form name="frm" class="gform" action="https://script.google.com/macros/s/AKfycbzlO-Q552RSDPzMMOMc3RXwTk_peXfBIAVwnvJ_P3NuQOZSdvTWr_ByeUu_AlJM2m0/exec" 
                        method="post" target="iframe1" onsubmit="allreturn()">
                            <div class="form-group">
                                <input  class="form-control" type="text" placeholder="Name *" name="name" required >
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="email" placeholder="Email *" name="email" value="본인 이메일" required>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" id=" placeholder="Message *" rows="7" name="message" required></textarea>
                            </div>
                            <div class="form-group ">
                                <button type="submit" class="form-control btn btn-primary">Send Message</button>
                            </div>
                        </form>
                        <iframe id="iframe1" name="iframe1" style="display:none"></iframe>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="contact-info-card">
                        <h4 class="contact-title">Get in touch</h4>
                        <div class="row mb-2">
                            <div class="col-1 pt-1 mr-1">
                                <i class="ti-mobile icon-md"></i>
                            </div>
                            <div class="col-10 ">
                                <h6 class="d-inline">Phone : <br> <span class="text-muted">010-4593-6773</span></h6>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-1 pt-1 mr-1">
                                <i class="ti-map-alt icon-md"></i>
                            </div>
                            <div class="col-10">
                                <h6 class="d-inline">Address :<br> <span class="text-muted">경기도 김포시 구래동</span></h6>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-1 pt-1 mr-1">
                                <i class="ti-envelope icon-md"></i>
                            </div>
                            <div class="col-10">
                                <h6 class="d-inline">Email :<br> <span class="text-muted">seiko315656@naver.com</span></h6>
                            </div>
                        </div>
                        <ul class="social-icons pt-4">
                            <li class="social-item"><a class="social-link text-dark" href="#"><i class="ti-facebook" aria-hidden="true"></i></a></li>
                            <li class="social-item"><a class="social-link text-dark" href="#"><i class="ti-twitter" aria-hidden="true"></i></a></li>
                            <li class="social-item"><a class="social-link text-dark" href="#"><i class="ti-google" aria-hidden="true"></i></a></li>
                            <li class="social-item"><a class="social-link text-dark" href="#"><i class="ti-instagram" aria-hidden="true"></i></a></li>
                            <li class="social-item"><a class="social-link text-dark" href="#"><i class="ti-github" aria-hidden="true"></i></a></li>
                        </ul> 
                    </div>
                </div>
            </div>

        </div>
    </div>
    

	<!-- core  -->
    <script src="/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="/vendors/bootstrap/bootstrap.bundle.js"></script>

    <!-- bootstrap 3 affix -->
    <script src="/vendors/bootstrap/bootstrap.affix.js"></script>

    <!-- Isotope  -->
    <script src="/vendors/isotope/isotope.pkgd.js"></script>
    

    <!-- JohnDoe js -->
    <script src="/js/johndoe.js"></script>
<%@ include file="include/headerfooter/footer.jsp" %> 
</body>
</html>
