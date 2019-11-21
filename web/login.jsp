<%--
  Created by IntelliJ IDEA.
  User: Fawad
  Date: 17/10/2019
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Test</title>
    <style>
        .topnav {
            overflow: hidden;
            background-color: cornflowerblue;
        }

        body{
            background-image: url("https://graphicsmount.com/wp-content/uploads/edd/2017/08/Job-Search-Logo-1-1180x843.jpg");
        }
        .button {
            background-color: #e7e7e7; /* Green */
            border: none;
            color: black;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>

<body>
<div class="topnav">
    <a >Login</a>
</div>
<a href="register.jsp">New user? register here</a>
<form action="login" method="post">

    <div class="form-group">

     <input type="text" class="button" name="Username" placeholder="Enter name"  required>
    </div>
    <br>
    <div class="form-group">

        <input type="Password" class="button" name="Password" placeholder="Password"   required>
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
</form>
</body>
</html>