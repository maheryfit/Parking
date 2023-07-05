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
import mg.model.Prestation;

@WebServlet(urlPatterns = "/prestation-admin")
public class PrestationAdminServlet extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
      request.setAttribute("url", url);

      try {

         List<Prestation> prestations = new Prestation().select();
         request.setAttribute("prestation", prestations);
      } catch (SQLException e) {
         e.printStackTrace();
      } catch (Exception e) {
         e.printStackTrace();
      }

      RequestDispatcher dispatcher = request.getRequestDispatcher("pages/prestation.jsp");
      dispatcher.forward(request, response);
   }
}
