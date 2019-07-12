package com.market.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author superMan
 * @since 2019-07-12
 */
@TableName("roles")
public class Roles implements Serializable {

private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private byte[] roleName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public byte[] getRoleName() {
        return roleName;
    }

    public void setRoleName(byte[] roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "Roles{" +
        "id=" + id +
        ", roleName=" + roleName +
        "}";
    }
}
