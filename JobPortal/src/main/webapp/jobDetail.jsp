<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Detail</title>
	<!-- CSS -->
    <link rel="stylesheet" href="css/jobList.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    
    </head>
    <style>
		/*NAV*/
nav{
    display:flex;
    width:100%;
    align-items:center;
    justify-content:space-between;
    padding:0.2rem 2rem;
    z-index:99;
    white-space:nowrap;
    transition:0.5s;
    color:rgba(255,255,255,0.6);
    background-color:#FFF;
    transition:0.5s;
}  

.fixed_nav{
    width:100%;
    position:fixed;
    top:0;
    box-shadow:0px 6px 16px -6px rgba(1,1,1,0.6);
    animation: fixed_nav 1s linear 1;
}

nav a{
    padding:0.8rem 0;
    color:rgba(1,1,1,0.6);
    margin:0 1.5rem;
    text-transform:uppercase;
    font-weight:400;
    position:relative;
    white-space:nowrap;
}

nav .active{
    color:#3399ff !important;
    border-bottom:2px solid var#3399ff;
}

.logo{
    font-size:1.6em;
    align-items:center;
    margin-top:10px;
    color:#002347;
}

.logo img{  
    width:60px;
    border-radius:50%;
    margin-right:5px;
}

.logo em{
    font-weight:800
}

.logo sub{
    font-size:12px;
    position:relative;
    top:5px;
}

.logo figcaption{
    font-size:15px;
    text-align:center;
    color:linear-gradient(145deg,#002347,#3399ff);
    font-weight:300;
}

.logo figcaption strong{
    display:block;
    font-size:20px;
    position:relative;
    top:5px;
    line-height:1;
    font-weight:800;
}

nav .flex_content:nth-child(2) a:after{
    transition:0.5s;
    content:"";
    position:absolute;
    left:0;
    width:0;
    top:100%;
    height:2px;
    background:#3399ff;
}

nav a:hover{
    color:#3399ff;
}

nav .flex_content:nth-child(2) a:hover:after{
    width:100%;
}

nav .ham{
    display:flex;
    align-items:center;
    justify-content:center;
    border-radius:10px;
    border:2px solid rgba(1,1,1,0.6);
    width:40px;
    height:40px;
    color:rgba(1,1,1,0.6);
    float:right;
    margin-right:0;
}

nav .ham:hover{
    border:2px solid #3399ff;
}

.flex_content{
    width:100%;
    position:relative;
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
        <div class="">
            <div class="header">
             
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
             <div class="user-settings">
             
              <div class="dark-light">
               		
              </div>
              
              
             </div>
            </div>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%
String id = request.getParameter("id");
 String email = request.getParameter("email");
String jobName = null;
String empName = null;
String jobLocation = null;
String jobExperience = null;
String employerPhone = null;
String jobType =  null;
String jobSalary = null;
String companyDes = null;
String comDes = null;
String jobDes = null;
String appliedData = null;
String companyLogo = null;
String comName = null;
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String query = "SELECT * FROM joblist WHERE uniqueKey=?";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, id);
ResultSet rs = stmt.executeQuery();

// display user's photo
if (rs.next()) {
	comName=rs.getString("companyName");
	jobName = rs.getString("jobName");
	     empName = rs.getString("employerName");
	     jobLocation = rs.getString("jobLocation");
	     jobExperience = rs.getString("jobExperience");
	     employerPhone = rs.getString("employerPhone");
	     jobType = rs.getString("jobType");
	     jobSalary = rs.getString("jobSalary");
	     companyDes = rs.getString("companyDes");
	     jobDes = rs.getString("jobDes");
	     appliedData = rs.getString("appliedData");
	     companyLogo = rs.getString("companyLogo");
	     

}
%>
            
                <div  class="job-explain" style="margin-top: 3rem;">
<!--                  <img class="job-bg" alt=""> -->
                 <div class="job-logos">
                 <img style="width: 4rem; height: 4rem; border-radius: 3rem;" alt="jobImaage" src="<%=companyLogo%>">
                 </div>
                 <div class="job-explain-content">
                 <div class="job-title-wrapper">
                  <div class="job-card-title"><%=jobName %> - <%=comName %></div>
                  <!-- <div class="job-action">
                   <svg class="heart" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart">
                     <path d="M20.8 4.6a5.5 5.5 0 00-7.7 0l-1.1 1-1-1a5.5 5.5 0 00-7.8 7.8l1 1 7.8 7.8 7.8-7.7 1-1.1a5.5 5.5 0 000-7.8z" /></svg>
                   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-share-2"><circle cx="18" cy="5" r="3"/><circle cx="6" cy="12" r="3"/><circle cx="18" cy="19" r="3"/><path d="M8.6 13.5l6.8 4M15.4 6.5l-6.8 4"/></svg>
                  </div> -->
                  </div>
                  <div class="job-subtitle-wrapper">
                   <div class="company-name"><%=empName %> <span class="comp-location"><%=jobLocation %></span></div>
                   <div class="posted">Posted at <%=appliedData %></div>
                  </div>
                  <div class="explain-bar">
                   <div class="explain-contents">
                   <div class="explain-title">Experience</div>
                   <div class="explain-subtitle"><%=jobExperience %></div>
                    </div>
                   <div class="explain-contents">
                   <div class="explain-title">Contact</div>
                   <div class="explain-subtitle"><%=employerPhone %></div>
                    </div>
                   <div class="explain-contents">
                   <div class="explain-title">Employee Type</div>
                   <div class="explain-subtitle"><%=jobType %></div>
                    </div>
                   <div class="explain-contents">
                   <div class="explain-title">Offer Salary</div>
                   <div class="explain-subtitle"><%=jobSalary %></div>
                    </div>
                  </div>
                  <div class="overview-text">
                   <div class="overview-text-header">Overview</div>
                   <div class="overview-text-subheader"><%=companyDes %></div>
                  </div>
                  <div class="overview-text">
                   <div class="overview-text-header">Job Description</div>
                   <div class="overview-text-item overview-text-subheader"><%=jobDes %></div>
                 </div><hr>	  
                <button type="button" id="applyJob" class="btn btn-secondary form-button education-modal-button-add-row" data-toggle="modal" data-target="#exampleModalEDU"> Apply Now</button>
                <a href="submitResume.jsp?email=<%=email%>"> <button type="button" class="btn btn-secondary form-button education-modal-button-add-row" > Complete Your QuickApply</button></a>
                 </div>
                </div>
               

<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%


 String fName = null;
 String lName = null;
 String fatherName = null;
 String gender = null;
 String resEdu = null;
 String DOB = null;
 String country = null;
 String phone = null;
 String eduStartDate = null;
 
 String eduEndDate = null;
 String degree = null;
 String special = null;
 String university = null;
 String expJobName = null;
 String expCompanyName = null;
 String expStartDate = null;
 String expEndDate = null;
 String resCon = null;
 Blob resume = null;
 String iid  = null;
 
 
 
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String querys = "SELECT * FROM quickResume WHERE resumeEmail=?";
PreparedStatement stmts = con.prepareStatement(querys);
stmts.setString(1, mail);
ResultSet rss = stmts.executeQuery();

// display user's photo
if (rss.next()) {
	iid = rss.getString("iid");
	fName = rss.getString("resumeFName");
	lName = rss.getString("resumeLName");
	fatherName = rss.getString("resumeFatherName");
	gender = rss.getString("resumeGender");
	
	resEdu = rss.getString("resumeEducation");
	DOB = rss.getString("resumeDOB");
	country = rss.getString("resumeCountry");
	phone = rss.getString("resumePhone");
	
	eduStartDate = rss.getString("eduStartDate");
	eduEndDate = rss.getString("eduStartDate");
	degree = rss.getString("eduDegree");
	
	special = rss.getString("eduSpecialization");
	university = rss.getString("eduUniversity");
	expJobName = rss.getString("expJobName");
	
	expCompanyName = rss.getString("expCompanyName");
	expStartDate = rss.getString("expStartDate");
	expEndDate = rss.getString("expEndDate");
	resCon = rss.getString("resumeContent");
	resume = rss.getBlob("resume");

	

}
%>            
        

         </div> 
         
        <!-- Modal For Education -->
  <div class="modal fade bd-example-modal-lg" id="exampleModalEDU" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Easy Apply details</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">
       
       
        <form method="post" action="appliedJobs" id="form-submit" enctype="multipart/form-data">
        <input type="hidden" name="jobUniqueKey" value="<%=id%>">
        <input type="hidden" name="iid" value="<%=iid%>">
        <input type="hidden" name="email" value="<%=mail%>">
        
        
        <input type="hidden" name="companyName" value="<%=comName%>">
        <input type="hidden" name="jobName" value="<%=jobName%>">
        <input type="hidden" name="date" value="<%=appliedData%>">
        <input type="hidden" name="location" value="<%=jobLocation%>">
        <input type="hidden" name="ctc" value="<%=jobSalary%>">
        <input type="hidden" name="jobType" value="<%=jobType%>">
        <input type="hidden" id="uniqueApplyId" name="uniqueApplyId">
        <span class="ml-3">Personal Information</span>
           <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputfirstname4">First Name</label>
                  <input type="text" class="required form-control" name="applyFName" id="inputfirstname4" value="<%=fName %>" required="required" />
                </div>
                <div class="form-group col-md-4">
                  <label for="inputlastname4">Last Name</label>
                  <input type="text" class="required form-control" name="applyLName" id="inputlastname4" value="<%=lName %>" required="required" />
                </div>
                <div class="form-group col-md-4">
                  <label for="inputfathername4">Father Name</label>
                  <input type="text" class="required form-control" name="applyFatherName" id="inputfathername4" value="<%=fatherName %>" required="required" />
                </div>
                <div class="form-row">
                <input type="hidden" name="applyGender" value="<%=gender%>">
                
				<input type="hidden" name="applyEducation" value="<%=resEdu%>">
                
                <input type="hidden" name="applyDOB" value="<%=DOB%>">

             </div>
              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputcountry4">Country</label>
                  <input type="text" class="required form-control" name="applyCountry" value="<%=country %>" id="inputcountry4" required="required" />
                </div>
                <div class="form-group col-md-4">
                  <label for="inputemail4">Email</label>
                  <input type="email" class="required form-control" name="applyEmail" value="<%=mail %>" id="inputemail4" required="required" />
                </div>
                <div class="form-group col-md-4">
                  <label for="inputphone4">Phone</label>
                  <input type="number" class="required form-control" name="applyPhone" id="inputphone4" value="<%=phone%>" required="required" />
                </div>
              </div>
             
              <div class="form-row">
              
            <div class="form-group col-md-6">
              <label for="inputstartyear4">Start Year</label>
              <input type="date" class="form-control" name="applyEduStartDate" value="<%=eduStartDate %>" id="inputstartyear4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputcompletionyear4">Completion Year</label>
              <input type="date" class="form-control" name="applyEduEndDate" value="<%=eduEndDate%>" id="inputcompletionyear4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputdegree4">Degree</label>
              <input type="text" class="form-control" name="applyDegree" value="<%=degree%>" id="inputdegree4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputspecialization4">Specialization</label>
              <input type="text" class="form-control" name="applySpecial" value="<%=special%>" id="inputspecialization4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputuniversity4">University</label>
              <input type="text" class="form-control" name="applyUniversity" value="<%=university%>"  id="inputuniversity4" />
            </div>
          </div>
          <span class="ml-3">Experience</span>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputjobtitle4">Job Title</label>
              <input type="text" class="form-control" name="applyExpJobName" value="<%=expJobName%>" id="inputjobtitle4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputcompany4">Company</label>
              <input type="text" class="form-control" name="applyExpCompanyName" value="<%=expCompanyName %>" id="inputcompany4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputstartdate4">Start Date</label>
              <input type="date" class="form-control" name="applyExpStartDate" value="<%=expStartDate%>" id="inputstartdate4" />
            </div>
            <div class="form-group col-md-6">
              <label for="inputenddate4">End Date</label>
              <input type="date" class="form-control" name="applyExpEndDate" value="<%=expEndDate%>" id="inputenddate4" />
            </div>
          </div>
           <span class="ml-3">Resume</span>
                     <div class="form-group col-md-12">
                <label for="formFile" class="form-label">Say about yourself</label>
                <textarea class="required form-control" name="applyResumeContent" id="formFile"><%=resCon %></textarea>
              </div>
          <div class="form-group col-md-12">
                <label for="formFile" class="form-label">Please upload your most recent resume.</label>
                <input class="required form-control" type="file" name="applyResume" id="resume" />
              </div>
                <button style="margin-right: 0.5rem;" type="submit"  class="btn btn-primary form-button education-modal-button-add-row" >Apply Now</button>
          <button type="button" style="padding: 1px 35px 1px 30px;" class="btn btn-secondary form-button education-modal-button-add-row" data-dismiss="modal">Close</button>
              </div>
              </form>
        </div>
        <div class="modal-footer">
         
        </div>
      </div>
    </div>
  </div>
  
  <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%
String count = null;
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection connn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String queryz = "SELECT COUNT(*) AS count FROM appliedJobs WHERE iid=? AND jobUniqueKey=?";
PreparedStatement stmtz = connn.prepareStatement(queryz);
stmtz.setString(1, iid);
stmtz.setString(2, id);
ResultSet rsz = stmtz.executeQuery();

// display user's photo
if (rsz.next()) {
	  count = rsz.getString("count");


}
%>
          <script>
          function validateAndDisableButton() {
        	  const count = "<%=count%>";
          const button = document.getElementById('applyJob');
          
          if (count > 0) {
        	  button.disabled = true;
        	  button.innerHTML = "Already Applied";
          } else {
            button.disabled = false;
            button.innerHTML = "Apply Now";
          }
          
          }
          
          document.addEventListener('DOMContentLoaded', validateAndDisableButton);
          </script>
          
        
          <script>
        const uniqueKey = new Date().getTime().toString();
        console.log(uniqueKey);
        document.getElementById("uniqueApplyId").value = uniqueKey;
        </script>     
            
   
            
  <!-- END MODAL FOR EDUCATION -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js"></script>
    </body>
     <script src="js/jobList.js"></script>
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
    
    