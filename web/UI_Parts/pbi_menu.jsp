<%-- 
    Document   : pbi_menu
    Created on : Jan 16, 2015, 4:13:45 PM
    Author     : Mr.Mic
--%>
<div>
    <ul id="navbar">
        <!-- The strange spacing herein prevents an IE6 whitespace bug. -->
        <li><a href="#">||Prefect Management||</a>
            <ul>
                <li><a href="AddServiseForPrefect.jsp">Add Service For Prefect</a></li>
                <li><a href="RemoveServiceForPrefect.jsp">Remove Service From Prefect</a></li>
           <!--     <li><a href="#">Update Service From Prefect</a></li>  -->
                <li><a href="addPrefectBehaviors.jsp">Add Prefect Behaviors</a></li>
                <li><a href="removePrefectBehaviors.jsp">Remove Prefect Behaviors</a></li>
             <!--   <li><a href="#">Update Prefect Behaviors</a></li> -->
            </ul>
        </li>


        <li><a href="#">||Service Management||</a>
            <ul>
                <li><a href="addServise.jsp">Add Service</a></li>
                <li><a href="deleteServise.jsp">Remove Service</a></li>

            </ul>
        </li>
        <li><a href="#">||User Management||</a>
            <ul>
                <li><a href="PbiRegPrefect.jsp">Add Prefect</a></li> 
                <li><a href="removeprefect.jsp">Remove Prefect</a></li>
              <!--  <li><a href="RegistationTsi.jsp">Add Prefect In-charge</a></li> -->
            </ul>
        </li>
        <li><a href="#">||Reports||</a>
            <ul>
                <li><a href="#">Student Reports</a></li>
                <li><a href="#">Prefect Reports</a></li>
                <li><a href="#">Prefect Board Reports</a></li>

            </ul>
        </li>
        <li><a href="#">||SMS and e-mails||</a>
            <ul>
                 <li><a href="sms_pbi_student.jsp">Send SMS to Student</a></li>
                <li><a href="sms_pbi_parent.jsp">Send SMS to Parent</a></li>
                <li><a href="sms_pbi_staff.jsp">Send SMS to Staff</a></li>
                <li><a href="email_pbi_student.jsp">Send E-mail to Student</a></li>
                <li><a href="email_pbi_parent.jsp">Send E-mail to Parent</a></li>
                <li><a href="email_pbi_staff.jsp">Send E-mail to Staff</a></li>

            </ul>
        </li>
        <li><a href="#">||Resource Management||</a>
            <ul>
                <li><a href="file_uploard_pbi.jsp">Add File</a></li>
                <li><a href="file_uploard_pbi.jsp">Add Multimedia</a></li>
                <li><a href="file_remove_pbi.jsp">Remove File</a></li>
                <li><a href="file_remove_pbi.jsp">Remove Multimedia</a></li>
                <li><a href="view_files_pbi.jsp">Download File</a></li>
                <li><a href="view_audio_pbi.jsp">Download Audio</a></li>
                <li><a href="view_image_pbi.jsp">View Photo</a></li>
                <li><a href="view_vedio_pbi.jsp">View Video</a></li>
            </ul>
        </li>

    </ul>
</div>