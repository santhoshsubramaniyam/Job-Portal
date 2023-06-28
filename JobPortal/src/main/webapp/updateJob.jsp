<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" itemscope="" itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Update Job</title>

  

 

 
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
.css-lmibgj {
    box-sizing: border-box;
    z-index: 0;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    min-height: 2.75rem;
    margin-top: 0px;
    margin-bottom: 0px;
    padding: 0.5rem 40px 0.5rem 0.75rem;
    background-color: rgb(255, 255, 255);
    border-radius: 0.5rem;
    border: 1px solid rgb(118, 118, 118);
    font-size: 1rem;
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    font-weight: 400;
    letter-spacing: 0px;
    line-height: 1.5;
    outline: none;
    user-select: none;
    transition: all 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
    position: relative;
    width: auto;
}
.css-wgxzku {
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    font-weight: inherit;
    font-size: inherit;
    line-height: inherit;
    color: rgb(45, 45, 45);
    white-space: nowrap;
    text-overflow: clip;
    overflow: hidden;
}
.css-g9h26m {
    display: flex;
    box-sizing: border-box;
    margin: 0px;
    min-width: 0px;
    position: relative;
}
.css-v77tbi {
    display: flex;
    box-sizing: border-box;
    margin: 0px 0.75rem 0px 0px;
    min-width: 0px;
    align-self: center;
    background-color: rgb(169, 37, 43);
    border-radius: 9999rem;
    left: 0px;
    width: 0.5rem;
    height: 0.5rem;
}
.css-1w0iwyp {
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    font-weight: inherit;
    font-size: 1rem;
    line-height: 1.5;
    color: rgb(45, 45, 45);
}
.css-bbdyn5 {
    width: 1.5rem;
    height: 1.5rem;
    display: flex;
    flex: 0 0 auto;
    position: absolute;
    top: 50%;
    right: 0.75rem;
    color: rgb(45, 45, 45);
    transform: translateY(-50%);
}
  </style>
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/color.php?color=51b0ff">
</head>
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
String email = request.getParameter("email");
 String jobId = request.getParameter("jobId");
String comName = null;
String empphone = null;
String comDes = null;
String empName = null;
String photo = null;
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String querys = "SELECT * FROM addEmployer WHERE employerEmail=?";
PreparedStatement stmts = conn.prepareStatement(querys);
stmts.setString(1, email);
ResultSet rss = stmts.executeQuery();

// display user's photo
if (rss.next()) {
	  comName = rss.getString("companyName");
	     empName = rss.getString("employerName");
	     empphone = rss.getString("employerPhone");
	     comDes = rss.getString("companyDescription");
	     
	     Blob imageBlob = rss.getBlob("companyLogo");
	     byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
	     String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	     photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
}
%>
 <%
 String unique=null;
 String jobName=null;
 String employerName=null;
 String jobLocation=null;
 String jobExperience=null;
 String employerPhone=null;
 String jobType=null;
 String jobSalary=null;
 String companyDes=null;
 String jobDes=null;
 String appliedData=null;
 String companyLogo=null;
 String companyName=null;
 String status=null;
 
//connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

//execute query to get user's photo
String query = "SELECT * FROM joblist WHERE uniqueKey=?";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, jobId);
ResultSet rs = stmt.executeQuery();

//display user's photo
if (rs.next()) {
	unique = rs.getString("uniqueKey");
	jobName = rs.getString("jobName");
	employerName = rs.getString("employerName");
	jobLocation = rs.getString("jobLocation");
	jobExperience = rs.getString("jobExperience");
	employerPhone = rs.getString("employerPhone");
	jobType = rs.getString("jobType");
	jobSalary = rs.getString("jobSalary");
	companyDes = rs.getString("companyDes");
	jobDes = rs.getString("jobDes");
	appliedData = rs.getString("appliedData");
	companyLogo = rs.getString("companyLogo");
	appliedData = rs.getString("appliedData");
	companyLogo = rs.getString("companyLogo");
	companyName = rs.getString("companyName");
	status = rs.getString("status");     
	     
}
 %>
 
            <div class="banner-inner bg_img" style="background: url(https://emicrotasks.com/assets/templates/basic/images/bg/banner.png);">
    <div class="container">
        <div class="banner__inner__content">
            <h2 class="banner__inner__content-title">Update My Job</h2>
            <ul class="breadcums d-flex justify-content-center">
                <li><a href="employerHome.jsp?email=<%=mail%>">Home</a></li>
                <li>/</li>
                <li>Update</li>
            </ul>
        </div>
    </div>
    <div class="shapes">
        <!-- <img src="https://emicrotasks.com/assets/images/frontend/breadcrumb/638eee7e81c1f1670311550.png" alt="overview" class="shape1"> -->
    </div>
</div>
            <section class="contact-section padding-top padding-bottom">
        <div class="container">
            <div class="row gy-5">
                <div class="col-lg-6" style="width: 100%;">
                    <div class="contact__info__wrapper">
                        <h3 class="contact__info__wrapper-title"><%=comName %></h3>
                        <p style="text-align: justify; color: black;"><%=comDes %></p>
							<h4 class="title"><i class="lar la-envelope-open"></i> Email</h4>
                            <ul class="contacts">
                                <li><%=email %></li>
                            </ul>
                                            </div>
                </div>
                <div class="col-lg-6"style="width: 70%; margin-left: 10rem;" >
                    <div class="contact__form__wrapper">
                        <h3 class="contact__form__wrapper-title">Job Details</h3>
                        <form method="post" action="updateJob">
                        <input type="hidden" name="email" value="<%=email%>">
                       
                        <input type="hidden" name="companyName" value="<%=comName%>">
                        <input type="hidden" name="unique" value="<%=jobId%>">
                            <div class="form-group">
                                <label class="form-label required" for="name">Job Title</label>
                                <input name="jobName" type="text" class="form-control form--control" value="<%=jobName %>" required id="name">
                            </div>
                            <div class="form-group" >
                                <input name="employerName" type="hidden" class="form-control form--control" value="<%=empName %>" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Location</label>
                                <input name="jobLocation" type="text" class="form-control form--control" value="<%=jobLocation %>" required id="subject">
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Experience</label>
                                <input name="jobExperience" type="text" class="form-control form--control" value="<%=jobExperience %>" required id="subject">
                            </div>
                            <div class="form-group">
                                <input name="employerPhone" type="hidden" class="form-control form--control" value="<%=empphone %>" required id="subject">
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Job Type</label>
                                
                                <select id="inputGender" name="jobType" class="required form-control form--control" required="required">
				                    <option selected="1"><%=jobType %></option>
				                    <option value="Full Time"> Full Time </option>
				                    <option value="Part Time"> Part Time </option>
				                    <option value="Other"> Others </option>
                  				</select>
                            </div>
                            <div class="form-group">
                                <label class="form-label required"  for="subject">Salary</label>
                                <select id="inputGender" name="jobSalary" class="required form-control form--control" required="required">
				                    <option selected="1"><%=jobSalary %></option>
				                    <option value="1LPA to 2LPA"> 1LPA to 2LPA </option>
				                    <option value="2LPA to 4LPA"> 2LPA to 4LPA  </option>
				                    <option value="4LPA to 7LPA"> 4LPA to 7LPA </option>
				                     <option value="7LPA to 10LPA"> 7LPA to 10LPA </option>
				                    <option value="10LPA to 12.5LPA"> 10LPA to 12.5LPA </option>
				                    <option value="12.5LPA to 15LPA"> 12.5LPA to 15LPA </option>
                  				</select>
                            </div>
                            
                            <div class="form-group">
                                <textarea name="companyDes" style="display: none;" class="form-control form--control" required id="message"><%=comDes %></textarea>
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="message">Job description</label>
                                <textarea name="jobDes" class="form-control form--control" required id="message" ><%=jobDes %></textarea>
                            </div>
                            <div class="form-group">
                                <input name="appliedDate" type="hidden" class="form-control form--control" readonly="readonly" id="curDate">
                                <input name="companyLogo" type="hidden" readonly="readonly" value="<%=photo%>">
                            </div>
                            <div class="form-group">
                                <select name="status" class=" css-lmibgj e10jok4m1" role="button" tabindex="0" id="downshift-2-toggle-button" aria-haspopup="listbox" aria-expanded="false" aria-labelledby="downshift-2-label downshift-2-toggle-button">
                            	<span class="css-wgxzku e1wnkr790">
                            		<div class="css-g9h26m e37uo190">
                            			<div data-shield-id="HanselJobStatusLabel-dot--flagged" class="css-v77tbi e37uo190"></div>
                            			<option selected="1"><%=status %></option>
				                    <option value="open"> Open </option>
				                    
				                    <option value="close"> Closed </option>
                            			<span data-shield-id="hansel-job-status-control-flagged" class="css-1w0iwyp e1wnkr790">Flagged</span>
                            		</div>
                            	</span>
                            	<svg xmlns="http://www.w3.org/2000/svg" focusable="false" role="img" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true" class=" css-bbdyn5 eac13zx0"><path d="M18.002 9.888c.2-.2.204-.521.008-.716l-.707-.708a.506.506 0 00-.716.01L12 13.06 7.413 8.474a.507.507 0 00-.716-.01l-.708.707a.507.507 0 00.01.717l5.647 5.648c.1.1.234.148.367.143a.491.491 0 00.34-.144h.001l.008-.008 5.64-5.64z"></path></svg>
                            </select>
                            </div>
                            
                            
                            
                                <button type="submit" class="btn btn--base w-100">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
            <div class="">
    <div class="container">
        <div class="get-started d-flex flex-wrap align-items-center justify-content-between">
            <div class="section__header m-0">
                <h3 class="section__header-title" style="color: #000;">Let's Get Started</h3>
                <p style="color: #000;">Post a Job and Connect with Right Employees. Verified Profiles and Qualified Office Staff. Find Staff for Your Business or Store Online. WorkIndia offers 200+ Staff Profiles.</p>
            </div>
            <a href="" class="cmn--btn">Start Recruiting</a>
        </div>
    </div>
</div>
        
<script>
const now = new Date();

const year = now.getFullYear();
const month = now.getMonth() + 1;
const day = now.getDate();
const hour = now.getHours();
const minute = now.getMinutes();
const second = now.getSeconds();


const localDate = now.toLocaleString();

const date = day+'-'+month+'-'+year;

document.getElementById('curDate').value=date;

console.log(date);

const uniqueKey = new Date().getTime().toString();
console.log(uniqueKey);
document.getElementById("unique").value = uniqueKey;
</script>
        
   

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://emicrotasks.com/assets/global/js/jquery-3.6.0.min.js"></script>
    <script src="https://emicrotasks.com/assets/global/js/bootstrap.bundle.min.js"></script>
    <script src="https://emicrotasks.com/assets/global/js/nicEdit.js"></script>

    <script src="https://emicrotasks.com/assets/templates/basic/js/slick.min.js"></script>
    <script src="https://emicrotasks.com/assets/templates/basic/js/nice-select.js"></script>
    <script src="https://emicrotasks.com/assets/templates/basic/js/odometer.min.js"></script>
    <script src="https://emicrotasks.com/assets/templates/basic/js/main.js"></script>

                <link rel="stylesheet" href="https://emicrotasks.com/assets/global/css/iziToast.min.css">
<script src="https://emicrotasks.com/assets/global/js/iziToast.min.js"></script>

<script>
    "use strict";
    function notify(status,message) {
        iziToast[status]({
            message: message,
            position: "topRight"
        });
    }
</script>


    <script>
        (function($) {
            "use strict";
            $(".langSel").on("change", function() {
                window.location.href = "https://emicrotasks.com/change/" + $(this).val();
            });


            $('.policy').on('click', function() {
                $.get('https://emicrotasks.com/cookie/accept', function(response) {
                    $('.cookies-card').addClass('d-none');
                });
            });

            setTimeout(function() {
                $('.cookies-card').removeClass('hide')
            }, 2000);

            $(document).on('mouseover ', '.nicEdit-main,.nicEdit-panelContain', function() {
                $('.nicEdit-main').focus();
            });

        })(jQuery);
    </script>



<quillbot-extension-portal></quillbot-extension-portal></body>
</html>
