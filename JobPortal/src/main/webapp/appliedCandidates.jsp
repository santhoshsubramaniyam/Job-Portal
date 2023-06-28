<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" itemscope="" itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title> Applied Candidate</title>
<link rel="stylesheet" href="css/index.css">
  

  

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
  
  <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
  

  <style>
    *:focus {
      outline: none;
    }

    .form--control {
      padding-right: 2px !important;
    }
    
    .page{
  margin: 50px auto;
  width: 70%;
  background-color: #fff;
  border-radius: 5px;
  padding: 50px;
}

.page-header{
  margin-bottom: 20px;
}
  .page-header h2{
    float: left;
    font-size: 22px;
    text-transform: uppercase;
    font-weight: bold;
    color: #555;
  }

  .page-header .student-search{
    float: right;
  }

    .page-header .student-search input{
      border-radius: 5px;
      border: 1px solid #eaeaea;
      padding: 8px 15px;
      font-size: 14px;
    }

    .page-header .student-search button{
      border-radius: 5px;
      border: 1px solid #eaeaea;
      padding: 8px 15px;
      font-size: 14px;
      background-color: #4ba6c3;
      color: #fff
    }

.student-list{}

  .student-item{
    margin: 0 0 20px 0;
    padding: 0 0 20px 0;
    border-bottom: 1px solid #eaeaea;
  }

    .student-details{
      width: 50%;
      float: left;
    }

      .student-details .avatar{
        width: 40px;
        height: auto;
        border-radius: 20px;
        float: left;
        margin-right: 14px
      }

      .student-details h3{
        margin: 4px 0 2px 0;
        font-weight: bold;
        color: #4ba6c3;
      }

      .student-details .email{
        color: #888;
        font-size: 14px;
      }


    .joined-details{
      width: 50%;
      float: left;
      text-align: right;
    }

      .joined-details .date{
        margin-top: 15px;
        display: block;
        font-size: 14px;
        color: #999;
      }

  .student-item:last-child{
    margin: 0;
    padding: 0;
    border-bottom: none;
  }

.pagination{
  margin: 40px 0 0 0;
  text-align: center;
}

  .pagination li{
    display: inline;
    cursor:pointer;
  }

    .pagination li span{
      border: 1px solid #eaeaea;
      border-radius: 5px;
      padding: 3px 8px;
      text-decoration: none;
      color: #4ba6c3;
    }

    .pagination li span.active,
    .pagination li span:hover{
      background-color: #4ba6c3;
      color: #fff;
    }
/* https://meyerweb.com/eric/tools/css/reset/
   v2.0 | 20110126
   License: none (public domain)
*/



blockquote, q {
  quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
  content: '';
  content: none;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}

.cf:after {
   content: ".";
   visibility: hidden;
   display: block;
   height: 0;
   clear: both;
}

.student__search {
     float: right;
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


  

  <div class="banner-inner bg_img" style="background: url(https://emicrotasks.com/assets/templates/basic/images/bg/banner.png);">
    <div class="container">
      <div class="banner__inner__content">
        <h2 class="banner__inner__content-title">Applied Candidate</h2>
        <ul class="breadcums d-flex justify-content-center">
          <li><a href="employerHome.jsp?email=<%=mail%>">Home</a></li>
          <li>/</li>
          <li>My Job</li>
        </ul>
      </div>
    </div>
    <div class="shapes">
     <!--  <img src="https://emicrotasks.com/assets/images/frontend/breadcrumb/638eee7e81c1f1670311550.png" alt="overview" class="shape1"> -->
    </div>
  </div>
  
  
   <div class="page">
    <input class = 'student__search' style="padding-left: 0.5rem;" type = 'text' placeholder = 'Search by email'>
    <div class="page-header cf">
      <h2>Candidates</h2>
    </div>
    <ul class="student-list">
    
                                <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%
String id = request.getParameter("jobId");

String fname = null;
String lname = null;
String email = null;
String phone = null;
String idd = null;
String un = null;

%>

<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
// execute query to get user's photo
String query = "SELECT * FROM appliedJobs WHERE jobUniqueKey=?";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, id);
		ResultSet rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
			  fname = rs.getString("applyFName");
			     lname = rs.getString("applyLName");
			     email = rs.getString("applyEmail");
			     phone = rs.getString("applyPhone");
			     idd = rs.getString(1);
			     un = rs.getString("uniqueApplyId");
			     
			 
			
	%>
    
	
      <li class="student-item cf">
        <div class="student-details">
          <img class="avatar" src="https://cdn-icons-png.flaticon.com/512/149/149071.png">
          <a href="candidateDetail.jsp?id=<%=idd%>&email=<%=mail%>">
          <h3><%=fname %> <%=lname %></h3>
          <span class="email"><%=email %></span>
          </a>
        </div>
        <div class="joined-details">
          <span class="date">Phone No: <%=phone %></span>
        </div>
      </li>
      
      <%
}

// close database connection
rs.close();
stmt.close();
con.close();
%>


    </ul>
    <div class = "pagination">
      <ul class = "pagination__list">
    
      </ul>
      
    </div>
  </div>
  
  </body>
  
  <script>
  const $studentItem = $('.student-item');
  const $page = $('.page');
  const $pagination = $('.pagination');
  const $paginationList = $('.pagination__list');
  const $studentSearch = $('.student__search');
  const itemTotal = 10;

  // hide all 
  function hideAll() {
    $studentItem.hide();
  }

  hideAll();

  // display first 10
  function displayRange(a,b) {
    hideAll();
    // display 0 - 1 students
    $studentItem.slice(a,b).fadeIn();
    
  }

  displayRange(0, itemTotal);

  // create pagination links
  let pagination = '';
  for(var i = 0; i <= $studentItem.length / 10 - 1; i ++) {
    pagination += `
      <li><span class ="pagination__num">${i}</span></li>
  `;
  }
  $paginationList.append(pagination);
  // click on pagination num
  // pass into display range
  // calc and show range
  $('body').on('click', '.pagination__num', function () {

    hideAll();
    
    // get text number 1 - 5
    // get ranges for start and end
    let paginationText = Number($(this).text());
    let startFrom = paginationText * itemTotal + paginationText;
    let end = paginationText * itemTotal + paginationText + itemTotal;
    
    // display ranges
    displayRange(startFrom, end);
     
  });


  $studentSearch.on('input', function () {

   hideAll();
    
    $studentItem.each(function() {
      $(this).removeClass("result");
      
    });
    
    
      // value of searched
      var text = $(this).val().toLowerCase();
      // results of search
      var results = $("ul.student-list li:contains('" + text.toLowerCase() + "')");
    
       results.addClass("result");
        
        
    // if student has result class 
    // dispaly
    // else hide
    
    
    if($studentItem.hasClass('result')) {
        $('.result').show();
        $studentItem.removeClass('result');
        
       } 

   
  });

  $studentSearch.keyup(function()
  {
       if (!this.value) {
         hideAll();
         displayRange(0, itemTotal);
      }

  });
  </script>
  </html>
 
 
 
 
 
 
 


 
