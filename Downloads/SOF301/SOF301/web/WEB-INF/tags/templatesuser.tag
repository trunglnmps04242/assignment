<%@tag import="DAO.Categorydao"%>
<%@ tag language="java" pageEncoding="utf-8"%>

<%@ attribute name="title" required="true" rtexprvalue="true"   %>
<%@ attribute name="banner" fragment="true" %>
<%@ attribute name="content" fragment="true" %>
   <%@ attribute name="language" fragment="true" %>
      <%@ attribute name="cart" fragment="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>${title}</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
  







<script src="js/responsiveslides.min.js"></script>
   <script>

    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
</head>
<body onload="$.fn.update()">
<!--header-->
	<%
				     Categorydao cad = new Categorydao();
				%>
<div class="header">
	<div class="header-top">
		<div class="container">
		 <div class="col-sm-4 world">
		 <ul>
	    	
					  <jsp:invoke fragment="language"></jsp:invoke>
					</ul>
					</div>
	
	 <fmt:setLocale value="${sessionScope.lang==null ? en_GB : sessionScope.lang}"></fmt:setLocale>
		   <fmt:setBundle  var="la" basename="Resoucre.Language"></fmt:setBundle>
				<div class="col-sm-4 logo">
					<a href="index.html"><img src="images/logo.png" alt=""></a>	
				</div>
		
			<div class="col-sm-4 header-left">		
			
			
			<p class="log"><a href="account.jsp"  >
			
			<fmt:message bundle="${la}" key="Login"></fmt:message>
			
			
			</a>
						<span>or</span><a  href="register.jsp"  ><fmt:message bundle="${la}" key="Register"></fmt:message></a></p>
					
			         <jsp:invoke fragment="cart"></jsp:invoke>
					<div class="clearfix"> </div>
			</div>
			user : ${sessionScope.email}
				<div class="clearfix"> </div>
		</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="col-sm-2 number">
					<span><i class="glyphicon glyphicon-phone"></i>01652824094</span>
				</div>
		 <div class="col-sm-8 h_menu4">
		   <fmt:setLocale value="${sessionScope.lang==null ? en_GB : sessionScope.lang}"></fmt:setLocale>
		   <fmt:setBundle  var="la" basename="Resoucre.Language"></fmt:setBundle>
				<ul class="memenu skyblue">
					  <li class=" grid"><a  href="Index.jsp"><fmt:message bundle="${la}" key="Home"></fmt:message></a></li>	
				      <li><a  href="#"><fmt:message bundle="${la}" key="Men"></fmt:message></a>
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>All Clothing</h4>
									<ul>
								<c:forEach var="ca" items="<%=cad.findallca() %>">
									  	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
									</c:forEach>
									
									
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Footwear</h4>
									<ul>
<c:forEach var="ca" items="<%=cad.findallca() %>">
									  	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
									</c:forEach>
									
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Popular Brands</h4>
									<ul>
									<c:forEach var="ca" items="<%=cad.findallca() %>">
									  	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
									</c:forEach>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
					</li>
				    <li class="grid"><a  href="#">	<fmt:message bundle="${la}" key="Women"></fmt:message></a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>All Clothing</h4>
									<ul>
									<c:forEach var="ca" items="<%=cad.findallca() %>">
									  	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
									</c:forEach>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Footwear</h4>
									<ul>
								<c:forEach var="ca" items="<%=cad.findallca() %>">
									  	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
									</c:forEach>
									
									</ul>
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Popular Brands</h4>
									<ul>
									<c:forEach var="ca" items="<%=cad.findallca() %>">
									  	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
									</c:forEach>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
			    </li>
						
				<li><a class="color6" href="contact.jsp"><fmt:message bundle="${la}" key="Contact"></fmt:message></a></li>
				<li><a class="color6" href="Productall.jsp"><fmt:message bundle="${la}" key="Shop"></fmt:message></a></li>
			  </ul> 
			</div>
			
		<br><br><br>
	

	<br><br>
		<div class="clearfix"> </div>
			<!---pop-up-box---->
					  <script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
					<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
				<div id="small-dialog" class="mfp-hide">
				<div class="search-top">
						<div class="login">
							<input type="submit" value="">
							<input type="text" value="Type something..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">		
						</div>
						<p>	Shopping</p>
					</div>				
				</div>
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>			
	<!---->		
		</div>
	</div>
</div>
<!--banner-->

<jsp:invoke fragment="banner"></jsp:invoke>


<!--//banner-->

<jsp:invoke fragment="content"></jsp:invoke>
<!--content-->

<!--//content-->
<!--footer-->
<div class="footer">

	<div class="footer-bottom">
		<div class="container">
				<div class="col-sm-3 footer-bottom-cate">
			
					<h6><fmt:message bundle="${la}" key="Categories"></fmt:message></h6>
					<ul>
					   <c:forEach var="ca" items="<%=cad.findallca() %>">
					      	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
					   
					   </c:forEach>
					
					
						
					</ul>
				</div>
				<div class="col-sm-3 footer-bottom-cate">
					<h6><fmt:message bundle="${la}" key="Categories"></fmt:message></h6>
					<ul>
						 <c:forEach var="ca" items="<%=cad.findallca() %>">
					      	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
					   
					   </c:forEach>
					
						
					</ul>
				</div>
				<div class="col-sm-3 footer-bottom-cate">
					<h6><fmt:message bundle="${la}" key="Categories"></fmt:message></h6>
					<ul>
						 <c:forEach var="ca" items="<%=cad.findallca() %>">
					      	<li><a href="ProductServlet?action=products&cate_id=${ca.cate_id}">${ca.cate_name}</a></li>
					   
					   </c:forEach>
						
					</ul>
				</div>
				<div class="col-sm-3 footer-bottom-cate cate-bottom">
					<h6>Our Address</h6>
					<ul>
						<li>Aliquam metus  dui. </li>
						<li>orci, ornareidquet</li>
						<li> ut,DUI.</li>
						<li>nisi, dignissim</li>
						<li>gravida at.</li>
						<li class="phone">PH : 01652824094</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<p class="footer-class"> © 2015 Fashion Mania. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
			</div>
	</div>
</div>

<!--//footer-->
</body>
</html>