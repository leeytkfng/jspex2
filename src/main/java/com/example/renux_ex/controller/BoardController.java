package com.example.renux_ex.controller;

import com.example.renux_ex.model.Post;
import com.example.renux_ex.service.PostService;
import jakarta.persistence.PersistenceContext;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.List;

@Controller
public class BoardController {

    private final PostService postService;


    public BoardController(PostService postService){
        this.postService = postService;
    }
    @GetMapping("/index")
    public String home(Model model){
        List<Post> postList = postService.getAllPost();
        model.addAttribute("postList",postList);

        return "index";
    }

    @GetMapping("/write")
    public String writePage(){
        return "pages/write";
    }

    @GetMapping("/post/{id}")
    public String getPost(@PathVariable("id") Long id, Model model){
        Post post = postService.getPostById(id);
        model.addAttribute("post",post);
        return "pages/post";
    }

    @PostMapping("/write")
    public String writePost(@RequestParam("title") String title,
                            @RequestParam("content") String content,
                            @RequestParam("name") String name ) {
             Post post = new Post(title,content,name,LocalDateTime.now());
             postService.savePost(post);
             return "redirect:/index";
    }

    @GetMapping("/post/edit")
    public String editPost(@RequestParam("id") Long id, Model model){
        Post post = postService.getPostById(id);
        model.addAttribute("post",post);
        return "pages/postEdit";
    }

    @PostMapping("/post/update")
    public String updatePost(@RequestParam("id") Long id,
                             @RequestParam("name") String name,
                             @RequestParam("title")String title ,
                             @RequestParam("content")String content) {
        postService.updatePost(id,name,title,content);
        return "redirect:/index"; //id 번호에맞는 홈페이지로 이동
    }

    @GetMapping("/post/delete")
    public String deletePost(@RequestParam("id") Long id){
        postService.deletePost(id);
        return "redirect:/index"; //삭제 완료 되면 delete하기
    }


}
