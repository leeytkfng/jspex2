package com.example.renux_ex.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
public class Post {

    public Long getP_num() {
        return p_num;
    }

    public void setP_num(Long p_num) {
        this.p_num = p_num;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long p_num; // 자동생성해준 기본키

    public Post()
    {}
    public Post(String title, String content, String name, LocalDateTime createdAt) {
        this.title = title;
        this.content = content;
        this.name = name;
        this.createdAt = createdAt;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    private String title;
    private String content;

    private String name;

    private LocalDateTime createdAt;
}
