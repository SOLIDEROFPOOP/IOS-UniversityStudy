package com.example.projectiosback;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/tasks")
public class TaskController {

    @Autowired
    private TaskRepository taskRepository;

    @PostMapping
    public ResponseEntity<Task> addTask(@RequestBody Task task) {
        task.setId("1"); // Ensure the ID is set
        Task savedTask = taskRepository.save(task);
        return ResponseEntity.ok(savedTask);
    }
}

