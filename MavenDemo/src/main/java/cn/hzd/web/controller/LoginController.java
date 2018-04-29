package cn.hzd.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hzd.bo.UserQueryBo;
import cn.hzd.model.crud.User;
import cn.hzd.service.IUserService;

@Controller
public class LoginController {

	@Autowired
	private IUserService userService;

	@RequestMapping("/doLogin.do") // url
	public String doLogin(User user, Model model) {
		if (userService.doUserLogin(user)) {
			model.addAttribute("successMsg", "登陆成功！");// 返回到页面所夹带的参数
			model.addAttribute("name", user.getUsername());
			return "/success";// 返回的页面
		} else {
			model.addAttribute("failMsg", "用户不存在或密码错误！");
			return "/fail";
		}
	}

	@RequestMapping("/register.html") // url
	public String doRegister(HttpServletRequest request, Model model) {
		// if (userService.doUserLogin(user)) {
		// model.addAttribute("successMsg", "登陆成功！");// 返回到页面所夹带的参数
		// model.addAttribute("name", user.getUsername());
		// return "/success";// 返回的页面
		// } else {
		// model.addAttribute("failMsg", "用户不存在或密码错误！");
		// return "/fail";
		// }
		return "/register";
	}

	@RequestMapping("/getUserList.html") // url
	public void getUserList(UserQueryBo queryBo, Model model) {
		List<User> modelList = userService.getList(queryBo);
		if (modelList != null) {
			for (User user : modelList) {
				System.out.println(
						user.getUsername() + "：" + user.getPassword());
			}
		}
		model.addAttribute("list", modelList);
	}

	public void doCookies(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		System.out.println(session.getId());
	}
}
