<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Candidate Detail</title>
<!-- CSS -->
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/jobList.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	

</head>
<style>
nav {
	display: flex;
	width: 100%;
	align-items: center;
	justify-content: space-between;
	padding: 0.2rem 2rem;
	z-index: 99;
	white-space: nowrap;
	transition: 0.5s;
	color: var(- -lite);
	background-color: var(- -white);
	transition: 0.5s;
}

.flex_content {
	width: 100%;
	position: relative;
}

.logo figcaption {
	font-size: 15px;
	text-align: center;
	color: linear-gradient(145deg, #002347, #3399ff);
	font-weight: 300;
}

.logo figcaption strong {
	display: block;
	font-size: 20px;
	position: relative;
	top: 5px;
	line-height: 1;
	font-weight: 800;
}

nav a {
	padding: 0.8rem 0;
	color: rgba(1, 1, 1, 0.6);
	margin: 0 1.5rem;
	text-transform: uppercase;
	font-weight: 400;
	position: relative;
	white-space: nowrap;
}

nav .flex_content:nth-child(2) a:after {
	transition: 0.5s;
	content: "";
	position: absolute;
	left: 0;
	width: 0;
	top: 100%;
	height: 2px;
	background: #3399ff;
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
.css-12f7u05 {
    display: flex;
    box-sizing: border-box;
    margin: 0px;
    min-width: 0px;
    flex-direction: column;
}
.css-2prryw {
    display: inline-flex;
    position: relative;
    flex-direction: row;
    z-index: 0;
    padding-block: 0px;
    padding-inline: 0px;
    border: none;
}
.css-2prryw label[data-value="yes"], .css-2prryw label[value="yes"], .css-2prryw button[value="yes"] {
    background-color: rgb(255, 255, 255);
    border-color: rgb(212, 210, 208);
    color: rgb(45, 45, 45);
}
.css-9splde {
    box-sizing: border-box;
    background: none rgb(255, 255, 255);
    appearance: none;
    text-align: left;
    text-decoration: none;
    border: 1px solid rgb(212, 210, 208);
    cursor: pointer;
    user-select: none;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    position: relative;
    margin: 0px -1px 0px 0px;
    line-height: 1.5;
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    font-size: 1rem;
    font-weight: 700;
    transition: border-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, background-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, opacity 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, box-shadow 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
    display: inline-flex;
    width: auto;
    color: rgb(37, 87, 167);
    border-radius: 0.5rem 0px 0px 0.5rem;
    padding: 9px;
}
</style>
<body>
	<div class="job">
		<div class="header">

			<%
			String mail = request.getParameter("email");
			%>
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

				<div class="dark-light"></div>


			</div>
		</div>






		<%@ page import="java.sql.*"%>
		<%@ page import="java.util.Base64"%>

		<%
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String fname = null;
		String lname = null;
		String jobname = null;
		String location = null;
		String date = null;
		String cname = null;
		String photo = null;
		String ctc = null;
		String phone = null;
		String rContent = null;
		String type = null;
		String gender = null;
		String hedu = null;
		String special = null;
		String university = null;
		String endedu = null;
		String unique = null;
		String eemaill = null;
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?", "root", "root");

		// execute query to get user's photo
		String query = "SELECT * FROM appliedJobs WHERE id=?";
		PreparedStatement stmt = con.prepareStatement(query);
		stmt.setString(1, id);
		ResultSet rs = stmt.executeQuery();

		// display user's photo
		if (rs.next()) {

			fname = rs.getString("applyFName");
			lname = rs.getString("applyLName");
			jobname = rs.getString("jobName");
			cname = rs.getString("companyName");
			location = rs.getString("location");
			date = rs.getString("date");
			rContent = rs.getString("applyResumeContent");
			phone = rs.getString("applyPhone");
			ctc = rs.getString("ctc");
			type = rs.getString("jobType");
			gender = rs.getString("applyGender");
			hedu = rs.getString("applyDegree");
			special = rs.getString("applySpecial");
			university = rs.getString("applyUniversity");
			endedu = rs.getString("applyEduEndDate");
			unique = rs.getString("uniqueApplyId");
			eemaill = rs.getString("applyEmail");
			/*   Blob imageBlob = rs.getBlob("companyLogo");
			 byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
			 String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
			 photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly */
		}

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?", "root", "root");
		String querys = "SELECT * FROM addEmployer WHERE employerEmail=?";
		PreparedStatement stmts = conn.prepareStatement(querys);
		stmts.setString(1, email);
		ResultSet rss = stmts.executeQuery();

		if (rss.next()) {
			Blob imageBlob = rss.getBlob("companyLogo");
			byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
			String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
			photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly

		}
		%>


		<div class="job-explain" style="margin-top: 3rem;">
			<!--                  <img class="job-bg" alt=""> -->
			<div class="job-logos">
				<img style="width: 4rem; height: 4rem; border-radius: 3rem;"
					alt="jobImaage" src="<%=photo%>">
			</div>
			<div class="job-explain-content">
				<div class="job-title-wrapper">
					<div class="job-card-title"><%=fname%>&nbsp;<%=lname%>
						-
						<%=jobname%></div>
					<div class="job-action">
						<button type="button" id="applyJob" class="search-buttons"
							style="margin-right: 2rem;" data-toggle="modal"
							data-target="#exampleModalEDU">Invite to Interview</button>

						<a class="search-buttons"
							href="candidateDetail.jsp?resumeId=<%=unique%>&email=<%=mail%>&id=<%=id%>">Download
							Resume</a>
					</div>
				</div>



				<h6 class="alert-subtitle" style="margin-left: 30rem;" id="dSS"></h6>
				<div class="job-subtitle-wrapper">
					<div class="company-name"><%=cname%>
						<span class="comp-location"><%=location%></span>
					</div>
					<div class="posted">
						Posted at
						<%=date%>
					</div>
				</div>
				<div class="explain-bar">
					<div class="explain-contents">
						<div class="explain-title">Gender</div>
						<div class="explain-subtitle"><%=gender%></div>
					</div>
					<div class="explain-contents">
						<div class="explain-title">Contact</div>
						<div class="explain-subtitle"><%=phone%>
						</div>
					</div>
					<div class="explain-contents">
						<div class="explain-title">Employee Type</div>
						<div class="explain-subtitle"><%=type%></div>
					</div>
					<div class="explain-contents">
						<div class="explain-title">Offer Salary</div>
						<div class="explain-subtitle"><%=ctc%>
						</div>
					</div>
				</div>
				<div class="overview-text">
					<div class="overview-text-header">Overview</div>
					<div class="overview-text-subheader"><%=rContent%>
					</div>
				</div>
				<div class="overview-text">
					<div class="overview-text-header">Education Details</div>
					<div class="overview-text-item overview-text-subheader">
						<b>Highest Education :</b> &nbsp;
						<%=hedu%>
					</div>
					<div class="overview-text-item overview-text-subheader">
						<b>Specialization :</b> &nbsp;
						<%=special%>
					</div>
					<div class="overview-text-item overview-text-subheader">
						<b>University :</b> &nbsp;
						<%=university%>
					</div>
					<div class="overview-text-item overview-text-subheader">
						<b>Completed Year :</b> &nbsp;
						<%=endedu%>
					</div>

				</div>
				<hr>
				<!-- Add the filter buttons -->
				<div class="css-12f7u05 e37uo190">
   <form action="UpdateCandidateStatusServlet" method="post" class="css-2prryw erqkuc00">
  <input type="hidden" name="uniqueApplyId" value="<%=unique%>">
  <input type="hidden" name="cid" value="<%=id%>">
  <input type="hidden" name="email" value="<%=email%>">
 
  <button class="css-9splde e8ju0x51" type="submit" name="status" style="
    margin-right: 1rem;
" value="sortlist">Sortlist</button>
  <button class="css-9splde e8ju0x51" type="submit" name="status" style="
    margin-right: 1rem;
" value="rejected">Rejected</button>
  <button class="css-9splde e8ju0x51" type="submit" name="status" style="
    margin-right: 1rem;
" value="withhold">Withhold</button>
</form></div>
   

  


		<%--      <form action="candidateDetail.jsp" method="get">
        <input type="text" name="fileId" value="<%=unique %>" /> <!-- Set the desired file ID -->
        <input type="submit" value="Download File" />
    </form>
                --%>
		<%@ page import="java.sql.*, java.io.*"%>

		<%
		String jdbcUrl = "jdbc:mysql://localhost:3306/arbietNew";
		String username = "root";
		String password = "root";

		String resumeId = request.getParameter("resumeId");

		Connection connz = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connz = DriverManager.getConnection(jdbcUrl, username, password);

			PreparedStatement statement = null;
			ResultSet resultSet = null;
			Blob blob = null;

			try {
				String sql = "SELECT applyResume FROM appliedJobs WHERE uniqueApplyId = ?";
				statement = connz.prepareStatement(sql);
				statement.setString(1, resumeId);
				resultSet = statement.executeQuery();

				if (resultSet.next()) {
			blob = resultSet.getBlob("applyResume");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			if (blob != null) {

				String filePath = "D:\\Workspace\\Resume\\resume " + fname + " " + lname + ".pdf";
				// Replace with your desired file path

				File file = new File(filePath);
				FileOutputStream outputStream = new FileOutputStream(file);
				outputStream.write(blob.getBytes(1, (int) blob.length()));
				outputStream.close();

				response.setContentType("text/html");
				out.println("<script>");
				out.println("var message = 'File downloaded successfully to: " + file.getAbsolutePath() + "';");
				out.println("Swal.fire({");
				out.println("  icon: 'success',");
				out.println("  title: 'Download Successful',");
				out.println("  text: message,");
				out.println("  timer: 2500,");
				out.println("  showConfirmButton: false");
				out.println("});");
				out.println("</script>");

			}

			connz.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		%>





		<%-- aswdefr
qwgfvb
qwgfb
qwdefr
qwedfrgvqw2
egfe
g	
 --%>

	</div>

	<!-- Modal For Education -->
	<div class="modal fade bd-example-modal-lg" id="exampleModalEDU"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Interview
						details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>
				<div class="modal-body">


					<form method="post" action="mailToCandidate" id="form-submit">

						<span class="ml-3">Schedule with <%=fname%>&nbsp;<%=lname%></span>
						
						<input type="hidden" name="candidateName" value="<%=fname%>&nbsp;<%=lname%>">
						
							 <input type="hidden" name="candidateEmail" value="<%=eemaill%>"> 
							
							<input type="hidden" name="candidatePhone" value="<%=phone%>">
							
							<input type="hidden" name="companyName" value="<%=cname%>">
							
							<input type="hidden" name="jobName" value="<%=jobname%>">
							
								<input type="hidden" name="cId" value="<%=id%>">
							
							<input type="hidden" name="cEmail" value="<%=email%>">
							
						
						<div class="form-row">
							<div class="form-group col-md-6">
  <label for="inputstartdate4">Date</label>
  <input type="date" class="form-control" name="interviewDate" id="inputstartdate4" />
</div>

<script>
  var today = new Date();
  var interviewDateField = document.getElementById('inputstartdate4');
  interviewDateField.min = today.toISOString().split('T')[0];
</script>

							<div class="form-group col-md-6">
								<label for="inputstartdate4">Start Time</label> <input
									type="time" class="form-control" name="interviewStartTime"
									id="inputstartdate4" />
							</div>
							<div class="form-group col-md-6">
								<label for="inputenddate4">Duration</label> <select
									class="form-control" name="interviewDuration"
									id="inputenddate4">
									<option selected="">Choose...</option>
									<option value="00:30">00:30</option>
									<option value="00:45">00:45</option>
									<option value="00:60">00:60</option>
								</select>
							</div>
						</div>
						<div class="form-group col-md-12">
							<label for="formFile" class="form-label">About Interview
								process</label>
							<textarea class="required form-control" name="interviewProcess"
								id="formFile"></textarea>
						</div>

						<button style="margin-right: 0.5rem;" type="submit"
							class="btn btn-primary form-button education-modal-button-add-row">Send
							mail</button>
						<!-- <button type="button" style="padding: 1px 35px 1px 30px;"
							class="btn btn-secondary form-button education-modal-button-add-row"
							data-dismiss="modal">Close</button> -->

					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

	<!-- END MODAL FOR EDUCATION -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js"></script>
</body>
<script src="js/jobList.js"></script>



</html>

