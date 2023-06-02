
package Servlets;

import Control.AccionesUsuario;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class agregarUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
    
//LocalDate fechNaci = LocalDate.now(); // Supongamos que tienes un objeto LocalDate
//
//DateTimeFormatter formatoFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy");
//String fechaStr = fechNaci.format(formatoFecha);

            String nom;
            String ape;
            String tele;
            String nDocu;
            String tipoDocu;
            String cargo;
            String direcResi;
         
            
            nom = request.getParameter("nombres");
            ape = request.getParameter("apellidos");
            tele = request.getParameter("telefono");
            nDocu = request.getParameter("numeroDocumento");
            tipoDocu = request.getParameter("tipoDocumento");
            cargo = request.getParameter("cargo");
            direcResi = request.getParameter("direcResidencia");
    
            Usuario e = new Usuario();
            
            e.setNombres(nom);
            e.setApellidos(ape);
            e.setTelefono(tele);
            e.setNumeroDocumento(nDocu);
            e.setTipoDocumento(tipoDocu);
            e.setCargo(cargo);
            e.setDirecResidencia(direcResi);
           
            
            int status = AccionesUsuario.registrarUsuario(e);
            
            if (status > 0){
                response.sendRedirect("crearUsuario.jsp");
            }else{
                
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
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
