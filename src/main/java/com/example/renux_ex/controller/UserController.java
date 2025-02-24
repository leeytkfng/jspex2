package com.example.renux_ex.controller;

import com.example.renux_ex.model.User;
import com.example.renux_ex.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService){
        this.userService=userService;
    }

    @GetMapping("/register")
    public String registerPage() {
        return "pages/register";
    }

    @PostMapping("/register")
    public String registerUser(HttpServletRequest request , Model model) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");

        User user = new User(username,password,name);

        if(userService.resister(user)){
            model.addAttribute("message","회원가입성공");
            return "pages/login";
        } else {
            model.addAttribute("error" ,"이미 사용중입니다");
            return "pages/register";
        }
    }
    @PostMapping("/login")
    public String LoginUser(HttpServletRequest request ,Model model){
        String username = request.getParameter("username");
        String password = request.getParameter("password");

       Optional<User> user = userService.login(username,password);

       if(user.isPresent()){
           HttpSession session = request.getSession();
           session.setAttribute("user",user.get());
           return "redirect:/index";
       } else {
           model.addAttribute("error", "아이디 또는 비밀번호가 일치하지않습니다.");
           return "redirect:/login";
       }

    }

    @GetMapping("/")
    public String loginPage(){
        return "pages/login";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate(); //세션삭제
        return "redirect:/login";
    }

}
