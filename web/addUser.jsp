<%-- 
    Document   : addUser
    Created on : Oct 16, 2014, 11:45:31 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h2>ADD user in hear</h2>
          <form action="adminAddUser" method="post" name="AdmControler">
            
           
            <table>
                <tr >
                    <td>
                        <b>Select User Type</b>
                    </td>
                    <td>
                        <select  name="usertype">
                            <option value="adm">Admin</option>
                            <option value="rci">Reserch Center Incharge</option>
                            <option value="pbi">Prefect Incharge</option>
                            <option value="tsi">Thurunusaviya Incharge</option>
                            <option value="opi">Old Boy Incharge</option>
                            <option value="sti">Staff Incharge</option>
                            <option value="stu">Student</option>
                            <option value="ebi">Exam Branch Incharge</option>
                            <option value="stf">Staff</option>
                            <option value="ops">Old Boy</option>
                            <option value="prf">Prefect</option>
                            <option value="tss">Thurunusaviya student</option>
                            <option value="acc">Accountant</option>
                            <option value="pub">Public Center</option>
                            <option value="prn">Gardian</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>

                <center>
                    <input type="submit" Value="Add New User" name="Submit">
                </center>
                </td>
                </tr>

            </table>
          </form>

       
    </body>
</html>
