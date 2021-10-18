package com.link.jk.jkframework.mapper;

import com.link.jk.jkframework.dto.MemberDto;
import com.link.jk.jkframework.dto.MenuDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Mapper
@Repository
public interface MemberMapper {

    Long joinUser(MemberDto memberDto);

    MemberDto selectUserId(String username);

}
