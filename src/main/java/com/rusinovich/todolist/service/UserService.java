package com.rusinovich.todolist.service;

import com.rusinovich.todolist.model.User;

/**
 * Service class for {@link com.rusinovich.todolist.model.User}
 */

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}