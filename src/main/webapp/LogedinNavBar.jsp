<%@page import="javax.servlet.http.HttpSession"%>
<nav class="navbar navbar-expand-lg navbar-dark purple">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.jsp">NoteTaker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Add_Notes.jsp">Add Note</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AllNotes.jsp" tabindex="-1" aria-disabled="false">Show Notes</a>
        </li>
      </ul>
      <%
       HttpSession ses = request.getSession(false);
         String name = (String) ses.getAttribute("name");
      %>
      <form class="d-flex" action="LogoutServlet" method="post">
             <class text-danger><b>Welcome,<%=name%></b>
              <button class="btn btn-outline-light" type="submit">SignOut</button>
            </form>
    </div>
  </div>
</nav>