/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MIS.lib;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author Mr.Mic
 */
public class DateGenarator {
    private String thisyear;
    
    public String getToday(){
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
       //get current date time with Date()
       Date date = new Date();
      String today = dateFormat.format(date);
      return today;
    }
    
    public String year(){
    int year = Calendar.getInstance().get(Calendar.YEAR);
    thisyear = Integer.toString(year);
    return thisyear;
    }
    
   /* public static void main(String[] args) {
        DateGenarator dg = new DateGenarator();
        String x = dg.year();
        System.out.println(x);
    }*/
}
