package com.rusinovich.todolist.service;

import com.rusinovich.todolist.dao.TaskDao;
import com.rusinovich.todolist.model.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Service class for {@link com.rusinovich.todolist.model.Task}
 */
@Service
@Transactional(readOnly = true)
public class TaskService {

    @Autowired
    private TaskDao taskDao;

    @Transactional
    public void save(Task task) {
        taskDao.save(task);
    }

    public Task findById(long id) {
        return taskDao.findById(id);
    }

    @Transactional
    public void delete(long id){
        taskDao.delete(id);
    }

    public List<Task> findByUserId(long user_id){

        return taskDao.findByUser_id(user_id);
    }
}