package com.superman.supermarket.dao;

import com.superman.supermarket.entity.Employee;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author superman
 * @since 2019-07-12
 */
public interface EmployeeMapper extends BaseMapper<Employee> {

    /**
     *  根据id查询用户
     * @param id
     * @return
     */
    Employee findEmpById(int id);

    /**
     *  根据用户名查询对象
     * @param account
     * @return
     */
    Employee getEmployeeByEmpAccount(@Param("account") String account);
}
