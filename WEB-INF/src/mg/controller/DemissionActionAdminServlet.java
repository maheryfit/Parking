package mg.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.EmployeeResigns;

@WebServlet(urlPatterns = "/demission-action-admin")
public class DemissionActionAdminServlet extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String idDemission = request.getParameter("id");
      if (idDemission == null) {
         response.sendRedirect("employee-admin");
      }
      try {
         EmployeeResigns employeeResigns = new EmployeeResigns(idDemission);
         employeeResigns.insert();
      } catch (Exception e) {
         e.printStackTrace();
      }
      response.sendRedirect("employee-admin");
   }
}
