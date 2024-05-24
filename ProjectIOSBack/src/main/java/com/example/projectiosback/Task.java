package com.example.projectiosback;

import jakarta.persistence.Entity;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;

@Entity
public class Task {

    @Id
    private String id;
    private String title;
    private String description;

    private String status;

    private String type;

    // Constructors, getters, and setters
    public Task() {
    }

    public Task(String id, String title, String description, String status, String type) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.status = status;
        this.type = type;
    }



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
// Getters and Setters
}

