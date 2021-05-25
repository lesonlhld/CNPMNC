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
            <%--         <ul class="navbar-nav " style="margin-right:10%">
               <li class="nav-item">
                 <a class="nav-link" href="${pageContext.request.contextPath}/welcome"><h4>Home Page</h4><span class="sr-only">(current)</span></a>
               </li>
               <li><a class="nav-link" href="${pageContext.request.contextPath}/advancedSearch"><h4>Advanced Search</h4><span class="sr-only">(current)</span></a></li>
               
               </ul>
               --%>
         </div>
      </nav>
      <br /><br /><br/>
      <section id="search">
         <div class="container">
            <form action = "${pageContext.request.contextPath}/search" method = "get">
               <div class="search-open">
                  <div class="container">
                     <br>
                     <div id ="searchTextBox">
                        <input type="text" class="form-control" name="address" id="address" placeholder="Address...">
                     	<br>
                     </div>
                  </div>
               </div>
               	<div style="text-align: center">
                      <button type="submit" class="btn btn-primary" id="sub">Search</button>
                </div>
               <br>
            </form>
         </div>
      </section>
      <c:choose>
         <c:when test="${accList.size() > 0}">
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
                                 <th>Address</th>
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
                                    <td>${list.address}</td>
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
         </c:when>
         <c:otherwise>
            <c:if test="${accList != null}">
               <div class="container">
                  <h3>No results found!!!</h3>
               </div>
            </c:if>
         </c:otherwise>
      </c:choose>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <!-- <script src="bootstrap/js/bootstrap.min.js"></script> -->
      <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
      <script>
         $(window).on('load', function() {
             console.log('All assets are loaded')
             $("#address").focus();
         	if (new window.URLSearchParams(window.location.search).has('costFrom'))
         	{
         		if(! $('#advanced_search').length )         // use this if you are using id to check
            	 	{
                  addRow();
            	 	}
         	}
         });
         function addRow () {
         	  document.querySelector('#searchTextBox').insertAdjacentHTML(
         	    'afterend',
         `<div id="advanced_search">
			   <div class="row">
			   <div class="col-md-6">
			      <input type="text" class="form-control" name="costFrom" id="costFrom" placeholder="Cost From..." />
			   </div>
			   <div class="col-md-6">
			      <input type="text" class="form-control" name="costTo" id="costTo" placeholder="Cost To..." />
			   </div>
			   </div>
		   <div class="form-check">
		   <br>
              <label class="form-check-label">
                <input class="form-check-input" name="status" type="checkbox" id="status" value="empty"> : Empty
              </label>
            </div>
			</div>`      
         	  )
         	}
      </script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
   </body>
</html>