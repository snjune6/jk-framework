package com.link.jk.jkframework.service;

import com.link.jk.jkframework.dto.CategoryDto;
import com.link.jk.jkframework.mapper.CategoryMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class CategoryService {

    @Resource
    private CategoryMapper categoryMapper;

    public List<CategoryDto> selectFullCategoryList() {
        return categoryMapper.selectFullCategoryList();
    }

    public String selectThirdId(HashMap hashMap) {
        return categoryMapper.selectThirdId(hashMap);
    }

    public List selectSecondMenu(HashMap hashMap) {
        return categoryMapper.selectSecondMenu(hashMap);
    }

    public List selectThirdMenu(HashMap hashMap) {
        return categoryMapper.selectThirdMenu(hashMap);
    }

    public List selectTagList(HashMap hashMap) {
        return categoryMapper.selectTagList(hashMap);
    }

}
