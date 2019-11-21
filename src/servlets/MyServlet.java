package servlets;



import db.DbConnection;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "MyServlet")
public class MyServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Username = request.getParameter("Username");
        String Password = request.getParameter("Password");
        DbConnection dbConnection=new DbConnection();
        dbConnection.insertData(Username,Password);

        response.sendRedirect("login.jsp");
        PrintWriter out =response.getWriter();
        out.write( "Record save succesfully");

        out.write("username is"+Username);
        out.write("password is"+Password);
    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        out.write(  "you are in servlettttt" );
    }
}