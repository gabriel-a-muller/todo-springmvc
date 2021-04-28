package com.in28minutes.todo;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;



@Controller
@SessionAttributes("name")
public class TodoController {
	
		@Autowired
		TodoService service;
		
		@InitBinder
		protected void initBinder(WebDataBinder binder) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			binder.registerCustomEditor(Date.class, new CustomDateEditor(
					dateFormat, false, 10));
		}

		@RequestMapping(value = "/list-todos", method = RequestMethod.GET)
		public String listTodos(ModelMap model) {
			model.addAttribute("todos", service.retrieveTodos(retrieveLoggedInUser()));
			return "list-todos";
		}

		private String retrieveLoggedInUser() {
			Object principal = SecurityContextHolder.getContext()
					.getAuthentication().getPrincipal();
			
			if (principal instanceof UserDetails)
				return ((UserDetails) principal).getUsername();

			return principal.toString();
		}

		@RequestMapping(value = "/add-todo", method = RequestMethod.GET)
		public String addTodoPage(ModelMap model) {
			model.addAttribute("todo", new Todo(0, retrieveLoggedInUser(), "", new Date(), false));
			return "add-todo";
		}

		@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
		public String handleTodoRequest(ModelMap model, @Valid Todo todo, BindingResult result ) {
			if(result.hasErrors()) {
				return "add-todo";
			}
			service.addTodo(retrieveLoggedInUser(), todo.getDesc(), new Date(), false);
			model.clear();
			return "redirect:list-todos";
		}
		
		@RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
		public String deleteTodo(ModelMap model, @RequestParam int id) {
			model.clear();
			service.deleteTodo(id);
			return "redirect:list-todos";
		}
		
		@RequestMapping(value = "/update-todo", method = RequestMethod.GET)
		public String updateTodo(ModelMap model, @RequestParam int id) {
			Todo todo = service.retrieveTodo(id);
			model.clear();
			model.addAttribute("todo", todo);
			return "add-todo";
		}
		
		@RequestMapping(value = "/update-todo", method = RequestMethod.POST)
		public String handleUpdateTodoRequest(ModelMap model, @Valid Todo todo, BindingResult result ) {
			if(result.hasErrors()) {
				return "add-todo";
			}
			todo.setUser(retrieveLoggedInUser());
			service.updateTodo(todo);
			model.clear();
			return "redirect:list-todos";
		}
		
}
