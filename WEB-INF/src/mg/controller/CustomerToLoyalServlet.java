package mg.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.Customer;

@WebServlet(urlPatterns = "/customer-loyal")
public class CustomerToLoyalServlet extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String idCustomer = request.getParameter("idCustomer");
      if (idCustomer == null) {
         response.sendRedirect("customer-admin");
      }
      try {
         Customer customer = new Customer().selectById(idCustomer);
         customer.changeLoyalty("1");
      } catch (Exception e) {
         e.printStackTrace();
      }
      response.sendRedirect("customer-admin");
   }
}
