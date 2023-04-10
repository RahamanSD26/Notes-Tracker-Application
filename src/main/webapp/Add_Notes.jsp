<%@page import="entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>

<div class="container">
<%@ include file="LogedinNavBar.jsp"%>
<br>
<h1>Please fill your note details</h1>
<br>

 <!-- This is add form -->
<form action="SaveNotes" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailhelp" placeholder="Enter here">
    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Content</label>
    <textarea required
    id="content"
    name="content"
    placeholder="Enter your content here "
    class="form-control"
    style="height:300px;"
    ></textarea>
  </div>

  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>

</body>
</html>

