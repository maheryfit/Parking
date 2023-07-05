package mg.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mg.model.Prestation;
import mg.model.Service;
import mg.model.VehicleType;
import mg.model.Customer;

import java.io.IOException;

@WebServlet(urlPatterns = "/Prestation")
public class PrestationServlet extends HttpServlet {

    /**
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        if (session.getAttribute("idCustomer") == null) {
            response.sendRedirect("login");
        }
        if (action.equalsIgnoreCase("insert")) {
            String date = request.getParameter("date");
            double duree = Double.parseDouble(request.getParameter("duree"));
            String idService = request.getParameter("service");
            String vehicleType = request.getParameter("vehicleType");
            String matricule = request.getParameter("matricule");
            String idCustomer = (String) session.getAttribute("idCustomer");
            String idPlace = "Place000001";
            try {
                Prestation prestation = new Prestation(idCustomer, idService, date, duree, idPlace, matricule,
                        vehicleType);
                prestation.insert();
                Service service = new Service().selectById(idService);
                Customer cust = new Customer().selectById(idCustomer);
                VehicleType vehicleTypeObType = new VehicleType().selectById(vehicleType);
                request.setAttribute("prestation", prestation);
                request.setAttribute("client", cust);
                request.setAttribute("service", service);
                request.setAttribute("vehicletype", vehicleTypeObType);
                request.getRequestDispatcher("./pages/Front-Office/front/ticket.jsp").forward(request, response);

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
