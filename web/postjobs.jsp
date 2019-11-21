<%@ page import="db.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Fawad
  Date: 17/10/2019
  Time: 3:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JOBS</title>
    <style>
        .button {
            background-color: dodgerblue;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
        body{
            background-image: url("https://graphicsmount.com/wp-content/uploads/edd/2017/08/Job-Search-Logo-1-1180x843.jpg");
        }



    </style>

</head>
<body>

<%
    /*String email = null;
    HttpSession session1 = request.getSession(false);
    if (session1!=null){
        if(session1.getAttribute("email")!=null){
            email = (String)session1.getAttribute("email");
        }else
            response.sendRedirect("index.jsp");
    }*/
    /*String loginCooke = null;
    Cookie[] cookies = request.getCookies();
    if(cookies!=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("email")){
                loginCooke = cookie.getValue();
                break;
            }
        }
    }
    if(loginCooke==null){
        response.sendRedirect("index.jsp");
    }*/
%>

<form action="calledservlet" method="post">
    <h1>Job Title</h1>

    <input type="text" name="jobtitle" required >
    <h1>Job Description</h1>
    <textarea id="posttweetta" class="posttweetta"  name="jobdescription" required></textarea>
    <span class="posttweetcount"><span id="totalchars"></span></span>
    <h1>Job Type</h1>
    <input type="radio" name="jobtype"  value="full time"required> fulltime
    <input type="radio" name="jobtype"  value="part time"required> part time
    <h1>Job city</h1>

    <select name="jobcity">
        <option >karachi</option>
        <option>lahore</option>
        <option>Islamabad</option>
    </select><br>

    <div>
        <button class="button">Post Job</button>

    </div>
    </form>
</body>
</html>