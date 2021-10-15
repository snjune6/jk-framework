package com.link.jk.jkframework.service;

import com.link.jk.jkframework.dto.MenuDto;
import com.link.jk.jkframework.mapper.MenuMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class MenuService {

    @Resource
    private MenuMapper menuMapper;

    public int insertMenu(List<HashMap<String, String>> list) {
        return menuMapper.insertMenu(list);
    }

    public int insertMenu2(MenuDto menuDto) {
        return menuMapper.insertMenu2(menuDto);
    }

}
