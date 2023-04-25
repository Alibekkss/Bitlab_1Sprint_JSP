<%@ page import="java.util.ArrayList" %>
<%@ page import="Tasks.Tasks" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Details</title>
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
            <div class="col-sm-12">
                <%
                    Tasks tasks = (Tasks)request.getAttribute("task");
                %>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Name:</label>
                    <input class="form-control" type="text" value="<%=tasks.getName()%>" aria-label="Disabled input example" disabled readonly>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Description:</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"><%=tasks.getDescription()%></textarea>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Deadline:</label>
                    <input type="date" class="form-control" value="<%=tasks.getDeadlineDate()%>">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Done:</label>
                    <select class="form-control">
                        <option>YES</option>
                        <option>NO</option>
                    </select>
                </div>
                    <br>
                <button class="btn btn-success" style="color: white; background-color: limegreen">SAVE</button>
                <button class="btn btn-success" style="color: white; background-color: red">DELETE</button>
            </div>
        </div>
    </div>
</body>
</html>