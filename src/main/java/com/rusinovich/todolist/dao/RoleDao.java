package com.rusinovich.todolist.dao;

import com.rusinovich.todolist.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleDao extends JpaRepository<Role, Long> {

}
