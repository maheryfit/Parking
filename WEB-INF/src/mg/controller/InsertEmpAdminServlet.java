package mg.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.Employee;

@WebServlet(urlPatterns = "/insertemp")
public class InsertEmpAdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
      request.setAttribute("url", url);
        PrintWriter out = response.getWriter();

        try {
            String nom = (String) request.getParameter("nom");
            String prenom = (String) request.getParameter("prenom");
            String email = (String) request.getParameter("email");
            String date = (String) request.getParameter("datenaissance");
            String phone = (String) request.getParameter("phone");
            String idjobe = (String) request.getParameter("radio");

            Employee emp = new Employee(nom, prenom, date, phone, email, idjobe);

            emp.insert();
        } catch (Exception e) {
            e.printStackTrace(out);
        }

        RequestDispatcher dispat = request.getRequestDispatcher("pages/insertion.jsp");
        dispat.forward(request, response);
      
    }
    
}
