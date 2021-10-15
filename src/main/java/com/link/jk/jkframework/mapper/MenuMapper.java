package com.link.jk.jkframework.mapper;

import com.link.jk.jkframework.dto.MenuDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Mapper
@Repository
public interface MenuMapper {

    int insertMenu(List<HashMap<String, String>> list);

    int insertMenu2(MenuDto menuDto);
}
