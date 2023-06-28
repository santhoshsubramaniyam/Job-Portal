<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" itemscope="" itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title> Company List</title>

  
  <link href="https://emicrotasks.com/assets/global/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://emicrotasks.com/assets/global/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/global/css/line-awesome.min.css">

  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/animate.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/slick.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/odometer.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/nice-select.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/main.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/custom.css">
  <link rel="stylesheet" href="css/index.css">

  <style>
    *:focus {
      outline: none;
    }

    .form--control {
      padding-right: 2px !important;
    }
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
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/color.php?color=51b0ff">
</head>

<body data-new-gr-c-s-check-loaded="14.1098.0" data-gr-ext-installed="">
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
  

  <div class="banner-inner bg_img" style="background: url(https://emicrotasks.com/assets/templates/basic/images/bg/banner.png);">
    <div class="container">
      <div class="banner__inner__content">
        <h2 class="banner__inner__content-title">Company List</h2>
        <ul class="breadcums d-flex justify-content-center">
          <li><a href="candidateHome.jsp?email=<%=mail %>">Home</a></li>
          <li>/</li>
          <li>Company list</li>
        </ul>
      </div>
    </div>
   <!--  <div class="shapes">
      <img src="https://emicrotasks.com/assets/images/frontend/breadcrumb/638eee7e81c1f1670311550.png" alt="overview" class="shape1">
    </div> -->
  </div>
  		<section class="job-category padding-top padding-bottom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="section__header text-center">
                    <h2 class="section__header-title">Find Your Jobs Easily</h2>
                    <p style="color: #000;">Find the company  in Our ARBIET.</p>
                </div>
            </div>
        </div>
        <div class="row g-3 g-xl-4 justify-content-center">
        
                                        <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%

String fname = null;
String lname = null;
String rc = null;
String photo = null;
String uk = null;

%>

<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
// execute query to get user's photo
String query = "SELECT *, COUNT(*) AS row_count FROM joblist GROUP BY email";
PreparedStatement stmt = con.prepareStatement(query);

		ResultSet rs = stmt.executeQuery();
		
		// display new courses
		while (rs.next()) {
			  fname = rs.getString("companyName");
			     lname = rs.getString("jobLocation");
		
			     photo = rs.getString("companyLogo");
			     
			     uk = rs.getString("email");
			     
			     rc = rs.getString("row_count");
			 
			
	%>
	
               <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                    <div class="category__item">
                        <div class="category__item-icon">
                            <img style="width: 100px; height: 100px; border-radius: 0.3rem;" src="<%=photo%>">
                        </div>
                        <div class="category__item-content">
                            <h5 class="title"><%=fname %></h5>
                            <p class="mt-2" style="color: #000;"><%=lname%></p>
                        </div>
                        <span class="job-count bg--base p-2 rounded-3 text--white">
                            <%=rc %>
                        </span>
                        <a class="job_cate" href="companyDetails.jsp?uk=<%=uk%>&email=<%=mail%>"></a>
                    </div>
                </div>
                
<%
}

// close database connection
rs.close();
stmt.close();
con.close();
%>
        
                    </div>
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10 mt-4">
                <div class="section__header text-center">
                    <a href="#" class="btn btn--base">View More</a>
                </div>
            </div>
        </div>
    </div>
</section>
  </body>
  </html>