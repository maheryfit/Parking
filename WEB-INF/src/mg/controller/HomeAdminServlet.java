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
import jakarta.servlet.http.HttpSession;
import mg.model.Customer;
import mg.model.Job;

@WebServlet(urlPatterns = "/home-admin")
public class HomeAdminServlet extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
      request.setAttribute("url", url);

      HttpSession session = request.getSession();
      session.setAttribute("utilisateur", "Customer000001");
      String user;
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
      try {
         System.out.println((String) session.getAttribute("utilisateur"));
         Customer customer = (Customer) new Customer().selectById("Customer000001");
         user = customer.getName();
         request.setAttribute("nomUtilisateur", user);
         session.setAttribute("nomUtilisateur", user);
      } catch (Exception e) {
         e.printStackTrace();
      }

      RequestDispatcher dispatcher = request.getRequestDispatcher("pages/accueil.jsp");
      dispatcher.forward(request, response);
   }

}
