package com.superman.supermarket.controller;


import com.alibaba.fastjson.JSON;
import com.superman.supermarket.entity.Employee;
import com.superman.supermarket.service.EmployeeService;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author superman
 * @since 2019-07-12
 */
@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Resource
    private EmployeeService employeeService;

    @RequestMapping("/login")
    public String login(String account,String pwd) {
        Map<String,Object> map = new HashMap<>();
        Employee emp =employeeService.getEmployeeByEmpAccountAndPwd(account);
        if (emp != null){
            if (emp.getEmpPwd().equals(pwd)){

            }
        }
        return JSON.toJSONString(map);
    }
}

