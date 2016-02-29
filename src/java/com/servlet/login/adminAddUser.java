/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PersonIdentifier;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mr.Mic
 */
public class adminAddUser extends HttpServlet {

    String userType;
    private String type;

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
            /* TODO output your page here
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet adminAddUser</title>");  
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet adminAddUser at " + request.getContextPath () + "</h1>");
             out.println("</body>");
             out.println("</html>");
             */
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
        HttpSession session = request.getSession();
        String x1 = (String) session.getAttribute("useID");
        if (session.getAttribute("useID") == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }

        PersonIdentifier pi = new PersonIdentifier();
        type = pi.getUserType(x1);

        userType = (String) request.getParameter("usertype");

        if ("rci".equals(type) || "adm".equals(type)){
            
        
        if ("stu".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationStu.jsp");
                rd.forward(request, response);
                processRequest(request, response);
            } else if ("stf".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationStf.jsp");
                rd.forward(request, response);
                processRequest(request, response);
            } else if ("rci".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationRci.jsp");
                rd.forward(request, response);
            } else if ("adm".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationAdm.jsp");
                rd.forward(request, response);
            } else if ("ops".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationOldBoy.jsp");
                rd.forward(request, response);
            } else if ("prf".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationPrf.jsp");
                rd.forward(request, response);
            } else if ("tss".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/TSSRegistation_RCI1.jsp");
                rd.forward(request, response);
            } else if ("acc".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationAcc.jsp");
                rd.forward(request, response);
            } else if ("pub".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationPub.jsp");
                rd.forward(request, response);
            } else if ("pbi".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationPbi.jsp");
                rd.forward(request, response);
            } else if ("tsi".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/TSIRegistation_RCI.jsp");
                rd.forward(request, response);
            } else if ("ebi".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/Registrationebi_Rci.jsp");
                rd.forward(request, response);
            } else if ("opi".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationOpi.jsp");
                rd.forward(request, response);
            } else if ("sti".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationSti.jsp");
                rd.forward(request, response);
            } else if ("prn".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationPrn.jsp");
                rd.forward(request, response);
            }
            // processRequest(request, response);
        }
        else {
              if ("stf".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationStf_STI.jsp");
                rd.forward(request, response);
                processRequest(request, response);
            }  else if ("ops".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationOPS_OPI.jsp");
                rd.forward(request, response);
            } else if ("prf".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationPrf-PBI.jsp");
                rd.forward(request, response);
            } else if ("tss".equals(userType)) {
                RequestDispatcher rd = request.getRequestDispatcher("/RegistationTSS_TSI.jsp");
                rd.forward(request, response);
            } 
            
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
