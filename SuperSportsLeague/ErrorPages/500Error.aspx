﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="500Error.aspx.cs" Inherits="SuperSportsLeague.ErrorPages._500Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html;charset=utf-8"  />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />

    <title>500 - Internal Server Error</title>

    <link href="/css/errorPages.css" rel="stylesheet" />
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <script src="/js/jquery.min.js"></script>
    <script src="/js/wordsearch-resize.js"></script>


</head>
<body>


    
    	
	<!-- FAVICON -->
<%--	<link rel="shortcut icon" href="/path/to/favicon.gif">--%>
	
	<script type="text/javascript">
	$(function() {
		/* 5 */ $(this).delay(1500).queue(function(){ $( ".one" ).addClass("selected"); $(this).dequeue(); });
		/* 0 */ $(this).delay(500).queue(function(){ $( ".two" ).addClass("selected"); $(this).dequeue(); });
		/* 0 */ $(this).delay(500).queue(function(){ $( ".three" ).addClass("selected"); $(this).dequeue(); });
		
		/* S */ $(this).delay(500).queue(function(){ $( ".four" ).addClass("selected"); $(this).dequeue(); });
		/* E */ $(this).delay(500).queue(function(){ $( ".five" ).addClass("selected"); $(this).dequeue(); });
		/* R */ $(this).delay(500).queue(function(){ $( ".six" ).addClass("selected"); $(this).dequeue(); });
		/* V */ $(this).delay(500).queue(function(){ $( ".seven" ).addClass("selected"); $(this).dequeue(); });
		/* E */ $(this).delay(500).queue(function(){ $( ".eight" ).addClass("selected"); $(this).dequeue(); });
		/* R */ $(this).delay(500).queue(function(){ $( ".nine" ).addClass("selected"); $(this).dequeue(); });
		
		/* E */ $(this).delay(500).queue(function(){ $( ".ten" ).addClass("selected"); $(this).dequeue(); });
		/* R */ $(this).delay(500).queue(function(){ $( ".eleven" ).addClass("selected"); $(this).dequeue(); });
		/* R */ $(this).delay(500).queue(function(){ $( ".twelve" ).addClass("selected"); $(this).dequeue(); });
		/* O */ $(this).delay(500).queue(function(){ $( ".thirteen" ).addClass("selected"); $(this).dequeue(); });
		/* R */ $(this).delay(500).queue(function(){ $( ".fourteen" ).addClass("selected"); $(this).dequeue(); });
		
		
		
	});
	</script>

<div id="wrap">

	<!-- === WORDSEARCH === -->
	<div id="wordsearch">
	<ul>
		<li>E</li>
		<li>W</li>
		<li>U</li>
		<li>G</li>
		<li>T</li>
		<li>N</li>
		<li>O</li>
		<li>X</li>
		<li>P</li>
		<li>B</li>
		<li>E</li>
		<li>Q</li>
		<li class="one">5</li>
		<li class="two">0</li>
		<li class="three">0</li>
		<li>V</li>
		<li>J</li>
		<li>T</li>
		<li>W</li>
		<li>A</li>
		<li>C</li>
		<li>Z</li>
		<li>X</li>
		<li>K</li>
		<li>P</li>
		<li class="four">s</li>
		<li class="five">e</li>
		<li class="six">r</li>
		<li class="seven">v</li>
		<li class="eight">e</li>
		<li class="nine">r</li>
		<li>G</li>
		<li>S</li>
		<li>D</li>
		<li>Y</li>
		<li>I</li>
		<li>W</li>
		<li>R</li>
		<li>N</li>
		<li>C</li>
		<li>M</li>
		<li class="ten">e</li>
		<li class="eleven">r</li>
		<li class="twelve">r</li>
		<li class="thirteen">o</li>
		<li class="fourteen">r</li>
		<li>O</li>
		<li>Z</li>
		<li>S</li>
		<li>L</li>
		<li>P</li>
		<li>Q</li>
		<li>R</li>
		<li>T</li>
		<li>B</li>
		<li>J</li>
		<li>I</li>
		<li>E</li>
		<li>Q</li>
		<li>G</li>
		<li>U</li>
		<li>V</li>
		<li>C</li>
		<li>X</li>
	</ul>
	</div>
	
	<!-- === MAIN TEXT CONTENT === -->
	<div id="main-content">
		<h1>Something went wrong at our end. Sorry about that.</h1>
		<p>Unfortunately our servers are having trouble loading this page. Don't worry, it's not you - it's us. An unexpected condition was encountered and we're not exactly sure what the problem is.</p>
		<p>Try reloading this page and check the URL you entered for any mistakes. Alternatively, search for whatever is missing or take a look around the rest of our site.</p>
		
		<!-- === SEARCH FORM === -->
		<div id="search">
			<form id="form1" runat="server">
				<input type="text" placeholder="Search" />
				<button type="submit" class="input-search">
                	<i class="fa fa-search"></i>
            	</button>
			</form>
		</div>
		
		<!-- === NAVIGATION BUTTONS === -->
		<div id="navigation">
			<a class="navigation" href="#">Home</a>
			<a class="navigation" href="#">About Us</a>
			<a class="navigation" href="#">Site Map</a>
			<a class="navigation" href="#">Contact</a>
		</div>
		

	</div>

</div>

</body>
</html>
