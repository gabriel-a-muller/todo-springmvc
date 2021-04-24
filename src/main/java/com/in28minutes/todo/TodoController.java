package com.in28minutes.todo;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;



@Controller
@SessionAttributes("name")
public class TodoController {
	
		@Autowired
		TodoService service;

		@RequestMapping(value = "/list-todos", method = RequestMethod.GET)
		public String listTodos(ModelMap model) {
			model.addAttribute("todos", service.retrieveTodos("Gabriel"));
			return "list-todos";
		}
		
		@RequestMapping(value = "/add-todo", method = RequestMethod.GET)
		public String addTodoPage() {
			return "add-todo";
		}
		/* @RequestParam Date targetDate*/
		@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
		public String handleTodoRequest(ModelMap model, @RequestParam String desc) {
			service.addTodo("Gabriel", desc, new Date(), false);
			model.clear();
			return "redirect:list-todos";
		}
}
