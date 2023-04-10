import entities.Signin;
import helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
        Signin sign=null;
        PrintWriter out=response.getWriter();
        HttpSession session = request.getSession(false);
        try{
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            session.setAttribute("email", email);
            session.setAttribute("password", password);

            Session s= FactoryProvider.getSessionFactory().openSession();
            Transaction transaction=s.beginTransaction();

            Query query=s.createQuery("from Signin where email=:e and password=:p");
            query.setParameter("e",email);
            query.setParameter("p",password);
             sign=(Signin)query.uniqueResult();

            query = s.createQuery("select s.name from Signin s where s.email = :email and s.password = :password");
            query.setParameter("email",email);
            query.setParameter("password",password);
            String name = (String) query.uniqueResult();
            session.setAttribute("name", name);
              transaction.commit();
             s.close();
        }catch(Exception e){e.printStackTrace();}
        if(sign!=null){
           response.sendRedirect("Add_Notes.jsp");
        }else{response.sendRedirect("incorrect.jsp");}

    }

}
