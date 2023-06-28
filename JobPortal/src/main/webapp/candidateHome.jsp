<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate Home</title>
    <!-- CSS -->
    <link rel="stylesheet" href="css/index.css">
    <link href="https://emicrotasks.com/assets/global/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://emicrotasks.com/assets/global/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/global/css/line-awesome.min.css">

  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/animate.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/slick.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/odometer.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/nice-select.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/main.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/custom.css">
    <!--SHORTCUT ICON
<link rel="shortcut icon" href="assets/images/favicon.ico" />-->

<!--META TAGS
<meta charset="UTF-8" />
<meta name="language" content="ES" />
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />-->

<!--FONT AWESOME-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--GOOGLE FONTS-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Kanit:wght@100;200;400;500;600;700;800;900&family=Mukta:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet" />

<!--PLUGIN-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>

<link rel="stylesheet" href="css/index.css">

<style>
/* Dropdown Styles */
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-toggle {
  color: #000;
  text-decoration: none;
  padding: 10px;
  display: inline-block;
}

.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
  padding: 10px;
  display: none;
}

.dropdown-menu a {
  display: block;
  color: #000;
  text-decoration: none;
  padding: 5px 0px;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-menu {
  display: block;
}

/* Change the background color of the dropdown menu items on hover */
.dropdown-menu a:hover {
  
}
</style>

<body>
<% String mail = request.getParameter("email"); %>
<nav>
    <section class="flex_content">
        <figure class="logo fixed_flex">
            <!-- <img src="https://i.postimg.cc/02NrFwT5/canva.png" alt=""> -->
            <figcaption>
                <strong class="title" style="letter-spacing: 0.2rem;">ARBIET</strong> 
            </figcaption>
        </figure>
    </section>
    <section class="flex_content nav_content" id="nav_content">
        <a href="candidateHome.jsp?email=<%=mail %>" class="">Home</a>
        <div class="dropdown">
    <a href="#" class="">Job</a>
    <div class="dropdown-menu">
      <!-- Dropdown menu content for Post Job -->
      <a href="jobList.jsp?email=<%=mail%>">Job list</a>
      <a href="appliedJobs.jsp?email=<%=mail%>">Applied Jobs</a>
     
    </div>
  </div>
        
        <a href="companyList.jsp?email=<%=mail%>">Companies</a>
        <div class="dropdown">
    <a href="#" class="">User</a>
    <div class="dropdown-menu">
      <!-- Dropdown menu content for Post Job -->
      <a href="profileCandidate.jsp?email=<%=mail%>">Profile</a>
      <a href="submitResume.jsp?email=<%=mail%>">Quick Resume</a>
        <a href="candidateSignup.jsp">Logout</a>
     
    </div>
  </div>
        
    </section>
    
</nav>


<!--HEADER-->
<header class="flex">
    <article>
        <h1 class="title big" style="color: white;">Welcome to <br><em>Arbiet</em></h1>
        <p>Choose a job you love, and you will never have to work a day in your life.</p>
        <a href="jobList.jsp?email=<%=mail%>" class="btn btn_3">Search Jobs</a>
    </article>
    <section class="flex" style="margin-bottom: -30px;">
        <aside class="padding_1x" >
            <h3 class="sub_title">Browse Jobs</h3>
            <p>Finding the right job vacancy can be overwhelming, especially with countless options available. That's why our platform offers advanced search filters, enabling you to customize your search based on your preferences. </p>
            <a href="#"><i class="fa fa-angle-right"></i></a>
        </aside>
        <aside class="padding_1x">
            <h3 class="sub_title">Find your vaccancy</h3>
            <p>Our platform regularly updates with new vacancies, ensuring that you're always up-to-date with the latest job openings across various sectors. Say goodbye to endless searching and let us connect you with the perfect vacancy in your desired industry.</p>
            <a href="#"><i class="fa fa-angle-right"></i></a>
        </aside>
        <aside class="padding_1x">
            <h3 class="sub_title">Submit Resume</h3>
            <p> Get ready to take the next step in your career by exploring our user-friendly platform and uncovering the job of your dreams.</p>
            <a href="#"><i class="fa fa-angle-right"></i></a>
        </aside>
    </section>
</header>



<!--MAIN-->
<main>


    <section class="overview-section bg_img overflow-hidden" style="background: url(https://emicrotasks.com/assets/images/frontend/overview/638f07053892a1670317829.png); margin-top: 14rem;">
    <div class="row">
        <div class="col-lg-6 p-0" style="margin-left: 26rem;">
            <div class="overview__content__wrapper bg_img" style="background: url(https://emicrotasks.com/assets/images/frontend/overview/638f07058bec91670317829.png);">
                <div class="container">
                    <div class="overview__content ms-lg-auto padding-top padding-bottom">
                        <div class="section__header mb-0 color-white">
                            <h2 class="section__header-title">I Want To get a job</h2>
                            <p>Find your jobs by Searching related your job title. Or browse job by Category as per your need and profession</p>
                            <a href="jobList.jsp?email=<%=mail%>" class="btn">Find A Job</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</section>

        
    <!--division_2-->
    <div class="divisions division_2 flex">
        <section class="flex_content padding_2x">
            <div class="title_header">
                <h2 class="title medium" style="text-decoration: none;">Top Categories</h2>
                <p></p>
                
            </div>
            <marquee direction="up" id="notification" onmouseover="this.stop();" onmouseleave="this.start();">
                <!--notification begining-->
                <a href="#" class="flex fixed_flex">
                    <figure>
                        <img src="https://xbosoft.com/wp-content/uploads/2014/05/test-automation-1024x698.jpg" alt="" loading="lazy" />
                    </figure>
                    <article>
                        <h3 class="title">Automation Tester</h3>
                        <p>19.3K+ jobs</p>
                        <!-- <aside class="fixed_flex">
                            <span>
                                <i class="fa fa-calendar"></i>
                                
                            </span>
                            <span>
                                <i class="fa fa-clock-o"></i>
                                
                            </span>
                        </aside> -->
                    </article>
                </a>
                <!--notification ends-->
                <!--notification begining-->
                <a href="#" class="flex fixed_flex">
                    <figure>
                        <img src="https://img-b.udemycdn.com/course/750x422/1002676_3c6e_2.jpg" alt="" loading="lazy" />
                    </figure>
                    <article>
                        <h3 class="title">Full Stack Developer</h3>
                        <p>15K+ jobs</p>
                        <!-- <aside class="fixed_flex">
                            <span>
                                <i class="fa fa-calendar"></i>
                                23-05-2023
                            </span>
                            <span>
                                <i class="fa fa-clock-o"></i>
                                20:38 pm
                            </span>
                        </aside> -->
                    </article>
                </a>
                <!--notification ends-->
                <!--notification begining-->
                <a href="#" class="flex fixed_flex">
                    <figure>
                        <img src="https://images.ctfassets.net/wp1lcwdav1p1/31dUrsGyucK0UNmJEQUqj3/3c57d917e84f6500ee2ec54e8760b854/UX_vs_UI.png?w=1500&q=60" alt="" loading="lazy" />
                    </figure>
                    <article>
                        <h3 class="title">UI/UX Designer </h3>
                        <p>22.3K+ jobs</p>
                        <!-- <aside class="fixed_flex">
                            <span>
                                <i class="fa fa-calendar"></i>
                                23-05-2023
                            </span>
                            <span>
                                <i class="fa fa-clock-o"></i>
                                20:38 pm
                            </span>
                        </aside> -->
                    </article>
                </a>
                <!--notification ends-->
                <!--notification begining-->
                <a href="#" class="flex fixed_flex">
                    <figure>
                        <img src="https://www.betterup.com/hs-fs/hubfs/Imported_Blog_Media/human%20resources%20management%20-%20human%20resource%20tools-1.png?width=1999&height=1143&name=human%20resources%20management%20-%20human%20resource%20tools-1.png" alt="" loading="lazy" />
                    </figure>
                    <article>
                        <h3 class="title">HR </h3>
                        <p>12.5k+ jobs</p>
                        <!-- <aside class="fixed_flex">
                            <span>
                                <i class="fa fa-calendar"></i>
                                23-05-2023
                            </span>
                            <span>
                                <i class="fa fa-clock-o"></i>
                                20:38 pm
                            </span>
                        </aside> -->
                    </article>
                </a>
                <!--notification ends-->
                <!--notification begining-->
                <a href="#" class="flex fixed_flex">
                    <figure>
                        <img src="https://xbosoft.com/wp-content/uploads/2014/05/test-automation-1024x698.jpg" alt="" loading="lazy" />
                    </figure>
                    <article>
                        <h3 class="title">Automation Tester</h3>
                        <p>9k+ jobs</p>
                        <aside class="fixed_flex">
                            <span>
                                <i class="fa fa-calendar"></i>
                                23-05-2023
                            </span>
                            <span>
                                <i class="fa fa-clock-o"></i>
                                20:38 pm
                            </span>
                        </aside>
                    </article>
                </a>
                <!--notification ends-->
            </marquee>
        </section>
        <section class="flex_content padding_2x" id="event">
            <div class="title_header">
                <h2 class="title medium">Testimonial</h2>
                <p>With a passion and zeal for the lost and hurting world,  looking for ways to build bridges to a unemployement and wealthy society.</p>
                
                <ul class="logo-slider event-slider">
                    <li>
                        <h3 class="title small">Komal</h3>
                        <p>If I didnt find JobsFactory  pretty sure it be nowhere, they helped me find a job in less than 2 days and the job is amazing. Thank you!</p>
                        <aside class="fixed_flex">
                            <figure>
                                <img src="https://images.pexels.com/photos/4064178/pexels-photo-4064178.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="" loading="lazy" />
                            </figure>
                        </aside>
                        <!-- <a href="#" class="btn btn_2">Event details</a> -->
                    </li>
                    <li>
                        <h3 class="title small">Surya</h3>
                        <p>Within a couple of days after posting a CV, I had possible employers contacting me. After several interviews, I decided to accept a position located nearby.</p>
                        <aside class="fixed_flex">
                            <figure>
                                <img src="https://images.pexels.com/photos/3785104/pexels-photo-3785104.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="" loading="lazy" />
                            </figure>
                        </aside>
                        <!-- <a href="#" class="btn btn_2">Event details</a> -->
                    </li>
                </ul>
            </div>
        </section>
    </div>
    
     <!--division_3-->
    <section class="job-category padding-top padding-bottom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="section__header text-center">
                    <h2 class="section__header-title">Top Companies</h2>
                    <p>Find the Best Micro tasks or microjobs in Our Marketplace.</p>
                </div>
            </div>
        </div>
        <div class="row g-3 g-xl-4 justify-content-center">
                            <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img src="https://vedhanthitechnologies.com/img/logo1.png">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title">Vedhanthi Technologies</h5>
                            <p class="mt-2" style="color: black;">Tap to view list of Companies</p>
                        </div>
                        
                        <a class="job_cate" href="companyList.jsp?email=<%=mail%>"></a>
                    </div>
                </div>
                            <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/9/96/Zoho-logo.png">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title">ZOHO</h5>
                            <p class="mt-2" style="color: black;">Tap to view list of Companies</p>
                        </div>
                        
                        <a class="job_cate" href="companyList.jsp?email=<%=mail%>"></a>
                    </div>
                </div>
                            <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Accenture.svg/2560px-Accenture.svg.png">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title">Accenture</h5>
                            <p class="mt-2" style="color: black;">Tap to view list of Companies</p>
                        </div>
                       
                        <a class="job_cate" href="companyList.jsp?email=<%=mail%>"></a>
                    </div>
                </div>
                            <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Tata_Consultancy_Services_Logo.svg/2560px-Tata_Consultancy_Services_Logo.svg.png">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title">TCS</h5>
                            <p class="mt-2" style="color: black;">Tap to view list of Companies</p>
                        </div>
                        
                        <a class="job_cate" href="companyList.jsp?email=<%=mail%>"></a>
                    </div>
                </div>
                            <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img src="https://pngimg.com/uploads/microsoft/microsoft_PNG20.png">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title">Microsoft</h5>
                            <p class="mt-2" style="color: black;">Tap to view list of Companies</p>
                        </div>
                        
                        <a class="job_cate" href="companyList.jsp?email=<%=mail%>"></a>
                    </div>
                </div>
                            <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Tata_Consultancy_Services_Logo.svg/2560px-Tata_Consultancy_Services_Logo.svg.png">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title">TCS</h5>
                            <p class="mt-2" style="color: black;">Tap to view list of Companies</p>
                        </div>
                        
                        <a class="job_cate" href="companyList.jsp?email=<%=mail%>"></a>
                    </div>
                </div>
                            <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img src="https://vedhanthitechnologies.com/img/logo1.png">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title">Vedhanthi Technologies</h5>
                            <p class="mt-2" style="color: black;">Tap to view list of Companies</p>
                        </div>
                        
                        <a class="job_cate" href="companyList.jsp?email=<%=mail%>"></a>
                    </div>
                </div>
                            <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/9/96/Zoho-logo.png">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title">ZOHO</h5>
                            <p class="mt-2" style="color: black;">Tap to view list of Companies</p>
                        </div>
                        
                        <a class="job_cate" href="companyList.jsp?email=<%=mail%>"></a>
                    </div>
                </div>
                    </div>
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10 mt-4">
                <div class="section__header text-center">
                     <a href="companyList.jsp?email=<%=mail%>" class="btn btn--base">View all</a>
                </div>
            </div>
        </div>
    </div>
</section>
    
    <!--division_4-->
    <div class="divisions division_4" onmousemove="animate_balls(event)">
        <div class="title_header">
            <h2 class="title medium">We promise best future for you</h2>
            <p>Unleash your career potential. Browse our job portal and open doors to endless possibilities.</p>
            <!-- <aside class="fixed_flex">
                <a href="#" class="btn btn_1">Explore more</a>
                <i class="fa fa-angle-right"></i>
                <a href="javascript:void(0)">Gallery Portfolio</a>
            </aside> -->
        </div>
        <div class="cards">
            <span class="ball"></span>
            <span class="ball"></span>
            <span class="ball"></span>
            <span class="ball"></span>
            <section class="fixed_flex">
                <figure class="flex_content">
                    <img src="https://images.pexels.com/photos/8847136/pexels-photo-8847136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="" loading="lazy" />
                </figure>
                <figure class="flex_content">
                    <img src="https://images.pexels.com/photos/4225928/pexels-photo-4225928.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="" loading="lazy" />
                </figure>
                <figure class="flex_content">
                    <img src="https://images.pexels.com/photos/6953806/pexels-photo-6953806.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="" loading="lazy" />
                </figure>
                <figure class="flex_content">
                    <img src="https://images.pexels.com/photos/4050367/pexels-photo-4050367.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="" loading="lazy" />
                </figure>
            </section>
        </div>
    </div>
</main>


 <!-- Footer -->
 <%@include file="component/footer.jsp" %>
<section class="nextfoot">
       <div class="sptb "> 
			<div class="container">
        		<div class="get-started d-flex flex-wrap align-items-center justify-content-between">
            		<div class="section__header m-0">
                		<h3 class="section__header-title">Let's Get Started</h3>
                		<p style="color: black;">Finding the right job vacancy can be overwhelming, especially with countless options available.</p>
            		</div>
            		<a href="jobList.jsp?email=<%=mail%>" class="cmn--btn">Get Started</a>
        		</div>
    		</div>
    		</div>
    		</section>


<!--ADDITIONAL-->
<div class="overlay"></div>
<div class="cursor"></div>

</body>

    </head>
    <!-- JavaScript -->
   <script src="js/index.js"></script>
    <script>
        
    </script>
</html>