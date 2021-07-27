<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
<!doctype html>
<html class="no-js" lang="">
   <!--<![endif]-->
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <title>Student accommodation Finder</title>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="apple-touch-icon" href="apple-touch-icon.png">
      <!--<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,600,700' rel='stylesheet' type='text/css'>-->
      <link rel="stylesheet" href="${url}/assets/css/fonticons.css">
      <link rel="stylesheet" href="${url}/assets/fonts/stylesheet.css">
      <link rel="stylesheet" href="${url}/assets/css/font-awesome.min.css">
      <link rel="stylesheet" href="${url}/assets/css/bootstrap.min.css">
      <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->
      <!--For Plugins external css-->
      <link rel="stylesheet" href="${url}/assets/css/plugins.css" />
      <!--Theme custom css -->
      <link rel="stylesheet" href="${url}/assets/css/style.css">
      <!--Theme Responsive css-->
      <link rel="stylesheet" href="${url}/assets/css/responsive.css" />
      <script src="${url}/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
   </head>
   <body data-spy="scroll" data-target="#navmenu">
      <!--[if lt IE 8]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
      <![endif]-->
      <!--Home page style-->
      <header id="main_menu" class="header">
         <div class="main_menu_bg">
            <div class="container">
               <div class="row">
                  <div class="nave_menu wow fadeInUp" data-wow-duration="1s">
                     <nav class="navbar navbar-default" id="navmenu">
                        <div class="container-fluid">
                           <!-- Brand and toggle get grouped for better mobile display -->
                           <div class="navbar-header">
                              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                              <span class="sr-only">Toggle navigation</span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              </button>
                           </div>
                           <!-- Collect the nav links, forms, and other content for toggling -->
                           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                              <a class="nav navbar-nav navbar-brand" href="${pageContext.request.contextPath}/welcome" style = "font-size: 50px; font-weight: bold">Student accommodation Finder</a>
                              <ul class="nav navbar-nav navbar-right" style = "color: white; font-size: 50px; font-weight: bold" >
                                 <li class="active"><a href="${pageContext.request.contextPath}/welcome">Home Page</a></li>
                                 <li><a href="${pageContext.request.contextPath}/addAccommodation">Add New Accommodation</a></li>
                                 <!-- <li><a href="#clients">About us</a></li> -->
                              </ul>
                           </div>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!--End of header -->
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
         <!-- Indicators -->
         <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <!-- Wrapper for slides -->
         <div class="carousel-inner">
            <div class="item active">
               <img src="${url}/assets/images/1.jpg" alt="Los Angeles" style="width:100%;height:640px;">
               <div class="carousel-caption">
                  <h3>Hey, there !!</h3>
                  <p style="color:white;">Find the perfect hostel !</p>
               </div>
            </div>
            <div class="item">
               <div class="slider-size">
                  <img src="${url}/assets/images/2.jpg" alt="Chicago" style="width:100%; height:640px;">
               </div>
               <div class="carousel-caption">
                  <h3>Search by cost</h3>
                  <p style="color:rgb(255, 255, 255);">Show all accommodation with reasonable price</p>
               </div>
            </div>
            <div class="item">
               <img src="${url}/assets/images/3.jpg" alt="New York" style="width:100%;height:640px;">
               <div class="carousel-caption">
                  <h3>Search by area</h3>
                  <p style="color:white;">Get all the hostels and PGs in the area..</p>
               </div>
            </div>
         </div>
         <!-- Left and right controls -->
         <a class="left carousel-control" href="#myCarousel" data-slide="prev">
         <span class="glyphicon glyphicon-chevron-left"></span>
         <span class="sr-only">Previous</span>
         </a>
         <a class="right carousel-control" href="#myCarousel" data-slide="next">
         <span class="glyphicon glyphicon-chevron-right"></span>
         <span class="sr-only">Next</span>
         </a>
      </div>
      <section id="register" class="register">
         <div class="container-fullwidth">
            <div class="row text-center">
               <div class="col-sm-6 col-xs-6 no-padding">
                  <div id="searchBox" class="single_login">
                     <a id="searchText" href="#address">Search for a Hostel</a>
                  </div>
               </div>
               <div class="col-sm-6 col-xs-6 no-padding">
                  <div id="advancedSearchBox" class="single_register">
                     <a id="advancedSearchText" href="#address">Advanced Search for a Hostel</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section id="search">
         <div class="container">
            <form action = "${pageContext.request.contextPath}/search" method = "get">
               <div class="search-open">
                  <div class="container">
                     <hr>
                     <div id ="searchTextBox">
                        <input type="text" class="form-control" name="address" id="address" placeholder="Address...">
                     <br>
                     </div>
                  </div>
               </div>
               	<div style="text-align: center">
                      <button type="submit" class="btn btn-primary" id="sub">Search</button>
                </div>
            </form>
         </div>
      </section>
      <section id="accList">
         <!--=== Content Medium Part ===-->
         <div class="content-md margin-bottom-30">
            <div class="container">
               <section>
                  <div class="table-responsive">
                     <h3>Hostel Details:</h3>
                     <table class="table table-striped">
                        <thead>
                           <tr>
                              <th>Index</th>
                              <th>Image</th>
                              <th>Address</th>
                              <th>Type</th>
                              <th>Cost</th>
                              <th>Description</th>
                              <th>Contact</th>
                              <th>Status</th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:set var="index" value="${0}" />
                           <c:forEach items="${accList}" var="list">
                              <tr class="odd gradeX">
                                 <c:set var="index" value="${index + 1}" />
                                 <td>${index}</td>
                                    <td style="max-width: 200px;">
									<c:forEach var="img" items="${fn:split(list.image,',')}">
									<c:if test="${img != ''}">
										<c:url value="/image?fname=${img}" var="imgUrl"></c:url>
										<img height="150" width="200" src="${imgUrl}" />	
									</c:if>
									</c:forEach>
									</td>
                                 <td>${list.address}</td>
                                 <td>${list.type_acc}</td>
                                 <td>${list.cost}</td>
                                 <td>${list.description_acc}</td>
                                 <td>${list.contact}</td>
                                 <td>${list.status_acc}</td>
                              </tr>
                           </c:forEach>
                        </tbody>
                     </table>
                  </div>
               </section>
            </div>
         </div>
      </section>
      <section id="footer" class="footer sections" style="background: #ffffff;">
         <div class="container" style="border-top-style: solid; border-top-color: coral;">
            <div class="row">
               <div class="footer_bottom_area">
                  <div class="col-sm-12 col-xs-12">
                  All Rights Reserved. © 2021 SAP Team
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End of footer3 section -->
      <!-- STRAT SCROLL TO TOP -->
      <div class="scrollup">
         <a href="#"><i class="fa fa-chevron-up"></i></a>
      </div>
      <script src="${url}/assets/js/vendor/jquery-1.11.2.min.js"></script>
      <script src="${url}/assets/js/vendor/bootstrap.min.js"></script>
      <script src="${url}/assets/js/jquery.easypiechart.min.js"></script>
      <script src="${url}/assets/js/plugins.js"></script>
      <script src="${url}/assets/js/main.js"></script>
      <script type="text/javascript">
         $(document).ready(function() {
             $("#searchBox").click(function(){
             	if ( $('#searchBox').hasClass('single_register') ){
             		$('#searchBox').addClass('single_login');
             		$('#searchBox').removeClass('single_register');
              	$('#advancedSearchBox').addClass('single_register');
              	$('#advancedSearchBox').removeClass('single_login');
             		document.getElementById("searchBox").style.transform = "skewX(20deg)";
             		document.getElementById("advancedSearchBox").style.transform = "skewX(20deg)";
             		document.getElementById("searchText").style.transform = "skewX(-20deg)";
             		document.getElementById("advancedSearchText").style.transform = "skewX(-20deg)";
             	}
             	 if( $('#advanced_search').length )         // use this if you are using id to check
             	 {
               	$('#advanced_search').remove();
             	 }
                 $("#address").focus();
             });
             $("#advancedSearchBox").click(function(){
             	if ( $('#advancedSearchBox').hasClass('single_register') ){
             		$('#searchBox').addClass('single_register');
             		$('#searchBox').removeClass('single_login')
	              	$('#advancedSearchBox').addClass('single_login');
	              	$('#advancedSearchBox').removeClass('single_register');
             		document.getElementById("searchBox").style.transform = "skewX(-20deg)";
             		document.getElementById("advancedSearchBox").style.transform = "skewX(-20deg)";
             		document.getElementById("searchText").style.transform = "skewX(20deg)";
             		document.getElementById("advancedSearchText").style.transform = "skewX(20deg)";
             	}
             	 if(! $('#advanced_search').length )         // use this if you are using id to check
             	 {
                   addRow();
             	 }
                 $("#address").focus();
             });
         });
         function addRow () {
        	  document.querySelector('#searchTextBox').insertAdjacentHTML(
        	    'afterend',
        `<div id="advanced_search">
			   <div class="row">
			   <div class="col-md-6">
			      <input type="number" class="form-control" name="costFrom" id="costFrom" min="0" placeholder="Cost From..." />
			   </div>
			   <div class="col-md-6">
			      <input type="number" class="form-control" name="costTo" id="costTo" min="0" placeholder="Cost To..." />
			   </div>
			   </div>
			   
			   <br>
			   
			   <div class="row">
			   <div class="col-md-6">
	              <div class="form-group">
	                <select id="status" class="form-control" name="status">
	                   <option value="-1" selected>Choose Status</option>
	                   <option value="empty">Empty</option>
	                   <option value="full">Full</option>
		           	</select>
	              </div>
			   </div>
			   <div class="col-md-6">
	              <div class="form-group">
	                <select id="type_acc" class="form-control" name="type_acc">
						<option value="-1" selected>Choose Type</option>
						<option value="Nhà trọ">Nhà trọ</option>
						<option value="Khách sạn">Khách sạn</option>
						<option value="Nhà nghỉ">Nhà nghỉ</option>
						<option value="Chung cư">Chung cư</option>
						<option value="Nhà riêng">Nhà riêng</option>
						<option value="Ký túc xá">Ký túc xá</option>
	 	           	</select>
	              </div>
			   </div>
			   </div>`      
        	  )
        	}
      </script>
   </body>
</html>