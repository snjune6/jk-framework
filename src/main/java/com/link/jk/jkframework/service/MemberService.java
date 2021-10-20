package com.link.jk.jkframework.service;

import com.link.jk.jkframework.dto.MemberDto;
import com.link.jk.jkframework.mapper.MemberMapper;
import lombok.AllArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class MemberService implements UserDetailsService {

    private MemberMapper memberMapper;

    public Long joinUser(MemberDto memberDto) {

        // 비밀번호 암호화
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        memberDto.setPassword(passwordEncoder.encode(memberDto.getPassword()));

        return memberMapper.joinUser(memberDto);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        MemberDto memberDto = memberMapper.selectUserId(username);
        List<GrantedAuthority> authorities = new ArrayList<>();

        if(memberDto != null) {
            authorities.add(new SimpleGrantedAuthority("ROLE_MEMBER"));
        }


        return new User(memberDto.getUsername(), memberDto.getPassword(), authorities);
    }
}
