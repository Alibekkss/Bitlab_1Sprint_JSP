package com.example.bitlan_1sprint;

import DBManager.DBManager;
import Tasks.Tasks;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AddTaskServlet", value = "/addTask")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/addTask.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name= request.getParameter("name");
        String description = request.getParameter("description");
        String deadline = request.getParameter("deadline");

        Tasks ts = new Tasks(null, name, description, deadline);
        DBManager.addTask(ts);
        response.sendRedirect("/addTask?success");
    }
}
