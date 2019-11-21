<%@ page import="db.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Rabia
  Date: 11/21/2019
  Time: 9:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>

<%
    DbConnection ra=new DbConnection();
    ResultSet result =ra.displaytweets();
    PrintWriter out1=response.getWriter();
    String r="<table border='1'> <tr>  <th>jobtitle</th> <th>jobdescription</th> <th>jobtype</th> <th>jobcity</th>  <th>timedate</th> </tr>";
    try{
        while(result.next()){
            r=r+"<tr><td>"+result.getString("jobtitle")+"</td>";
            r=r+"<td>"+result.getString("jobdescription")+"</td>";
            r=r+"<td>"+result.getString("jobtype")+"</td>";
            r=r+"<td>"+result.getString("jobcity")+"</td>";
            r=r+"<td>"+result.getTimestamp("Time")+"</td></tr>";

        }
    }catch(SQLException e){
        e.printStackTrace();

    }
    r=r+"</table>";
    out1.write(r+"");

%>

</body>
</html>
