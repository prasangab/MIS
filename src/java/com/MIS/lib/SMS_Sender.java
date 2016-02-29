/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MIS.lib;

/**
 *
 * @author Mr.Mic
 */
public class SMS_Sender {
    String api_id,user,password;

    public SMS_Sender() {
        api_id ="3521554";
        user = "massa@123";
        password = "SQRESIYHJgdWEB";
        //ID: 211f88aad21c21e41835dbe0a65403a8
    }
    
    public String sendSMS(String to,String text,String uid){
        
        PersonIdentifier pi = new PersonIdentifier();
        String type= pi.getUserType(uid);
        String sender;
       if(type=="adm"){
           sender = "admin (uid = "+uid+" )";
       }else if (type == "rci"){
           sender = "reasearch center in-charge (uid = "+uid+" )";
       }else if (type == "sti"){
           sender = "staff in-charge(uid = "+uid+" )";
       }else if (type == "pbi"){
           sender = "priffect board in-charge(uid = "+uid+" )";
       }else if (type == "tsi"){
           sender = "thurunu saviya in-charge(uid = "+uid+" )";
       }else if (type == "ebi"){
           sender = "exam branch in-charge(uid = "+uid+" )";
       }else if (type == "opi"){
           sender = "old pupil in-charge(uid = "+uid+" )";
       }else{
            sender ="error";
       }
      
        if(sender=="error"){
            return "Sorry, you can't send SMS.";
        }else{
        String massage =text+" This massage is send by "+sender;
        String mail= "api_id:" + api_id +"\nuser:" + user +"\npassword:"+password+"\nto:"+to+"\ntext:"+massage;        
        SendMailTLS sm = new SendMailTLS();
        sm.SendMail("sms@messaging.clickatell.com","", mail);
      //  return "SMS is send success fully. Your massage looks like "+massage;
        return massage;
        }
    }
    
  /*  public static void main(String[] args) {
        SMS_Sender sms = new SMS_Sender();
        String x = sms.sendSMS("94717584227,", "massa", "adm1");
        System.out.println(x);
    }*/
}
