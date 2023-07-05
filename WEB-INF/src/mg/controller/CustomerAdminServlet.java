package mg.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.Customer;
import jakarta.servlet.RequestDispatcher;

@WebServlet(urlPatterns = "/customer-admin")
public class CustomerAdminServlet extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
      request.setAttribute("url", url);

      try {

         List<Customer> customer = new Customer().getCustomerNotLoyal();
         request.setAttribute("customerlist", customer);
         List<Customer> customerLoyal = new Customer().getCustomerLoyal();
         request.setAttribute("customerLoyal", customerLoyal);
      } catch (SQLException e) {
         e.printStackTrace();
      } catch (Exception e) {
         e.printStackTrace();
      }

      RequestDispatcher dispatcher = request.getRequestDispatcher("pages/clienteles.jsp");
      dispatcher.forward(request, response);
   }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

   }

}
