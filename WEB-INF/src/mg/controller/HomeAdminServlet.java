package mg.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.Job;

@WebServlet(urlPatterns = "/home-admin")
public class HomeAdminServlet extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
      request.setAttribute("url", url);
      try {
         List<Job> jobSalaries = new Job().select();
         request.setAttribute("jobSalaries", jobSalaries);
      } catch (ClassNotFoundException | SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }

      RequestDispatcher dispatcher = request.getRequestDispatcher("pages/accueil.jsp");
      dispatcher.forward(request, response);
   }

}
