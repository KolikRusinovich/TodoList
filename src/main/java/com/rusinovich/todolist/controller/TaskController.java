package com.rusinovich.todolist.controller;

import com.rusinovich.todolist.model.Task;
import com.rusinovich.todolist.model.User;
import com.rusinovich.todolist.service.TaskService;
import com.rusinovich.todolist.service.SecurityService;
import com.rusinovich.todolist.service.UserService;
import com.rusinovich.todolist.validator.TaskValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.WebDataBinder;

import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * Controller for {@link com.rusinovich.todolist.model.Task}'s pages.
 */

@Controller
public class TaskController {

    @Autowired
    private TaskService taskService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserService userService;

    @Autowired
    private TaskValidator taskValidator;

    /*@RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model) {


        return "create";
    }*/

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute("taskForm") Task taskForm, BindingResult bindingResult, Model model) {
        taskValidator.validate(taskForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "index";
        }

        User user = userService.findByUsername(securityService.findLoggedInUsername());
        taskForm.setUser_id(user.getId());
        taskForm.setStatus(false);
        taskService.save(taskForm);

        return "redirect:/index";
    }

    /*@RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        User user = userService.findByUsername(securityService.findLoggedInUsername());
        List<Task> taskList = taskService.findByUserId(user.getId());
        model.addAttribute("TASKS", taskList);
        return "index";
    }*/

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
        taskService.delete(id);
        return "redirect:/index";
    }

    @RequestMapping(value = "/get/{id}", method=RequestMethod.GET, produces= MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody Task get(@PathVariable("id") int id){
        return taskService.findById(id);
    }

    @RequestMapping(value = "/change_status/{id}", method = RequestMethod.GET)
    public String changeStatus(@PathVariable("id") int id) {
        Task task = taskService.findById(id);
        task.setStatus(!task.isStatus());
        taskService.save(task);
        return "redirect:/index";
    }
}
