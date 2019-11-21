package servlets;

import db.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

@WebServlet(name = "MyServlettweets")
public class Servletjob extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jobtitle =request.getParameter("jobtitle");
        String jobdescription =request.getParameter("jobdescription");
        String jobtype =request.getParameter("jobtype");
        String jobcity =request.getParameter("jobcity");
        DbConnection dbConnection=new DbConnection();
        dbConnection.insertData(jobtitle,jobdescription,jobtype,jobcity);

        PrintWriter out =response.getWriter();
        out.write( "Record save succesfully");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out =response.getWriter();
        out.write(  "you are in servlettttt welcome " );
    }
}
