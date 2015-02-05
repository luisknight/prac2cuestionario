/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import daos.PreguntaDao;
import daos.RespuestaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojos.Pregunta;
import pojos.Respuesta;

/**
 *
 * @author Marco
 */
public class PreguntasAll extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        RequestDispatcher dispatcher;
        response.setContentType("text/html;charset=UTF-8");
        PreguntaDao pregDao = new PreguntaDao();
        RespuestaDao respDao = new RespuestaDao();
        
        List preguntas = (List)pregDao.loadAll();
        List respuestas = (List)respDao.loadAll();
        request.setAttribute("preguntas", preguntas);
        request.setAttribute("respuestas", respuestas);
        
        for (int i = 0; i < preguntas.size(); i++) {
              Pregunta preg = (Pregunta) preguntas.get(i);  
                System.out.println("Pregunta:"+preg.getPregunta());
        }
        for (int j = 0; j < respuestas.size(); j++) {
            Respuesta resp = (Respuesta) respuestas.get(j);  
                System.out.println("Respuesta:"+resp.getRespuesta());
        }
        
        dispatcher  = request.getRequestDispatcher("problems.jsp");
        dispatcher.forward(request,response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(PreguntasAll.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(PreguntasAll.class.getName()).log(Level.SEVERE, null, ex);
        }
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















