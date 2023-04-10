<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Saved Successfully</title>
<%@ include file="All_js_css.jsp"%>
     </head>
  <body>

    <div class="container">
    <%@ include file="LogedinNavBar.jsp"%>
    <br>
    <div class="card">
     <img alt="not available" class="img-fluid mx-auto" style="max-width:400px;" src="noteIcon/notebook.png">
       <h8 class="text-center text-primary text-uppercase mt-5"><b>View All Notes</b></h8>
      <form action="AllNotes.jsp">
      <div class="container text-center">
      <button type="submit" class="btn btn-outline-primary text-center"><b>View here</b></button>
      </div>
  </form>
   </div>


   </div>
 </body>
</html>