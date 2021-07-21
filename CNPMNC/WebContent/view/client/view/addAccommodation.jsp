<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
<!doctype html>
<html lang="en">
   <head>
      <title>Search</title>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS -->
      <style>
         body{
         background-image: url("${url}/assets/images/4.jpg");
         }
      </style>
      <link rel="stylesheet" href="${url}/bootstrap/css/bootstrap.min.css">
   </head>
   <body class="text-white">
      <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
         <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>
         <a class="navbar-brand" href="${pageContext.request.contextPath}/welcome">
            <h1>Student accommodation Finder</h1>
         </a>
         <div class="collapse navbar-collapse" id="navbarCollapse">
            <form class="form-inline mt-2 mt-md-0 mr-auto">
            </form>
         </div>
      </nav>
      <br /><br /><br/><br /><br/>
      <div class="container">
         <form action = "${pageContext.request.contextPath}/addAccommodation" method = "post">
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
	                <label for="description">Description</label>
	                <textarea class="form-control" rows="3" id="description" name="description" placeholder="Enter Description" required></textarea>
	              </div>
	              <div class="form-group">
	                <label for="contact">Contact (*)</label>
	                <input class="form-control" type="text" id="contact" name="contact" placeholder="Enter Contact" required>
	              </div>
	          </div>
	        </div>
	       	<div style="text-align: center">
	              <button type="submit" class="btn btn-primary" id="sub">Submit</button>
	        </div>
            <br>
         </form>
      </div>
      
	 <c:if test="${not empty addStatus}">
		<script type="text/javascript">
			function alertName(){
			alert("${addStatus}");
			} 
		</script> 
		<script type="text/javascript"> window.onload = alertName; </script>
	</c:if>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <!-- <script src="bootstrap/js/bootstrap.min.js"></script> -->
      <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
   </body>
</html>