/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MIS.lib;

import java.sql.*;

/**
 *
 * @author Mr.Mic
 */
public class LogginValidation {

    Connection con;
    DataBaseManagement dbcon1;
    ResultSet res;
    String useID, passWord, query;

    public boolean checkValidity(String x, String y) {
        try {
          /*  query = "select * from password where Id ='" + x + "' and PW ='" + y + "'";
            dbcon1 = new DataBaseManagement();
            con = (Connection) dbcon1.setConnetction();
            
            
            res = dbcon1.getResult(query, con);*/
            
            query ="('"+x+"','"+y+"')";
            ProsedeurControls pc = new ProsedeurControls();
            res =pc.callProc("logginChek", query);

            if (res.next()) {
                
                query = "('"+x+"','"+y+"')";
                pc.callProc("updatePassword", query);
                
                return true;
            } else {
                return false;
            }
            //return true;
        } catch (Exception ex) {
            return false;
        }

        }
    
}

