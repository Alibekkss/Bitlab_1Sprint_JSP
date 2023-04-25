package com.example.bitlan_1sprint;

import java.io.*;
import java.util.ArrayList;

import DBManager.DBManager;
import Tasks.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ArrayList<Tasks> tasks = DBManager.getAllTasks();
        request.setAttribute("taskilar", tasks);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}