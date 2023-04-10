<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="entities.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes: Note Taker</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>
<div class="container">
<%@ include file="LogedinNavBar.jsp"%>
<br>
<h1 class="text-uppercase">All Notes:</h1>
<div class="row">
   <div class="col-12">
        <%
            HttpSession sess = request.getSession(false);
            String email = (String) sess.getAttribute("email");
            String password = (String) sess.getAttribute("password");
            Session s = FactoryProvider.getSessionFactory().openSession();

            Query query = s.createQuery("select s.id from Signin s where s.email = :email and s.password = :password");
                        query.setParameter("email",email);
                        query.setParameter("password",password);
                         Integer signinId = (Integer) query.uniqueResult();


              query=s.createQuery("from Note as s where s.signin.id=:id");
              query.setParameter("id",signinId);
            List<Note> list=query.list();
            for(Note note:list){
        %>

          <div class="card mt-3">
            <img class="card-img-top m-3" style="max-width:50px;" src="noteIcon/writing.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title"><%=note.getTitle()%></h5>
              <p class="card-text"><%=note.getContent()%></p>
              <p><b class="text-primary">Last Update <%= note.getAddedDate()%></b></p>
              <div class="container text-center mt-2">
              <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
               <a href="Edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
              </div>
            </div>
          </div>

        <%
            }
         s.close();
        %>

      </div>
</div>
</div>
</body>
</html>