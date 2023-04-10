<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Signin</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>

<div class="container">
<h1>Fill to continue...</h1>
<br>
<!-- This is add form -->
<form action="SigninServlet" method="post">
  <div class="mb-3">
    <label for="username" class="form-label">Name</label>
    <input name="username" required type="text" class="form-control" id="username" aria-describedby="emailhelp" placeholder="Enter here">
    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">Password</label>
    <input required name="password" required type="password" class="form-control" id="password" aria-describedby="emailhelp" placeholder="Enter here">
  </div>

<div class="mb-3">
    <label for="confirmpassword" class="form-label">Confirm-Password</label>
    <input name="confirmpassword" required type="password" class="form-control" id="confirmpassword" aria-describedby="emailhelp" placeholder="Minimum 8 characters & special characters not allowed">
  </div>

  <div class="mb-3">
  <label for="email" class="form-label">Email</label>
      <input name="email" required type="email" class="form-control" id="email" aria-describedby="emailhelp" placeholder="Enter here">
      <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>

     <div class="mb-3">
           <label for="disabledSelect" class="form-label">Disabled select menu</label>
           <select id="disabledSelect" class="form-select">
             <option>Disabled select</option>
             <option>Your nick name</option>
             <option>Your favourite note title</option>
             <option>Child-hood animation name</option>
             <option>Reason of your taking note</option>
             <option>Your field of Interest</option>
             <option>Other</option>
           </select>
         </div>

 <label for="securityQuestion" class="form-label">SecurityQuestion</label>
       <input name="securityQuestion" required type="text" class="form-control" id="securityQuestion" aria-describedby="emailhelp" placeholder="Enter here">
       <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
     </div>

  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>

</body>
</html>

