<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SuperSportsLeague.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<title>Super Sports League</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="sports" content="sports league" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.poptrox.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
		</noscript>
            <link href="css/styleSSL.css" rel="stylesheet" />
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body>

		<!-- Header -->
			<header id="header">

				<!-- Logo -->
					<!--<h1 id="logo"><a href="#">Big Picture</a></h1> -->
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="#intro">Home</a></li>
                            <li><a href="#about">About Us</a></li>
							<li><a href="#one">Hardball</a></li>
							<li><a href="#two">Football</a></li>
                            <li><a href="#three">Basketball</a></li>
							<li><a href="#contact">Contact</a></li>
						</ul>
					</nav>

			</header>
			
		<!-- Intro -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content container small">
					<footer class="customFooter">
						<a href="#about" class="button style2 down">More</a>
					</footer>
				</div>
			</section>
		
		<!-- About -->
			<section id="about" class="main style2 right dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>About Us</h2>
					</header>
					<p>The SUPER SPORTS LEAGUE is the most dynamic sports league in the world. 
                        Professional athletes participating in Unlimited Arc Hardball, Flag Football and Basketball.   
                        This three pronged sports competition will have one Champion for each sport with an overall 
                        Champion being determined/crowned by a lowest to highest accumulated score.  
                        To win the overall championship, teams much participate in all three sports.</p>
                    <br />
                    <p>15 competitors will be placed on each roster with a maximum of twelve active for participation. If a player is injured he will be replaced by a reserve from the three non-roster spots.</p>
				</div>
				<a href="#one" class="button style2 down anchored">Next</a>
			</section>
        
        <!-- Hardball / one -->
			<section id="one" class="main style2 right dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>Hardball</h2>
					</header>
					<p>40 softball games to be played doubleheader, style 3 times per week followed by 3 weeks of playoffs.</p>
				</div>
				<a href="#two" class="button style2 down anchored">Next</a>
			</section>
		
		<!-- Football / two -->
			<section id="two" class="main style2 left dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>Football</h2>
					</header>
					<p>18 Football games of 8 on 8, requiring some players to play Iron Man.</p>
				</div>
				<a href="#three" class="button style2 down anchored">Next</a>
			</section>


        <!-- basketball / Three -->
			<section id="three" class="main style2 right dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>Basketball</h2>
					</header>
					<p>40 Basketball games to wind down the season series after the grueling first two legs are completed.</p>
				</div>
				<a href="#contact" class="button style2 down anchored">Next</a>
			</section>
			
		<!-- Work -->
			
			
		<!-- Contact -->
			<section id="contact" class="main style3 secondary">
				<div class="content container">
					<header>
						<h2>Get in touch</h2>
						<p>Fill out this form and we'll get in touch with you ASAP!</p>
					</header>
					<div class="box container small">
							<form id="form1" runat="server">
								<div class="row half">
                                    <div class="6u"><asp:TextBox ID="txtName" placeholder="Name" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" CssClass="errorValidation" ErrorMessage="Name is required" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator></div>
                                    
									<div class="6u"><asp:TextBox ID="txtEmail" placeholder="Email" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" CssClass="errorValidation" ErrorMessage="Email is required" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="txtEmail" CssClass="errorValidation" Display="Dynamic" ValidationExpression="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$"></asp:RegularExpressionValidator>
									</div>
								</div>
								<div class="row half">
									<div class="12u">
                                        <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server" placeholder="Message(max 1000 characters)"></asp:TextBox>
									</div>
								</div>
								<div class="row">
									<div class="12u">
										<ul class="actions">
                                            <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Send Message" OnClick="btnSubmit_Click" />
                                            <asp:Button ID="btnClear" runat="server" CssClass="button" Text="Clear Form" CausesValidation="false" OnClick="btnClear_Click" />
										</ul>
									</div>
								</div>
							</form>

					</div>
				</div>
			</section>
			
		<!-- Footer -->
			<footer id="footer">
			
				<!--
				     Social Icons
				     
				     Use anything from here: http://fortawesome.github.io/Font-Awesome/cheatsheet/)
				-->
					<ul class="actions">
						<li><a href="#" class="fa solo fa-twitter"><span>Twitter</span></a></li>
						<li><a href="#" class="fa solo fa-facebook"><span>Facebook</span></a></li>
					</ul>

				<!-- Menu -->
					<ul class="menu">
						<li>&copy; Super Sports League</li>
                        <li><asp:HyperLink ID="hyperLinks" NavigateUrl="~/LogIn.aspx" runat="server">Admin</asp:HyperLink></li>		
					</ul>		
			</footer>
	</body>
</html>
