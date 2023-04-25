package DBManager;

import Tasks.Tasks;

import java.util.ArrayList;

public class DBManager {
    private static Long id = 5L;
    private static ArrayList<Tasks> tasks = new ArrayList<>();

    static {
        tasks.add(new Tasks(1L, "Go to the gym", "Go to the gym and make some Exercises", "23.01.22"));
        tasks.add(new Tasks(2L, "Wash Dishes", "Go to the gym and make some Exercises", "24.01.22"));
        tasks.add(new Tasks(3L, "Learn Java", "Go to the gym and make some Exercises", "22.01.22"));
        tasks.add(new Tasks(4L, "Sing a song", "Go to the gym and make some Exercises", "21.05.22"));
    }

    public static void addTask(Tasks task){
        task.setId(id);
        tasks.add(task);
        id++;
    }
    public static Tasks getTask(Long id){
        for (Tasks task: tasks) {
            if (task.getId() == id){
                return task;
            }
        }
        return null;
    }

    public static ArrayList<Tasks> getAllTasks(){
        return tasks;
    }

    public static void deleteTask(Long id){
        for (Tasks task: tasks) {
            if (task.getId() == id){
                System.out.println(tasks.remove(task));
            }
        }
    }
}
