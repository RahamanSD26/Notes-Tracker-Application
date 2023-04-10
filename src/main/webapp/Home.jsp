<%@page import="javax.servlet.http.HttpSession"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Note Taker: Home Page</title>
<%@ include file="All_js_css.jsp"%>
     </head>
  <body>

    <div class="container">
    <%@ include file="LogedinNavBar.jsp"%>
    <br>
    <div class="card">
     <img alt="not available" class="img-fluid mx-auto" style="max-width:400px;" src="noteIcon/writing.png">
       <h8 class="text-center text-primary text-uppercase mt-5"><b>Start taking your notes</b></h8>
     <form action="Add_Notes.jsp">
        <div class="container text-center">
        <button type="submit" class="btn btn-outline-primary text-center"><b>Start here</b></button>
        </div>
    </form>
   </div>
   </div>
 </body>
</html>