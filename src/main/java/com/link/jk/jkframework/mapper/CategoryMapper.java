package com.link.jk.jkframework.mapper;

import com.link.jk.jkframework.dto.CategoryDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Mapper
@Repository
public interface CategoryMapper {

    List<CategoryDto> selectFullCategoryList();

    String selectThirdId(HashMap hashMap);

    List selectSecondMenu(HashMap hashMap);

    List selectThirdMenu(HashMap hashMap);

    List selectTagList(HashMap hashMap);
}
