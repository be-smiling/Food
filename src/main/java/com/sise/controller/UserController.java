package com.sise.controller;

import com.sise.pojo.Food;
import com.sise.pojo.Illustration;
import com.sise.pojo.User;
import com.sise.service.FoodService;
import com.sise.service.IllustrationService;
import com.sise.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private FoodService foodService;

    @Autowired
    private IllustrationService illustrationService;

    @RequestMapping("/layout/layoutRight")
    private String adminHome(HttpServletRequest request, Model model) {
        User admin = (User)(request.getSession().getAttribute("admin"));
        if (admin!=null) {
            List<Illustration> illustrationList = illustrationService.findAll();
            model.addAttribute("illustrationList", illustrationList);
            return "admin/home";
        }
        return "redirect:/admin";
    }

    @RequestMapping("/admin/logined")
    private String adminLogined(User user, HttpServletRequest request, Model model) {
        User admin = userService.findByUsernameIsAndPasswordIs(user.getUsername(), user.getPassword());
        if (admin!=null){
            request.getSession().setAttribute("admin",admin);
            return "admin/index";
        }
        return "redirect:/admin";
    }

    @RequestMapping("/admin")
    private String adminLogin() {
        return "adminLogin";
    }

    @RequestMapping("/user")
    private String login() {
        return "login";
    }

    @RequestMapping("/user/logined")
    private String login(User user, HttpServletRequest request, Model model) {
        User user1 = userService.findByUsernameIsAndPasswordIs(user.getUsername(), user.getPassword());
        if (user1!=null){
            request.getSession().setAttribute("user1",user1);
            return "redirect:/food/findAll";
        }
        return "redirect:/user";
    }
}
