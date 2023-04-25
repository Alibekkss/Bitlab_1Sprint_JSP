<%@ page import="java.util.ArrayList" %>
<%@ page import="Tasks.Tasks" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Task</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/bootstrap.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid" style="background-color: darkblue">
        <a class="navbar-brand" href="#" style="color: white">TASK MANAGER</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="hello-servlet" style="color: white">All Tasks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addTask" style="color: white">Add Task</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-6 offset-3">
            <%
                String success = request.getParameter("success");
                if(success!=null){
            %>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Your Task</strong> has added successfully!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
                }
            %>
           <%@include file="addForm.jsp"%>
        </div>
    </div>
</div>
</body>
</html>