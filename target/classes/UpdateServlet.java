import entities.Note;
import helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class UpdateServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
        try{

            String title = request.getParameter("title");
            String content = request.getParameter("content");
            int id = Integer.parseInt(request.getParameter("noteId").trim());
//            System.out.println("id: " + id + " title: " + title + " content: " + content);
             Session s= FactoryProvider.getSessionFactory().openSession();
            Transaction transaction=s.beginTransaction();

            Note note=s.get(Note.class,id);
            note.setTitle(title);
            note.setContent(content);
            note.setAddedDate(new Date());

//            System.out.println(note.getId()+" "+note.getContent()+" "+note.getTitle()+" "+note.getAddedDate());
//            session.save(note);
            transaction.commit();
            s.close();
            response.sendRedirect("AllNotes.jsp");
        }catch(Exception e){e.printStackTrace();}


    }

}
