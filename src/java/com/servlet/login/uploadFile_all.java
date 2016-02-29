/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PersonIdentifier;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class uploadFile_all extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/managementinformationsystem";
    private String dbUser = "root";
    private String dbPass = "massa";
    private HttpSession ses;
    private String responce;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        String fname = request.getParameter("name");
        String extention = request.getParameter("extention");
        String name = fname + "." + extention;
        String access = request.getParameter("access");
        String type = request.getParameter("type");

        ses = request.getSession(true);
        String uid = (String) ses.getAttribute("useID");
        PersonIdentifier pi = new PersonIdentifier();
        String owner = pi.getUserType(uid);

        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "INSERT INTO file_management (name, access, type, owner, photo) values (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, access);
            statement.setString(3, type);
            statement.setString(4, owner);

            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(5, inputStream);
            }

            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {

                responce = "File uploaded and saved into database";

                String ptype = pi.getUserType(uid);
                if (ptype == "rci") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/rciValid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "tsi") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/tsiValid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "adm") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/admValid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "pbi") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/pbiValid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "ebi") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/ebiValid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "opi") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/opiValid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "sti") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/stiValid.jsp");
                    rd.forward(request, response);
                }
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            responce = "File uploaded and saved into database";

                String ptype = pi.getUserType(uid);
                if (ptype == "rci") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/rciInvalid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "tsi") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/tsiInvalid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "adm") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/admInvalid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "pbi") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/pbiInvalid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "ebi") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/ebiInvalid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "opi") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/opiInvalid.jsp");
                    rd.forward(request, response);
                } else if (ptype == "sti") {
                    request.setAttribute("massage", responce);
                    RequestDispatcher rd = request.getRequestDispatcher("/stiInvalid.jsp");
                    rd.forward(request, response);
                }
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();

                }
            }
            // sets the message in request scope
            // request.setAttribute("Message", message);

            // forwards to the message page
            // getServletContext().getRequestDispatcher("/rciValid.jsp").forward(request, response);
        }
    }
}
