<%@ page import="java.util.ArrayList" %>
<%@ page import="Tasks.Tasks" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>To Do</title>
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
                <div class="row mt-3">
                    <div class="col-12">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
                            + Add Task
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <%@include file="addForm.jsp"%>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>DEADLINE</th>
                            <th>DONE</th>
                            <th>DETAILS</th>
                        </tr>
                    </thead>
                    <tbody>
                            <%
                                ArrayList<Tasks> tasks = (ArrayList<Tasks>) request.getAttribute("taskilar");
                                if (tasks != null){
                                    for (Tasks ts: tasks){
                            %>
                            <tr>
                            <td> 
                                <%=ts.getId()%>
                            </td>
                                <td>
                                   <%=ts.getName()%>
                                </td>
                                <td>
                                    <%=ts.getDeadlineDate()%>
                                </td>
                                <td>
                                    <%=ts.getId()%>
                                </td>
                                <td>
                                    <a href="/DetailsServlet?id=<%=ts.getId()%>" class="btn btn-info btn-sm" style="background-color: darkblue; color: white"> DETAILS </a>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>