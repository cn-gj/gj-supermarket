package com.market.supermarket.service.impl;

import com.market.entity.Member;
import com.market.dao.MemberMapper;
import com.market.service.MemberService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author superMan
 * @since 2019-07-12
 */
@Service
public class MemberServiceImpl extends ServiceImpl<MemberMapper, Member> implements MemberService {

}
