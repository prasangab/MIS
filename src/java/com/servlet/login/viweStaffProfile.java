/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PersonIdentifier;
import com.MIS.lib.ProsedeurControls;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class viweStaffProfile extends HttpServlet {

    String userid, parameter;
    ResultSet result;
    String p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36;
    private String RequestType;
    private String user2;

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
            out.println("<title>Servlet viweStaffProfile</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet viweStaffProfile at " + request.getContextPath() + "</h1>");
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
//updateOldBoyData viweOldBoyProfile
        HttpSession session = request.getSession();
        String x1 = (String) session.getAttribute("useID");
        PersonIdentifier pi = new PersonIdentifier();
        user2 = pi.getUserType(x1);

        userid = (String) request.getAttribute("userid");

        if (userid == null) {
            userid = (String) session.getAttribute("useID");
        }

        ProsedeurControls pc = new ProsedeurControls();
        parameter = "('" + userid + "')";
        result = pc.callProc("selectStaff", parameter);
        try {
            if (result.next()) {
                p1 = result.getString(1);
                p2 = result.getString(2);
                p3 = result.getString(3);
                p4 = result.getString(4);
                p5 = result.getString(5);
                p6 = result.getString(6);
                p7 = result.getString(7);
                p8 = result.getString(8);
                p9 = result.getString(9);
                p10 = result.getString(10);
                p11 = result.getString(11);
                p12 = result.getString(12);
                p13 = result.getString(13);
                p14 = result.getString(14);
                p15 = result.getString(15);
                p16 = result.getString(16);
                p17 = result.getString(17);
                p18 = result.getString(18);
                p19 = result.getString(19);
                p20 = result.getString(20);
                p21 = result.getString(21);
                p22 = result.getString(22);
                p23 = result.getString(23);
                p24 = result.getString(24);
                p25 = result.getString(25);
                p26 = result.getString(26);
                p27 = result.getString(27);
                p28 = result.getString(28);
                p30 = result.getString(29);
                p31 = result.getString(30);
                p32 = result.getString(31);
                p33 = result.getString(32);
                p34 = result.getString(33);
                p35 = result.getString(34);
                p36 = result.getString(35);

                request.setAttribute("p1", p1);
                request.setAttribute("p2", p2);
                request.setAttribute("p3", p3);
                request.setAttribute("p4", p4);
                request.setAttribute("p5", p5);
                request.setAttribute("p6", p6);
                request.setAttribute("p7", p7);
                request.setAttribute("p8", p8);
                request.setAttribute("p9", p9);
                request.setAttribute("p10", p10);
                request.setAttribute("p11", p11);
                request.setAttribute("p12", p12);
                request.setAttribute("p13", p13);
                request.setAttribute("p14", p14);
                request.setAttribute("p15", p15);
                request.setAttribute("p16", p16);
                request.setAttribute("p17", p17);
                request.setAttribute("p18", p18);
                request.setAttribute("p19", p19);
                request.setAttribute("p20", p20);
                request.setAttribute("p21", p21);
                request.setAttribute("p22", p22);
                request.setAttribute("p23", p23);
                request.setAttribute("p24", p24);
                request.setAttribute("p25", p25);
                request.setAttribute("p26", p26);
                request.setAttribute("p27", p27);
                request.setAttribute("p28", p28);
                request.setAttribute("p29", p19);
                request.setAttribute("p30", p30);
                request.setAttribute("p31", p31);
                request.setAttribute("p32", p32);
                request.setAttribute("p33", p33);
                request.setAttribute("p34", p34);
                request.setAttribute("p35", p35);

                RequestType = (String) request.getAttribute("FuntionType");

                if ("rci".equals(user2)) {
                    if ("update".equals(RequestType)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/updateStaffData_STI.jsp");
                        rd.forward(request, response);
                    } else {
                        RequestDispatcher rd = request.getRequestDispatcher("/viweStaffProfile.jsp");
                        rd.forward(request, response);
                    }
                } else if ("sti".equals(user2)) {

                    if ("update".equals(RequestType)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/updateStaffData.jsp");
                        rd.forward(request, response);
                    } else {
                        RequestDispatcher rd = request.getRequestDispatcher("/viweStaffProfile.jsp");
                        rd.forward(request, response);
                    }
                }
            } else {
                if ("rci".equals(user2)) {
                    request.setAttribute("massage", "User does not exist");
                    RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                    rd.forward(request, response);
                } else if ("sti".equals(user2)) {
                    request.setAttribute("massage", "User does not exist");
                    RequestDispatcher rd = request.getRequestDispatcher("/stiInvalid.jsp");
                    rd.forward(request, response);
                }

            }

        } catch (SQLException ex) {
            Logger.getLogger(adminSearchUser.class.getName()).log(Level.SEVERE, null, ex);
        }

        //8    pr.write(p1+p2+p3+p4+p5);
        //processRequest(request, response);updateStaffData
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
