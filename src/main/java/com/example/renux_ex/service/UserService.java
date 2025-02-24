package com.example.renux_ex.service;

import com.example.renux_ex.model.User;
import com.example.renux_ex.repository.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class UserService {

    private final UserRepository repository;

    private final BCryptPasswordEncoder bCryptPasswordEncoder; //이친구는 오토와이어링 불가

    public UserService(UserRepository repository1 ){
        this.repository =repository1;
        this.bCryptPasswordEncoder = new BCryptPasswordEncoder();
    }

    @Transactional
    public boolean resister(User user){
        if(repository.findUserByUsername(user.getUsername()).isPresent()) {
            return false;
        }
        user.setId(user.getId());
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword())); //user 객체에서 비밀번호를 추출해 인코딩
        repository.save(user); //그후저장
        return true;
    }

    public Optional<User> login(String username, String password) {
        Optional<User> user = repository.findUserByUsername(username);

        if(user.isPresent() && passwordMatches(password,user.get().getPassword())){
            return user;
        }

        return Optional.empty(); //로그인 실패
    }

    public boolean passwordMatches(String rawPassword, String encodedPassword){
        return bCryptPasswordEncoder.matches(rawPassword , encodedPassword);
    }


}
