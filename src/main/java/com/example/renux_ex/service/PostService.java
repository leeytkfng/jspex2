package com.example.renux_ex.service;

import com.example.renux_ex.model.Post;
import com.example.renux_ex.repository.PostRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PostService {

    private final PostRepository postRepository;

    public PostService(PostRepository postRepository){
        this.postRepository = postRepository;
    }

    public List<Post> getAllPost(){
        return postRepository.findAll();
    }


    //글 저장
    public void savePost(Post post){
        postRepository.save(post);
    }

    public Post getPostById(Long id) {
        return postRepository.findById(id)
                .orElseThrow(()-> new IllegalArgumentException("없습니다."));
    }

    @Transactional
    public void updatePost(Long id,String name ,String title,String content) {
        Post post = postRepository.findById(id)
                .orElseThrow(()-> new IllegalArgumentException("없어요"));
        post.setName(name);
        post.setTitle(title);
        post.setContent(content);
        postRepository.save(post);
    }

    public void deletePost(Long id){
        if(!postRepository.existsById(id)){
            throw  new IllegalArgumentException("존재 x");
        }
        postRepository.deleteById(id);
    }
}
