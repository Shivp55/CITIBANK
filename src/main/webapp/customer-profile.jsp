<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="Model.Customer" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>E-Banking a Banking Category Bootstrap Bootstrap Responsive website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="E-Banking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/font-awesome.css" rel="stylesheet">   <!-- font-awesome icons --> 
<!-- //Custom Theme files -->  
<!-- js --> 
	<script src="js/jquery-2.2.3.min.js"></script>
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Secular+One" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!-- //web-fonts --> 
<link href="css/stylelinks.css" type="text/css" rel="stylesheet" media="all">
</head>
<body> 
<%
Customer c=null;
if(session.getAttribute("data")!=null){
	c=(Customer)session.getAttribute("data");
	
}
else{
	
	response.sendRedirect("customer-login.jsp");
}
%>
	<!-- header -->
	<div class="headerw3-agile"> 
		<div class="header-w3mdl"><!-- header-two --> 
			<div class="container"> 
				<div class="agileits-logo navbar-left">
					<h1><a href="index.jsp"><img src="images/e.png" alt="logo"/>Banking</a></h1> 
				</div> 
				<div class="agileits-hdright nav navbar-nav">
					<div class="header-w3top"><!-- header-top --> 
						<ul class="w3l-nav-top">
							<li><i class="fa fa-phone"></i><span> 7984847671</span></li> 
							<li><a href="shivparekh803@gmail.com"><i class="fa fa-envelope-o"></i><span>shivparekh803@gmail.com</span></a></li>
						</ul>
						<div class="clearfix"> </div> 	 
					</div>
					<div class="agile_social_banner">
						<ul class="agileits_social_list">
							<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
							<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
						</ul>
					</div>  

				</div>
				<div class="clearfix"> </div> 
			</div>	
		</div>	
	</div>	
	<!-- //header -->  
	<!-- banner -->
	<div >
		<div class="header-nav"><!-- header-three --> 	
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						Menu 
					</button> 
				</div>
				<!-- top-nav -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="customer-index.jsp" class="active">Home</a></li>
						<li><a href="#" data-toggle="dropdown"><%=c.getFname() %><span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="customer-profile.jsp">Profile</a></li>
								<li><a href="customer-change-password.jsp">Change Password</a></li>
								<li><a href="logout.jsp">Logout</a>
							</ul>
						</li>
						<li><a href="icons.html" data-toggle="dropdown">Activity<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="deposit-money.jsp">Deposit Money</a></li>
								<li><a href="send-money.jsp">Send Money</a></li>
								<li><a href="transactions.jsp">View Transactions</a></li>
								<li><a href="account-balance.jsp">Account Balance</a></li>
								<li><a href="apply-debit.jsp">Apply Debit</a></li>
								<li><a href="apply-credit.jsp">Apply for Credit Card</a></li>
								
							</ul>
						</li>    
						<li><a href="services.jsp" class="scroll">services</a></li>    
						<li><a href="gallery.jsp" class="scroll">Gallery</a></li>  
						<li><a href="about.jsp" class="scroll">About</a></li>  
							
						<li><a href="contact.html" class="scroll">Contact Us</a></li>
					</ul>  
					<div class="clearfix"> </div>	
				</div>
			</nav>    
		</div>
		<!-- banner-text -->
		<section id="banner">
		<br><br><br><br><br><br><br>
		
		<div >
				
					<div class="w3ls-title">
				<h2 class="h3-w3l" >Customer Update</h2> 
			</div>
					<form action="CustomerController" method="post" >
					<table style="border:4px solid black; background:#fff;" align="center" >
					<tr>
						<td ><input type="hidden" name="id" value="<%=c.getId()%>"></td>
						
						</tr>
					
						<tr>
						<td>
						<input type="text" name="fname" value="<%=c.getFname() %>" placeholder="Enter First Name" >
						</td>
						<td>
						<input type="text" name="mname" value="<%=c.getMname() %>" placeholder="Enter Middle Name" >
						</td>
						<td>
						<input type="text" name="lname" value="<%=c.getLname() %>" placeholder="Enter Last Name" >
						</td>
						</tr>
						
						<tr>
						<td align="center">
						<select id="select" onchange="select();" name="selectaccnt" >
								  <option selected><%=c.getSelectaccnt() %></option>
								  <option >Current</option>
								  <option >Savings</option>
								  <option >Fixed Deposit Account</option>
								</select>
								
								
						</td>
												
						<td>&nbsp;</td>
						
						<td align="center"><input type="text" name="contact"  value="<%=c.getContact() %>" placeholder="Enter Phone Number" required="">
						</td>
						</tr>
						
						<tr>
						<td align="center" colspan="3"><input type="text" name="address" value="<%=c.getAddress() %>" placeholder="Enter Address" required="">
						</td>
						
						</tr>
						
						<tr>
						<td colspan="2">
						<input type="email" name="email" placeholder="Enter Email" value="<%=c.getEmail() %>" required="">
						</td>
						
						</tr>
					
						
						<tr >
						<td>&nbsp;</td>
						<td align="center">
						
						<button type="submit" class="site-btn" name="action" value="update">Update</button></td>
						<td>&nbsp;</td>
						</tr>
						<tr>
						<td colspan="3">&nbsp;</td>
						</tr>
						</table>
					</form>
					
				</div>
    </section>					
    
    </div>
					
					
					

	<!-- //contact --> 

<!--footer-->
<div class="agile-footer w3ls-section">
	<div class="container">
		<div class="col-md-7 list-footer">
		  <ul class="footer-nav">
				<li><a  href="index.html">Home</a></li>
				<li><a  href="about.html">About</a></li>
				<li><a  href="services.html">Services</a></li>
				<li><a href="gallery.html">Gallery</a></li>
				<li><a href="contact.html">Contact Us</a></li>
		  </ul>
		  <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et ctetur adipiscing elit. Cras rutrum iaculis</p>
		</div>
		<div class="col-md-5 agileinfo-sub">
			<h6>Click the link below to start the subscription service</h6>
			<a href="#" data-toggle="modal" data-target="#myModal1">subscribe</a>
		</div>
		<div class="clearfix"></div>
     </div>
</div>	 
<div class="w3_agile-copyright text-center">
		<p>© 2017 E-Banking. All rights reserved | Design by <a href="//w3layouts.com/">W3layouts</a></p>
	</div>
<!--//footer-->	
	<!-- subscribe -->
	<div class="modal bnr-modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<img src="images/logo.png" alt="logo"/>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body modal-spa">
					<p>E-Banking's email newsletter provides subscribers with helpful articles on important issues in the banking industry, as well as news about events and more! To sign up for the newsletter, fill the below form.</p>
					<form class=" wthree-subsribe" action="#" method="post"> 
						<input type="text" name="name" placeholder="Your Name" required="">
						<input type="email" name="email" placeholder="your Email" required="">
						<input type="submit" value="SignUp"> 
						<div class="clearfix"></div>
					</form>
				</div> 
			</div>
		</div>
	</div>
	<!-- //subscribe --> 
	<script src="js/SmoothScroll.min.js"></script>
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->  
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>

</body>
</html>