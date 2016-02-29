<%-- 
    Document   : index2
    Created on : Jan 20, 2015, 9:08:38 PM
    Author     : Mr.Mic
--%>

<!doctype html>
<html lang=''>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../UI_Parts/stylesnav.css">
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
        <script src="../UI_Parts/script.js"></script>
        <title>CSS MenuMaker</title>
    </head>
    <body>

        <div id='cssmenu'>
            <ul>
                <li><a href='../index.jsp' target="_parent"><span>Home</span></a></li>
                <li class='active has-sub'><a href='#' target="_parent"><span>Organizations</span></a>
                    <ul>
                        <li class='has-sub'><a href='#' target="_parent"><span>Thurunu Saviya</span></a>
                            <ul>
                                <li><a href='#'><span>Courses</span></a></li>
                                <li class='last'><a href='#' target="_parent"><span>Out comes</span></a></li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#' target="_parent"><span>Prefect Board</span></a>
                            <ul>
                                <li><a href='#' target="_parent"><span>Organization</span></a></li>
                                <li class='last'><a href='#' target="_parent"><span>Services</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href='../history.jsp' target="_parent"><span>History</span></a></li>
                <li><a href="../PasswordChange_rci.jsp" target="_parent">Change Password</a></li>
                <li class='last'><a href='#' target="_parent"><span>Contact</span></a></li>

            </ul>
        </div>

    </body>
    <html>
