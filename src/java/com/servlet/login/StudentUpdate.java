/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.ProsedeurControls;
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
public class StudentUpdate extends HttpServlet {
 
     String p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15;
    int x1,x2,x3,x4,x5;
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet StudentUpdate</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StudentUpdate at " + request.getContextPath () + "</h1>");
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
       // String x1 = (String) session.getAttribute("uid");
        if (session.getAttribute("useID") == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }
        
        
          p1 = request.getParameter("Id");
      //  p2 = request.getParameter("Reg_Date");
        p2 = request.getParameter("Full_Name");
        p3 = request.getParameter("Initial_Name");
        p4 = request.getParameter("Religion");
        p5 = (String)request.getParameter("NIC");
      //  x1 = Integer.parseInt(((String)request.getParameter("Land_Phone")));
     //   x2 = Integer.parseInt(((String)request.getParameter("Mobile_Phone")));
    //    x3 = Integer.parseInt(((String)request.getParameter("Fax")));
        p9 = request.getParameter("email");
        p10 = request.getParameter("school");
        
        ProsedeurControls pc = new ProsedeurControls();
        String para = "('"+p1+"','"+p2+"','"+p3+"','"+p4+"','"+p5+"','"+p9+"','"+p10+"')" ;
         pc.callProc("updateStudent", para);
        
        RequestDispatcher rd = request.getRequestDispatcher("/ProssesSucsses.jsp");
        rd.forward(request, response);
        
        
       // processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
