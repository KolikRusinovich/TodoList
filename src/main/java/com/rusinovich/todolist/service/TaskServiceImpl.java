package com.rusinovich.todolist.service;

import java.util.List;
import com.rusinovich.todolist.dao.TaskDao;
import com.rusinovich.todolist.model.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Implementation of {@link TaskService} interface.
 */

@Service
@Transactional(readOnly = true)
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskDao taskDao;

    @Override
    @Transactional
    public void save(Task task) {
        taskDao.save(task);
    }

    @Override
    public Task findById(long id) {
        return taskDao.findById(id);
    }

    @Override
    @Transactional
    public void delete(long id){
        taskDao.delete(id);
    }

    @Override
    public List<Task> findByUserId(long user_id){

        return taskDao.findByUser_id(user_id);
    }
}