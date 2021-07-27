<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
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
                                 <li><a href="${pageContext.request.contextPath}/welcome">Home Page</a></li>
                                 <li class="active"><a href="${pageContext.request.contextPath}/addAccommodation">Add New Accommodation</a></li>
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
      
      <section id="addAcc">
      <div class="container">
      <br>
	  <h3>Add new accommodation</h3>
         <form action = "${pageContext.request.contextPath}/addAccommodation" method = "post" id="form_info" enctype="multipart/form-data">
            <div class="row">
          		<div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-sm-10 offset-sm-1 col-xs-10 offset-xs-1">
	              <div class="form-group">
	                  <label for="address">Address (*)</label>
	                  <input type="text" required name="address" id="address" class="form-control" placeholder="Enter Address" required/>
	              </div>
	              <div class="form-group">
	                <label for="cost">Cost (*)</label>
	                <input class="form-control" type="number" name="cost" id="cost" min="0" placeholder="Enter Cost" required>
	              </div>	
	              <div class="form-group">
	                <label for="type_acc">Type (*)</label>
	                <select id="type_acc" class="form-control" name="type_acc">
                        <option value="Nhà trọ">Nhà trọ</option>
                        <option value="Khách sạn">Khách sạn</option>
                        <option value="Nhà nghỉ">Nhà nghỉ</option>
                        <option value="Chung cư">Chung cư</option>
                        <option value="Nhà riêng">Nhà riêng</option>
                        <option value="Ký túc xá">Ký túc xá</option>
                	</select>
	              </div>
	              <div class="form-group">
	                <label for="description">Description (*)</label>
	                <textarea class="form-control" rows="3" id="description" name="description" placeholder="Enter Description" required></textarea>
	              </div>
	              <div class="form-group">
	                <label for="contact">Contact (*)</label>
	                <input class="form-control" type="text" id="contact" name="contact" placeholder="Enter Contact" required>
	              </div>
				<div class="form-group">
					<label>Image</label> <input type="file" name="image" multiple/>
				</div>
	              <div class="form-group">
			        <div id="google_recaptcha"></div>
			      </div>
	          </div>
	        </div>
	       	<div>
	              <button type="submit" class="btn btn-primary" id="sub">Submit</button>
	        </div>
            <br>
         </form>
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
      
	 <c:if test="${not empty addStatus}">
		<script type="text/javascript">
			function alertName(){
			alert("${addStatus}");
			} 
		</script> 
		<script type="text/javascript">
        $(document).ready(function() { alertName();}); </script>
	</c:if>
	<script>
    var onloadCallback = function() {
        grecaptcha.render('google_recaptcha', {
          'sitekey' : '6LdeccIbAAAAAEhWXyUYUCaMzv5JPGg1_7ouuBjB'
        });
      };
      
      $(function () {
        //Form Submit Event
	    $("#form_info").submit(function(e) {
	        e.preventDefault();
              event.preventDefault();
              var rcres = grecaptcha.getResponse();
              if(rcres.length){
                grecaptcha.reset();
                $("#form_info").off("submit").submit();
              }else{
            	  alert("Please verify reCAPTCHA");
              }
        });

      });
	</script>
   </body>
</html>