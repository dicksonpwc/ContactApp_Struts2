<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <title>Contact Application - Struts 2 - Model Answer</title>
    </head>

    <body>
        <h1>Contact Application - Struts2 - Model Answer</h1>
        <h2>Home</h2>
        <hr>   
        <ul>
            <li><a href="<s:url action='contact/addContacts'/>">Add a new Contact</a></li>	
            <li><a href="<s:url action='contact/listContacts'/>">List all Contacts</a></li>	
        </ul>
        <hr>   	
    </body>
</html>
