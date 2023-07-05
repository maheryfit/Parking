package mg.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.Employee;

@WebServlet(urlPatterns = "/insertemp-admin")
public class InsertEmpAdminServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
            e.printStackTrace();
        }

        response.sendRedirect("insert-page-admin");

    }

}
