package com.rusinovich.todolist.dao;

import com.rusinovich.todolist.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
