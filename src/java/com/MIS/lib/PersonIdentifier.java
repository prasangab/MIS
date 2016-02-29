/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MIS.lib;

/**
 *
 * @author Mr.Mic
 */
public class PersonIdentifier {
    String persontype;
    
    public String getUserType(String un){
        int len = un.length();
        if(len>=3){
        
        char x = un.charAt(0);
        char y = un.charAt(1);
        char z = un.charAt(2);
        String userType = null;
        
        if(x=='a' && y=='d' && z=='m'){userType="adm";}
        else if(x=='r' && y=='c' && z=='i'){userType="rci";}
        else if(x=='s' && y=='t' && z=='u'){userType="stu";}
        else if(x=='s' && y=='t' && z=='f'){userType="stf";}
        else if(x=='o' && y=='p' && z=='s'){userType="ops";}
        else if(x=='p' && y=='r' && z=='f'){userType="prf";}
        else if(x=='t' && y=='s' && z=='s'){userType="tss";}
        else if(x=='p' && y=='u' && z=='b'){userType="pub";}
        else if(x=='p' && y=='b' && z=='i'){userType="pbi";}
        else if(x=='t' && y=='s' && z=='i'){userType="tsi";}
        else if(x=='e' && y=='b' && z=='i'){userType="ebi";}
        else if(x=='p' && y=='r' && z=='n'){userType="prn";}
        else if(x=='o' && y=='p' && z=='i'){userType="opi";}
        else if(x=='a' && y=='c' && z=='c'){userType="acc";}
        else if(x=='s' && y=='t' && z=='i'){userType="sti";}
        else {userType="Invalid User";}
        return userType;
        }else{
            return "Invalid User";
        }
        
       
    }
    
      
}
