/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.ProsedeurControls;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mr.Mic
 */
public class FogotUserID extends HttpServlet {

    private String usertype;
    private String userName;
    private String birthday;
    private String para;
    private ResultSet res;
    private String id;
    private String name;
    public String result = "~~~";
    private String id2;
    private String dateString1;

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FogotUserID</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FogotUserID at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
      //  try {
            usertype = request.getParameter("usertype");
            userName = request.getParameter("userName");
         /*   dateString1 = request.getParameter("birthday");
            
            
            Date date = new SimpleDateFormat("dd-MM-yyyy").parse(dateString1);
            birthday = new SimpleDateFormat("yyyy-MM-dd").format(date);
            
            */
            
         //   birthday ="1992/06/17";
            birthday = request.getParameter("birthday");
            
            ProsedeurControls pc = new ProsedeurControls();
            
            para = "('" + userName + "','" + birthday + "')";
            
            if ("stu".equals(usertype)) {
                try {
                    res = pc.callProc("SelectStudentByName", para);
                    while (res.next()) {
                        id = res.getString(1);
                        name = res.getString(3);
                        result = "  " + id + "    " + name + "~~~~";
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(FogotUserID.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if ("stf".equals(usertype)) {
                try {
                    res = pc.callProc("SelectStaffByName", para);
                    while (res.next()) {
                        id = res.getString(1);
                        name = res.getString(5);
                        result = "  " + id + "    " + name + "~~~~";
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(FogotUserID.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if ("ops".equals(usertype)) {
                try {
                    res = pc.callProc("SelectOBByName", para);
                    while (res.next()) {
                        id = res.getString(1);
                        id2 = res.getString(2);
                        name = res.getString(3);
                        result = "  " + id + "   " + "    " + name + "~~~~";
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(FogotUserID.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if ("prf".equals(usertype)) {
                try {
                    res = pc.callProc("SelectPrefectByName", para);
                    while (res.next()) {
                        id = res.getString(2);
                        id2 = res.getString(1);
                        name = res.getString(3);
                        result = "  " + id + "   " + "    " + name + "~~~~";
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(FogotUserID.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if ("prn".equals(usertype)) {
                try {
                    res = pc.callProc("SelectParentByName", para);
                    while (res.next()) {
                        id = res.getString(3);
                        name = res.getString(2);
                        result = "  " + id + "    " + name + "~~~~";
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(FogotUserID.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if ("tss".equals(usertype)) {
                try {
                    res = pc.callProc("SelectTSSByName", para);
                    while (res.next()) {
                        id = res.getString(1);
                        name = res.getString(2);
                        result = "  " + id + "    " + name + "~~~~";
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(FogotUserID.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            response.setContentType("text/Html");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(result);
       /* } catch (ParseException ex) {
            Logger.getLogger(FogotUserID.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        
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
