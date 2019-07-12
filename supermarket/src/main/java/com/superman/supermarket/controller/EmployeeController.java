package com.superman.supermarket.controller;


import com.alibaba.fastjson.JSON;
import com.superman.supermarket.entity.Employee;
import com.superman.supermarket.service.EmployeeService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @PostMapping("/login")
    @ResponseBody
    public String login(Employee employee, Model model) {
        System.out.println(employee);
        //用于接收返回页面的数据
        Map<String,Object> map = new HashMap<>();
        //获取当前对象
        Subject subject = SecurityUtils.getSubject();
        System.out.println(subject);
        //获取令牌
        UsernamePasswordToken token = new UsernamePasswordToken(employee.getEmpAccount(),employee.getEmpPwd());
        try {
            subject.login(token);
            map.put("state",true);
        } catch (AuthenticationException e) {
            e.printStackTrace();
            map.put("state",false);
        }
        return JSON.toJSONString(map);
    }
}

