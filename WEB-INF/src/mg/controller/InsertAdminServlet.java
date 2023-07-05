package mg.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.Employee;
import mg.model.Job;

@WebServlet(urlPatterns = "/insert-page")
public class InsertAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
      request.setAttribute("url", url);

      try {
        Job job = new Job();
        List<Job> list = job.select();
        request.setAttribute("job", list);

        
    } catch (Exception e) {
        e.printStackTrace();
    }
    RequestDispatcher dispat = request.getRequestDispatcher("pages/insertion.jsp");
        dispat.forward(request, response);
      
    }
}
