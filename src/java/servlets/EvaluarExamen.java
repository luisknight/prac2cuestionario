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
import java.util.Iterator;
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
 * @author vale
 */
public class EvaluarExamen extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int total=0;
            double porcentaje = 0;
            String color="";
            String mensaje="";
            PreguntaDao preDao= new PreguntaDao();
            RespuestaDao resDao= new RespuestaDao();
            List<Pregunta> preguntas=(List<Pregunta>)preDao.loadAll();
            
            for (Iterator<Pregunta> it = preguntas.iterator(); it.hasNext();) {
                Pregunta p = it.next();
                String nonull=request.getParameter(p.getIdPregunta().toString());
                if(nonull==null){
                    nonull="0";
                }
                int seleccionada=Integer.parseInt(nonull);
                
                if(seleccionada==Integer.parseInt(p.getRespuestaCorrecta())){
                    total++;
                }
                
            }
            porcentaje = (total*100)/preguntas.size();
            if(porcentaje>=60  && porcentaje<70){
                color="warning";
                mensaje="Apenas la libraste pero me das pena";
            }
            else if(porcentaje>=70 && porcentaje <80){
                color="info";
                mensaje="Bien hecho pero aún te falta";
            }
            else if(porcentaje>=80 && porcentaje <=100){
                color="success";
                mensaje="Pues lo has hecho bastante bien Genius";
            }
            else if(porcentaje<=50){
                color="danger";
                mensaje="Vaya! creo que un kindegardeano se coló en el sistema";
            }
            
        
        request.setAttribute("total", total);
        request.setAttribute("porcentaje", porcentaje);
        request.setAttribute("color", color);
        request.setAttribute("mensaje", mensaje);
        dispatcher  = request.getRequestDispatcher("resultado.jsp");
        dispatcher.forward(request,response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(EvaluarExamen.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(EvaluarExamen.class.getName()).log(Level.SEVERE, null, ex);
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
