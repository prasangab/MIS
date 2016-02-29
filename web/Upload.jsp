<%-- 
    Document   : Upload
    Created on : Jan 13, 2015, 11:29:41 AM
    Author     : Mr.Mic
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>File Upload to Database Demo</title>
    </head>
    <body>
        <center>
            <h3>File Upload to Database Demo</h3>
            <form method="post" action="uploadFile" enctype="multipart/form-data">
                <table border="0">
                    <tr>
                        <td>File Name: </td>
                        <td><input type="text" name="name" size="50"/></td>
                    </tr>
                    <tr>
                        <td>extention: </td>
                        <td><input type="text" name="extention" size="50"/></td>
                    </tr>
                    <tr>
                        <td>Access: </td>
                        <td>
                            <select name="access">
                                <option value="Public">Public</option>
                                <option value="Student">Student</option>
                                <option value="Parent">Parent</option>
                                <option value="Prefect">Prefect</option>
                                <option value="Old Pupil">Old Pupil</option>
                                <option value="Staff">Staff</option>
                                <option value="OU">Operational User</option>

                            </select>
                        <td>
                    </tr>
                    <tr>
                        <td>Type </td>
                        <td>
                            <select name="type">
                                <option value="File">File</option>
                                <option value="Audio">Audio</option>
                                <option value="Video">Video</option>
                                <option value="Photo">Photo</option>

                            </select>
                        </td>
                        <!--   <td><input type="text" name="type" size="50"/></td> -->
                    </tr>
                    <tr>
                        <td>Portrait Photo: </td>
                        <td><input type="file" name="photo" size="50"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Save">
                        </td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>