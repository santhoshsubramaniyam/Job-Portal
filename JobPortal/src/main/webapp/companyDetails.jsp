<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" itemscope="" itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Company Details</title>

  
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
  <a href="employerHome.jsp?email=<%=mail%>" class="">Home</a>
  
  <div class="dropdown">
    <a href="#" class="">Job</a>
    <div class="dropdown-menu">
      <!-- Dropdown menu content for Post Job -->
      <a href="jobPost.jsp?email=<%=mail%>">Post a job</a>
      <a href="postedJobs.jsp?email=<%=mail%>">Posted Jobs</a>
      <a href="manageJobs.jsp?email=<%=mail%>">Manage Jobs</a>
    </div>
  </div>
  <div class="dropdown">
    <a href="#" class="">Candidates</a>
    <div class="dropdown-menu">
      <!-- Dropdown menu content for Post Job -->
      <a href="manageCandidates.jsp?email=<%=mail%>">Manage Candidates</a>
      
    </div>
  </div>
  
  <div class="dropdown">
    <a href="#" class="">User</a>
    <div class="dropdown-menu">
      <!-- Dropdown menu content for Post Job -->
      <a href="profileEmployer.jsp?email=<%=mail%>">Profile</a>
      <a href="employerSignup.jsp">Signout</a>
    </div>
  </div>
 
</section>
    
</nav>
  
  <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%
String email = request.getParameter("uk");
String comName = null;
String location = null;
String comDes = null;

// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String query = "SELECT * FROM joblist WHERE email=?";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, email);
ResultSet rs = stmt.executeQuery();

// display user's photo
if (rs.next()) {
	  comName = rs.getString("companyName");
	     comDes = rs.getString("companyDes");
	     location = rs.getString("jobLocation");

}
%>

  <div class="banner-inner bg_img" style="background: url(https://emicrotasks.com/assets/templates/basic/images/bg/banner.png);">
    <div class="container">
      <div class="banner__inner__content">
        <h2 class="banner__inner__content-title">Company Details</h2>
        <ul class="breadcums d-flex justify-content-center">
          <li><a href="candidateHome.jsp">Home</a></li>
          <li>/</li>
          <li><%=comName %></li>
        </ul>
      </div>
    </div>
    <!-- <div class="shapes">
      <img src="https://emicrotasks.com/assets/images/frontend/breadcrumb/638eee7e81c1f1670311550.png" alt="overview" class="shape1">
    </div> -->
  </div>
  <section class="contact-section padding-top padding-bottom">
        <div class="container">
            <div class="row gy-5">
  <div class="col-lg-6" style="width: 100%;">
                    <div class="job__details__wrapper">
                        <h3 class="job__details__wrapper-title" style="margin-left: 1.33rem; margin-bottom: -1.35rem; margin-top: 0.35rem;">
							<%=comName %> - <%=location %>
                        </h3>
                        <div class="job__details__widget">
                            <h4 class="job__details__widget-title">Company Description : </h4>
                            
                            <div><%=comDes %></div>
                        </div>
					 </div>
  </div>
  </div>
  </div>
  </section>
  <section class="job-category padding-top padding-bottom">
        <div class="container">
            <div class="row g-3 g-xl-4 justify-content-center">
                   
                                                           <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%

String jobname = null;
String logo = null;
String salary = null;
String photo = null;
String date = null;
String id = null;

%>

<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
// execute query to get user's photo
String querys = "SELECT * FROM joblist WHERE email=?";
PreparedStatement stmts = conn.prepareStatement(querys);
stmts.setString(1, email);

		ResultSet rss = stmts.executeQuery();
		
		// display new courses
		while (rss.next()) {
				id = rss.getString("uniqueKey");
			
				jobname = rss.getString("jobName");
			
				logo = rss.getString("companyLogo");
				
				location = rss.getString("jobLocation");
				
				salary = rss.getString("jobSalary");
				
				date = rss.getString("appliedData");
	%>
                   
                   <div class="col-lg-4 col-xl-3 col-md-4 col-sm-6">
                        <div class="category__item">
                            <div class="category__item-icon">
                                <img style="width: 100px; height: 100px; border-radius: 0.3rem;" src="<%=logo %>" alt="icon">
                            </div>
                            <div class="category__item-content">
                                <h5 class="title"><%=jobname %></h5>
                                <p class="mt-2" style="color: #000;">at <%=location %> &nbsp; <%=salary %></p>
                            </div>
                            <span style="right: 8px; top: 9px;" class="job-count bg--base p-2 text--white rounded-3"><%=date %></span>

                            <a class="job_cate" href="jobDetail.jsp?id=<%=id%>&email=<%=mail%>"></a>
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
                    </div>
    </section>
  
  </body>
  </html>