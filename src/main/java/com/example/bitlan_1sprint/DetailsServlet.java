package com.example.bitlan_1sprint;

import DBManager.DBManager;
import Tasks.Tasks;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DetailsServlet", value = "/DetailsServlet")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Tasks task = DBManager.getTask(id);
            request.setAttribute("task", task);
            request.getRequestDispatcher("/details.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
