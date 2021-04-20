package com.in28minutes.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

		@RequestMapping(value = "/login")
		/*@ResponseBody*/
		public String Login() {
			return "login";
		}
		
		@RequestMapping(value = "/welcome")
		public String Welcome() {
			return "welcome";
		}
}
