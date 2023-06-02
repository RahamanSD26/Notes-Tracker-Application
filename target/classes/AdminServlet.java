import entities.Admin;
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

public class AdminServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Admin admin=null;
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false);
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");


            Session s = FactoryProvider.getSessionFactory().openSession();
            Transaction transaction = s.beginTransaction();

            Query query = s.createQuery("from Admin where AdminEmail=:email and AdminPassword=:password");
            query.setParameter("email", email);
            query.setParameter("password", password);
            admin = (Admin) query.uniqueResult();


            transaction.commit();
            s.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (admin != null) {
            response.sendRedirect("adminHome.jsp");
        } else {
            response.sendRedirect("incorrect.jsp");
        }

    }
}