<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Application - Struts2 - Model Answer</title>
        <style type="text/css">
            .red {color:red;}
        </style>
        <s:head/>
    </head>
    <body>
        <h1>Contact Application - Struts2 - Model Answer</h1>
        <h2>Add Contact Form</h2>
        <s:form action="addContactSubmit" method="post">
            <s:textfield name="contact.firstname" label="First Name"/>
            <s:textfield name="contact.lastname" label="Last Name"/>
            <s:textfield name="contact.phone" label="Phone"/>
            <s:textfield name="contact.age" label="Age"/>
            <s:submit value="Save"/>
        </s:form>        
        <form action="<c:url value='/' />" method="get">
              <input type="submit" value="Cancel" />
        </form>
    </body>
</html>
