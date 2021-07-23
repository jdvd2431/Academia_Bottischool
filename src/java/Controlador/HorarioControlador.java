/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.HorarioDAO;
import ModeloVO.HorarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julian
 */
@WebServlet(name = "HorarioControlador", urlPatterns = {"/HorarioControlador"})
public class HorarioControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idHorario = request.getParameter("txtId");
        String fechaInicio = request.getParameter("txtFechaInicio");     
        String fechaFin = request.getParameter("txtFechaFin");
        String horaInicio = request.getParameter("txtHoraInicio");
        String horaFin = request.getParameter("txtHoraFin");
        String dia = request.getParameter("txtDia");
        String estado = request.getParameter("txtEstado");
        String idAula = request.getParameter("txtClase");
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        HorarioVO horarioVO= new HorarioVO(idHorario, fechaInicio, fechaFin, horaInicio, horaFin,dia, estado, idAula);
        HorarioDAO horarioDAO=new HorarioDAO(horarioVO);
        
        switch (opcion) {
            case 1://Agregar Registro
                if (horarioDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El usuario se registro corectamente");
                } else {
                    request.setAttribute("mensajeError", "El usuario no se registro corectamente");
                }
                request.getRequestDispatcher("registrarHorario.jsp").forward(request, response);
                break;
            case 2://Actualizar Registro
                if (horarioDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "El usuario se actualizo corectamente");
                } else {
                    request.setAttribute("mensajeError", "El usuario no se actualizo corectamente");
                }
                request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);
                break;
           
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
