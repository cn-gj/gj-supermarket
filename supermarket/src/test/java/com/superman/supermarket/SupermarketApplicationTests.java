package com.superman.supermarket;

import com.superman.supermarket.dao.EmployeeMapper;
import com.superman.supermarket.entity.Employee;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SupermarketApplicationTests {

    @Resource
    private EmployeeMapper employeeMapper;
    @Test
    public void contextLoads() {
        /*String [] tables = {"allot","allot_detail","cashier_desk","check_detail","check_scope",
                "check_state","cust_emp_relation","customer","employee","goods","goods_type",
                "inventory_check","inventory_detail","level","member","oper_info","oper_model","order",
                "order_detail","permissions","pro_shop_relation","provider","role_per_relation","roles",
                "shop","shop_type","spec","spec_detail","spec_tmp","store","ticket","ticket_detail","whole_order"};
        System.out.println(tables.length);*/
        /*Employee emp = employeeMapper.findEmpById(1);
        System.out.print(emp.getRoles().getRoleName()+"-------------");*/
    }

}
