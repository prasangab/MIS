/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MIS.lib;

import com.mysql.jdbc.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mr.Mic
 */
public class IDGenorator {

    String query, finalid, temp, index, year;
    int count;
    ResultSet res;

    DataBaseManagement dbmc = new DataBaseManagement();
    Connection con = (Connection) dbmc.setConnetction();

    public String getStudentID() {
        try {
            query = "select count(*) from student;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "stu" + index;
        return finalid;

    }

    public String getParentID() {
        try {
            query = "select count(*) from gardian;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "prn" + index;
        return finalid;

    }

    public String getStaffID() {
        try {
            query = "select count(*) from staff;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "stf" + index;
        return finalid;

    }

    public String getRCIID() {
        try {
            query = "select count(*) from operationalusers;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "rci" + index;
        return finalid;

    }

    public String getPBIID() {
        try {
            query = "select count(*) from operationalusers;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "pbi" + index;
        return finalid;

    }

    public String getTSIID() {
        try {
            query = "select count(*) from operationalusers;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "tsi" + index;
        return finalid;

    }

    public String getOBIID() {
        try {
            query = "select count(*) from operationalusers;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "opi" + index;
        return finalid;

    }

    public String getSTIID() {
        try {
            query = "select count(*) from operationalusers;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "sti" + index;
        return finalid;

    }

    public String getEBIID() {
        try {
            query = "select count(*) from operationalusers;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "ebi" + index;
        return finalid;

    }

    public String getOPSID() {
        try {
            query = "select count(*) from oldboy;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "ops" + index;
        return finalid;

    }

    public String getPRFID() {
        try {
            query = "select count(*) from prefect;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "prf" + index;
        return finalid;

    }

    public String getTSSID() {
        try {
            query = "select count(*) from student;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "00000" + temp;
                break;
            }
            case 2: {
                index = "0000" + temp;
                break;
            }
            case 3: {
                index = "000" + temp;
                break;
            }
            case 4: {
                index = "00" + temp;
                break;
            }
            case 5: {
                index = "0" + temp;
                break;
            }
            case 6: {
                index = temp;
                break;
            }

        }

        finalid = "tss" + index;
        return finalid;

    }

    public String getCourseID() {
        try {
            query = "select count(*) from course;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {

            case 1: {
                index = "00" + temp;
                break;
            }
            case 2: {
                index = "0" + temp;
                break;
            }
            case 3: {
                index = temp;
                break;
            }

        }

        finalid = "cos" + index;
        return finalid;

    }

    public String getComityID() {
        try {
            query = "select count(*) from committee;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {

            case 1: {
                index = "00" + temp;
                break;
            }
            case 2: {
                index = "0" + temp;
                break;
            }
            case 3: {
                index = temp;
                break;
            }

        }

        finalid = "com" + index;
        return finalid;

    }

    public String getDissisonID() {
        try {
            query = "select count(*) from commitydissisions;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {

            case 1: {
                index = "00" + temp;
                break;
            }
            case 2: {
                index = "0" + temp;
                break;
            }
            case 3: {
                index = temp;
                break;
            }

        }

        finalid = "dis" + index;
        return finalid;

    }

    public String getexamID() {
        try {
            query = "select count(*) from exam;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "000" + temp;
                break;
            }
            case 2: {
                index = "00" + temp;
                break;
            }
            case 3: {
                index = "0" + temp;
                break;
            }
            case 4: {
                index = temp;
                break;
            }

        }

        finalid = "exm" + index;
        return finalid;

    }

    public String getObserviseID() {
        try {
            query = "select count(*) from observises;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "0000" + temp;
                break;
            }
            case 2: {
                index = "000" + temp;
                break;
            }
            case 3: {
                index = "00" + temp;
                break;
            }
            case 4: {
                index = "0" + temp;
                break;
            }
            case 5: {
                index = temp;
                break;
            }

        }

        finalid = "ser" + index;
        return finalid;

    }

    public String getProjectID() {
        try {
            query = "select count(*) from project;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "0000" + temp;
                break;
            }
            case 2: {
                index = "000" + temp;
                break;
            }
            case 3: {
                index = "00" + temp;
                break;
            }
            case 4: {
                index = "0" + temp;
                break;
            }
            case 5: {
                index = temp;
                break;
            }

        }

        finalid = "pro" + index;
        return finalid;

    }

    public String getServiseID() {
        try {
            query = "select count(*) from service;";
            res = dbmc.getResult(query, con);
            while (res.next()) {
                count = res.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IDGenorator.class.getName()).log(Level.SEVERE, null, ex);
        }

        count = count + 1;
        temp = Integer.toString(count);
        int len = temp.length();
        switch (len) {
            case 1: {
                index = "0000" + temp;
                break;
            }
            case 2: {
                index = "000" + temp;
                break;
            }
            case 3: {
                index = "00" + temp;
                break;
            }
            case 4: {
                index = "0" + temp;
                break;
            }
            case 5: {
                index = temp;
                break;
            }

        }

        finalid = "ser" + index;
        return finalid;

    }

    /*  public static void main(String[] args) {
     IDGenorator idg = new IDGenorator();
     idg.getStudentID();
     }*/
}
