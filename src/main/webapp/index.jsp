<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>ESB BANK ONLINE </title>
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

<link href="css/stylelinks.css" type="text/css" rel="stylesheet" media="all">
<!-- //web-fonts --> 
</head>
<body> 

<hr>

<%
Integer counter = (Integer)application.getAttribute("counter");
if (counter ==null || counter == 0)
{
counter = 1;
}
else
{

counter++;
}
application.setAttribute("counter", counter);

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
	<div class="banner">
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
						<li><a href="givereview.jsp" class="scroll">Give Review</a></li>    
						<li><a href="gallery.jsp" class="scroll"
						>Gallery</a></li>  
						<li><a href="about.jsp" class="scroll">About</a></li>  
							
						<li><a href="contact.jsp" class="scroll">Contact Us</a></li>
					</ul>  
					<div class="clearfix"> </div>	
				</div>
			</nav>    
			
		</div>
		<!-- banner-text -->
		<!-- banner -->
		<div class="container">
			<div class="banner-text agileits-w3layouts">
				<div  id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<div class="banner-textagileinfo">
								<h6>Welcome To E-Banking</h6>	 
								<h3>Safe,secure and convenient banking</h3>	 
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in consectetur adipiscing elit, Nullam in neque  neque malesua.</p>
								<div class="agileits-banner-bot">
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>01</h5>
										<h4>convenient</h4>	 
										<p>Consectetur adipiscing elit, Nullam in neque malesuadaLorem</p>
									</div>
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>02</h5>
										<h4>secure</h4>	 
										
									</div>
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>03</h5>
										<h4>reliable</h4>
										
									</div>
									<div class="clearfix"></div>
								</div>	
							</div>	
						</li>
						<li>
							<div class="banner-textagileinfo"> 
								<h6>Welcome To E-Banking</h6>	
								<h3>Safe,secure and convenient banking</h3>	 
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in consectetur adipiscing elit, Nullam in neque  neque malesua.</p>
								<div class="agileits-banner-bot">
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>01</h5>
										<h4>convenient</h4>	 									
									</div>
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>02</h5>
										<h4>secure</h4>	 
										<p>Consectetur adipiscing elit, Nullam in neque malesuadaLorem </p>
									</div>
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>03</h5>
										<h4>reliable</h4>
										
									</div>
									<div class="clearfix"></div>
								</div>
							</div>	
						</li>
						<li>
							<div class="banner-textagileinfo">
								<h6>Welcome To E-Banking</h6>	
								<h3>Safe,secure and convenient banking</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in consectetur adipiscing elit, Nullam in neque  neque malesua.</p>
								<div class="agileits-banner-bot">
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>01</h5>
										<h4>convenient</h4>		
									</div>
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>02</h5>
										<h4>secure</h4>	 
										
									</div>
									<div class="col-md-4 col-sm-4 col-xs-4 w3l-bb-grid1">
										<h5>03</h5>
										<h4>reliable</h4>
										<p>Consectetur adipiscing elit, Nullam in neque malesuadaLorem</p>
									</div>
									<div class="clearfix"></div>
								</div>	
							</div>	
						</li> 
					</ul>
				</div>
			</div>
		 </div>
	</div>
	<!-- about -->
	<div class="home-about w3ls-section">
		<div class="container">
			<!-- about top-->
			<div class="w3ls-about agile-section">
					<div class="w3-agileits-about-grids">
						<div class="col-md-6 col-sm-6 col-xs-6 agileits-title">
							<h3>what makes <img src="images/logo.png" alt="logo"/>Unique?</h3> 
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6  agile-about-bottom-right">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget faucibus est.Suspendisse auctor urna blandit ultricies maximus.
							Sed accumsan auctor lacus ac mattis. Mauris at nibh purus. Nullam vulputate, urna id facilisis eleifend, nisl turpis suscipit augue, eget tincidunt velit nunc ut lectus.Morbi rutrum ut risus sed hendrerit. Mauris at nibh purus. Nullam vulputate, urna id facilisis eleifend.</p>
							<p class="w3ls-about-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget faucibus est.Suspendisse auctor urna blandit ultricies maximus.
							Sed accumsan auctor lacus ac mattis. Mauris at nibh purus. Nullam vulputate, urna id facilisis eleifend, nisl turpis suscipit augue, eget tincidunt velit nunc ut lectus.Morbi rutrum ut risus sed hendrerit.</p>
						
						</div>
						<div class="clearfix"> </div>
				   </div>
			</div>
			<!-- //about top-->
			<!-- about bottom-->
			<div class="about-bottom">
				<div class="col-md-6 about-w3right">
					
				</div>
				<div class="col-md-6 about-w3left"> 
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h5 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>assumenda est cliche 
									</a>
								</h5>
							</div>
							<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="height: 0px;">
								<div class="panel-body panel_text">
									Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h5 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Itaque earum rerum
									</a>
								</h5>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false" style="height: 0px;">
								<div class="panel-body panel_text">
									Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingThree">
								<h5 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Sed tincidunt lorem sed 
									</a>
								</h5>
							</div>
							<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false" style="height: 0px;">
								<div class="panel-body panel_text">
									Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingFour">
								<h5 class="panel-title asd">
									<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>excepturi sint cliche 
									</a>
								</h5>
							</div>
							<div id="collapseFour" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour" aria-expanded="true">
								<div class="panel-body panel_text">
									Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
								</div>
							</div>
						</div>
					</div> 
				</div> 
				<div class="clearfix"> </div>
			</div>		
		</div>	
			<!-- //about-bottom -->
			<!-- about-bottom-grid -->
			<div class="wthree-about-bot-grid-sec">
				<div class="agileits-about-pos">
					<h2>secure banking</h2>
				</div>
				<div class="col-md-6 col-sm-6 w3ls-abg w3ls-abg1 abg1">
					<h4>Safe,secure and convenient banking</h4>
					<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.</p>
				</div>
				<div class="col-md-6 col-sm-6 w3ls-abg w3ls-abg2 abg4">
					<h4>it’s your money. manage it your way.</h4>
					<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.</p>
				</div>
				<div class="col-md-6  col-sm-6 w3ls-abg w3ls-abg1 abg2">
					<h4>Pay people. Pay bills.Transfer money.</h4>
					<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.</p>
				</div>
				<div class="col-md-6 col-sm-6 w3ls-abg w3ls-abg2 abg3">
					<h4>Mobile Privacy and Security</h4>
					<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.</p>
				</div>
				
				<div class="clearfix"> </div>
			</div>
			<!-- //about-bottom-grid-->
	</div>
	<!-- //about -->
	<!--services-->
	<div class="w3ls-section services">
		<div class="container">
			<div class="services-left">
				<h4 class="title">online banking</h4>
				<h5>any time,anywhere.</h5>
				<p class="data">Enim nim pariatur cliche reprehen chardson ad sqderit ad sveprehed sectetur adipiscing elit iatur clic.</p>
				<div class="more">
					<a href="#" data-toggle="modal" data-target="#myModal"> Read More</a>
				</div>
			</div>
			<div class="services-right">
				<div class="services-grid">
					<div class="col-md-2 col-sm-2 col-xs-2 sr-icon">
						<span class="fa fa-lock" aria-hidden="true"></span>
					</div>	
					<div class="col-md-10 col-sm-10 col-xs-10 sr-txt">
						<h5>safe & secure</h5>
						<p>Itaque earum rerum hic a sapiente delectus</p>
					</div>	
					<div class="clearfix"></div>
				</div>
				<div class="services-grid">
					<div class="col-md-2 col-sm-2 col-xs-2 sr-icon">
						<span class="fa fa-clock-o" aria-hidden="true"></span>
					</div>	
					<div class="col-md-10 col-sm-10 col-xs-10 sr-txt">
						<h5>save time</h5>
						<p>Itaque earum rerum hic a sapiente delectus</p>
					</div>	
					<div class="clearfix"></div>
				</div>
				<div class="services-grid">
					<div class="col-md-2 col-sm-2 col-xs-2 sr-icon">
						<span class="fa fa-gg" aria-hidden="true"></span>
					</div>	
					<div class="col-md-10 col-sm-10 col-xs-10 sr-txt">	
						<h5>transfer money</h5>
						<p>Itaque earum rerum hic a sapiente delectus</p>
					</div>
					<div class="clearfix"></div>
				</div>	
				<div class="services-grid">
					<div class="col-md-2 col-sm-2 col-xs-2 sr-icon">
						<span class="fa fa-credit-card-alt" aria-hidden="true"></span>
					</div>	
					<div class="col-md-10 col-sm-10 col-xs-10 sr-txt">	
						<h5>pay bills</h5>
						<p>Itaque earum rerum hic a sapiente delectus</p>
					</div>	
					<div class="clearfix"> </div>
				</div>
				<div class="services-grid">
					<div class="col-md-2 col-sm-2 col-xs-2 sr-icon">
						<span class="fa fa-shopping-cart" aria-hidden="true"></span>
					</div>	
					<div class="col-md-10 col-sm-10 col-xs-10 sr-txt">
						<h5>Shop Online</h5>
						<p>Itaque earum rerum hic a sapiente delectus</p>
					</div>	
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//services-->
	<!-- testimonials -->
<div class="testimonials w3ls-section" id="testimonials">
	<div class="container"> 
		<h3 class="h3-w3l">Testimonials</h3>
		<div class="agile_testimonials_grids">
			<div class="col-md-6 col-sm-6 agile_testimonials_grid">
				<div class="agile_testimonials_grid1">
					<div class="w3_agile_testimonials_grid_right test-tooltip">
					   <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et 
						malesuada fames ac turpis egestas.Sed lorem enim, rutrum quis diam nec.</p>
					</div>
					<div class="w3_agile_testimonials_grid">
						<div class="w3_agile_testimonials_grid_left">
							<div class="col-md-3 col-sm-3 col-xs-3 w3l-testi-img">
								<img src="images/13.jpg" alt=" " class="img-responsive"/>
							</div>	
							<div class="col-md-9 col-sm-9 col-xs-9 w3l-testi-txt">
								<h4>Tyson</h4>
								<p>fames ac turpis</p>
							</div>	
							<div class="clearfix"> </div>
						</div>
					</div>
					
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6 agile_testimonials_grid">
				<div class="agile_testimonials_grid1">
					<div class="w3_agile_testimonials_grid_right test-tooltip">
						 <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et 
						malesuada fames ac turpis egestas.Sed lorem enim, rutrum quis diam nec.</p>
					</div>
					<div class="w3_agile_testimonials_grid">
						<div class="w3_agile_testimonials_grid_left">
							<div class="col-md-3 col-sm-3 col-xs-3 w3l-testi-img">
								<img src="images/10.jpg" alt=" " class="img-responsive"/>
							</div>	
							<div class="col-md-9 col-sm-9 col-xs-9 w3l-testi-txt">
								<h4>Alejandra</h4>
								<p>fames ac turpis</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6 agile_testimonials_grid">
				<div class="agile_testimonials_grid1">
					<div class="w3_agile_testimonials_grid_right test-tooltip">
					   <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et 
						malesuada fames ac turpis egestas.Sed lorem enim, rutrum quis diam nec.</p>
					</div>
					<div class="w3_agile_testimonials_grid">
						<div class="w3_agile_testimonials_grid_left">
							<div class="col-md-3 col-sm-3 col-xs-3 w3l-testi-img">
								<img src="images/11.jpg" alt=" " class="img-responsive"/>
							</div>	
							<div class="col-md-9 col-sm-9 col-xs-9 w3l-testi-txt">
								<h4>Charles</h4>
								<p>fames ac turpis</p>
							</div>	
							<div class="clearfix"> </div>
						</div>
					</div>					
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6 agile_testimonials_grid">
				<div class="agile_testimonials_grid1">
					<div class="w3_agile_testimonials_grid_right test-tooltip">
					   <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et 
						malesuada fames ac turpis egestas.Sed lorem enim, rutrum quis diam nec.</p>
					</div>
					<div class="w3_agile_testimonials_grid">
						<div class="w3_agile_testimonials_grid_left">
							<div class="col-md-3 col-sm-3 col-xs-3 w3l-testi-img">
								<img src="images/12.jpg" alt=" " class="img-responsive" />
							</div>
							<div class="col-md-9 col-sm-9 col-xs-9 w3l-testi-txt">
								<h4>Jessie</h4>
								<p>fames ac turpis</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //testimonials -->
<!--footer-->
<div class="agile-footer w3ls-section">
	<div class="container">
		<div class="col-md-7 list-footer">
		  <ul class="footer-nav">
				<li><a  href="index.jsp">Home</a></li>
				<li><a  href="about.jsp">About</a></li>
				<li><a  href="services.jsp">Services</a></li>
				<li><a href="gallery.jsp">Gallery</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
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
	
	</div>
<!--//footer-->	

	<!-- modal-sign -->
	<div class="modal bnr-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<img src="images/logo.png" alt="logo"/>
				</div>
				<div class="modal-body">
					<img src="images/modal.jpg" class="img-responsive" alt="image">
					<p>Fusce et congue nibh, ut ullamcorper magna. Donec ac massa tincidunt, fringilla sapien vel, tempus massa. Vestibulum felis leo, tincidunt sit amet tristique accumsan. In vitae dapibus metus. Donec nec massa non nulla mattis aliquam egestas et mi.</p>
				</div>
			</div>
		</div>

		</div>
	</div>
	<!-- modal-sign -->
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
	<!-- //modal-sign -->    
	<!-- //banner -->
		<!-- //banner-text -->  
	<!-- //banner -->
	<!-- banner Slider starts Here -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 3
		  $("#slider3").responsiveSlides({
			auto:true,
			pager:false,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
	
		});
	</script>
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