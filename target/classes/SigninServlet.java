import entities.Note;
import entities.Signin;
import helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class SigninServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
        try{

            String name = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmpassword");
            String email = request.getParameter("email");
            String securityQuestion = request.getParameter("securityQuestion");
            Session s= FactoryProvider.getSessionFactory().openSession();
            Transaction transaction=s.beginTransaction();
            Signin signin=new Signin(name,password,confirmPassword,email,securityQuestion);
              s.save(signin);
            transaction.commit();
            s.close();
            response.sendRedirect("SuccessfullySignin.jsp");
//            response.setContentType("text/html");
//            PrintWriter out=response.getWriter();
//            out.println("<h1 style='text-align:center;'>You have successfully signin</h1>");
//            out.println("<h1 style='text-align:center;'><a href='Login.jsp'>Login here</a></h1>");
        }catch(Exception e){e.printStackTrace();}


    }

}
