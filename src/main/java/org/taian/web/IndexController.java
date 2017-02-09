package org.taian.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/index")
public class IndexController {

	@RequestMapping(value="/login", method = RequestMethod.GET )
	public String login(){
		return "login";
	}
}
