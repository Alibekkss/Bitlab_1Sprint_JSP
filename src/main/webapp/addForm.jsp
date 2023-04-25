<form action="/addTask" method="post">
  <div class="form-group">
    <label>Name: </label>
    <input class="form-control" type="text" name="name">
  </div>
  <div class="form-group">
    <label>Description: </label>
    <input type="text" name="description" class="form-control">
  </div>
  <div class="form-group">
    <label>DeadLine: </label>
    <input type="date" name="deadline" class="form-control">
  </div>
  <div class="form-group">
    <button class="btn btn-success">Add Task</button>
  </div>
</form>