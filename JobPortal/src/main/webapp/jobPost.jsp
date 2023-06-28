<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" itemscope="" itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Post Job</title>

  

 

 
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
String comName = null;
String empphone = null;
String comDes = null;
String empName = null;
String photo = null;
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String query = "SELECT * FROM addEmployer WHERE employerEmail=?";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, email);
ResultSet rs = stmt.executeQuery();

// display user's photo
if (rs.next()) {
	  comName = rs.getString("companyName");
	     empName = rs.getString("employerName");
	     empphone = rs.getString("employerPhone");
	     comDes = rs.getString("companyDescription");
	     
	     Blob imageBlob = rs.getBlob("companyLogo");
	     byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
	     String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	     photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
}
%>
 
             <div class="banner-inner bg_img" style="background: url(https://emicrotasks.com/assets/templates/basic/images/bg/banner.png);">

    <div class="container">
        <div class="banner__inner__content">
            <h2 class="banner__inner__content-title">Post A Job</h2>
            <ul class="breadcums d-flex justify-content-center">
                <li><a href="employerHome.jsp?email=<%=mail%>">Home</a></li>
                <li>/</li>
                <li>Job Posting</li>
            </ul>
        </div>
    </div>
    <div class="shapes">
        <img src="" alt="" class="shape1">
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
                <div class="col-lg-6"style="width: 53.9%; margin-left: 35rem;" >
                    <div class="contact__form__wrapper">
                        <h3 class="contact__form__wrapper-title">Job Details</h3>
                        <form method="post" action="jobPost">
                        <input type="hidden" name="email" value="<%=email%>">
                        <input type="hidden" name="companyName" value="<%=comName%>">
                        <input type="hidden" name="unique" id="unique">
                            <div class="form-group">
                                <label class="form-label required" for="name">Job Title</label>
                                <input name="jobName" type="text" class="form-control form--control" required id="name">
                            </div>
                            <div class="form-group" >
                                <input name="employerName" type="hidden" class="form-control form--control" value="<%=empName %>" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Location</label>
                                <input name="jobLocation" type="text" class="form-control form--control" required id="subject">
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Experience</label>
                                <input name="jobExperience" type="text" class="form-control form--control" required id="subject">
                            </div>
                            <div class="form-group">
                                <input name="employerPhone" type="hidden" class="form-control form--control" value="<%=empphone %>" required id="subject">
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Job Type</label>
                                
                                <select id="inputGender" name="jobType" class="required form-control form--control" required="required">
				                    <option selected="1">Select</option>
				                    <option value="Full Time"> Full Time </option>
				                    <option value="Part Time"> Part Time </option>
				                    <option value="Other"> Others </option>
                  				</select>
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Salary</label>
                                <select id="inputGender" name="jobSalary" class="required form-control form--control" required="required">
				                    <option selected="1">Select</option>
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
                                <textarea name="jobDes" class="form-control form--control" required id="message" ></textarea>
                            </div>
                            <div class="form-group">
                                <input name="appliedDate" type="hidden" class="form-control form--control" readonly="readonly" id="curDate">
                                <input name="companyLogo" type="hidden" readonly="readonly" value="<%=photo%>">
                            </div>
                             <div class="form-group">
                                <label class="form-label required" for="subject">Job Schedule</label>
                                
                                <select id="inputGender" name="jobSchedule" class="required form-control form--control" required="required">
				                    <option selected="1">Select</option>
				                    <option value="Dayshift">Dayshift </option>
				                    <option value="Nightshift">Nightshift</option>
				                    
                  				</select>
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">How many Candidates do you want to hire?</label>
                                <input name="hire" type="text" class="form-control form--control" required id="subject">
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Supplemental Pay</label>
                                
                                <select id="inputGender" name="supplementalPay" class="required form-control form--control" required="required">
				                    <option selected="1">Choose</option>
				                    <option value="Performance Bonus">Performance Bonus</option>
				                    <option value="Yearly Bonus">Yearly Bonus</option>
				                    <option value="Quarterly Bonus">Quarterly Bonus</option>
				                    <option value="Overtime Pay">Overtime Pay</option>
				                    
                  				</select>
                            </div>
                            <div class="form-group">
                                <label class="form-label required" for="subject">Benefits</label>
                                
                                <select id="inputGender" name="benefits" class="required form-control form--control" required="required">
				                    <option selected="1">Choose</option>
				                    <option value="Performance Bonus">Provident Fund</option>
				                    <option value="Yearly Bonus">Health Insurance</option>
				                    <option value="Quarterly Bonus">Paid Sick time</option>
				                    <option value="Overtime Pay">Food Provided</option>
				                    
                  				</select>
                            </div>
                                <button type="submit" class="btn btn--base w-100">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6" style="margin-top: -76rem; width: 45%; max-height: 100vh;">
                    <div class="contact__info__wrapper">
                        <img alt="" src="https://images.pexels.com/photos/6953935/pexels-photo-6953935.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
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
