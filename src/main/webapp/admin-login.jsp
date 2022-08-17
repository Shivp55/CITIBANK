<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>E-Banking </title>
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

</head>
<body> 
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
	<div class="banner inner-banner">
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
						<li><a href="index.jsp" class="active">Home</a></li>
						<li><a href="#" data-toggle="dropdown">Customer<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="customer-register.jsp">Register</a></li>
								<li><a href="customer-login.jsp">Login</a></li>
							</ul>
						</li>
						<li><a href="#" data-toggle="dropdown">Admin<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="admin-login.jsp">Login</a></li>
								
							</ul>
						</li>    
						<li><a href="services.jsp" class="scroll">services</a></li>    
						<li><a href="gallery.jsp" class="scroll">Gallery</a></li>  
						<li><a href="about.jsp" class="scroll">About</a></li>  
							
						
					</ul>  
					<div class="clearfix"> </div>	
				</div>
			</nav>    
		</div>
		<!-- banner-text -->
		<!-- banner -->
	</div>	
	<!-- contact -->
	<div class="w3ls-section contact">
		<div class="container"> 
			<div class="w3ls-title">
				<h2 class="h3-w3l">Admin Login</h2> 
			</div>  
			
			<div class="contact_wthreerow agileits-w3layouts">
			<div class="col-md-5 agileits_w3layouts_contact_gridl">
					<div class="agileits_mail_grid_right_grid">
						<h3>Login</h4>
						<br><br>
						<h4>
						
						<%String reg=(String)request.getAttribute("register"); %>
						<%if(reg!=null){
							out.print(reg);	
						}
						%>
						</h4>
						<h4>
						
						<%String data=(String)request.getAttribute("data"); %>
						<%if(data!=null){
							out.print(data);	
						}
						%>
						</h4>					
						<h4>
						
						<%String alreg=(String)request.getAttribute("alreg"); %>
						<%if(alreg!=null){
							out.print(alreg);	
						}
						%>
						</h4>
						</div> 
					
				</div>
				
				<div class="col-md-7 w3l_contact_form">
				
					
					<form action="AdminController" method="post" >
					<table style="border:4px solid black;" >
					
						<tr>
							<td colspan="3">&nbsp;</td>
						</tr>
					
						
						<tr><td>
							<input type="email" name="email" placeholder="Enter Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							</td>
							<td colspan="2">&nbsp;</td>
						</tr>
						
						<tr>
							<td colspan="5">&nbsp;</td>
						</tr>
						
						<tr>
							<td align="center" colspan="5"><input type="text" name="password" placeholder="Enter Your Password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" required="">
						</td>
						
						</tr>
						<tr>
						<td colspan="5">&nbsp;</td>
						</tr>
						<tr>
						<td colspan="5">&nbsp;</td>
						</tr>
						
						<tr >
						
						<td align="center">
						<input type="submit" name="action" value="Login"></td>
						<td>&nbsp;</td>
						</tr>
						<tr>
						<td colspan="3">&nbsp;</td>
						</tr>
						</table>
					</form>
					
				</div>
				
				
			</div>
		</div>
	</div>
	<br><br>
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