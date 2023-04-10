<%@page import="helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="entities.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>
  <div class="container">
    <%@ include file="LogedinNavBar.jsp"%>
 <h1>Edit your note</h1>
 <br>
    <%
      int id=Integer.parseInt(request.getParameter("note_id").trim());
    Session s= FactoryProvider.getSessionFactory().openSession();
            Note note=(Note)s.get(Note.class, id);
    %>
<form action="UpdateServlet" method="post">
      <input value="<%=note.getId()%>" name="noteId" type="hidden">
      <div class="mb-3">
        <label for="title" class="form-label">Note Title</label>
        <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailhelp" placeholder="Enter here" value="<%=note.getTitle()%>">
        <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
       </div>
      <div class="mb-3">
        <label for="content" class="form-label">Content</label>
        <textarea required
        id="content"
        name="content"
        placeholder="Enter your content here "
        class="form-control"
        style="height:300px;">
        <%=note.getContent()%>
        </textarea>
      </div>

      <div class="container text-center">
      <button type="submit" class="btn btn-success">Update</button>
      </div>
    </form>


</body>
</html>
