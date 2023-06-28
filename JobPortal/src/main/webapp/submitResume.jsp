<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="form.css">
  <link rel="stylesheet" href="css/index.css">
  <title>Submit Resume</title>
</head>
<style>
    body {
  background: #efefef;
}

.form-container {
  width: 80%;
  margin: auto;
}

#list-example {
  width: 100%;
  padding: 10px;
}

#list-example i {
  margin-right: 5px;
}

.table-input {
  border: none;
  text-align: center;
  width: 140px;
  background-color: transparent;
}

#experience-table th,
#education-table th {
  border-top: none !important;
}

.form input,
.form select {
  height: 50px !important;
}

.form select option:hover,
.pen-update-row {
  color: white !important;
  background-color:#51b0ff !important;
}

.form-title {
  color: #51b0ff;
}

.activeControl,
.activeControl:hover,
.activeControl:focus,
.form-button,
.activeControl:hover,
.form-button:hover,
.form-button:focus {
  background-color: #51b0ff !important;
  border:#51b0ff !important;
  color: white !important;
}

.form-nav-controls {
  outline: none !important;
  cursor: pointer;
}

*:focus {
  border-color: #51b0ff !important;
  box-shadow: none !important;
  outline: none !important;
}

.form-icon {
  background: #51b0ff ;
  color: white;
  border-radius: 1000px;
  width: 41px;
  height: 40px;
  display: flex !important;
  justify-content: center;
  align-items: center;
}

#education-table thead th,
#experience-table thead th {
  font-weight: 100;
}

.hideForm {
  opacity: 0;
  pointer-events: none;
  animation-name: hide;
  animation-duration: 0.4s;
  animation-timing-function: ease-in-out;
  display: none;
}

.showForm {
  animation-name: show;
  animation-duration: 0.4s;
  animation-timing-function: ease-in-out;
}

.trash-delete-row {
  background-color: transparent;
  color: red;
}

@keyframes hide {
  from {
    transform: translate(0px);
    display: block;
  }
  to {
    transform: translate(0px, -20px);
    display: none;
  }
}

@keyframes show {
  from {
    transform: translate(0px, -20px);
    display: none;
  }
  to {
    transform: translate(0px);
    display: block;
  }
}
.banner-inner {
    padding: 120px 0;
    position: relative;
}
.bg_img {
    background-size: cover !important;
    background-position: center center;
    background-repeat: no-repeat !important;
}
.banner-inner::before {
    position: absolute;
    content: "";
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
    background: rgba(55, 150, 246, 0.05);
}
.banner-inner .container {
    position: relative;
}
@media (min-width: 1400px)
.container, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl {
    max-width: 1320px;
}
@media (min-width: 1200px)
.container, .container-lg, .container-md, .container-sm, .container-xl {
    max-width: 1140px;
}
@media (min-width: 992px)
.container, .container-lg, .container-md, .container-sm {
    max-width: 960px;
}
@media (min-width: 768px)
.container, .container-md, .container-sm {
    max-width: 720px;
}
@media (min-width: 576px)
.container, .container-sm {
    max-width: 540px;
}
.container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl {
    width: 100%;
    padding-right: var(--bs-gutter-x,.75rem);
    padding-left: var(--bs-gutter-x,.75rem);
    margin-right: auto;
    margin-left: auto;
}
.banner__inner__content {
    text-align: center;
}
.banner__inner__content-title {
    margin-bottom: 10px;
}
h2 {
    font-size: 40px;
    margin-top: -8px;
}
.banner__inner__content .breadcums {
    font-size: 18px;
}
.justify-content-center {
    justify-content: center!important;
}
.d-flex {
    display: flex!important;
}
ul {
    margin: -7px 0;
    padding: 0;
}
.banner__inner__content .breadcums li {
    margin-right: 15px;
}
ul li {
    list-style: none;
    padding: 7px 0;
}
.banner__inner__content .breadcums li a {
    color: #1f1f23;
    font-weight: 600;
}
.banner__inner__content .breadcums li {
    margin-right: 15px;
}
body {
    padding: 0;
    margin: 0;
    font-size: 16px;
    color: #789;
    line-height: 1.7;
    font-family: "Work Sans", sans-serif;
    background: #fff;
}

.banner-inner .shape1 {
    position: absolute;
    max-width: 400px;
    left: 0;
    bottom: 0;
    opacity: 0.4;
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


<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%
String email = request.getParameter("email");
String FName = null;
String LName = null;
String comDes = null;
String Cphone = null;
String photo = null;
String id = null;
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String query = "SELECT * FROM addCandidate WHERE candidateEmail=?";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, email);
ResultSet rs = stmt.executeQuery();

// display user's photo
if (rs.next()) {
	id = rs.getString(1);
	  FName = rs.getString("candidateFName");
	     LName = rs.getString("candidateLName");
	     Cphone = rs.getString("candidatePhone");
	     
	     
	     
	     Blob imageBlob = rs.getBlob("candidateProfile");
	     byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
	     String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	     photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
}
%>


<!-- BreadCrums -->
<div class="banner-inner bg_img" style="background: url(https://emicrotasks.com/assets/templates/basic/images/bg/banner.png);">
    <div class="container">
      <div class="banner__inner__content">
        <h2 class="banner__inner__content-title">Create Job</h2>
        <ul class="breadcums d-flex justify-content-center">
          <li><a href="candidateHome.jsp?email=<%=mail %>">Home</a></li>
          <li>/</li>
          <li>Create Job</li>
        </ul>
      </div>
    </div>
   <!--  <div class="shapes">
      <img src="https://emicrotasks.com/assets/images/frontend/breadcrumb/638eee7e81c1f1670311550.png" alt="overview" class="shape1">
    </div> -->
  </div>
  <!-- Modal For Education -->
  <div class="modal fade bd-example-modal-lg" id="exampleModalEDU" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Academic Details</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputstartyear4">Start Year</label>
              <input type="date" class="form-control" id="inputstartyear4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputcompletionyear4">Completion Year</label>
              <input type="date" class="form-control" id="inputcompletionyear4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputdegree4">Degree</label>
              <input type="text" class="form-control" id="inputdegree4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputspecialization4">Specialization</label>
              <input type="text" class="form-control" id="inputspecialization4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputuniversity4">University</label>
              <input type="text" class="form-control" id="inputuniversity4" />
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary form-button education-modal-button-add-row" data-dismiss="modal">Add</button>
        </div>
      </div>
    </div>
  </div>
  <!-- END MODAL FOR EDUCATION -->

  <!-- Modal For Experience -->
  <div class="modal fade bd-example-modal-lg" id="exampleModalExp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Experience Details</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputjobtitle4">Job Title</label>
              <input type="text" class="form-control" id="inputjobtitle4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputcompany4">Company</label>
              <input type="text" class="form-control" id="inputcompany4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputstartdate4">Start Date</label>
              <input type="date" class="form-control" id="inputstartdate4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputenddate4">End Date</label>
              <input type="date" class="form-control" id="inputenddate4" />
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary form-button experience-modal-button-add-row" data-dismiss="modal">Add</button>
        </div>
      </div>
    </div>
  </div>
  <!-- END Modal For Experience -->

  <div class="form-container bg-white mt-3 p-3 rounded shadow">
    <div class="row">
      <div class="col-lg-3 form-side-nav mb-3">
        <nav class="navbar navbar-expand-lg navbar-light">
          <button class="navbar-toggler mb-2" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarText">
            <div id="list-example" class="list-group">
              <button id="personal-information-control" class="form-nav-controls activeControl list-group-item list-group-item-action">
                <i class="fa fa-user" aria-hidden="true"></i>
                Personal Information
              </button>
              <button id="education-control" class="form-nav-controls list-group-item list-group-item-action">
                <i class="fa fa-book" aria-hidden="true"></i>
                Education
              </button>
              <button id="experience-control" class="form-nav-controls list-group-item list-group-item-action">
                <i class="fa fa-briefcase" aria-hidden="true"></i>
                Experience
              </button>
              <button id="resume-control" class="form-nav-controls list-group-item list-group-item-action">
                <i class="fa fa-folder" aria-hidden="true"></i>
                Resume
              </button>
            </div>
          </div>
        </nav>
      </div>

      <div class="col-lg-9 form-col">
        <div>
          <form id="applicant-profile-form" class="form" role="form" method="POST" action="quickResume" enctype="multipart/form-data">
            <input type="hidden" name="iid" value="<%=id%>">
            <!-- personal information -->
            <div class="form-part personal-information showForm" id="personal-information">
              <h4 class="d-flex align-items-center border-bottom pb-3 mb-4 form-title" id="personal-information">
                <i class="form-icon fa fa-user" aria-hidden="true"></i>
                <span class="ml-3">Personal Information</span>
              </h4>
              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputfirstname4">First Name</label>
                  <input type="text" class="required form-control" name="resumeFName" id="inputfirstname4" value="<%=FName %>" readonly="readonly"/>
                </div>
                <div class="form-group col-md-4">
                  <label for="inputlastname4">Last Name</label>
                  <input type="text" class="required form-control" name="resumeLName" id="inputlastname4" value="<%=LName %>" readonly />
                </div>
                <div class="form-group col-md-4">
                  <label for="inputfathername4">Father Name</label>
                  <input type="text" class="required form-control" name="resumeFatherName" id="inputfathername4" required="required" />
                </div>
              </div>

              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputGender">Gender</label>
                  <select id="inputGender" name="resumeGender" class="required form-control" required="required">
                    <option selected="1">Choose...</option>
                    <option value="male"> Male </option>
                    <option value="female"> Female </option>
                    <option value="Other"> Other </option>
                  </select>
                </div>
                <div class="form-group col-md-4">
                  <label for="inputHighestEducation">Highest Education</label>
                  <select id="inputHighestEducation" name="resumeEducation" class="required form-control" required="required">
                    <option selected="1">Choose...</option>
                    <option value="illiterate"> Illiterate </option>
                    <option value="primary"> Primary </option>
                    <option value="grade"> Grade 12 </option>
                    <option value="grade"> Grade 14 </option>
                    <option value="bachelor"> Bachelor </option>
                    <option value="master"> Master </option>
                    <option value="doctorate"> Doctorate </option>
                  </select>
                </div>
                <div class="form-group col-md-4">
                  <label for="inputDateOfBirth4">Date of Birth</label>
                  <input style="text-transform: uppercase;" type="date" class="required form-control" name="resumeDOB" id="inputDateOfBirth4" required="required" />
                </div>
              </div>

              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputcountry4">Country</label>
                  <input type="text" class="required form-control" name="resumeCountry" id="inputcountry4" required="required" />
                </div>
                <div class="form-group col-md-4">
                  <label for="inputemail4">Email</label>
                  <input type="email" class="required form-control" name="resumeEmail" id="inputemail4" value="<%=email%>" readonly />
                </div>
                <div class="form-group col-md-4">
                  <label for="inputphone4">Phone</label>
                  <input type="number" class="required form-control" name="resumePhone" id="inputphone4" value="<%=Cphone %>" readonly />
                </div>
              </div>
            </div>
            <!-- end personal information -->

            <!-- education -->
            <div class="form-part education hideForm" id="education">
              <h4 class="d-flex align-items-center border-bottom pb-3 mb-4 form-title" id="personal-information">
                <i class="form-icon fa fa-book" aria-hidden="true"></i>
                <span class="ml-3">Education</span>
              </h4>
              <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputstartyear4">Start Year</label>
              <input type="date" name="eduStartDate" class="form-control" id="inputstartyear4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputcompletionyear4">Completion Year</label>
              <input type="date" name="eduEndDate" class="form-control" id="inputcompletionyear4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputdegree4">Degree</label>
              <input type="text" name="eduDegree" class="form-control" id="inputdegree4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputspecialization4">Specialization</label>
              <input type="text" name="eduSpecialization" class="form-control" id="inputspecialization4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputuniversity4">University</label>
              <input type="text" name="eduUniversity" class="form-control" id="inputuniversity4" />
            </div>
          </div>
            </div>
            <!-- end education -->

            <!-- experience -->
            <div class="form-part experience hideForm" id="experience">
              <h4 class="d-flex align-items-center border-bottom pb-3 mb-4 form-title" id="personal-information">
                <i class="form-icon fa fa-briefcase" aria-hidden="true"></i>
                <span class="ml-3">Experience</span>
              </h4>
              <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputjobtitle4">Job Title</label>
              <input type="text" name="expJobName" class="form-control" id="inputjobtitle4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputcompany4">Company</label>
              <input type="text" name="expCompanyName" class="form-control" id="inputcompany4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputstartdate4">Start Date</label>
              <input type="date" name="expStartDate" class="form-control" id="inputstartdate4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputenddate4">End Date</label>
              <input type="date" name="expEndDate" class="form-control" id="inputenddate4" />
            </div>
          </div>
            </div>
            <!-- end experience -->

            <!-- resume -->
            <div class="form-part resume hideForm" id="resume">
              <h4 class="d-flex align-items-center border-bottom pb-3 mb-4 form-title" id="personal-information">
                <i class="form-icon fa fa-folder" aria-hidden="true"></i>
                <span class="ml-3">Resume</span>
              </h4>
              <div class="form-group col-md-12">
                <label for="formFile" class="form-label">Say about yourself</label>
                <textarea class="required form-control" name="resumeContent" id="formFile"></textarea>
              </div>
              <div class="form-group col-md-12">
                <label for="formFile" class="form-label">Please upload your most recent resume.</label>
                <input class="required form-control" type="file" name="resume" id="formFile" />
              </div>
            </div>
            <!-- end resume -->

          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-12 d-flex justify-content-center mt-4">
      <button type="submit" id="form-submit" class="btn btn-primary form-button form-button-save m-auto">Save</button>
    </div>
  </div>
  <script src="/nl_recruitment/static/src/js/applicant_profile.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
<script>
    form = document.getElementById("applicant-profile-form");
formParts = document.querySelectorAll(".form-part");
educationModalButton = document.querySelector(
  ".education-modal-button-add-row"
);
experienceModalButton = document.querySelector(
  ".experience-modal-button-add-row"
);
personalInformation = document.getElementById("personal-information");
education = document.getElementById("education");
experience = document.getElementById("experience");
resume = document.getElementById("resume");
personalInformationControl = document.getElementById(
  "personal-information-control"
);
educationControl = document.getElementById("education-control");
experienceControl = document.getElementById("experience-control");
resumeControl = document.getElementById("resume-control");
startyear = document.getElementById("inputstartyear4");
completionyear = document.getElementById("inputcompletionyear4");
degree = document.getElementById("inputdegree4");
specialization = document.getElementById("inputspecialization4");
university = document.getElementById("inputuniversity4");
educationTableBody = document.getElementById("education-table-body");
formNavControls = document.querySelectorAll(".form-nav-controls");
experienceTableBody = document.getElementById("experience-table-body");
jobtitle = document.getElementById("inputjobtitle4");
company = document.getElementById("inputcompany4");
startdate = document.getElementById("inputstartdate4");
enddate = document.getElementById("inputenddate4");
modalExp = document.getElementById("modalexp");
formSubmit = document.getElementById("form-submit");

function openFormPart(formPart) {
  formParts.forEach((element) => {
    element.classList.remove("showForm");
    element.classList.add("hideForm");
  });
  formPart.classList.remove("hideForm");
  formPart.classList.add("showForm");
}

function switchActive(control) {
  formNavControls.forEach((element) => {
    element.classList.remove("activeControl");
  });
  control.classList.add("activeControl");
}

personalInformationControl.addEventListener("click", function () {
  switchActive(personalInformationControl);
  openFormPart(personalInformation);
});

educationControl.addEventListener("click", function () {
  switchActive(educationControl);
  openFormPart(education);
});

experienceControl.addEventListener("click", function () {
  switchActive(experienceControl);
  openFormPart(experience);
});

resumeControl.addEventListener("click", function () {
  switchActive(resumeControl);
  openFormPart(resume);
});

function addRow(field1, field2, field3, field4, field5, tableBody) {
  tr = document.createElement("tr");

  if (field5) {
    tr.innerHTML = `
            <td><input type="date" class="startYearTB table-input" value="${field1.value}" required="required"/></td>
            <td><input type="date" class="completionYearTB table-input" value="${field2.value}" required="required"/></td>
            <td><input type="text" class="degreeTB table-input" value="${field3.value}" required="required"/></td>
            <td><input type="text" class="specializationTB table-input" value="${field4.value}" required="required"/></td>
            <td><input type="text" class="universityTB table-input" value="${field5.value}" required="required"/></td>        
            <td>
                <button type="button" class="trash-delete-row btn" style="margin-top: 10px;"><i class="fa fa-times" aria-hidden="true"></i></button>
            </td>`;
  } else if (!field5) {
    tr.innerHTML = `
            <td><input type="text" class="job-titleTB table-input" value="${field1.value}" required="required"/></td>
            <td><input type="text" class="companyTB table-input" value="${field2.value}" required="required"/></td>
            <td><input type="date" class="start-date-expTB table-input" value="${field3.value}" required="required"/></td>
            <td><input type="date" class="end-date-expTB table-input" value="${field4.value}" required="required"/></td>
            <td>
                <button type="button" class="trash-delete-row btn" style="margin-top: 10px;"><i class="fa fa-times" aria-hidden="true"></i></button>
            </td>`;
  }

  tableBody.appendChild(tr);
  field1.value = field2.value = field3.value = field4.value = field5.value = "";

  deleteRowBtns = document.querySelectorAll(".trash-delete-row");
  deleteRow(deleteRowBtns);
}

educationModalButton.addEventListener("click", function () {
  addRow(
    startyear,
    completionyear,
    degree,
    specialization,
    university,
    educationTableBody
  );
});

experienceModalButton.addEventListener("click", function () {
  addRow(jobtitle, company, startdate, enddate, "", experienceTableBody);
});

function deleteRow(deleteRowBtns) {
  deleteRowBtns.forEach((element) => {
    element.addEventListener("click", function () {
      element.parentNode.parentNode.remove();
    });
  });
}

function updateHiddenInput(tb_input, values, hiddenInput) {
  tb_input.forEach((el) => {
    values.push(el.value);
    hiddenInput.value = values.join(",");
  });
}

function save() {
  // Taking data from education table
  startYearTB = document.querySelectorAll(".startYearTB");
  completionYearTB = document.querySelectorAll(".completionYearTB");
  degreeTB = document.querySelectorAll(".degreeTB");
  specializationTB = document.querySelectorAll(".specializationTB");
  universityTB = document.querySelectorAll(".universityTB");
  startYearHiddenInput = document.querySelector(".start-year");
  completionYearHiddenInput = document.querySelector(".completion-year");
  degreeHiddenInput = document.querySelector(".degree");
  SpecializationHiddenInput = document.querySelector(".Specialization");
  UniversityHiddenInput = document.querySelector(".University");
  startYears = [];
  completionYears = [];
  degrees = [];
  specializations = [];
  universities = [];
  updateHiddenInput(startYearTB, startYears, startYearHiddenInput);
  updateHiddenInput(
    completionYearTB,
    completionYears,
    completionYearHiddenInput
  );
  updateHiddenInput(degreeTB, degrees, degreeHiddenInput);
  updateHiddenInput(
    specializationTB,
    specializations,
    SpecializationHiddenInput
  );
  updateHiddenInput(universityTB, universities, UniversityHiddenInput);
  // Taking data from experience table
  jobTitleTB = document.querySelectorAll(".job-titleTB");
  companyTB = document.querySelectorAll(".companyTB");
  startDateExpTB = document.querySelectorAll(".start-date-expTB");
  endDateExpTB = document.querySelectorAll(".end-date-expTB");
  jobTitleHiddenInput = document.querySelector(".job-title");
  companyHiddenInput = document.querySelector(".company");
  startDateExpHiddenInput = document.querySelector(".start-date-exp");
  endDateExpHiddenInput = document.querySelector(".end-date-exp");
  jobTitles = [];
  companies = [];
  startDateExps = [];
  endDateExps = [];
  updateHiddenInput(jobTitleTB, jobTitles, jobTitleHiddenInput);
  updateHiddenInput(companyTB, companies, companyHiddenInput);
  updateHiddenInput(startDateExpTB, startDateExps, startDateExpHiddenInput);
  updateHiddenInput(endDateExpTB, endDateExps, endDateExpHiddenInput);
}

function validate() {
  requiredInputs = document.querySelectorAll(".required");
  save();
  validatedInputs = [];
  notValidatedInputs = [];
  for (let i = 0; i < requiredInputs.length; i++) {
    if (requiredInputs[i].value) {
      validatedInputs.push(requiredInputs[i]);
    } else {
      notValidatedInputs.push(requiredInputs[i]);
    }
  }
  if (validatedInputs.length === requiredInputs.length) {
    form.submit();
  } else {
    alert("Please fill all the required fields.");
    validatedInputs.forEach((el) => {
      el.style.border = "1px solid #CED4DA";
    });
    notValidatedInputs.forEach((el) => {
      el.style.border = "solid 1px red";
    });
  }
}

formSubmit.addEventListener("click", validate);

</script>
</html>