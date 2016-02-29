<%-- 
    Document   : testDate
    Created on : Jan 20, 2015, 10:30:57 PM
    Author     : Mr.Mic
--%>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery UI Datepicker - Format date</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker({ dateFormat: 'yy-mm-dd' });
 // var x =  $( "#format" ).change(function() {
 //     $( "#datepicker" ).datepicker( "option", "dateFormat", $( this ).val() );
 //   });
  });
  </script>
  <script>
      function my(){
//      alert(AmCharts.formatDate(new Date(2014,1,3), "yyyy,mm,dd"););
  }
  </script>
</head>
<body>
 
<p>Date: <input type="text" id="datepicker" size="30"></p>
 
<p>Format options:<br>
  <select id="format">
    
    <option value="yy-mm-dd">ISO 8601 - yy-mm-dd</option>
    <option value="d M, y">Short - d M, y</option>
    <option value="d MM, y">Medium - d MM, y</option>
    <option value="DD, d MM, yy">Full - DD, d MM, yy</option>
    <option value="&apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy">With text - 'day' d 'of' MM 'in the year' yy</option>
  </select>
</p>
<button onclick="my();" >clik</button>
 
</body>
</html>
