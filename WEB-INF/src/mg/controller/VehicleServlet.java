package mg.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mg.model.VehicleType;
import mg.model.Service;

import java.io.IOException;
import java.util.LinkedList;

@WebServlet(urlPatterns = "/Vehicle")
public class VehicleServlet extends HttpServlet {

    /**
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String step = request.getParameter("step");
        if (step.equalsIgnoreCase("1")) {

            try {
                LinkedList<VehicleType> list = new VehicleType().select();

                request.setAttribute("vehicles", list);
                request.getRequestDispatcher("/pages/Front-Office/front/booking-1.jsp").forward(request, response);

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (step.equalsIgnoreCase("2")) {
            try {
                LinkedList<Service> list = new Service().select();
                String vehicletype = request.getParameter("vehicleType");
                String matricule = request.getParameter("matricule");

                request.setAttribute("services", list);
                request.setAttribute("vehicletype", vehicletype);
                request.setAttribute("matricule", matricule);

                request.getRequestDispatcher("/pages/Front-Office/front/booking-2.jsp").forward(request, response);

            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}