<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>The Fooseshoes Website Template | Blog :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--- start-mmmenu-script---->
<script src="../js/jquery.min.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="../css/jquery.mmenu.all.css" />
<script type="text/javascript" src="../js/jquery.mmenu.js"></script>
		<script type="text/javascript">
			//	The menu on the left
			$(function() {
				$('nav#menu-left').mmenu();
			});
		</script>
<!-- start top_js_button -->
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript" src="../js/move-top.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('jsp,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
<!-- start header -->
<div class="top_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="../index.jsp"><img src="../images/logo.png" alt=""/></a>
		</div>
		 <div class="log_reg">
				<ul>
					
                            <c:choose>
                                <c:when test="${user == null}">
                                    <li><a href="../login.jsp">Login</a> </li>
                                    <span class="log"> or </span>
                                    <li><a href="register.jsp">Register</a> </li>	


                                </c:when>
                                <c:when test="${user != null }">

                                    <li><a href="profile2.jsp">${user.fname}</a> </li>								   
                                    <li><a href="../LogOut">log out</a> </li>	

                                    <div class="clear"></div>
                                </c:when>
                            </c:choose>
				</ul>
		</div>	
		<div class="web_search">
		 	<form>
				<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
				<input type="submit" value=" " />
			</form>
	    </div>						
		<div class="clear"></div>
	</div>	
</div>
</div>
<!-- start header_btm -->
<div class="wrap">
<div class="header_btm">
		<div class="menu">
			<ul>
				<li><a href="../index.jsp">Home</a></li>
				<li><a href="products.jsp">products</a></li>
				<li><a href="about.jsp">about</a></li>
				<li><a href="../index.jsp">pages</a></li>
				<li  class="active"><a href="blog.jsp">blog</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<div id="smart_nav">
			<a class="navicon" href="#menu-left"> </a>
		</div>
		<nav id="menu-left">
			<ul>
				<li><a href="../index.jsp">Home</a></li>
				<li><a href="products.jsp">products</a></li>
				<li><a href="about.jsp">about</a></li>
				<li><a href="../index.jsp">pages</a></li>
				<li><a href="blog.jsp">blog</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<div class="clear"></div>
			</ul>
		</nav>
	<c:choose>
                    <c:when test="${user != null}">

                        <div class="header_right">
                            <ul>
                                <li><a href="my_products.jsp"><i  class="cart"></i><span><c:out value="${sessionScope.cart.getProductses().size()}"></c:out></span></a></li>
                            </ul>
                        </div>

                    </c:when>

                </c:choose>
	<div class="clear"></div>
</div>
</div>
<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h2 class="style">recent blog</h2>
</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">
<div class="project">
		  <div class="cont span_2_of_3">
			<div class="about-left">
				<h3><a href="#">Lorem Ipsum is simply dummy text</a></h3>
			</div>	
				<div class="blog-img"><a href="project.jsp"><img src="../images/blog-img2.jpg" alt=""></a></div>
			     <div class="blog">
					<div class="blogsidebar span_1_of_blog">
					   <ul class="blog-list">
					   	 <li>Posted on<br>January 20, 2014</li>
					   	 <li>Tags<br><a href="#">Website</a>&nbsp; | &nbsp; <a href="#">Design</a></li>
					   	 <li>Comments<br><a href="#">8</a></li>
					   </ul>
				     </div>
					 <div class="cont span_2_of_blog">
					   <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					   <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					 </div>	
					 <div class="clear"></div>			
		         </div>
		         <div class="about-left">
					<h3><a href="#">It is a long established fact that a reader will be distracted</a></h3>
				 </div>	
		         <div class="blog-img1"><a href="project.jsp"><img src="../images/blog-img1.jpg" alt=""></a></div>
		         <div class="blog">
					<div class="blogsidebar span_1_of_blog">
					   <ul class="blog-list">
					   	  <li>Posted on<br>January 20, 2014</li>
					   	  <li>Tags<br><a href="#">Website</a>&nbsp; | &nbsp; <a href="#">Design</a></li>
					   	 <li>Comments<br><a href="#">8</a></li>
					   </ul>
				     </div>
					 <div class="cont span_2_of_blog">
					   <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					   <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					 </div>	
					 <div class="clear"></div>			
		          </div>
		          <div class="about-left">
					<h3><a href="#">There are many variations of passages of Lorem Ipsum available</a></h3>
				 </div>	
		         <div class="blog-img1"><a href="project.jsp"><img src="../images/blog-img.jpg" alt=""></a></div>
		         <div class="blog">
					<div class="blogsidebar span_1_of_blog">
					   <ul class="blog-list">
					   	  <li>Posted on<br><a href="#">January 20, 2014</a></li>
					   	  <li>Tags<br><a href="#">Website</a>&nbsp; | &nbsp; <a href="#">Design</a></li>
					   	  <li>Comments<br><a href="#">8</a></li>
					   </ul>
				     </div>
					 <div class="cont span_2_of_blog">
					   <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					   <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					 </div>	
					 <div class="clear"></div>			
		          </div>
			    
		    </div>
			<div class="rsidebar span_1_of_3">
				<ul class="sidebar">
					<h3>Categories</h3>
		            <li><a href="#">Donec sodales neque vitae dolor tincidunt porttitor.</a></li>
		            <li><a href="#">Integer et tortor ac justo adipiscing bibendum justo.</a></li>
		            <li><a href="#">Etiam in felis vestibulum, lobortis felis luctus tortor.</a></li>
		            <li><a href="#">Donec sodales neque vitae dolor tincidunt porttitor.</a></li>
		            <li><a href="#">Integer et tortor ac justo adipiscing bibendum justo.</a></li>
		            <li><a href="#">Etiam in felis vestibulum, lobortis felis luctus tortor.</a></li>
		         </ul>
		         <div class="archive">
		            <h3>Archive</h3>
		            <ul class="sidebar">
		               <li><a href="#">Feb 2013</a></li>
		               <li><a href="">November 2013</a></li>
		               <li><a href="#">June 2013</a></li>
		               <li><a href="#">November 2013</a></li>
		               <li><a href="#">Feb 2013</a></li>
		               <li><a href="#">Jan 2014</a></li>		                 
		             </ul>
		          </div>
		          <div class="recent-news">
		             <h3>Recent News</h3>
		                <ul class="news">
		                   <li><div class="date">30 <br>Nov</div>
		                   	   <div class="desc"><h4><a href="#">Phasellus a enim venenatis</a></h4><p class="para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonumm</p> </div>
		                   	    <div class="clear"></div>
		                   </li>
		                    <li><div class="date">30 <br>Nov</div>
		                   	   <div class="desc"><h4><a href="#">Vivamus cursus diam sit amet cursus</a></h4><p class="para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonumm</p> </div>
		                   	    <div class="clear"></div>
		                   </li>
		                    <li><div class="date">30 <br>Nov</div>
		                   	   <div class="desc"><h4><a href="#">Phasellus a enim venenatis</a></h4><p class="para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonumm</p> </div>
		                   	    <div class="clear"></div>
		                   </li>
		                </ul>
		          </div>
		          <div class="poll">
		             <h3>Poll</h3>
					 <div class="title">What do you think about us?</div>
					  <div class="progress-grid">
				  	      <div class="percent">
						  	80%
						  </div>
						  <div class="text">Super</div>
						  	<div class="meter red">
								<span style="width:80%;"> </span>
							</div>
							<div class="percent">
							  65%
							</div>
							<div class="text">Good</div>
							<div class="meter animate">
								<span style="width:65%;"><span> </span></span>
							</div>
						<div class="percent">
						  50%
						</div>
						<div class="text">Normal</div>
					<div class="meter orange nostripes">
						<span style="width:50%;"> </span>
					</div>
						<div class="percent">
						  20%
						</div>
					<div class="text">Bad</div>
					<div class="meter">
					   <span style="width:20%;"> </span>
					</div>
				</div>
				 <div class="total">
						    Total votes: <span> 2585 </span> </div>
				  </div>
				  </div>
			 <div class="clear"></div>
		   </div>
</div>
</div>
</div>
<!-- start footer -->
<div class="footer_top">
<div class="wrap">
<div class="footer">
	<!-- start grids_of_3 -->
	<div class="span_of_3">
		<div class="span1_of_3">
			<h3>text edit</h3>
			<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
		</div>
		<div class="span1_of_3">
			<h3>twitter widget</h3>
			<p><a href="#">@Contrarypopular</a> I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give <a href="#">@accountofsystem</a> </p>
			<p class="top">19 days ago</p>
			<p class="top"><a href="#">@Contrarypopular</a> I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give <a href="#">@accountofsystem</a> </p>
			<p class="top">19 days ago</p>
		</div>
		<div class="span1_of_3">
			<h3>flickr widget</h3>
			<ul class="f_nav">
				<li><a href="#"><img src="../images/f_pic1.jpg" alt="" /> </a></li>
				<li><a href="#"><img src="../images/f_pic2.jpg" alt="" /> </a></li>
				<li><a href="#"><img src="../images/f_pic3.jpg" alt="" /> </a></li>
				<li><a href="#"><img src="../images/f_pic4.jpg" alt="" /> </a></li>
				<li><a href="#"><img src="../images/f_pic5.jpg" alt="" /> </a></li>
				<li><a href="#"><img src="../images/f_pic6.jpg" alt="" /> </a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</div>
</div>
</div>
<!-- start footer -->
<div class="footer_mid">
<div class="wrap">
<div class="footer">
	<div class="f_search">
		<form>
			<input type="text" value="" placeholder="Enter email for newsletter" />
			<input type="submit" value=""/>
		</form>
	</div>
	<div class="soc_icons">
			<ul>
				<li><a class="icon1" href="#"></a></li>
				<li><a class="icon2" href="#"></a></li>
				<li><a class="icon3" href="#"></a></li>
				<li><a class="icon4" href="#"></a></li>
				<li><a class="icon5" href="#"></a></li>
			</ul>	
	</div>
	<div class="clear"></div>
</div>
</div>
</div>
<!-- start footer -->
<div class="footer_bg">
<div class="wrap">
<div class="footer">
		<!-- scroll_top_btn -->
	    <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
		<!--end scroll_top_btn -->
	<div class="f_nav1">
		<ul>
			<li><a href="#">home /</a></li>
			<li><a href="#">support /</a></li>
			<li><a href="#">Terms and conditions /</a></li>
			<li><a href="#">Faqs /</a></li>
			<li><a href="#">Contact us</a></li>
		</ul>
		</div>
	<div class="copy">
		<p class="link"><span>© All rights reserved | Template by&nbsp;<a href="http://w3layouts.com/"> W3Layouts</a></span></p>
	</div>
	<div class="clear"></div>
</div>
</div>
</div>
</body>
</html>