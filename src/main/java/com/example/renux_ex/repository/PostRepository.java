package com.example.renux_ex.repository;

import com.example.renux_ex.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostRepository extends JpaRepository<Post,Long> {
}
