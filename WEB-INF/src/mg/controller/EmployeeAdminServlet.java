package mg.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mg.connection.PostgresqlConnection;
import mg.model.Customer;
import mg.model.EmployeeSalary;

@WebServlet(urlPatterns = "/employee-admin")
public class EmployeeAdminServlet extends HttpServlet {

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
         Connection connection = PostgresqlConnection.getConnection("parking", "postgres", "etu1889");
         List<EmployeeSalary> jobSalaries = new EmployeeSalary().getSalariesPerPerson(connection);

         request.setAttribute("jobSalaries", jobSalaries);
      } catch (ClassNotFoundException | SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      try {
         Customer customer = (Customer) new Customer().selectById("Customer000001");
         user = customer.getName();
         request.setAttribute("nomUtilisateur", user);
         session.setAttribute("nomUtilisateur", user);
      } catch (Exception e) {
         e.printStackTrace();
      }

      RequestDispatcher dispatcher = request.getRequestDispatcher("pages/employes.jsp");
      dispatcher.forward(request, response);
   }
}
