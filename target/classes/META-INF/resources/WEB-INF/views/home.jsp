<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Registration System</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/style/style.css">

</head>
<body>
    <nav class="navbar">
        <ul>           
            <li><a href="">Sign out</a></li>
            <li><a href="">User</a></li>
            <li><a href="/transfer">Transfer Ownership</a></li>
            <li><a href="/registration">New Registration</a></li>
            <li><a href="/search">Search</a></li>
            <div class="logo">
                <img src="img/logo.png" alt="Logo">
            </div>          
        </ul>
    </nav>

    <h1>Welcome to the Vehicle Registration System</h1>

    <p>This system allows you to perform various tasks related to vehicle.</p>
    <p>Only new registration page is functional</p>

    <footer>
        <p>&copy; 2024 Vehicle Registration System</p>
    </footer>
</body>
</html>
