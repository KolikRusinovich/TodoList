package com.rusinovich.todolist.service;

import com.rusinovich.todolist.model.Task;

import java.util.List;

/**
 * Service class for {@link com.rusinovich.todolist.model.Task}
 */

public interface TaskService {

    void save(Task task);

    Task findById(long id);

    List<Task> findByUserId(long user_id);

    void delete(long id);
}