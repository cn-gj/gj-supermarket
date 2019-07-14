package com.superman.supermarket;

<<<<<<< HEAD
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superman.supermarket.dao.ShopMapper;
import com.superman.supermarket.entity.Shop;
import com.superman.supermarket.entity.vo.ShopVO;
import com.superman.supermarket.service.ShopService;
=======
import com.superman.supermarket.dao.EmployeeMapper;
import com.superman.supermarket.entity.Employee;
>>>>>>> dd3dddb50dc04185beeaa105c26cdbcf7b99725c
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SupermarketApplicationTests {
    @Resource
    private ShopService shopService;

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
<<<<<<< HEAD
        Page<ShopVO> page = new Page<>(1,2);
        System.out.println(shopService.getShopInfoByCondition(page,new ShopVO()));
=======
        /*Employee emp = employeeMapper.findEmpById(1);
        System.out.print(emp.getRoles().getRoleName()+"-------------");*/
>>>>>>> dd3dddb50dc04185beeaa105c26cdbcf7b99725c
    }

}
