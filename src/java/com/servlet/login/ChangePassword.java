/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.LogginValidation;
import com.MIS.lib.PasswordEncoding;
import com.MIS.lib.PersonIdentifier;
import com.MIS.lib.ProsedeurControls;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

/**
 *
 * @author Mr.Mic
 */
public class ChangePassword extends HttpServlet {

    String uid, opw, npw1, npw2, newpw, para1;
    private String type;
    private String massage;

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
            /*  out.println("<!DOCTYPE html>");
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet ChangePassword</title>");            
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet ChangePassword at " + request.getContextPath() + "</h1>");
             out.println("</body>");
             out.println("</html>");*/
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
        try {

            HttpSession session = request.getSession();
            ProsedeurControls pc = new ProsedeurControls();
            PasswordEncoding pe = new PasswordEncoding();
            LogginValidation lv = new LogginValidation();

            uid = (String) session.getAttribute("useID");
            opw = pe.Encode(request.getParameter("oldpw"));
            npw1 = request.getParameter("newpw1");
            npw2 = request.getParameter("newpw2");

            PersonIdentifier pi = new PersonIdentifier();
            type=pi.getUserType(uid);
            newpw = pe.Encode(npw1);

            if (lv.checkValidity(uid, opw)) {
                if (npw1.equals(npw2)) {
                    npw2 = pe.Encode(npw1);
                    para1 = "('" + uid + "','" + npw2 + "')";
                    pc.callProc("updatePassword", para1);

                    massage="Pasword is changed";
                    request.setAttribute("massage", massage);
                    
                    if ("adm".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/admValid.jsp");
                        rd.forward(request, response);
                    } else if ("stu".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stuValid.jsp");
                        rd.forward(request, response);
                    } else if ("rci".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/rciValid.jsp");
                    rd.forward(request, response);
                    } else if ("stf".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stfValid.jsp");
                        rd.forward(request, response);
                    } else if ("ops".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/opsValid.jsp");
                        rd.forward(request, response);
                    } else if ("prf".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/prfValid.jsp");
                        rd.forward(request, response);
                    } else if ("tss".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/tssValid.jsp");
                        rd.forward(request, response);
                    } else if ("pbi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/pbiValid.jsp");
                        rd.forward(request, response);
                    } else if ("tsi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/tsiValid.jsp");
                        rd.forward(request, response);
                    } else if ("ebi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/ebiValid.jsp");
                        rd.forward(request, response);
                    } else if ("prn".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/prnValid.jsp");
                        rd.forward(request, response);
                    } else if ("opi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/opiValid.jsp");
                        rd.forward(request, response);
                    } else if ("sti".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stiValid.jsp");
                        rd.forward(request, response);
                    } else {
                        //  request.setAttribute("massage", "Your Use Name is not Correct");
                        RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                        rd.forward(request, response);
                    }
                    
                    
                    
                } 
            }
            else {
                request.setAttribute("massage", "Your old User name or password is not correct");
                
                
                 if ("adm".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/admInValid.jsp");
                        rd.forward(request, response);
                    } else if ("stu".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stuInValid.jsp");
                        rd.forward(request, response);
                    } else if ("rci".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                    rd.forward(request, response);
                    } else if ("stf".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stfInValid.jsp");
                        rd.forward(request, response);
                    } else if ("ops".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/opsInValid.jsp");
                        rd.forward(request, response);
                    } else if ("prf".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/prfInValid.jsp");
                        rd.forward(request, response);
                    } else if ("tss".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/tssInValid.jsp");
                        rd.forward(request, response);
                    } else if ("pbi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/pbiInValid.jsp");
                        rd.forward(request, response);
                    } else if ("tsi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/tsiInValid.jsp");
                        rd.forward(request, response);
                    } else if ("ebi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/ebiInValid.jsp");
                        rd.forward(request, response);
                    } else if ("prn".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/prnInValid.jsp");
                        rd.forward(request, response);
                    } else if ("opi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/opiInValid.jsp");
                        rd.forward(request, response);
                    } else if ("sti".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stiInValid.jsp");
                        rd.forward(request, response);
                    } else {
                        //  request.setAttribute("massage", "Your Use Name is not Correct");
                        RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                        rd.forward(request, response);
                    }
                
           

            }

// processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ChangePassword.class.getName()).log(Level.SEVERE, null, ex);
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
