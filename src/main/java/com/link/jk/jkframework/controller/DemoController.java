package com.link.jk.jkframework.controller;

import com.link.jk.jkframework.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
public class DemoController {

    @Autowired
    private TestService testService;


    @GetMapping("/tests")
    public List<HashMap<String, Object>> getTests() {
        return testService.getTests();
    }

    @GetMapping("/testDao")
    public List<HashMap<String, Object>> getTestDao() {
        return testService.getTestsWithDao();
    }

}
