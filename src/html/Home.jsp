<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.*" %>
<html>
<head>
<title>Date JSP</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script type="text/javascript">
	$(".postcode-input button").click(function () {
    // var finalUrl = BASE_URL += "?postcode=" + postcode; 
    $.ajax({
        url: '/countryController',
        cache: false,
        success: function (html) {
            // Parse the recieved data here.
            console.log(html);
        }
    });
});
</script>
</head>
<% SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy"); %>
<body>
<h1>Welcome to Tomcat! Today is <%= sdf.format(new Date()) %></h1>

<div class="postcode-input">
    <input type="text" maxlength="6">
    <button type="submit">Submit</button>
</div>
</body>
</html>