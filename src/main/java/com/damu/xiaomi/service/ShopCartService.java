package com.damu.xiaomi.service;

import com.damu.xiaomi.dao.GoodsCartMapper;
import com.damu.xiaomi.entry.Consumer;
import com.damu.xiaomi.entry.Goods;
import com.damu.xiaomi.entry.GoodsCart;
import com.damu.xiaomi.entry.GoodsCartExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * <p>项目文档： 购物车相关业务处理类</p>
 *
 * @author <a href="https://github.com/laomu/laomu.github.io">大牧</a>
 * @version V1.0
 */
@Service
public class ShopCartService {
    @Autowired
    private GoodsCartMapper goodsCartMapper;

    /**
     * 指定商品加入购物车
     * @param goods 要加入购物车的商品
     * @return 返回加入结果
     */
    public boolean addGoodsToShopCart(Consumer consumer, Goods goods) {
        // 查询指定的商品在当前用户的购物车中是否存在
        List<GoodsCart> cartList = this.chkGoods(consumer, goods);
        if(cartList.size() > 0) {
            // 更新购买数量
            int count = cartList.get(0).getBuyCount();
            cartList.get(0).setBuyCount(count+1);
            // 更新小金额
            double price = cartList.get(0).getSubtotal()/count * cartList.get(0).getBuyCount();
            cartList.get(0).setSubtotal(price);
        } else {
            // 新增商品
            GoodsCart gc = new GoodsCart(goods.getId(), 1, new Date(), goods.getPrice(), consumer.getId());
            goodsCartMapper.insertSelective(gc);
        }
        return true;
    }

    /**
     * 从购物车中删除指定的商品
     * @param goods 要删除的商品
     * @return 返回删除结果
     */
    public boolean removeGoodsFromShopCart(Consumer consumer, Goods goods) {
        // 判断商品在购物车中是否存在
        List<GoodsCart> cartList = this.chkGoods(consumer, goods);
        if(cartList.size() > 0) {
            // 商品存在，删除
            goodsCartMapper.deleteByPrimaryKey(cartList.get(0).getId());
            return true;
        }
        System.out.println("商品不存在.");
        return false;
    }

    /**
     * 查询指定用户购物车中所有商品
     * @param consumer 指定用户
     * @return 返回该用户的所有商品
     */
    public List<GoodsCart> findAllGoodsCartWithConsumer(Consumer consumer) {
        GoodsCartExample gce = new GoodsCartExample();
        gce.createCriteria().andConsumerIdEqualTo(consumer.getId());
        return goodsCartMapper.selectByExample(gce);
    }

    /**
     * 判断某个商品在购物车中是否存在
     * @param consumer 所属用户
     * @param goods 商品对象
     * @return 商品数据
     */
    private List<GoodsCart> chkGoods(Consumer consumer, Goods goods) {
        // 查询指定的商品在当前用户的购物车中是否存在
        GoodsCartExample gce = new GoodsCartExample();
        gce.createCriteria().andConsumerIdEqualTo(consumer.getId())
                .andGoodsIdEqualTo(goods.getId());
        // 查询操作
        List<GoodsCart> cartList = goodsCartMapper.selectByExample(gce);
        return cartList;
    }
}
