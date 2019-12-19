package com.damu.test;

import com.damu.xiaomi.dao.ConsumerMapper;
import com.damu.xiaomi.dao.GoodsCartMapper;
import com.damu.xiaomi.entry.Consumer;
import com.damu.xiaomi.entry.ConsumerExample;
import com.damu.xiaomi.entry.Goods;
import com.damu.xiaomi.entry.GoodsCart;
import com.damu.xiaomi.service.GoodsShippingService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.util.List;

/**
 * <p>项目文档： 单元测试</p>
 *
 * @author <a href="https://github.com/laomu/laomu.github.io">大牧</a>
 * @version V1.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class DaoTest {

    @Autowired
    private ConsumerMapper consumerMapper;

    private MockMvc mockMvc;
    @Autowired
    private WebApplicationContext context;


    @Test
    public void testConsumerInsert() {
        // 创建consumer对象
        Consumer consumer = new Consumer("damu", "123");
        // 将consumer对象增加到数据库中
        consumerMapper.insertSelective(consumer);
        System.out.println("数据insert执行完成");
    }

    @Test
    public void testConsumerSelectById() {
        Consumer consumer = consumerMapper.selectByPrimaryKey(1);
        System.out.println(consumer);
    }

    @Test
    public void testConsumerSelectByExample() {
        // 创建一个查询条件【账号+密码】
        ConsumerExample ce = new ConsumerExample();
        ce.createCriteria().andUsernameEqualTo("damu")
                .andPasswordEqualTo("123");

        // 查询数据
        List<Consumer> consumers = consumerMapper.selectByExample(ce);
        consumers.forEach(consumer-> System.out.println(consumer));

    }

    @Autowired
    private GoodsShippingService goodsShippingService;
    @Test
    public void testSearchGoods() {
        List<Goods> goodsList = goodsShippingService.searchGoodsWithName("小米");
        goodsList.forEach(goods -> System.out.println(goods));

    }

    @Autowired
    private GoodsCartMapper goodsCartMapper;

    @Test
    public void testChkGoodsCart() {
        List<GoodsCart> cartList = goodsCartMapper.selectByExample(null);
        cartList.forEach(gc-> System.out.println(gc));
//        GoodsCart goodsCart = goodsCartMapper.selectByPrimaryKey(1);
//        System.out.println(goodsCart);
    }
}
