package mg.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.Customer;

@WebServlet(urlPatterns = "/signup")
public class SignupServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                + request.getContextPath();
        request.setAttribute("url", url);

        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/signup.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                + request.getContextPath();

        try {
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("surname");
            String email = request.getParameter("email");
            String DateNaissance = request.getParameter("datenaissance");
            String telephone = request.getParameter("telephone");
            String password = request.getParameter("password");

            Customer customer = new Customer(nom, prenom, telephone, email, DateNaissance, "2023-07-06", password);
            customer.signUp();

            response.sendRedirect(url + "/login");
        } catch (Exception e) {
            request.setAttribute("url", url);
            request.setAttribute("errors", e.getMessage() + " " + e.getCause());

            RequestDispatcher dispatcher = request.getRequestDispatcher("pages/signup.jsp");
            dispatcher.forward(request, response);
        }
    }

}
