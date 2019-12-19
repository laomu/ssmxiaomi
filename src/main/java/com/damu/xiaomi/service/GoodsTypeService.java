package com.damu.xiaomi.service;

import com.damu.xiaomi.dao.GoodsTypeMapper;
import com.damu.xiaomi.entry.GoodsType;
import com.damu.xiaomi.entry.GoodsTypeExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>项目文档： 商品类型 业务处理类</p>
 *
 * @author <a href="https://github.com/laomu/laomu.github.io">大牧</a>
 * @version V1.0
 */
@Service
public class GoodsTypeService {

    @Autowired
    private GoodsTypeMapper goodsTypeMapper;

    /**
     * 查询一级商品类型
     * @return 返回所有的一级商品类型
     */
    public List<GoodsType> findTopLevel() {
        GoodsTypeExample gte = new GoodsTypeExample();
        gte.createCriteria().andPidIsNull();
        return goodsTypeMapper.selectByExample(gte);
    }

    /**
     * 根据一级类型，查询所有所属二级类型
     * @return 返回类型列表
     */
    public List<GoodsType> findSecondLevel(GoodsType top) {
        GoodsTypeExample gte = new GoodsTypeExample();
        gte.createCriteria().andPidEqualTo(top.getId());
        return goodsTypeMapper.selectByExample(gte);
    }

    /**
     * 根据主键编号查询一个类型
     * @param goodsTypeId 主键编号
     * @return 商品类型
     */
    public GoodsType findById(Integer goodsTypeId) {
        return goodsTypeMapper.selectByPrimaryKey(goodsTypeId);
    }
}
