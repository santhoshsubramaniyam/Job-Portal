<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    
    
    
    <!-- amchart css -->
    
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="index.html"><img src="https://www.vedhanthitechnologies.com/img/logo1.png" alt="logo"></a>
                </div>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                            <li class="active">
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-dashboard"></i><span>Admin</span></a>
                               
                            </li>
                            
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                        
                    </div>
                    <!-- profile info & task notification -->
                    <!-- <div class="col-md-6 col-sm-4 clearfix">
                        <ul class="notification-area pull-right">
                            <li id="full-view"><i class="ti-fullscreen"></i></li>
                            <li id="full-view-exit"><i class="ti-zoom-out"></i></li>
                            
                            
                        </ul>
                    </div> -->
                </div>
            </div>
            <!-- header area end -->
            <!-- page title area end -->
            <div class="main-content-inner">
                <!-- sales report area start -->
                <div class="sales-report-area mt-5 mb-5">
                    <div class="row">
                    <div class="col-md-4">
                            <div class="single-report mb-xs-30">
                                <div class="s-report-inner pr--20 pt--30 mb-3">
                                    <div class="icon"><i class="fa fa-building"></i></div>
                                    <div class="s-report-title d-flex justify-content-between">
                                        <h4 class="header-title mb-0">Total Employers</h4>
                                        
                                    </div>
                                    <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%


String rc = null;


%>

<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
// execute query to get user's photo
String query1 = "SELECT *, COUNT(*) AS row_count FROM addEmployer";
PreparedStatement stmt1 = con1.prepareStatement(query1);

		ResultSet rs1 = stmt1.executeQuery();
		
		// display new courses
		if (rs1.next()) {
			 
			     
			     
			     
			     rc = rs1.getString("row_count");
			 
			
	%>
                                    <div class="d-flex justify-content-between pb-2">
                                        <h2><%=rc %></h2>
                                        
                                    </div>
                                    <%
}

// close database connection
rs1.close();
stmt1.close();
con1.close();
%>
                                </div>
                                <!-- <canvas id="coin_sales2" height="100"></canvas> -->
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="single-report mb-xs-30">
                                <div class="s-report-inner pr--20 pt--30 mb-3">
                                    <div class="icon"><i class="fa fa-building"></i></div>
                                    <div class="s-report-title d-flex justify-content-between">
                                        <h4 class="header-title mb-0">Total Candidates</h4>
                                        
                                    </div>
                                    <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%


String rc2 = null;


%>

<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
// execute query to get user's photo
String query2 = "SELECT *, COUNT(*) AS row_count FROM addCandidate";
PreparedStatement stmt2 = con2.prepareStatement(query2);

		ResultSet rs2 = stmt2.executeQuery();
		
		// display new courses
		if (rs2.next()) {
			 
			     
			     
			     
			     rc2 = rs2.getString("row_count");
			 
			
	%>
                                    <div class="d-flex justify-content-between pb-2">
                                        <h2><%=rc2 %></h2>
                                        
                                    </div>
                                    <%
}

// close database connection
rs2.close();
stmt2.close();
con2.close();
%>
                                </div>
                                <!-- <canvas id="coin_sales2" height="100"></canvas> -->
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="single-report mb-xs-30">
                                <div class="s-report-inner pr--20 pt--30 mb-3">
                                    <div class="icon"><i class="fa fa-building"></i></div>
                                    <div class="s-report-title d-flex justify-content-between">
                                        <h4 class="header-title mb-0">Total Jobs</h4>
                                        
                                    </div>
                                    <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 <%


String rc3 = null;


%>

<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
// execute query to get user's photo
String query3 = "SELECT *, COUNT(*) AS row_count FROM addCandidate";
PreparedStatement stmt3 = con3.prepareStatement(query3);

		ResultSet rs3 = stmt3.executeQuery();
		
		// display new courses
		if (rs3.next()) {
			 
			     
			     
			     
			     rc3 = rs3.getString("row_count");
			 
			
	%>
                                    <div class="d-flex justify-content-between pb-2">
                                        <h2><%=rc3 %></h2>
                                        
                                    </div>
                                    <%
}

// close database connection
rs3.close();
stmt3.close();
con3.close();
%>
                                </div>
                                <!-- <canvas id="coin_sales2" height="100"></canvas> -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- sales report area end -->
                <!-- overview area start -->
                <!-- <div class="row">
                    <div class="col-xl-9 col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h4 class="header-title mb-0">Overview</h4>
                                    <select class="custome-select border-0 pr-3">
                                        <option selected>Last 24 Hours</option>
                                        <option value="0">01 July 2018</option>
                                    </select>
                                </div>
                                <div id="verview-shart"></div>
                            </div>
                        </div>
                    </div>
                    
                </div> -->
                <!-- overview area end -->
                <!-- market value area start -->
                
                <div class="row mt-5 mb-5">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-sm-flex justify-content-between align-items-center">
                                    <h4 class="header-title mb-0">Company List</h4>
                                    
                                </div>
                                <div class="market-status-table mt-4">
                                    <div class="table-responsive">
                                        <table class="dbkit-table">
                                            <tr class="heading-td">
                                                <td class="mv-icon">Logo</td>
                                                <td class="coin-name">Company Name</td>
                                                <td class="buy">Employer name</td>
                                                <td class="sell">Location</td>
                                                <td class="trends">Phone</td>
                                                <td class="attachments">Email</td>
                                                <!-- <td class="stats-chart">Stats</td> -->
                                            </tr>
                                            <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%
String photo = null;
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
		String querys = "SELECT * FROM addEmployer";
		PreparedStatement stmts = conn.prepareStatement(querys);
		ResultSet rss = stmts.executeQuery();

		// display new courses
		while (rss.next()) {
			String companyName = rss.getString("companyName");
			String employerName = rss.getString("employerName");
			String employerLocation = rss.getString("employerLocation");
			String employerPhone = rss.getString("employerPhone");
			String employerEmail = rss.getString("employerEmail");
			Blob imageBlob = rss.getBlob("companyLogo");
		     byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
		     String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
		     photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
			String id = rss.getString(2);
			 
			
	%>
                                            <tr>
                                                <td class="mv-icon"><img src="<%=photo%>" alt="icon" style="border-radius: 50%; width: 25px; height: 25px;">
                                                </td>
                                                <td class="coin-name"><%=companyName %></td>
                                                <td class="buy"><%=employerName %></td>
                                                <td class="sell"><%=employerLocation %></td>
                                                <td class="trends"><%=employerPhone %></td>
                                                <td class="attachments"><%=employerEmail %></td>
                                                <!-- <td class="stats-chart">
                                                    <canvas id="mvaluechart"></canvas>
                                                </td> -->
                                            </tr>
                                             <%
}

// close database connection
rss.close();
stmts.close();
conn.close();
%>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- market value area end -->
                <!-- market value area start -->
                
                <div class="row mt-5 mb-5">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-sm-flex justify-content-between align-items-center">
                                    <h4 class="header-title mb-0">Candidate List</h4>
                                   
                                </div>
                                <div class="market-status-table mt-4">
                                    <div class="table-responsive">
                                        <table class="dbkit-table">
                                            <tr class="heading-td">
                                                <td class="mv-icon">Picture</td>
                                                <td class="coin-name">First Name</td>
                                                <td class="buy">Last name</td>
                                                <td class="buy">Location</td>
                                                <td class="sell">Email</td>
                                                <td class="trends">Phone</td>
                                                
                                            </tr>
                                             <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%
String photos = null;
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
		String queryss = "SELECT * FROM addCandidate";
		PreparedStatement stmtss = connn.prepareStatement(queryss);
		ResultSet rsss = stmtss.executeQuery();

		// display new courses
		while (rsss.next()) {
			String candidateFName = rsss.getString("candidateFName");
			String candidateLName = rsss.getString("candidateLName");
			String candidateEmail = rsss.getString("candidateEmail");
			String candidatePhone = rsss.getString("candidatePhone");
			 Blob imageBlob = rsss.getBlob("candidateProfile");
		     byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
		     String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
		     photos = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
			String id = rsss.getString(2);
			 
			
	%>
                                            <tr>
                                           
                                                <td class="mv-icon"><img src="<%=photos %>" alt="icon" style="border-radius: 50%; width: 25px; height: 25px;">
                                                </td>
                                                <td class="coin-name"><%=candidateFName %></td>
                                                <td class="buy"><%=candidateLName %></td>
                                                <td class="sell">Coimbatore</td>
                                                <td class="trends"><%=candidateEmail %></td>
                                                <td class="attachments"><%=candidatePhone %></td>
                                                
                                                 
                                               
                                            </tr>
                                            <%
}

// close database connection
rsss.close();
stmtss.close();
connn.close();
%> 
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- market value area end -->
                <!-- market value area start -->
                
                <div class="row mt-5 mb-5">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-sm-flex justify-content-between align-items-center">
                                    <h4 class="header-title mb-0">Job List</h4>
                                   
                                </div>
                                <div class="market-status-table mt-4">
                                    <div class="table-responsive">
                                        <table class="dbkit-table">
                                            <tr class="heading-td">
                                                <td class="mv-icon">Job</td>
                                                <td class="coin-name">Company</td>
                                                <td class="buy">Location</td>
                                                <td class="buy">Experience</td>
                                                <td class="sell">Salary</td>
                                                <td class="trends">Date</td>
                                                
                                            </tr>
											<%@ page import="java.sql.*"%>
											<%@ page import="java.util.Base64"%>
											<%
											// connect to database
											Class.forName("com.mysql.cj.jdbc.Driver");
											Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?", "root", "root");

											// execute query to get new courses
											String query = "SELECT * FROM joblist";
											PreparedStatement stm = con.prepareStatement(query);
											ResultSet rs = stm.executeQuery();

											// display new courses
											while (rs.next()) {
												String jobName = rs.getString("jobName");
												String comName = rs.getString("companyName");
												String jobLocation = rs.getString("jobLocation");
												String jobExp = rs.getString("jobExperience");
												String jobSalary = rs.getString("jobSalary");
												String appliedDate = rs.getString("appliedData");
											%>
											<tr>
												<td class="coin-name"><%=jobName%></td>
												<td class="coin-name"><%=comName%></td>
												<td class="buy"><%=jobLocation%></td>
												<td class="sell"><%=jobExp%></td>
												<td class="trends"><%=jobSalary%></td>
												<td class="attachments"><%=appliedDate%></td>
											</tr>
											<%
											}

											// close database connection
											rs.close();
											stm.close();
											con.close();
											%>

										</table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- market value area end -->
                
                
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    
    
    
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    

    <!-- start chart js -->
    
    <!-- start highcharts js -->
    
    <!-- start zingchart js -->
    
    <!-- all line chart activation -->
    
    <!-- all pie chart -->
   
    <!-- others plugins -->
    
    <script src="assets/js/scripts.js"></script>
</body>

</html>
