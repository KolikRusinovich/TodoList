package com.rusinovich.todolist.dao;

import java.util.List;
import com.rusinovich.todolist.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional(readOnly = true)
public interface TaskDao extends JpaRepository<Task, Long> {
   Task findById(long id);
   List<Task> findByUser_id(long id);
}
