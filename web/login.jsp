
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>The Fooseshoes Website Template | Loign :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--- start-mmmenu-script---->
<script src="js/jquery.min.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="css/jquery.mmenu.all.css" />
<script type="text/javascript" src="js/jquery.mmenu.js"></script>
		<script type="text/javascript">
			//	The menu on the left
			$(function() {
				$('nav#menu-left').mmenu();
			});
		</script>
<!-- start top_js_button -->
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
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
			<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
		</div>
		 <div class="log_reg">
				<ul>
					<li><a href="login.jsp">Login</a> </li>
					<span class="log"> or </span>
					<li><a href="user/register.jsp">Register</a> </li								                       							   
					<div class="clear"></div>
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
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="user/products.jsp">products</a></li>
				<li><a href="user/about.jsp">about</a></li>
				<li><a href="index.jsp">pages</a></li>
				
				<li><a href="user/contact.jsp">Contact</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<div id="smart_nav">
			<a class="navicon" href="#menu-left"> </a>
		</div>
		<nav id="menu-left">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="user/products.jsp">products</a></li>
				<li><a href="user/about.jsp">about</a></li>
				<li><a href="index.jsp">pages</a></li>
				<li><a href="blog.jsp">blog</a></li>
				<li><a href="user/contact.jsp">Contact</a></li>
				<div class="clear"></div>
			</ul>
		</nav>
	
	<div class="clear"></div>
</div>
</div>
<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h4 class="style">create an account or login</h4>
</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">
	<div class="login_left">
		<h3>new customers</h3>
		<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping address, view and track your orders in your accoung and more.</p>
		<div class="btn">
			<form>
				<input type="button"  onclick="location.href='user/register.jsp';" value="create an account" />
			</form>
		</div>
	</div>
	<div class="login_left">
		<h3>registered customers</h3>
		<p>if you have any account with us, please log in.</p>
	<!-- start registration -->
	<div class="registration">
		<!-- [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
			(function() {
		
			// Create input element for testing
			var inputs = document.createElement('input');
			
			// Create the supports object
			var supports = {};
			
			supports.autofocus   = 'autofocus' in inputs;
			supports.required    = 'required' in inputs;
			supports.placeholder = 'placeholder' in inputs;
		
			// Fallback for autofocus attribute
			if(!supports.autofocus) {
				
			}
			
			// Fallback for required attribute
			if(!supports.required) {
				
			}
		
			// Fallback for placeholder attribute
			if(!supports.placeholder) {
				
			}
			
			// Change text inside send button on submit
			var send = document.getElementById('register-submit');
			if(send) {
				send.onclick = function () {
					this.innerjsp = '...Sending';
				}
			}
		
		})();
		</script>
	<div class="registration_left">
		<a href="#"><div class="reg_fb"><img src="images/facebook.png" alt=""><i>sign in using Facebook</i><div class="clear"></div></div></a>
		 <div class="registration_form">
		 <!-- Form -->
			<form id="registration_form" action="Login" method="post">
				<div>
					<label>
						<input name="logInMail" placeholder="email:" type="email" tabindex="3" required="">
					</label>
				</div>
				<div>
					<label>
						<input name="logPass" placeholder="password" type="password" tabindex="4" required="">
					</label>
				</div>						
				<div>
					<input type="submit" value="sign in" id="register-submit">
                                        <span id="error" style="color: red" >
                                            <%
                                            
                                            String error = request.getParameter("error");
                                            if(error != null)
                                            {
                                                out.println("Date incorrect");
                                            }
                                            
                                            
                                                    
                                            %>
                                           <c:choose>
                                <c:when test="${param.autho != null}">
                                    <c:out value="you must login before go to this page"/>
                                </c:when>
                                           </c:choose>
                                        </span>
				</div>
				<div class="forget">
					<a href="#">forgot your password</a>
				</div>
			</form>
			<!-- /Form -->
		</div>
	</div>
	</div>
	<!-- end registration -->
	</div>
	<div class="clear"></div>
</div>
</div>
</div>

<!-- start footer -->
<div class="footer_mid">
<div class="wrap">

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

	<div class="clear"></div>
</div>
</div>
</div>
</body>
</html>