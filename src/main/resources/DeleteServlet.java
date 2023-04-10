import entities.Note;
import helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteServlet extends HttpServlet {

   public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       try{
      int id=Integer.parseInt(request.getParameter("note_id").trim());
        Session session= FactoryProvider.getSessionFactory().openSession();
        Transaction transaction=session.beginTransaction();
        Note note=(Note)session.get(Note.class, id);
        System.out.println(note);
        session.delete(note);
        transaction.commit();
        session.close();
           response.sendRedirect("AllNotes.jsp");

    }catch(Exception e){e.printStackTrace();}


   }


}
