<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" itemscope="" itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title> Applied Jobs</title>

  

  

  <meta name="twitter:card" content="summary_large_image">
  <link href="https://emicrotasks.com/assets/global/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://emicrotasks.com/assets/global/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/global/css/line-awesome.min.css">

  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/animate.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/slick.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/odometer.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/nice-select.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/main.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/custom.css">

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

<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%
String email = request.getParameter("email");
String comName = null;
String date = null;
String location = null;
String jobName = null;
String ctc = null;
String jobType = null;

%>
 <%

String firstName = null;
String lastName = null;
String Phone = null;
String Pass = null;
String photo = null;
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String querys = "SELECT * FROM addCandidate WHERE candidateEmail=?";
PreparedStatement stmts = conn.prepareStatement(querys);
stmts.setString(1, email);
ResultSet rss = stmts.executeQuery();

// display user's photo
if (rss.next()) {
	  firstName = rss.getString("candidateFName");
	     lastName = rss.getString("candidateLName");
	     Phone = rss.getString("candidatePhone");
	     Pass = rss.getString("candidatePassword");
	     
	     Blob imageBlob = rss.getBlob("candidateProfile");
	     byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
	     String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	     photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
}
%> 

  <div class="banner-inner bg_img" style="background: url(https://emicrotasks.com/assets/templates/basic/images/bg/banner.png);">
    <div class="container">
      <div class="banner__inner__content">
        <h2 class="banner__inner__content-title">Applied Job</h2>
        <ul class="breadcums d-flex justify-content-center">
          <li><a href="candidateHome.jsp?email=<%=mail %>">Home</a></li>
          <li>/</li>
          <li>Job list</li>
        </ul>
      </div>
    </div>
    <!-- <div class="shapes">
      <img src="https://emicrotasks.com/assets/images/frontend/breadcrumb/638eee7e81c1f1670311550.png" alt="overview" class="shape1">
    </div> -->
  </div>
  <section class="job-category padding-top padding-bottom ">
        <div class="container">
            
            <div class="row gy-4">
              <div class="col-lg-4 col-xl-3">
          <div class="dashboard__sidebar">
            <div class="user__profile">
           
            <form action="imageUpdateCandidate" enctype="multipart/form-data" method="post">
               <input name="maill" type="hidden" value="<%=mail%>">
                  <div class="col-xl-3">
                    <div class="job-poster">
                      <div class="job-poster-header">
                        <div class="thumb">
                          <div class="avatar-preview">
                            <div class="profilePicPreview w-100" id="previewImg" style="background-image: url(<%=photo%>); width: 390%!important; border-radius: 8rem; margin-top: -1rem;">
                            </div>
                          </div>
                         <div class="avatar-edit">
                            <input type="file" class="profilePicUpload" name="employerImage" id="image" accept=".png, .jpg, .jpeg" onchange="handleFileSelect()">
                            <label for="image" style="background: #51B0FF;"><i style="color: #fff;" class="fa-solid fa-camera"></i></label>
                            
                         </div>
                         
                        </div>
                      </div>
                    </div>
                  </div>
               <button style="margin-top: -0.8rem; opacity: 0.5;"  id="ChangeLogo" class="cmn--btn btn--md" type="submit"  disabled>Select Logo First</button>
              </form>
              
              
<script>
  function handleFileSelect() {
    var fileInput = document.getElementById('image');
    var changeLogoButton = document.getElementById('ChangeLogo');

    if (fileInput.files && fileInput.files[0]) {
      changeLogoButton.disabled = false;
      changeLogoButton.innerHTML = "Change Logo";
      changeLogoButton.style = "opacity: 1";
    } else {
      changeLogoButton.disabled = true;
      
    }
  }
</script>
           
              <div class="user__profile-content">
                <h4 class="user__profile-title"><%=firstName %>&nbsp;<%=lastName %></h4>
                <span class="designation d-block">
                  
                </span>
                <h6 class="text--base d-block">
                  Email Id: <%=email %>
                </h6>

              </div>
            </div>
            <ul class="dashboard__sidebar__menu">
              <li>
                <a href="" class="">Profile</a>
              </li>
              <li>
                <a href="appliedJobs.jsp?email=<%=email %>" class="">Applied Jobs</a>
              </li>
				<li>
                <a href="submitResume.jsp?email=<%=email %>" class="">Quick Resume</a>
              </li>
              <li>
                <a href="candidateSignup.jsp">
                  Sign Out </a>
              </li>
            </ul>
            <span class="btn btn-close dashboard__sidebar__close d-lg-none"></span>
          </div>
        </div>
                <div class="col-lg-9 col-md-12">
                    <div class="announcement__details position-relative   border-0" id="jobs">
                        <div class="position-relative">
                            <div id="overlay" style="display: none;">
                                <div class="cv-spinner">
                                    <span class="spinner"></span>
                                </div>
                            </div>
                            <div class="overlay-2" id="overlay2" style="display: none;"></div>
                            <div class="row g-3 justify-content-center">
                            
                            <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
// execute query to get user's photo
String query = "SELECT * FROM appliedJobs WHERE applyEmail=?";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, email);
		ResultSet rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
			  comName = rs.getString("companyName");
			     jobName = rs.getString("jobName");
			     date = rs.getString("date");
			     location = rs.getString("location");
			     ctc = rs.getString("ctc");
			     jobType = rs.getString("jobType");
			     
			 
			
	%>
	
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-10" style="width: 45%; padding: 0 0 0 3rem;">
            <div class="job__item">
                    <div class="job__item-thumb">
                        <img src="https://d4y70tum9c2ak.cloudfront.net/contentImage/ItfdpP95a6oG4paOgtWXvUYteyiMWskP2awLWB7qPr0/resized.png" alt="job">
                    </div>
                <div class="job__item-content">
                    <div class="wrapper d-flex justify-content-between align-items-center">
                        <span class="tag btn btn--sm">
                            <i class="las la-tag"></i>
                           <%=comName %>                       </span>
                        <span class="job-author text--primary tag btn btn--sm">
                           <%=date %>
                        </span>
                    </div>
                    <h5 class="title">
                        <a href="">
                            <%=jobName%>
                        </a>
                    </h5>
                    <ul class="job__info">
                        <li>
                            <h6 class="job__info-title"><%=location%></h6>
                            <h6 class="job__info-title"><%=jobType %></h6>
                            <span class="text--primary"><%=ctc %></span>
                            
                        </li>
                    </ul>
                   
                </div>
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

                    </div>
                </div>
            </div>
        </div>
    </section>
   <!-- Footer -->
 <%@include file="component/footer.jsp" %>

 

  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://emicrotasks.com/assets/global/js/jquery-3.6.0.min.js"></script>
  <script src="https://emicrotasks.com/assets/global/js/bootstrap.bundle.min.js"></script>
  <script src="https://emicrotasks.com/assets/global/js/nicEdit.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

  <script src="https://emicrotasks.com/assets/templates/basic/js/slick.min.js"></script>
  <script src="https://emicrotasks.com/assets/templates/basic/js/nice-select.js"></script>
  <script src="https://emicrotasks.com/assets/templates/basic/js/odometer.min.js"></script>
  <script src="https://emicrotasks.com/assets/templates/basic/js/main.js"></script>

  <script>
    (function($) {
      "use strict";
      var oldSubcategory = "";
      $("#choiceOption").css('display', 'none');
      $("#fileOption").on('change', function() {
        $("#choiceOption").css('display', 'none');
        var value = $(this).val();
        if (value == 2) {
          $("#choiceOption").css('display', 'block');
        }
      });
      $("#inlineRadio").click(function() {
        $("input[type=checkbox]").prop('checked', $(this).prop('checked'))
      });
      $('#category').on('change', function() {
        let subcategories = $(this).find('option:selected').data('subcategories');
        let subcategory = `<option value="" selected disabled>Select One</option>`;
        $.each(subcategories, function(index, value) {
          subcategory += `<option value="${value.id}" ${oldSubcategory ==value.id ? 'selected' : ''}>${value.name}</option>`;
        });
        $('[name=subcategory_id]').html(subcategory)
      }).change();
      $(".workers").on('change input', function() {
        var worker = $(this).val();
        var rate = $('.rate').val();
        var total = rate * worker;
        $('.total').val(total);
      });
      $(".rate").on('change input', function() {
        var rate = $(this).val();
        var worker = $('.workers').val();
        var total = rate * worker;
        $('.total').val(total);
      });
      $('.profilePicUpload').on('change', function() {
        previewFile($(this))
      })
    })(jQuery);

    function previewFile(input) {
      var file = $("input[type=file]").get(0).files[0];
      if (file) {
        var reader = new FileReader();
        reader.onload = function() {
          $("#previewImg").css("background-image", "url(" + reader.result + ")");
        }
        reader.readAsDataURL(file);
      }
    }
  </script>
  
  <script src="https://emicrotasks.com/assets/global/js/iziToast.min.js"></script>

  <script>
    "use strict";

    function notify(status, message) {
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

</body>
<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>

</html>