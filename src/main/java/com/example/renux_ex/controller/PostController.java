package com.example.renux_ex.controller;

import com.example.renux_ex.model.Post;
import com.example.renux_ex.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PostController {

    private final PostService postService;

    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/post")
    public String viewPost(@RequestParam("id") Long id , Model model){
        Post post = postService.getPostById(id);
        model.addAttribute("post",post);
        return "pages/postDetail";
    }

}
