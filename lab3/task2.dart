
// Task structure
class Task {
  String title;
  String description;
  bool isCompleted;

  Task(this.title, this.description, this.isCompleted);
}

// To-do list
class ToDoList {
  List<Task> tasks = [];

  // Method to add a new task to the list
  void addTask(Task task) {
    tasks.add(task);
  }

  // Method to remove a task from the list by name
  void removeTask(String title) {
    tasks.removeWhere((task) => task.title == title);
  }

  // Method to change the execution status of a task
  void changeTaskStatus(String title, bool isCompleted) {
    tasks.forEach((task) {
      if (task.title == title) {
        task.isCompleted = isCompleted;
      }
    });
  }

  // Method to display information about all tasks in a list
  void displayTasksInfo() {
    tasks.forEach((task) {
      print(
          'Title: ${task.title}, Description: ${task.description}, Completed: ${task.isCompleted ? 'Yes' : 'No'}');
    });
  }

  // Method to find and display all completed tasks
  List<Task> getCompletedTasks() {
    return tasks.where((task) => task.isCompleted).toList();
  }

  // Method to find and display all outstanding tasks
  List<Task> getOutstandingTasks() {
    return tasks.where((task) => !task.isCompleted).toList();
  }

  // Method to clear the list of completed tasks
  void clearCompletedTasks() {
    tasks.removeWhere((task) => task.isCompleted);
  }
}

void main() {
  // Test the implementation
  ToDoList toDoList = ToDoList();

  // Adding tasks
  toDoList.addTask(Task('Task 1', 'Description for Task 1', false));
  toDoList.addTask(Task('Task 2', 'Description for Task 2', true));
  toDoList.addTask(Task('Task 3', 'Description for Task 3', false));

  // Displaying all tasks' information
  print('All Tasks:');
  toDoList.displayTasksInfo();

  // Displaying completed tasks
  print('Completed Tasks:');
  List<Task> completedTasks = toDoList.getCompletedTasks();
  completedTasks.forEach((task) {
    print('Title: ${task.title}, Description: ${task.description}');
  });

  // Displaying outstanding tasks
  print('Outstanding Tasks:');
  List<Task> outstandingTasks = toDoList.getOutstandingTasks();
  outstandingTasks.forEach((task) {
    print('Title: ${task.title}, Description: ${task.description}');
  });

  // Clearing completed tasks
  toDoList.clearCompletedTasks();
  print('After clearing completed tasks:');
  toDoList.displayTasksInfo();
}
