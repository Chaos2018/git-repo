package cn.hzd.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/category.html")
	public String doCategory(HttpServletRequest request) {
		return "/category";
	}
	@RequestMapping("/specials.html")
	public String doSpecials(HttpServletRequest request) {
		return "/specials";
	}
	@RequestMapping("/myaccount.html")
	public String doMyaccount(HttpServletRequest request) {
		return "/myaccount";
	}
	@RequestMapping("/details.html")
	public String doDetails(HttpServletRequest request) {
		return "/details";
	}
	@RequestMapping("/contact.html")
	public String doContact(HttpServletRequest request) {
		return "/contact";
	}
	@RequestMapping("/about.html")
	public String doAbout(HttpServletRequest request) {
		return "/about";
	}
}
