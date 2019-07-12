package com.superman.supermarket.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.superman.supermarket.entity.Employee;
import com.superman.supermarket.dao.EmployeeMapper;
import com.superman.supermarket.service.EmployeeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author superman
 * @since 2019-07-12
 */
@Service
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements EmployeeService {
    @Resource
    private EmployeeMapper employeeMapper;

    @Override
    public Employee getEmployeeByEmpAccountAndPwd(String account) {
        QueryWrapper<Employee> wrapper = new QueryWrapper<>();
        wrapper.eq("emp_account",account);
        return employeeMapper.selectOne(wrapper);
    }
}
