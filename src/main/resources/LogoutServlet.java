import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {

public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
    HttpSession session=request.getSession(false);
    session.invalidate();
    response.sendRedirect("index.jsp");
}
}
