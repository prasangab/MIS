/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.LogginValidation;
import com.MIS.lib.PasswordEncoding;
import com.MIS.lib.PersonIdentifier;
import com.MIS.lib.ProsedeurControls;
import com.MIS.lib.RandomStringGenerator;
import com.MIS.lib.SendMailTLS;
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
public class mainAccessControler extends HttpServlet {

    private String useID, ui, pw, pass;
    private String passWord;
    private LogginValidation lv;
    private boolean isValidUser;
    private ResultSet res;
    private String para;
    private int counter;
    private String para2;
    private String newpassword;
    private String email;
    private String usertupe;
    private String newpw;

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
             out.println("<title>Servlet mainAccessControler</title>");  
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet mainAccessControler at " + request.getContextPath () + "</h1>");
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
        /* if (session.getAttribute("useID") != null) {
         RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
         rd.forward(request, response);
         }
         */

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            ProsedeurControls proc = new ProsedeurControls();
            PasswordEncoding pe = new PasswordEncoding();
            PersonIdentifier pc = new PersonIdentifier();

            useID = (String) request.getParameter("userid");
            pass = (String) request.getParameter("userpassword");

            try {
                passWord = pe.Encode(pass);
            } catch (Exception ex) {
                Logger.getLogger(mainAccessControler.class.getName()).log(Level.SEVERE, null, ex);
            }
            para = "('" + useID + "')";
            res = proc.callProc("selectPassword", para);

            try {
                while (res.next()) {
                    counter = res.getInt("count");

                }
            } catch (SQLException ex) {
                Logger.getLogger(mainAccessControler.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (counter <= 5) {

                lv = new LogginValidation();
                isValidUser = lv.checkValidity(useID, passWord);

                if (isValidUser) {

                    HttpSession Session = request.getSession();
                    Session.setAttribute("useID", useID);
                    
                    
                    String type = pc.getUserType(useID);
                  // ui = (String) Session.getAttribute("useID");

                   // request.setAttribute("uid", ui);
                    // request.setAttribute("password", pw);

                    if ("adm".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/admHome.jsp");
                        rd.forward(request, response);
                    } else if ("stu".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stuHome.jsp");
                        rd.forward(request, response);
                    } else if ("rci".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/rciHome.jsp");
                        rd.forward(request, response);
                    } else if ("stf".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stfHome.jsp");
                        rd.forward(request, response);
                    } else if ("ops".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/opsHome.jsp");
                        rd.forward(request, response);
                    } else if ("prf".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/prfHome.jsp");
                        rd.forward(request, response);
                    } else if ("tss".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/tssHome.jsp");
                        rd.forward(request, response);
                    } else if ("acc".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/accHome.jsp");
                        rd.forward(request, response);
                    } else if ("pub".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/pubHome.jsp");
                        rd.forward(request, response);
                    } else if ("pbi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/pbiHome.jsp");
                        rd.forward(request, response);
                    } else if ("tsi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/tsiHome.jsp");
                        rd.forward(request, response);
                    } else if ("ebi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/ebiHome.jsp");
                        rd.forward(request, response);
                    } else if ("prn".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/prnHome.jsp");
                        rd.forward(request, response);
                    } else if ("opi".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/opiHome.jsp");
                        rd.forward(request, response);
                    } else if ("sti".equals(type)) {
                        RequestDispatcher rd = request.getRequestDispatcher("/stiHome.jsp");
                        rd.forward(request, response);
                    } else {
                          request.setAttribute("massage", "Your User Name is Invalid");
                        RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                        rd.forward(request, response);
                    }

                    // processRequest(request, response);
                } else {
                    para2 = "('" + useID + "')";
                    proc.callProc("passwordCounterIncriment", para2);
                    request.setAttribute("massage", "Your user name and password is Invalid");
                    RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                    rd.forward(request, response);
                }
            } else {

                RandomStringGenerator rsg = new RandomStringGenerator();
                pw = rsg.nextSessionId();

                try {
                    newpw = pe.Encode(pw);
                } catch (Exception ex) {
                    Logger.getLogger(FogetPassword.class.getName()).log(Level.SEVERE, null, ex);
                }

                String para = "('" + useID + "')";

                if ("adm".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);

                } else if ("stu".equals(usertupe)) {
                    res = proc.callProc("selectStudent", para);

                } else if ("rci".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);

                } else if ("stf".equals(usertupe)) {
                    res = proc.callProc("selectStaff", para);

                } else if ("ops".equals(usertupe)) {
                    res = proc.callProc("selectOldBoy", para);

                } else if ("prf".equals(usertupe)) {
                    res = proc.callProc("selectPrefect", para);

                } else if ("tss".equals(usertupe)) {
                    res = proc.callProc("selectTSS", para);

                } else if ("acc".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);

                } else if ("pub".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);

                } else if ("pbi".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);

                } else if ("tsi".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);

                } else if ("ebi".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);
                } else if ("prn".equals(usertupe)) {
                    res = proc.callProc("selectGardian", para);
                } else if ("sti".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);
                } else if ("opi".equals(usertupe)) {
                    res = proc.callProc("selectOperationalUser", para);

                } else {
                    request.setAttribute("massage", "Your account is temporary blocked.Get new password through fogot pssword link on main login or meet research center in-charge");
                    RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                    rd.forward(request, response);

                }

                if (!res.next()) {
                    RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                    rd.forward(request, response);

                } else {
                    String para2 = "('" + useID + "','" + newpw + "')";
                    proc.callProc("updatePassword", para2);

                    email = res.getString("Email");

                    SendMailTLS smt = new SendMailTLS();
                    smt.SendMail(email, "New password for SVMIS", "your new password is = " + pw);

                }

                request.setAttribute("massage", "Your account is temporary blocked.Get new password through fogot pssword link on main login or meet research center in-charge");
                RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                rd.forward(request, response);
            }

        } catch (Exception e) {
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
