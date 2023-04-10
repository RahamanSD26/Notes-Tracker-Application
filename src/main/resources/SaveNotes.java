import com.sun.org.apache.xpath.internal.patterns.NodeTest;
import entities.Note;
import entities.Signin;
import helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class SaveNotes extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
    HttpSession ses = request.getSession();
    String email = (String) ses.getAttribute("email");
    String password = (String) ses.getAttribute("password");
    try{
  String title=request.getParameter("title");
  String content=request.getParameter("content");

  Session session= FactoryProvider.getSessionFactory().openSession();
    Transaction transaction=session.beginTransaction();
        Query query = session.createQuery("select s.id from Signin s where s.email = :email and s.password = :password");
        query.setParameter("email", email);
        query.setParameter("password", password);
        Integer signinId = (Integer) query.uniqueResult();

    Signin signin=session.get(Signin.class,signinId);
    Note note=new Note(title,content,new Date(),signin);
    session.save(note);
    session.save(signin);
     transaction.commit();
     session.close();
     response.sendRedirect("SavedNote.jsp");

//     FactoryProvider.closeSessionFactory();
//     response.setContentType("text/html");
//  PrintWriter out=response.getWriter();
//  out.println("<h1 style='text-align:center;'>Note is successfully added</h1>");
//  out.println("<h1 style='text-align:center;'><a href='AllNotes.jsp'>View all Notes</a></h1>");
}catch(Exception e){e.printStackTrace();}


}

}
