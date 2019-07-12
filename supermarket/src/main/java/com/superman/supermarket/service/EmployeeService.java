package com.superman.supermarket.service;

import com.superman.supermarket.entity.Employee;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author superman
 * @since 2019-07-12
 */
public interface EmployeeService extends IService<Employee> {

    /**
     * 根据员工账号查询员工信息
     * @param account
     * @param pwd
     * @return
     */
    Employee getEmployeeByEmpAccountAndPwd(String account);
}
