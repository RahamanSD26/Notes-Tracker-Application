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
<h3>Login to continue...</h3>
<br>
<!-- This is login form -->

<form action="LoginServlet" method="post">
  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input name="email" type="email" class="form-control" id="email" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control" name="password" id="password">
  </div>
  <button type="submit" class="btn btn-primary">Login</button>
</form>
<br>
<h5>If do not have account :</h5>
<form action="Signin.jsp">
<button type="submit" class="btn btn-success mt-1">Signin</button>
</form>
</body>
</html>

