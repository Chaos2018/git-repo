package cn.hzd.web.controller;

import cn.hzd.model.crud.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/demo")
public class DemoController {
    @RequestMapping(value = "/test.html", method = RequestMethod.GET)
    public String test(Model model) {
        User user = new User();
        user.setUsername("longchao");
        user.setPassword("123456");
        model.addAttribute("model", user);
        return "/demo/test";
    }
}
