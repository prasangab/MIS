/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MIS.lib;

import com.mysql.jdbc.Connection;
import java.sql.ResultSet;

/**
 *
 * @author Mr.Mic
 */
public class ProsedeurControls {

    DataBaseManagement dbmc;
    Connection con;
    String query;
    ResultSet rs;

   

    public ResultSet callProc(String procedure, String parameterSet) {
        dbmc = new DataBaseManagement();
        con = (Connection) dbmc.setConnetction();
        query = "call managementinformationsystem." + procedure + parameterSet + ";";
        rs = dbmc.getResult(query, con);
        return rs;

    }

    public ResultSet callProc(String procedure) {
        dbmc = new DataBaseManagement();
        con = (Connection) dbmc.setConnetction();
        query = "call managementinformationsystem." + procedure + "();";
        rs = dbmc.getResult(query, con);
        return rs;

    }
  
}
