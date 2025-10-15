<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RaviPage2.aspx.cs" Inherits="IREL.RaviPage2" %>


<!doctype html>
<html lang="en">
<head>
    <title>PruTech - Advanced technology solutions for complex business needs</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="App_Themes/Ravi21.css" rel="stylesheet">
    <link rel="icon" href="">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <!-- PruTech CSS -->

    <link rel="stylesheet" href="/assets/css/styles-prutech.css">
    <link rel="stylesheet" href="/assets/css/styles-nav.css">
    <link rel="stylesheet" href="/assets/icon-font/css/styles.min.css">
    <link rel="stylesheet" href="/assets/css/blogstyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-114914018-1"></script>
    <script src="https://kit.fontawesome.com/669a6623a9.js" crossorigin="anonymous"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-114914018-1');
    </script>

</head>

<body>
    <nav class="navbar navbar-expand-md navbar-light bg-white fixed-top" id="global-nav">
        <div class="col">
            <a class="navbar-brand" href="/">PruTech</a>
        </div>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse col-12 col-md-9" id="navbarNavDropdown">
            <ul class="navbar-nav justify-content-center col-8 nav--main">
                <li>
                    <a class="nav-link" href="/about">About</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">SOFTWARE SOLUTIONS</a><!--/services/software-solutions.php-->
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="/services/custom-software-development.php">CUSTOM SOFTWARE DEVELOPMENT </a>
                                    <!--<ul class="dropdown-menu">
							  <li><a class="dropdown-item" href="#">Solutions Strategy & Planning</a></li>
							  <li><a class="dropdown-item" href="#">Solutions Design & Development</a></li>
							  <li><a class="dropdown-item" href="#">Systems Integrations</a></li>
							  <li><a class="dropdown-item" href="#">DevOps & Automation</a></li>
							</ul>-->
                                </li>
                                <li><a class="dropdown-item" href="/services/mobile-application-development.php">MOBILE APPLICATION DEVELOPMENT</a></li>
                                <li><a class="dropdown-item" href="/services/website-development.php">WEBSITE DEVELOPMENT</a></li>
                                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="/services/software-and-system-implementation.php">SOFTWARE and SYSTEM IMPLEMENTATION </a>
                                    <!--<ul class="dropdown-menu">
							  <li><a class="dropdown-item" href="#">Case Management</a></li>
							  <li><a class="dropdown-item" href="#">Content Management System</a></li>
							  <li><a class="dropdown-item" href="#">CRM </a></li>
							  <li><a class="dropdown-item" href="#">ERP</a></li>
							  <li><a class="dropdown-item" href="#">IT Service Management</a></li>
							  <li><a class="dropdown-item" href="#">Financial Services – OFSAA</a></li>
							</ul>-->
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">PRODUCTS AND INNOVATIONS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/services/insightr360.php">INSIGHTR 360</a></li>
                                <li><a class="dropdown-item" href="/services/muni-id.php">MUNICIPAL ID</a></li>

                            </ul>
                        </li>
                        <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="/services/digital-solutions.php">DIGITAL SOLUTIONS</a>
                            <!--<ul class="dropdown-menu">
						  <li><a class="dropdown-item" href="#">ECOMMERCE</a></li>
						  <li><a class="dropdown-item" href="#">VOICE ENABLED SOLUTIONS (IOT)</a></li>
						  <li><a class="dropdown-item" href="#">DIGITAL MARKETING</a></li>
						  <li><a class="dropdown-item" href="#">DIGITAL TRANSFORMATION</a></li>
						</ul>-->
                        </li>
                        <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="/services/big-data-and-analytics.php">BIG DATA & ANALYTICS </a>
                            <!--<ul class="dropdown-menu">
						  <li><a class="dropdown-item" href="#">DATA ENGINEERING & BIG DATA CONSULTING</a></li>
						  <li><a class="dropdown-item" href="#">BIG DATA MANAGED SERVICES </a></li>
						  <li><a class="dropdown-item" href="#">DATA QUALITY AND DATA GOVERNANCE</a></li>
						  <li><a class="dropdown-item" href="#">MACHINE LEARNING, TEXT ANALYTICS & AI</a></li>
						  <li><a class="dropdown-item" href="#">REPORTING, DATA VISUALIZATION AND BI</a></li>
						  
						</ul>-->
                        </li>
                        <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">CONSULTING SERVICES</a><!--/services/consulting-services.php-->
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="/services/security-technologies.php">SECURITY TECHNOLOGIES </a>
                                    <!--<ul class="dropdown-menu">
							  <li><a class="dropdown-item" href="#">Data Security</a></li>
							  <li><a class="dropdown-item" href="#">Platform Security</a></li>
							  <li><a class="dropdown-item" href="#">Cloud Security</a></li>
							  <li><a class="dropdown-item" href="#">Data Lake Security</a></li>
							  <li><a class="dropdown-item" href="#">IOT Security</a></li>
							</ul>-->
                                </li>
                                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="/services/infrastructure-support-services.php">INFRASTRUCTURE SUPPORT SERVICES </a>
                                    <!--<ul class="dropdown-menu">
							  <li><a class="dropdown-item" href="#">Network Support</a></li>
							  <li><a class="dropdown-item" href="#">Cloud Migration Solutions</a></li>
							  <li><a class="dropdown-item" href="#">Data Center Planning</a></li>
							</ul>-->
                                </li>
                                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="/services/strategic-staffing.php">STRATEGIC STAFFING </a>
                                    <!--<ul class="dropdown-menu">
							  <li><a class="dropdown-item" href="#">Temporary Staffing</a></li>
							  <li><a class="dropdown-item" href="#">Contract-to-Hire</a></li>
							  <li><a class="dropdown-item" href="#">Permanent Staffing</a></li>
							  <li><a class="dropdown-item" href="#">On/Off-site Staffing</a></li>
							</ul>-->
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="/services/nearshore-and-offshore-services.php">NEARSHORE AND OFFSHORE SERVICES</a>
                            <!--<ul class="dropdown-menu">
						  <li><a class="dropdown-item" href="#">SOFTWARE DEVELOPMENT</a></li>
						  <li><a class="dropdown-item" href="#">PRODUCTION SUPPORT</a></li>
						  <li><a class="dropdown-item" href="#">QUALITY ASSURANCE</a></li>
						  <li><a class="dropdown-item" href="#">STAFFING </a></li>
						  
						</ul>-->
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="A1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Experience
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/experience/financial.php">Financial</a></li>
                        <li><a class="dropdown-item" href="/experience/government.php">Government</a></li>
                        <li><a class="dropdown-item" href="/experience/pharmaceutical.php">Pharmaceutical</a></li>
                        <li><a class="dropdown-item" href="/experience/retail.php">Retail</a></li>
                        <li><a class="dropdown-item" href="/experience/technology-telecom.php">Technology &amp; Telecom</a></li>
                        <li><a class="dropdown-item" href="/experience/utilities-energy.php">Utilities &amp; Energy</a></li>
                    </ul>
                </li>
                <!--<li>
					<a class="nav-link" href="/webinars">Webinars</a>						
				</li>
				<li>
					<a class="nav-link" href="/blog">BLOG</a>						
				</li>-->
                <li>
                    <a class="nav-link" href="/people">People</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/people/careers.php">Careers</a>
                </li>
            </ul>

            <ul class="navbar-nav justify-content-end col nav--sub">
                <li class="nav-item">
                    <a class="nav-link" href="/about/contact.php">Contact</a>
                </li>
            </ul>
        </div>

    </nav>

    <div id="home-carousel" class="carousel slide d-none d-md-block" data-ride="carousel" data-interval="6000">
        <ol class="carousel-indicators">
            <li data-target="#home-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#home-carousel" data-slide-to="1"></li>
            <li data-target="#home-carousel" data-slide-to="2"></li>
            <li data-target="#home-carousel" data-slide-to="3"></li>
        </ol>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/assets/images/home-slide01.jpg" alt="Financial Risk Management Applications">
                <div class="carousel-caption hilite dark">
                    <h3>Financial Risk Management Applications</h3>
                    <p class="d-none d-lg-block">PruTech's IT solutions give our customers vital information about their risk status, so they can plan effective performance management strategies to improve their organizational goals.</p>
                    <a href="/experience/financial.php" class="link--learn-more">Learn More About Our Financial Solutions</a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/assets/images/home-slide02.jpg" alt="Government Case Management Systems">
                <div class="carousel-caption callout dark">
                    <h3>Government Case Management Systems</h3>
                    <p class="d-none d-lg-block">PruTech's Government management systems provide essential public services for the people they serve. Our Case Management Systems manage their business processes more efficiently using mobile and web app solutions.</p>
                    <a href="/experience/government.php" class="link--learn-more">Learn More About Our Government Solutions</a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/assets/images/home-slide03.jpg" alt="Making Financial Big Data Accessible">
                <div class="carousel-caption hilite dark">
                    <h3>Making Financial Big Data Analytics Accessible</h3>
                    <p class="d-none d-lg-block">
                        PruTech's customers are implementing big data analysis technologies to maintain regulatory compliance, reduce fraud, and improve customer intelligence.
 Our solutions help organize and analyze the data to drive business performance.
                    </p>
                    <a href="/experience/financial.php" class="link--learn-more">Learn More About Our Financial Solutions </a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/assets/images/home-slide04.jpg" alt="Our People">
                <div class="carousel-caption callout dark">
                    <h3>Our People</h3>
                    <p class="d-none d-lg-block">PruTech's dedicated teams provide domain expertise and unparalleled knowledge, allowing us to solve our customers’ needs utilizing the latest advancements in technology like nearshore or otherwise.</p>
                    <a href="/people/index.php" class="link--learn-more">Learn More About Joining PruTech Solutions</a>
                </div>
            </div>
        </div>
    </div>

    <main>
		<div class="featurette grey text-center">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-10 col-lg-8 pbs">
						<h2>Our Services</h2>
						<p>With over 20 years of <strong>Information Technologies</strong> consulting and development experience, PruTech Solutions provides multiple ways to assist organizations with future technology requirements. PruTech has the experience to help architect, design, develop and deliver any technical solution your organization requires. In order to fulfill those requirements, we use a wide set of services like <strong>big data analytics, cloud solutions architecture, various network services types, staffing solutions and nearshore</strong> among others.</p>
					</div>
				</div>
			
				<div class="row block-info">
					<div class="col-6 col-lg-3">
						<a href="/services/custom-development.php" class="brick" style="height: 100%; width: 100%; visibility: visible; opacity: 1; transition: top 0.5s, left 0.5s, width 0.5s, height 0.5s, opacity 0.5s;" data-delay="1" data-state="move">
							<img src="/assets/images/block-services01.jpg" width="100%" height="100%" class="p-img">
							<span class="overlay-head">
								<h3>Custom Development</h3>
							</span>
							<span class="overlay-container">
								<span class="overlay">
                        	<div class="info">
                            	<h3>Custom Development</h3>
										<ul class="list-unstyled d-none d-sm-block">
											<li>Technical Strategy</li>
											<li>Software Design</li>
											<li>Solution Development</li>
											<li>Mobile Applications</li>
											<li>System Integration</li>
											<li>Quality Assurance</li>
										</ul>
									</div>                           
								</span>
							</span>
						</a>				
					</div>
					<div class="col-6 col-lg-3">
						<a href="/services/software-implementation.php" class="brick" style="height: 100%; width: 100%; visibility: visible; opacity: 1; transition: top 0.5s, left 0.5s, width 0.5s, height 0.5s, opacity 0.5s;" data-delay="1" data-state="move">
							<img src="/assets/images/block-services02.jpg" width="100%" height="100%" class="p-img">
							<span class="overlay-head">
								<h3>Software Implementation</h3>
							</span>
							<span class="overlay-container">
								<span class="overlay">
                        	<div class="info">
                            	<h3>Software Implementation</h3>
										<ul class="list-unstyled d-none d-sm-block">
											<li>Case Management</li>
											<li>Content Management</li>
											<li>CRM</li>
											<li>Ecommerce</li>
											<li>ERP</li>
											<li>Enterprise Search</li>	
											<li>IT Service Management</li>
										</ul>
									</div>                           
								</span>
							</span>
						</a>
					</div>

					<div class="col-6 col-lg-3">
						<a href="/services/consulting-services.php" class="brick" style="height: 100%; width: 100%; visibility: visible; opacity: 1; transition: top 0.5s, left 0.5s, width 0.5s, height 0.5s, opacity 0.5s;" data-delay="1" data-state="move">
							<img src="/assets/images/block-services03.jpg" width="100%" height="100%" class="p-img">
							<span class="overlay-head">
								<h3>Consulting Services</h3>
							</span>
							<span class="overlay-container">
								<span class="overlay">
                        	<div class="info">
                            	<h3>Consulting Services</h3>
										<ul class="list-unstyled d-none d-sm-block">
											<li>BI &amp; Analytics</li>
											<li>Data / Big Data</li>
											<li>Cloud Solutions</li>
											<li>Network Services</li>
											<li>Municipal ID Solutions</li>
										</ul>
									</div>
								</span>
							</span>
						</a>
					</div>					
					<div class="col-6 col-lg-3">
						<a href="/services/staffing-solutions.php" class="brick" style="height: 100%; width: 100%; visibility: visible; opacity: 1; transition: top 0.5s, left 0.5s, width 0.5s, height 0.5s, opacity 0.5s;" data-delay="1" data-state="move">
							<img src="/assets/images/block-services04.jpg" width="100%" height="100%" class="p-img">
							<span class="overlay-head">
								<h3>Staffing Solutions</h3>
							</span>
							<span class="overlay-container">
								<span class="overlay">
                        	<div class="info">
                            	<h3>Staffing Solutions</h3>
										<ul class="list-unstyled d-none d-sm-block">
											<li>Temporary Staffing</li>
											<li>Contract-to-Hire</li>
											<li>Permanent Staffing</li>
											<li>On-Site / Off-Site</li>
											<li>Off-Shore Resources</li>
										</ul>
									</div>                           
								</span>
							</span>
						</a>
					</div>
				</div><!-- /.row -->      
			</div><!-- /.container -->
		</div><!-- /.featurette -->	
		
				<div class="featurette dark img-bg" style="min-height: 300px;background-image: url('/assets/images/feature-contact.jpg');">
			<div class="container">
				<div class="row justify-content-between ptl">
					<div class="col-md-5">
					<h3>Get a Free Consultation</h3>
					<p class="lead">Contact us for a free consultation for all your IT solutions needs.</p>
					</div>
					<div class="col-md-5">
					<!--<p class="lead">Call: (732) 404 1600</p>-->
                        <p class="lead">Call: (862) 239-4473</p>
					<p class="lead">Email: info@prutech.com</p>
					</div>
				</div><!-- /.row -->      
			</div><!-- /.container -->
		</div><!-- /.featurette -->
				

		<div class="featurette white text-center">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-sm-10 col-lg-8">
						<h2>Our Experience</h2>
						<p>Since 1998, we have been working with clients from many different industries, helping them solve complex business needs through creative, intuitive and advance technology solutions.</p>
					</div>
				</div>
				
								<div class="row icon-info">
					<div class="col-sm-6 col-md-4">
						<section>
							<a href="/experience/financial.php" title="Financial"><i class="icons8-stocks"></i></a>
							<h3><a href="/experience/financial.php">Financial</a></h3>
							<p>PruTech Solutions has many years of experience working in the financial industry and capital markets implementing different solutions from risk management to big data solutions.<br><a href="/experience/financial.php">Financial Experience</a></p>
						</section>
					</div>
					<div class="col-sm-6 col-md-4">
						<section>
							<a href="/experience/government.php" title="Government"><i class="icons8-us-capitol"></i></a>		
							<h3><a href="/experience/government.php">Government</a></h3>
							<p>Successful government projects start with the right partner. PruTech Solutions understands government departments have unique challenges that require tailor-made technology solutions to solve.<br><a href="/experience/government.php">Government Experience</a></p>						
						</section>
					</div>
					
					<div class="col-sm-6 col-md-4">
						<section>
							<a href="/experience/pharmaceutical.php" title="Pharmaceutical"><i class="icons8-bag-with-a-plus-sign"></i></a>
							<h3><a href="/experience/pharmaceutical.php">Pharmaceutical</a></h3>
							<p>Our team can assist your organization with the strategy, technical design and implementation of solutions that can manage regulatory compliance, business intelligence and supplier / customer management.<br><a href="/experience/pharmaceutical.php">Pharmaceutical Experience</a></p>
						</section>
					</div>									
					<div class="col-sm-6 col-md-4">
						<section>
							<a href="/experience/retail.php" title="Retail"><i class="icons8-pricing"></i></a>
							<h3><a href="/experience/retail.php">Retail</a></h3>
							<p>Whether you need a new CRM solution, eCommerce / Website implementation or data warehouse expertise, PruTech can work with large or small B2B and B2C retail organizations to help them better understand and sell to their customers.<br><a href="/experience/retail.php">Retail Experience</a></p>
						</section>
					</div>
					<div class="col-sm-6 col-md-4">
						<section>
							<a href="/experience/technology-telecom.php" title="Technology & Telecom"><i class="icons8-cell-tower"></i></a>
							<h3><a href="/experience/technology-telecom.php">Technology &amp; Telecom</a></h3>
							<p>PruTech implements various technical solutions for our technology and telecom clients, including websites, mobile applications, system integrations, cloud computing and many other services to help our clients manage, market and achieve growth.<br><a href="/experience/technology-telecom.php">Technology &amp; Telecom Experience</a></p>
						</section>
					</div>
					<div class="col-sm-6 col-md-4">
						<section>
							<a href="/experience/utilities-energy.php" title="Utilities & Energy"><i class="icons8-light-bulb-outline"></i></a>
							<h3><a href="/experience/utilities-energy.php">Utilities &amp; Energy</a></h3>
							<p>PruTech designs and develop custom mobile applications, enterprise system applications and connected digital experiences to meet the needs of our utility and energy clients.<br><a href="/experience/utilities-energy.php">Utilities &amp; Energy Experience</a></p>
						</section>
					</div>
				</div><!-- /.row -->				      
			</div><!-- /.container -->
		</div><!-- /.featurette -->

		<div class="featurette split dark">			
			<div class="row">
				<div class="col-md-6 hilite ptl pbl">
					<div class="row justify-content-center">
						<div class="col-10 text-justify">
							<h2 class="text-center">Our Company</h2>
							<p>In 1998, PruTech Solutions started operations with the simple vision of providing "Prudent Technology Solutions" for organizations looking to blend their business with IT innovations and inventions. Since inception, our minority-owned and operated business has successfully worked with entities in the government and private sectors to help them realize their strategic business goals.</p>
							<p>PruTech meets our clients' needs by providing domain expertise and unparalleled knowledge combined with years of industry experience. We partner with our clients to provide them quality of services and cost savings to enable success in their respective industries.</p>
							<p class="text-center"><a href="/about/index.php" class="link--learn-more">Learn More About PruTech</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 img-bg" style="background-image: url('/assets/images/feature-split_company.jpg');"></div>				     
			</div><!-- /.row --> 
		</div><!-- /.featurette -->

		<div class="featurette split text-center">
			<div class="row">
				<div class="col-md-6 img-bg d-none d-md-block" style="background-image: url('/assets/images/feature-split_people.jpg');"></div>
				<div class="col-md-6 white ptl pbl">
					<div class="row justify-content-center">
						<div class="col-10 text-justify">
							<h2>Our People</h2>
							<p>We are family &ndash; due to the respect and admiration we have for each other.</p>						
							<ul class="bullets">
								<li>We take pride in solving our clients' business challenges with passion.</li>
								<li>We are technology geeks &ndash; it is what we do and have been doing for years.</li>
								<li>We love the diversity of our organization and the different cultures that everyone brings to the table.</li>
								<li>We aspire to bring joy to the workplace.</li>
								<li>We continually strive to bring value to our clients and our company.</li>
							</ul>						
							<p><a href="/people/index.php" class="link--learn-more">Learn More About our People</a></p>
						</div>
					</div>
				</div>				
			</div><!-- /.row -->
		</div><!-- /.featurette -->
		
		<div class="featurette split text-center" style="padding:0;">
			<div class="row">
				<div class="col-md-6 callout dark ptl pbl">
					<div class="row justify-content-center">
						<div class="col-10 text-justify">
							<h2>Join Our Growing Team</h2>
							<p>PruTech prides itself in engaging with people who approach their work with innovation and passion. As an organization, we are dedicated to building a team of motivated and intelligent employees from all over the world.</p>					
							<p class="ptm"><a href="/people/careers.php" class="link--learn-more">View Our Career Opportunities</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 grey pbs">
					<div class="row justify-content-center icon-info">						
						<div class="col-sm-6 col-md-12 col-lg-6">
							<section>
								<a href="/people/index.php#eoe" title="Equal Opportunity Employer"><i class="icons8-equals"></i></a>		
								<h3><a href="/people/index.php#eoe">Equal Opportunity Employer</a></h3>
								<p>PruTech is an equal opportunity employer.  All qualified applicants and employees receive equal consideration and treatment without regard to race, color, religion, sex, sexual orientation, gender identity, national origin, disability or veteran status.</p>						
							</section>
						</div>
						<div class="col-sm-6 col-md-12 col-lg-6">
							<section>
								<a href="/people/index.php#benefits" title="Health & Wellness Benefits"><i class="icons8-heart-with-pulse"></i></a>		
								<h3><a href="/people/index.php#benefits">Health &amp; Wellness Benefits</a></h3>
								<p>PruTech provides options for medical / dental / vision insurance programs to all our employees, as well as life insurance and disability coverage options.</p>  
							</section>
						</div>
						<div class="col-sm-6 col-md-12 col-lg-6">
							<section>
								<a href="/people/index.php#benefits" title="Retirement Plan Options"><i class="icons8-piggy-bank"></i></a>		
								<h3><a href="/people/index.php#benefits">Retirement Plan Options</a></h3>
								<p>Full-time employees are allowed to contribute to our company sponsored 401 K retirement program.</p>						
							</section>
						</div>
						<div class="col-sm-6 col-md-12 col-lg-6">
							<section class="last">
								<a href="/people/index.php#training" title="Employee Training"><i class="icons8-graduation-cap"></i></a>		
								<h3><a href="/people/index.php#training">Employee Training</a></h3>
								<p>PruTech provides training and certification programs that helps our employees learn specific skills to improve performance in their current roles.</p>			
							</section>
						</div>
					</div><!-- /.row -->
				 </div>
			</div><!-- /.row -->
		</div><!-- /.featurette -->

		<!-- /.featurette -->
<div class="featurette white locations">
		<span class="jump" id="locations"></span>
			<div class="container-fluid">			
				<div class="row justify-content-center pbl">
					<div class="col-sm-10 text-center">
						<h2>Our Locations</h2>						
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3">
						<img src="/assets/images/map-northamerica.png" alt="North America locations" style="width:100%" class="d-none d-md-none d-lg-block">
					</div>
					<div class="col-sm-6 col-md-8 col-lg-4">
						<h3>North America</h3>
						<h4>Corporate Headquarters</h4>
						<h5>New Jersey</h5>
						<p>555 U.S. Highway 1 South<br>
						Suite 230<br>
						Iselin, New Jersey 08830<br>
						(732) 404 1600</p>
						
						<h4>Branch Offices</h4>
						<div class="row">
							<div class="col-md-6">								
								<h5>North Carolina</h5>                                                                                                           
								<p>101 N. Tryon Street<br>
								Suite #609<br>                                       
								Charlotte, North Carolina 28246<br> 
								(704) 233 3143</p> 
                                </div>
                            <div class="col-md-6">
								<h5>New York</h5>                                               
								<p>200 Vesey Street 24th floor<br>
                                    New York, NY, 10281<br>
                                (646) 536 7777</p>							
							</div>
							<div class="col-md-6">
								<h5>Washington, D.C.</h5>
								<p>400 Virginia Ave SW<br>
								Suite 100<br>
								Washington, D.C. 20024<br>
								(202) 800 5100</p>
							</div>
                            <div class="col-md-6">
								<h5>Arizona</h5>
								<p>20 E. Thomas Road<br>
                                Suite 2200<br>
                                Phoenix, Arizona 85012</p>
                             </div>
                            <div class="col-md-6">   
                                <h5>California</h5>
								<p>1390 Market Street<br>
                                Suite 200<br>
                                San Francisco, California 94102</p>
							</div>
                            <div class="col-md-6">
								<h5>Missouri</h5>
								<p>100 South 4th Street<br>
                                Suite 550<br>
                                St. Louis, Missouri 63102</p>
                              </div>
                            <div class="col-md-6">  
                                <h5>Minnesota</h5>
								<p>445 Minnesota Street<br>
                                Suite 1500<br>
                                St. Paul, Minnesota 55101</p>
							</div>
                            <div class="col-md-6">
								<h5>Iowa</h5>
								<p>5550 Wild Rose Lane<br>
                                Suite 400<br>
                                West Des Moines, Iowa 50266</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-2">
						<h3>India</h3>
						<h4>Head Office</h4>
						<h5>Hyderabad</h5>        
						<p>Table Space, 11th floor,<br>
                        Western Aqua, Whitefields, HITEC City,<br> 
                        Kondapur, Telangana 500081, India<br>
						+91-040-4814 4444</p>

						<h4>Branch Office</h4>
						<h5>Bangalore</h5>
						<p>Vatika Business Centre, Suite 19<br>
						Cessna Business Park<br>
						Embassy Signet, 5th Floor<br>
						Kadubeesenahalli, Marathahalli ORR<br>
						Bangalore 560103, India<br>
						+91-80710 55776</p>
                        
						<h3>Mexico</h3>
						<h4>Head Office</h4>
						<h5>Mexico City</h5>        
						<p>Paseo de la Refomra No. 180, Oficina 1228<br>
				        Col. Juárez, C.P. 06600<br> 
				        Del. Cuauhtémoc<br>
				        Ciudad de México<br>
				        +52 (55) 5514 3591</p>

						<h4>Branch Office</h4>
						<h5>Monterrey</h5>
						<p>Av. Roble No.660,<br>
						Col. Valle del Campestre,<br>
						C.P. 66265, Torre Cytrus Piso 3-4<br>
						52(81) 5998 2373</p>
					</div>
					<div class="col-md-3">
						<img src="/assets/images/map-india.png" alt="India locations" style="width:100%" class="d-none d-md-none d-lg-block">
					</div>
				</div>
			</div><!-- /.container-fluid -->				
		</div><!-- /.featurette -->		
	</main>

    <!-- FOOTER -->
    <footer class="site-info text-center">
        <ul class="nav--footer list-unstyled">
            <li><a href="/">Home</a></li>
            <li><a href="/about/index.php">About</a></li>
            <li><a href="/services/index.php">Services</a></li>
            <li><a href="/experience/index.php">Experience</a></li>
            <!-- <li><a href="/case-studies/index.php">Case Studies</a></li> -->
            <li><a href="/people/index.php">People</a></li>
            <li><a href="/people/careers.php">Careers</a></li>
            <li><a href="/about/contact.php">Contact</a></li>
        </ul>
        <a href="../itsac/">
            <img style="margin-bottom: 40px;" width="75" src="../assets/images/DIR_logo_footer.png"></a>
        <p>&copy; 2022 PruTech Solutions, Inc. All rights reserved.</p>
    </footer>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="/assets/js/scripts.js"></script>
    <script type="text/javascript">

        var _ss = _ss || [];

        _ss.push(['_setDomain', 'https://koi-3QNO1RCZAK.marketingautomation.services/net']);

        _ss.push(['_setAccount', 'KOI-4CGUJWY7UW']);

        _ss.push(['_trackPageView']);

        window._pa = window._pa || {};

        // _pa.orderId = "myOrderId"; // OPTIONAL: attach unique conversion identifier to conversions

        // _pa.revenue = "19.99"; // OPTIONAL: attach dynamic purchase values to conversions

        // _pa.productId = "myProductId"; // OPTIONAL: Include product ID for use with dynamic ads

        (function () {

            var ss = document.createElement('script');

            ss.type = 'text/javascript'; ss.async = true;

            ss.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'koi-3QNO1RCZAK.marketingautomation.services/client/ss.js?ver=2.4.0';

            var scr = document.getElementsByTagName('script')[0];

            scr.parentNode.insertBefore(ss, scr);

        })();

    </script>
    <script>
        $('.carousel').carousel()
    </script>
</body>
</html>
